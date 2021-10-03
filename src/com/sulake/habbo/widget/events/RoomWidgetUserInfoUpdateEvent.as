package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_172:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_220:String = "RWUIUE_PEER";
      
      public static const const_1491:int = 0;
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const const_1094:int = 2;
      
      public static const const_1106:int = 3;
      
      public static const const_1362:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1880:String = "";
      
      private var var_1994:int;
      
      private var var_2010:int = 0;
      
      private var var_2011:int = 0;
      
      private var var_568:String = "";
      
      private var var_43:BitmapData = null;
      
      private var var_260:Array;
      
      private var var_1667:Array;
      
      private var var_1424:int = 0;
      
      private var var_2272:String = "";
      
      private var var_2270:int = 0;
      
      private var var_2271:int = 0;
      
      private var var_1911:Boolean = false;
      
      private var var_1601:String = "";
      
      private var var_2704:Boolean = false;
      
      private var var_2709:Boolean = true;
      
      private var var_1199:int = 0;
      
      private var var_2708:Boolean = false;
      
      private var var_2710:Boolean = false;
      
      private var var_2711:Boolean = false;
      
      private var var_2707:Boolean = false;
      
      private var var_2705:Boolean = false;
      
      private var var_2706:Boolean = false;
      
      private var var_2712:int = 0;
      
      private var var_1908:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_260 = [];
         this.var_1667 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1880 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1880;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_1994 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_1994;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2010 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2010;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2011 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2011;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_568 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_568;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_43 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_43;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_260 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_260;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1667;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1667 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1424 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1424;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2272 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2272;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2704 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2704;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1199 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1199;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2708 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2708;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2710 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2710;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2711 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2711;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2707 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2707;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2705 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2705;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2706 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2706;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2712 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2712;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2709 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2709;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1908 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1908;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2270 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2270;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2271 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2271;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1911 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1911;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1601 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1601;
      }
   }
}
