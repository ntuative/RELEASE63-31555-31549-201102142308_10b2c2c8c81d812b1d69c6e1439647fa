package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2381:String;
      
      private var var_2159:int;
      
      private var var_2153:int;
      
      private var var_2383:String;
      
      private var var_2382:int;
      
      private var var_1563:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2381 = param1.readString();
         this.var_2159 = param1.readInteger();
         this.var_2153 = param1.readInteger();
         this.var_2383 = param1.readString();
         this.var_2382 = param1.readInteger();
         this.var_1563 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2381;
      }
      
      public function get unitPort() : int
      {
         return this.var_2159;
      }
      
      public function get worldId() : int
      {
         return this.var_2153;
      }
      
      public function get castLibs() : String
      {
         return this.var_2383;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2382;
      }
      
      public function get nodeId() : int
      {
         return this.var_1563;
      }
   }
}
