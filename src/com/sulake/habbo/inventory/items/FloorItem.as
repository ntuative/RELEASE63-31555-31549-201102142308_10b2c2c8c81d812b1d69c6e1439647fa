package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_1967:String;
      
      protected var var_1392:Number;
      
      protected var var_2734:Boolean;
      
      protected var var_2735:Boolean;
      
      protected var var_2355:Boolean;
      
      protected var var_2732:Boolean;
      
      protected var var_2733:int;
      
      protected var var_2357:int;
      
      protected var var_2353:int;
      
      protected var var_2359:int;
      
      protected var var_1641:String;
      
      protected var var_2436:int;
      
      protected var var_807:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2355 = param5;
         this.var_2735 = param6;
         this.var_2734 = param7;
         this.var_2732 = param8;
         this.var_1967 = param9;
         this.var_1392 = param10;
         this.var_2733 = param11;
         this.var_2357 = param12;
         this.var_2353 = param13;
         this.var_2359 = param14;
         this.var_1641 = param15;
         this.var_2436 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_1967;
      }
      
      public function get extra() : Number
      {
         return this.var_1392;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2734;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2735;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2355;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2732;
      }
      
      public function get expires() : int
      {
         return this.var_2733;
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
      
      public function get slotId() : String
      {
         return this.var_1641;
      }
      
      public function get songId() : int
      {
         return this.var_2436;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_807 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_807;
      }
   }
}
