package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2356:int;
      
      private var var_1417:String;
      
      private var var_2354:int;
      
      private var var_2358:int;
      
      private var _category:int;
      
      private var var_1967:String;
      
      private var var_1392:int;
      
      private var var_2360:int;
      
      private var var_2357:int;
      
      private var var_2353:int;
      
      private var var_2359:int;
      
      private var var_2355:Boolean;
      
      private var var_2801:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2356 = param1;
         this.var_1417 = param2;
         this.var_2354 = param3;
         this.var_2358 = param4;
         this._category = param5;
         this.var_1967 = param6;
         this.var_1392 = param7;
         this.var_2360 = param8;
         this.var_2357 = param9;
         this.var_2353 = param10;
         this.var_2359 = param11;
         this.var_2355 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2356;
      }
      
      public function get itemType() : String
      {
         return this.var_1417;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2354;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2358;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1967;
      }
      
      public function get extra() : int
      {
         return this.var_1392;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2360;
      }
      
      public function get creationDay() : int
      {
         return this.var_2357;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2353;
      }
      
      public function get creationYear() : int
      {
         return this.var_2359;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2355;
      }
      
      public function get songID() : int
      {
         return this.var_1392;
      }
   }
}
