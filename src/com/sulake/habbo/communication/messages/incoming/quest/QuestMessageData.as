package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var _id:int;
      
      private var var_374:int;
      
      private var _type:String;
      
      private var var_1886:String;
      
      private var var_1885:int;
      
      private var var_1888:String;
      
      private var var_772:String;
      
      private var var_1887:String;
      
      private var _questBadgeAchievementTypeId:String;
      
      private var var_2654:uint;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this.var_374 = param1.readInteger();
         this._type = param1.readString();
         this.var_1886 = param1.readString();
         this.var_1885 = param1.readInteger();
         this.var_1888 = param1.readString();
         this.var_772 = param1.readString();
         this._questBadgeAchievementTypeId = param1.readString();
         var _loc2_:String = "";
         var _loc3_:int = this.var_772.length - 1;
         while(_loc3_ > 0 && this.isNumber(this.var_772.charAt(_loc3_)))
         {
            _loc2_ = this.var_772.charAt(_loc3_) + _loc2_;
            _loc3_--;
         }
         if(_loc3_ > 0)
         {
            this.var_1887 = this.var_772.substring(0,_loc3_ + 1);
         }
         else
         {
            this.var_1887 = this.var_772;
         }
         this.var_2654 = uint(_loc2_);
      }
      
      private function getNumber(param1:String) : int
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ - 48;
      }
      
      private function isNumber(param1:String) : Boolean
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ >= 48 && _loc2_ <= 57;
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this.var_374 = 0;
         this._type = "";
         this.var_1886 = "";
         this.var_1885 = 0;
         this.var_1888 = "";
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get status() : int
      {
         return this.var_374;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get roomItemTypeName() : String
      {
         return this.var_1886;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1885;
      }
      
      public function get endDateTimeStamp() : String
      {
         return this.var_1888;
      }
      
      public function get localizationCode() : String
      {
         return this.var_772;
      }
      
      public function get sortCode() : uint
      {
         return this.var_2654;
      }
      
      public function get localizationPrefix() : String
      {
         return this.var_1887;
      }
      
      public function get questBadgeAchievementTypeId() : String
      {
         return this._questBadgeAchievementTypeId;
      }
   }
}
