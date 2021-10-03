package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1000:Boolean;
      
      private var var_1001:Boolean;
      
      private var var_1243:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1000;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1001;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1243;
      }
      
      public function flush() : Boolean
      {
         this.var_1000 = false;
         this.var_1001 = false;
         this.var_1243 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1000 = param1.readBoolean();
         this.var_1001 = param1.readBoolean();
         this.var_1243 = param1.readBoolean();
         return true;
      }
   }
}
