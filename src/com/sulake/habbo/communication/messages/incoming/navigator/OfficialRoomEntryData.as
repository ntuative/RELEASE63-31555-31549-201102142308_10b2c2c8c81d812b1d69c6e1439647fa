package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_961:int = 1;
      
      public static const const_810:int = 2;
      
      public static const const_830:int = 3;
      
      public static const const_1415:int = 4;
       
      
      private var _index:int;
      
      private var var_2082:String;
      
      private var var_2080:String;
      
      private var var_2084:Boolean;
      
      private var var_2083:String;
      
      private var var_826:String;
      
      private var var_2081:int;
      
      private var var_1990:int;
      
      private var _type:int;
      
      private var var_2057:String;
      
      private var var_840:GuestRoomData;
      
      private var var_841:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2082 = param1.readString();
         this.var_2080 = param1.readString();
         this.var_2084 = param1.readInteger() == 1;
         this.var_2083 = param1.readString();
         this.var_826 = param1.readString();
         this.var_2081 = param1.readInteger();
         this.var_1990 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_961)
         {
            this.var_2057 = param1.readString();
         }
         else if(this._type == const_830)
         {
            this.var_841 = new PublicRoomData(param1);
         }
         else if(this._type == const_810)
         {
            this.var_840 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_840 != null)
         {
            this.var_840.dispose();
            this.var_840 = null;
         }
         if(this.var_841 != null)
         {
            this.var_841.dispose();
            this.var_841 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2082;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2080;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2084;
      }
      
      public function get picText() : String
      {
         return this.var_2083;
      }
      
      public function get picRef() : String
      {
         return this.var_826;
      }
      
      public function get folderId() : int
      {
         return this.var_2081;
      }
      
      public function get tag() : String
      {
         return this.var_2057;
      }
      
      public function get userCount() : int
      {
         return this.var_1990;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_840;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_841;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_961)
         {
            return 0;
         }
         if(this.type == const_810)
         {
            return this.var_840.maxUserCount;
         }
         if(this.type == const_830)
         {
            return this.var_841.maxUsers;
         }
         return 0;
      }
   }
}
