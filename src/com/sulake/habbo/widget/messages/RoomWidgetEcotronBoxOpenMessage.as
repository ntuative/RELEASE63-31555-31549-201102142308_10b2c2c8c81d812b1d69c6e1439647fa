package com.sulake.habbo.widget.messages
{
   public class RoomWidgetEcotronBoxOpenMessage extends RoomWidgetMessage
   {
      
      public static const const_607:String = "RWEBOM_OPEN_ECOTRONBOX";
       
      
      private var _objectId:int;
      
      public function RoomWidgetEcotronBoxOpenMessage(param1:String, param2:int)
      {
         super(param1);
         this._objectId = param2;
      }
      
      public function get objectId() : int
      {
         return this._objectId;
      }
   }
}
