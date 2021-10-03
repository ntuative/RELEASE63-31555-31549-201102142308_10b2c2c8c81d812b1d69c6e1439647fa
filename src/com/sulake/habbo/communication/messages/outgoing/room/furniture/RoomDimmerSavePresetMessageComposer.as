package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2257:int;
      
      private var var_2255:int;
      
      private var var_2682:String;
      
      private var var_2684:int;
      
      private var var_2683:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2257 = param1;
         this.var_2255 = param2;
         this.var_2682 = param3;
         this.var_2684 = param4;
         this.var_2683 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2257,this.var_2255,this.var_2682,this.var_2684,int(this.var_2683)];
      }
      
      public function dispose() : void
      {
      }
   }
}
