package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetUserLocationMessage extends RoomWidgetMessage
   {
      
      public static const const_725:String = "RWGOI_MESSAGE_GET_USER_LOCATION";
       
      
      private var _userId:int;
      
      public function RoomWidgetGetUserLocationMessage(param1:int = -1)
      {
         super(const_725);
         this._userId = param1;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
