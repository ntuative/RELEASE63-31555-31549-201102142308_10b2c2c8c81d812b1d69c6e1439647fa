package com.sulake.habbo.communication.messages.parser.moderation
{
   public class IssueMessageData
   {
      
      public static const const_161:int = 1;
      
      public static const const_390:int = 2;
      
      public static const const_1575:int = 3;
       
      
      private var var_2154:int;
      
      private var _state:int;
      
      private var var_1445:int;
      
      private var _reportedCategoryId:int;
      
      private var var_1486:int;
      
      private var var_2157:int;
      
      private var var_2161:int = 0;
      
      private var var_2156:int;
      
      private var var_2152:String;
      
      private var var_1260:int;
      
      private var var_1530:String;
      
      private var var_2155:int;
      
      private var var_2163:String;
      
      private var _message:String;
      
      private var var_2162:int;
      
      private var var_877:String;
      
      private var var_1512:int;
      
      private var var_2160:String;
      
      private var var_322:int;
      
      private var var_2151:String;
      
      private var var_2158:String;
      
      private var var_2159:int;
      
      private var var_2153:int;
      
      public function IssueMessageData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:String, param9:int, param10:String, param11:int, param12:String, param13:String, param14:int, param15:String, param16:int, param17:String, param18:int, param19:String, param20:String, param21:int, param22:int)
      {
         super();
         this.var_2154 = param1;
         this._state = param2;
         this.var_1445 = param3;
         this._reportedCategoryId = param4;
         this.var_1486 = param5;
         this.var_2157 = param6;
         this.var_2156 = param7;
         this.var_2152 = param8;
         this.var_1260 = param9;
         this.var_1530 = param10;
         this.var_2155 = param11;
         this.var_2163 = param12;
         this._message = param13;
         this.var_2162 = param14;
         this.var_877 = param15;
         this.var_1512 = param16;
         this.var_2160 = param17;
         this.var_322 = param18;
         this.var_2151 = param19;
         this.var_2158 = param20;
         this.var_2159 = param21;
         this.var_2153 = param22;
      }
      
      public function get issueId() : int
      {
         return this.var_2154;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1445;
      }
      
      public function get reportedCategoryId() : int
      {
         return this._reportedCategoryId;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1486;
      }
      
      public function get priority() : int
      {
         return this.var_2157 + this.var_2161;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2156;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2152;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1260;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1530;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_2155;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2163;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2162;
      }
      
      public function get roomName() : String
      {
         return this.var_877;
      }
      
      public function get roomType() : int
      {
         return this.var_1512;
      }
      
      public function get flatType() : String
      {
         return this.var_2160;
      }
      
      public function get flatId() : int
      {
         return this.var_322;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2151;
      }
      
      public function get roomResources() : String
      {
         return this.var_2158;
      }
      
      public function get unitPort() : int
      {
         return this.var_2159;
      }
      
      public function get worldId() : int
      {
         return this.var_2153;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2161 = param1;
      }
      
      public function getOpenTime(param1:int) : String
      {
         var _loc2_:int = (param1 - this.var_1486) / 1000;
         var _loc3_:int = _loc2_ % 60;
         var _loc4_:int = _loc2_ / 60;
         var _loc5_:int = _loc4_ % 60;
         var _loc6_:int = _loc4_ / 60;
         var _loc7_:String = _loc3_ < 10 ? "0" + _loc3_ : "" + _loc3_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         var _loc9_:String = _loc6_ < 10 ? "0" + _loc6_ : "" + _loc6_;
         return _loc9_ + ":" + _loc8_ + ":" + _loc7_;
      }
   }
}
