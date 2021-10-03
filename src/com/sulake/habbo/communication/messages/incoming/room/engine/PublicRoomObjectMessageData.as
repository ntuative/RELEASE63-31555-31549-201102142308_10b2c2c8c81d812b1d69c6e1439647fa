package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_168:Number = 0;
      
      private var var_167:Number = 0;
      
      private var var_232:int = 0;
      
      private var var_501:int = 0;
      
      private var var_607:int = 0;
      
      private var var_173:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_173 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_173)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_173)
         {
            this._name = param1;
         }
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_173)
         {
            this._x = param1;
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
      
      public function get dir() : int
      {
         return this.var_232;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_173)
         {
            this.var_232 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_501;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_173)
         {
            this.var_501 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_607;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_173)
         {
            this.var_607 = param1;
         }
      }
   }
}
