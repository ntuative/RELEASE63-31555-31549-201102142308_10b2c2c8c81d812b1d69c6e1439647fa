package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_886:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_1424:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_886);
         this.var_1424 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1424;
      }
   }
}
