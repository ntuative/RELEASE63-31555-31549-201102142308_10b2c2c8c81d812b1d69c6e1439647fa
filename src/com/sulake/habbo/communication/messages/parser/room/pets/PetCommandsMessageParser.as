package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_1814:int;
      
      private var var_1416:Array;
      
      private var var_1176:Array;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1814;
      }
      
      public function get method_3() : Array
      {
         return this.var_1416;
      }
      
      public function get enabledCommands() : Array
      {
         return this.var_1176;
      }
      
      public function flush() : Boolean
      {
         this.var_1814 = -1;
         this.var_1416 = null;
         this.var_1176 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1814 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1416 = new Array();
         while(_loc2_-- > 0)
         {
            this.var_1416.push(param1.readInteger());
         }
         var _loc3_:int = param1.readInteger();
         this.var_1176 = new Array();
         while(_loc3_-- > 0)
         {
            this.var_1176.push(param1.readInteger());
         }
         return true;
      }
   }
}