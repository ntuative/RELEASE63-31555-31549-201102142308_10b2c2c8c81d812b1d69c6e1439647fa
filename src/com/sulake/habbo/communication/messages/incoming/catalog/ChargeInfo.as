package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2275:int;
      
      private var var_2274:int;
      
      private var var_1099:int;
      
      private var var_1100:int;
      
      private var var_1661:int;
      
      private var var_2276:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2275 = param1.readInteger();
         this.var_2274 = param1.readInteger();
         this.var_1099 = param1.readInteger();
         this.var_1100 = param1.readInteger();
         this.var_1661 = param1.readInteger();
         this.var_2276 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2275;
      }
      
      public function get charges() : int
      {
         return this.var_2274;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1099;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1100;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2276;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1661;
      }
   }
}
