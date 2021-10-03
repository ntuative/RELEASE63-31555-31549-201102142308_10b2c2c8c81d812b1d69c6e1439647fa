package com.sulake.room.messages
{
   import com.sulake.room.utils.IVector3d;
   
   public class RoomObjectUpdateMessage
   {
       
      
      protected var var_74:IVector3d;
      
      protected var var_232:IVector3d;
      
      public function RoomObjectUpdateMessage(param1:IVector3d, param2:IVector3d)
      {
         super();
         this.var_74 = param1;
         this.var_232 = param2;
      }
      
      public function get loc() : IVector3d
      {
         return this.var_74;
      }
      
      public function get dir() : IVector3d
      {
         return this.var_232;
      }
   }
}
