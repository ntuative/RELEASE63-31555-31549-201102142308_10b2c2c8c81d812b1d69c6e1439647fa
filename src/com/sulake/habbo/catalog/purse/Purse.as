package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_168:int = 0;
       
      
      private var var_2372:int = 0;
      
      private var var_1373:Dictionary;
      
      private var var_1703:int = 0;
      
      private var var_1702:int = 0;
      
      private var var_2182:Boolean = false;
      
      private var var_2371:int = 0;
      
      private var var_2373:int = 0;
      
      public function Purse()
      {
         this.var_1373 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2372;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2372 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1703;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1703 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1702;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1702 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1703 > 0 || this.var_1702 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2182;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2182 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2371;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2371 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2373;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2373 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1373;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1373 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1373[param1];
      }
   }
}
