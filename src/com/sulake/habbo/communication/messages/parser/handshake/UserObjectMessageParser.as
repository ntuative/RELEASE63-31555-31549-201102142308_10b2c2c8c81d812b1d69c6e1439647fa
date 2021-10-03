package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_568:String;
      
      private var var_804:String;
      
      private var var_2223:String;
      
      private var var_1601:String;
      
      private var var_2226:int;
      
      private var var_2227:String;
      
      private var var_2224:int;
      
      private var var_2225:int;
      
      private var _respectTotal:int;
      
      private var var_1199:int;
      
      private var var_776:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_568 = param1.readString();
         this.var_804 = param1.readString();
         this.var_2223 = param1.readString();
         this.var_1601 = param1.readString();
         this.var_2226 = param1.readInteger();
         this.var_2227 = param1.readString();
         this.var_2224 = param1.readInteger();
         this.var_2225 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_1199 = param1.readInteger();
         this.var_776 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_568;
      }
      
      public function get sex() : String
      {
         return this.var_804;
      }
      
      public function get customData() : String
      {
         return this.var_2223;
      }
      
      public function get realName() : String
      {
         return this.var_1601;
      }
      
      public function get tickets() : int
      {
         return this.var_2226;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2227;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2224;
      }
      
      public function get directMail() : int
      {
         return this.var_2225;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1199;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_776;
      }
   }
}
