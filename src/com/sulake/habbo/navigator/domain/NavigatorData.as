package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1656:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_189:MsgWithRequestId;
      
      private var var_554:RoomEventData;
      
      private var var_2055:Boolean;
      
      private var var_2051:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2046:int;
      
      private var var_237:GuestRoomData;
      
      private var var_828:PublicRoomShortData;
      
      private var var_2050:int;
      
      private var var_2049:Boolean;
      
      private var var_2047:int;
      
      private var var_2053:Boolean;
      
      private var var_1560:int;
      
      private var var_2048:Boolean;
      
      private var var_1276:Array;
      
      private var var_1277:Array;
      
      private var var_2054:int;
      
      private var var_1278:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1042:Boolean;
      
      private var var_2044:int;
      
      private var var_2045:Boolean;
      
      private var var_2052:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1276 = new Array();
         this.var_1277 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_237 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_237 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_828 = null;
         this.var_237 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_828 = param1.publicSpace;
            this.var_554 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_554 != null)
         {
            this.var_554.dispose();
            this.var_554 = null;
         }
         if(this.var_828 != null)
         {
            this.var_828.dispose();
            this.var_828 = null;
         }
         if(this.var_237 != null)
         {
            this.var_237.dispose();
            this.var_237 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_237 != null)
         {
            this.var_237.dispose();
         }
         this.var_237 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_554 != null)
         {
            this.var_554.dispose();
         }
         this.var_554 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_189 != null && this.var_189 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_189 != null && this.var_189 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_189 != null && this.var_189 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_189 = param1;
         this.var_1042 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_189 = param1;
         this.var_1042 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_189 = param1;
         this.var_1042 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_189 == null)
         {
            return;
         }
         this.var_189.dispose();
         this.var_189 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_189 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_189 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_189 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_554;
      }
      
      public function get avatarId() : int
      {
         return this.var_2046;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2055;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2051;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_237;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_828;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2049;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2047;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1560;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2053;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2044;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2050;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2048;
      }
      
      public function get adIndex() : int
      {
         return this.var_2052;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2045;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2046 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2047 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2049 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2055 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2051 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2053 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1560 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2044 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2050 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2048 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2052 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2045 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1276 = param1;
         this.var_1277 = new Array();
         for each(_loc2_ in this.var_1276)
         {
            if(_loc2_.visible)
            {
               this.var_1277.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1276;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1277;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2054 = param1.limit;
         this.var_1278 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1278 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_237.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_237 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_237.flatId;
         return this.var_1560 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1278 >= this.var_2054;
      }
      
      public function startLoading() : void
      {
         this.var_1042 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1042;
      }
   }
}
