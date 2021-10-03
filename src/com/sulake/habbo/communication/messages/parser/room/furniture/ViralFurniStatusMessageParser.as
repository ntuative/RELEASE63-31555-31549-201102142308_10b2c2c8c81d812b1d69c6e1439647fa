package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ViralFurniStatusMessageParser implements IMessageParser
   {
       
      
      private var var_165:String;
      
      private var _objectId:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_374:int;
      
      private var var_1051:String;
      
      private var var_2237:String;
      
      public function ViralFurniStatusMessageParser()
      {
         super();
      }
      
      public function get campaignID() : String
      {
         return this.var_165;
      }
      
      public function get objectId() : int
      {
         return this._objectId;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get shareId() : String
      {
         return this.var_1051;
      }
      
      public function get status() : int
      {
         return this.var_374;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2237;
      }
      
      public function flush() : Boolean
      {
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_165 = param1.readString();
         this._objectId = param1.readInteger();
         this.var_374 = param1.readInteger();
         this.var_1051 = param1.readString();
         this.var_2237 = param1.readString();
         return true;
      }
   }
}
