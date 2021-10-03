package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1292:int;
      
      private var var_1902:int;
      
      private var var_2100:int;
      
      private var var_1584:int;
      
      private var var_1293:int;
      
      private var var_2230:String = "";
      
      private var var_2650:String = "";
      
      private var var_2649:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1292 = param1.readInteger();
         this.var_2230 = param1.readString();
         this.var_1902 = param1.readInteger();
         this.var_2100 = param1.readInteger();
         this.var_1584 = param1.readInteger();
         this.var_1293 = param1.readInteger();
         this.var_2649 = param1.readInteger();
         this.var_2650 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1292;
      }
      
      public function get points() : int
      {
         return this.var_1902;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2100;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1584;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1293;
      }
      
      public function get badgeID() : String
      {
         return this.var_2230;
      }
      
      public function get achievementID() : int
      {
         return this.var_2649;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2650;
      }
   }
}
