package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_804:String = "";
      
      private var var_568:String = "";
      
      private var var_2008:String = "";
      
      private var var_1994:int;
      
      private var var_2010:int = 0;
      
      private var var_2012:String = "";
      
      private var var_2009:int = 0;
      
      private var var_2011:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_1994;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_1994 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_804;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_804 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_568;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_568 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2008;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2008 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2010;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2010 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2012;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2012 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2009;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2009 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2011;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2011 = param1;
      }
   }
}
