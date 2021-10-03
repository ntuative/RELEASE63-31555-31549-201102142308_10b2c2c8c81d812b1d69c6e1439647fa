package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1417:int;
      
      private var var_1817:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         this.var_1417 = param1;
         this.var_1817 = param2;
      }
      
      public function get itemType() : int
      {
         return this.var_1417;
      }
      
      public function get itemName() : String
      {
         return this.var_1817;
      }
   }
}
