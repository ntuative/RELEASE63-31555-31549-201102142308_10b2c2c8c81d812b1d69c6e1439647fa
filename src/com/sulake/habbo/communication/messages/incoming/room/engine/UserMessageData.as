package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_981:String = "M";
      
      public static const const_1364:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_168:Number = 0;
      
      private var var_167:Number = 0;
      
      private var var_232:int = 0;
      
      private var _name:String = "";
      
      private var var_2406:int = 0;
      
      private var var_804:String = "";
      
      private var var_568:String = "";
      
      private var var_2008:String = "";
      
      private var var_1994:int;
      
      private var var_2010:int = 0;
      
      private var var_2012:String = "";
      
      private var var_2009:int = 0;
      
      private var var_2011:int = 0;
      
      private var var_2407:String = "";
      
      private var var_173:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_173 = true;
      }
      
      public function get id() : int
      {
         return this._id;
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
      
      public function get userType() : int
      {
         return this.var_2406;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_173)
         {
            this.var_2406 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_804;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_173)
         {
            this.var_804 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_568;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_173)
         {
            this.var_568 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2008;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_173)
         {
            this.var_2008 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_1994;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_173)
         {
            this.var_1994 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2010;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_173)
         {
            this.var_2010 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2012;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_173)
         {
            this.var_2012 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2009;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_173)
         {
            this.var_2009 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2011;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_173)
         {
            this.var_2011 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2407;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_173)
         {
            this.var_2407 = param1;
         }
      }
   }
}
