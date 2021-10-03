package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2022:Number;
      
      private var var_1665:Number;
      
      private var var_814:Number;
      
      private var var_813:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2022 = param1;
         this.var_1665 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_814 = param1;
         this.var_813 = 0;
      }
      
      public function update() : void
      {
         this.var_814 += this.var_1665;
         this.var_813 += this.var_814;
         if(this.var_813 > 0)
         {
            this.var_813 = 0;
            this.var_814 = this.var_2022 * -1 * this.var_814;
         }
      }
      
      public function get location() : Number
      {
         return this.var_813;
      }
   }
}
