package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1703:int = 0;
      
      private var var_1702:int = 0;
      
      private var var_2180:int = 0;
      
      private var var_2181:Boolean = false;
      
      private var var_2182:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1703 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1702 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2180 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2181 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2182 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1703;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1702;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2180;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2181;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2182;
      }
   }
}
