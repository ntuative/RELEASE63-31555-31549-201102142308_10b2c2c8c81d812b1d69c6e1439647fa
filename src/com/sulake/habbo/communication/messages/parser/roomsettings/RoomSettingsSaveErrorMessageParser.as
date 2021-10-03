package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1776:int = 1;
      
      public static const const_1821:int = 2;
      
      public static const const_1865:int = 3;
      
      public static const const_1907:int = 4;
      
      public static const const_1599:int = 5;
      
      public static const const_1798:int = 6;
      
      public static const const_1375:int = 7;
      
      public static const const_1609:int = 8;
      
      public static const const_1789:int = 9;
      
      public static const const_1503:int = 10;
      
      public static const const_1548:int = 11;
      
      public static const const_1567:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1550:int;
      
      private var var_1242:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1550 = param1.readInteger();
         this.var_1242 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1550;
      }
      
      public function get info() : String
      {
         return this.var_1242;
      }
   }
}
