package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1590:String;
      
      private var var_2208:int;
      
      private var _password:String;
      
      private var var_1445:int;
      
      private var var_2210:int;
      
      private var var_797:Array;
      
      private var var_2212:Array;
      
      private var var_2207:Boolean;
      
      private var var_2209:Boolean;
      
      private var var_2211:Boolean;
      
      private var var_2213:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2207;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2207 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2209;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2209 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2211;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2211 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2213;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2213 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1590;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1590 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2208;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2208 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1445;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1445 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2210;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2210 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_797;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_797 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2212;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2212 = param1;
      }
   }
}
