package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2194:int;
      
      private var var_1417:String;
      
      private var _objId:int;
      
      private var var_1693:int;
      
      private var _category:int;
      
      private var var_1967:String;
      
      private var var_2196:Boolean;
      
      private var var_2198:Boolean;
      
      private var var_2197:Boolean;
      
      private var var_2075:Boolean;
      
      private var var_2195:int;
      
      private var var_1392:int;
      
      private var var_1641:String = "";
      
      private var var_2436:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2194 = param1;
         this.var_1417 = param2;
         this._objId = param3;
         this.var_1693 = param4;
         this._category = param5;
         this.var_1967 = param6;
         this.var_2196 = param7;
         this.var_2198 = param8;
         this.var_2197 = param9;
         this.var_2075 = param10;
         this.var_2195 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1641 = param1;
         this.var_1392 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2194;
      }
      
      public function get itemType() : String
      {
         return this.var_1417;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1693;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1967;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2196;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2198;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2197;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2075;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2195;
      }
      
      public function get slotId() : String
      {
         return this.var_1641;
      }
      
      public function get songId() : int
      {
         return this.var_2436;
      }
      
      public function get extra() : int
      {
         return this.var_1392;
      }
   }
}
