package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2172:int;
      
      private var var_2174:int;
      
      private var var_2175:int;
      
      private var var_2173:String;
      
      private var var_1499:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2172 = param1.readInteger();
         this.var_2174 = param1.readInteger();
         this.var_2175 = param1.readInteger();
         this.var_2173 = param1.readString();
         this.var_1499 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2172;
      }
      
      public function get minute() : int
      {
         return this.var_2174;
      }
      
      public function get chatterId() : int
      {
         return this.var_2175;
      }
      
      public function get chatterName() : String
      {
         return this.var_2173;
      }
      
      public function get msg() : String
      {
         return this.var_1499;
      }
   }
}
