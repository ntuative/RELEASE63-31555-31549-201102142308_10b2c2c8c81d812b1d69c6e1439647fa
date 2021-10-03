package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_322:int;
      
      private var var_1990:int;
      
      private var var_1992:Boolean;
      
      private var var_1991:int;
      
      private var _ownerName:String;
      
      private var var_114:RoomData;
      
      private var var_749:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_322 = param1.readInteger();
         this.var_1990 = param1.readInteger();
         this.var_1992 = param1.readBoolean();
         this.var_1991 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_114 = new RoomData(param1);
         this.var_749 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_114 != null)
         {
            this.var_114.dispose();
            this.var_114 = null;
         }
         if(this.var_749 != null)
         {
            this.var_749.dispose();
            this.var_749 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_322;
      }
      
      public function get userCount() : int
      {
         return this.var_1990;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_1992;
      }
      
      public function get ownerId() : int
      {
         return this.var_1991;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_114;
      }
      
      public function get event() : RoomData
      {
         return this.var_749;
      }
   }
}
