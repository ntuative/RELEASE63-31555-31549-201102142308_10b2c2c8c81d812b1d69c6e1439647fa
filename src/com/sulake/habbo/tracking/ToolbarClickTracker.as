package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1241:IHabboTracking;
      
      private var var_1833:Boolean = false;
      
      private var var_2124:int = 0;
      
      private var var_1611:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1241 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1241 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1833 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2124 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1833)
         {
            return;
         }
         ++this.var_1611;
         if(this.var_1611 <= this.var_2124)
         {
            this.var_1241.track("toolbar",param1);
         }
      }
   }
}
