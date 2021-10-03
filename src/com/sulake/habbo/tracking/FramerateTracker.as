package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1735:int;
      
      private var var_2607:int;
      
      private var var_1178:int;
      
      private var var_485:Number;
      
      private var var_2608:Boolean;
      
      private var var_2606:int;
      
      private var var_1856:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2607 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2606 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2608 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1178;
         if(this.var_1178 == 1)
         {
            this.var_485 = param1;
            this.var_1735 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1178);
            this.var_485 = this.var_485 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2608 && param3 - this.var_1735 >= this.var_2607 && this.var_1856 < this.var_2606)
         {
            _loc5_ = 1000 / this.var_485;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1856;
            this.var_1735 = param3;
            this.var_1178 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
