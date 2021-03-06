package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class SellablePetBreedsParser implements IMessageParser
   {
       
      
      private var var_1449:int = 0;
      
      private var var_1128:Array;
      
      public function SellablePetBreedsParser()
      {
         this.var_1128 = [];
         super();
      }
      
      public function get petType() : int
      {
         return this.var_1449;
      }
      
      public function get sellableBreeds() : Array
      {
         return this.var_1128.slice();
      }
      
      public function flush() : Boolean
      {
         this.var_1449 = 0;
         this.var_1128 = [];
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1449 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1128.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1128.sort(Array.NUMERIC);
         return true;
      }
   }
}
