package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_658:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_603:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_658);
         this.var_603 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_603;
      }
   }
}
