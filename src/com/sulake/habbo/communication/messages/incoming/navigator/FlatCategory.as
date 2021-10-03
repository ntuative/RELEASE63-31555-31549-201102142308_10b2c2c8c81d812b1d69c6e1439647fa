package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1563:int;
      
      private var var_2612:String;
      
      private var var_377:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1563 = param1.readInteger();
         this.var_2612 = param1.readString();
         this.var_377 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1563;
      }
      
      public function get nodeName() : String
      {
         return this.var_2612;
      }
      
      public function get visible() : Boolean
      {
         return this.var_377;
      }
   }
}
