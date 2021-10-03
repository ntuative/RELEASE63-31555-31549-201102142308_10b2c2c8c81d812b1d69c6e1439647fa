package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1877:int;
      
      private var var_2647:int;
      
      private var var_1260:int;
      
      private var var_2162:int;
      
      private var var_114:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1877 = param1.readInteger();
         this.var_2647 = param1.readInteger();
         this.var_1260 = param1.readInteger();
         this.var_2162 = param1.readInteger();
         this.var_114 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1877);
      }
      
      public function get callId() : int
      {
         return this.var_1877;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2647;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1260;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2162;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_114;
      }
   }
}
