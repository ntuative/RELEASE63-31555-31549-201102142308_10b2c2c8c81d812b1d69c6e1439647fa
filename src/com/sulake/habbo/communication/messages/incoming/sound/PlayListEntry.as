package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2436:int;
      
      private var var_2435:int;
      
      private var var_2434:String;
      
      private var var_2432:String;
      
      private var var_2433:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2436 = param1;
         this.var_2435 = param2;
         this.var_2434 = param3;
         this.var_2432 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2436;
      }
      
      public function get length() : int
      {
         return this.var_2435;
      }
      
      public function get name() : String
      {
         return this.var_2434;
      }
      
      public function get creator() : String
      {
         return this.var_2432;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2433;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2433 = param1;
      }
   }
}
