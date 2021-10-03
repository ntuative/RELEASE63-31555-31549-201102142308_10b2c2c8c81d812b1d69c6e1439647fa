package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageRequestedMessageParser implements IMessageParser
   {
       
      
      private var _objectId:int = 0;
      
      private var var_568:String = "";
      
      public function OpenPetPackageRequestedMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this._objectId;
      }
      
      public function get figure() : String
      {
         return this.var_568;
      }
      
      public function flush() : Boolean
      {
         this._objectId = 0;
         this.var_568 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this._objectId = param1.readInteger();
         this.var_568 = param1.readString();
         return true;
      }
   }
}
