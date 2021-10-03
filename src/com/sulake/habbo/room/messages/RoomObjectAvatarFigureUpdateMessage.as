package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_568:String;
      
      private var var_2510:String;
      
      private var var_880:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_568 = param1;
         this.var_880 = param2;
         this.var_2510 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_568;
      }
      
      public function get race() : String
      {
         return this.var_2510;
      }
      
      public function get gender() : String
      {
         return this.var_880;
      }
   }
}
