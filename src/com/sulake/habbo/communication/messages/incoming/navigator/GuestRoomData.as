package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_322:int;
      
      private var var_749:Boolean;
      
      private var var_877:String;
      
      private var _ownerName:String;
      
      private var var_2208:int;
      
      private var var_1990:int;
      
      private var var_2302:int;
      
      private var var_1590:String;
      
      private var var_2303:int;
      
      private var var_2301:Boolean;
      
      private var var_741:int;
      
      private var var_1445:int;
      
      private var var_2305:String;
      
      private var var_797:Array;
      
      private var var_2304:RoomThumbnailData;
      
      private var var_2207:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_797 = new Array();
         super();
         this.var_322 = param1.readInteger();
         this.var_749 = param1.readBoolean();
         this.var_877 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2208 = param1.readInteger();
         this.var_1990 = param1.readInteger();
         this.var_2302 = param1.readInteger();
         this.var_1590 = param1.readString();
         this.var_2303 = param1.readInteger();
         this.var_2301 = param1.readBoolean();
         this.var_741 = param1.readInteger();
         this.var_1445 = param1.readInteger();
         this.var_2305 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_797.push(_loc4_);
            _loc3_++;
         }
         this.var_2304 = new RoomThumbnailData(param1);
         this.var_2207 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_797 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_322;
      }
      
      public function get event() : Boolean
      {
         return this.var_749;
      }
      
      public function get roomName() : String
      {
         return this.var_877;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2208;
      }
      
      public function get userCount() : int
      {
         return this.var_1990;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2302;
      }
      
      public function get description() : String
      {
         return this.var_1590;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2303;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2301;
      }
      
      public function get score() : int
      {
         return this.var_741;
      }
      
      public function get categoryId() : int
      {
         return this.var_1445;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2305;
      }
      
      public function get tags() : Array
      {
         return this.var_797;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2304;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2207;
      }
   }
}
