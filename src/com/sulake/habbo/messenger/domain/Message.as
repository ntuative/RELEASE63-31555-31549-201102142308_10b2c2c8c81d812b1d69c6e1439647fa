package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_693:int = 1;
      
      public static const const_795:int = 2;
      
      public static const const_834:int = 3;
      
      public static const const_973:int = 4;
      
      public static const const_613:int = 5;
      
      public static const const_1039:int = 6;
       
      
      private var _type:int;
      
      private var var_1114:int;
      
      private var var_2176:String;
      
      private var var_2660:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1114 = param2;
         this.var_2176 = param3;
         this.var_2660 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2176;
      }
      
      public function get time() : String
      {
         return this.var_2660;
      }
      
      public function get senderId() : int
      {
         return this.var_1114;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
