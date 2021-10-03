package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1814:int;
      
      private var var_2023:String;
      
      private var var_1292:int;
      
      private var var_568:String;
      
      private var var_1449:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1814 = param1.readInteger();
         this.var_2023 = param1.readString();
         this.var_1292 = param1.readInteger();
         this.var_568 = param1.readString();
         this.var_1449 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1814;
      }
      
      public function get petName() : String
      {
         return this.var_2023;
      }
      
      public function get level() : int
      {
         return this.var_1292;
      }
      
      public function get figure() : String
      {
         return this.var_568;
      }
      
      public function get petType() : int
      {
         return this.var_1449;
      }
   }
}
