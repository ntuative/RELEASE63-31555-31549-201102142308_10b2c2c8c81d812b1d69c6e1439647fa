package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1094:int;
      
      private var var_2178:String;
      
      private var var_2177:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1094 = param1.readInteger();
         this.var_2178 = param1.readString();
         this.var_2177 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1094;
      }
      
      public function get requesterName() : String
      {
         return this.var_2178;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2177;
      }
   }
}
