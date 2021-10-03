package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2490:Boolean = false;
      
      private var var_2492:int = 0;
      
      private var var_2491:int = 0;
      
      private var var_2494:int = 0;
      
      private var var_2493:int = 0;
      
      private var var_168:Number = 0;
      
      private var var_167:Number = 0;
      
      private var var_232:String = "";
      
      private var _type:int = 0;
      
      private var var_2806:String = "";
      
      private var var_1392:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_173:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2490 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_173 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2490;
      }
      
      public function get wallX() : Number
      {
         return this.var_2492;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_173)
         {
            this.var_2492 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2491;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_173)
         {
            this.var_2491 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2494;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_173)
         {
            this.var_2494 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2493;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_173)
         {
            this.var_2493 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_168;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_173)
         {
            this.var_168 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_167;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_173)
         {
            this.var_167 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_232;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_173)
         {
            this.var_232 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_173)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_173)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_173)
         {
            this._data = param1;
         }
      }
   }
}
