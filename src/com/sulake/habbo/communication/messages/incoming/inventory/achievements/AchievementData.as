package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1292:int;
      
      private var var_282:String;
      
      private var var_2459:int;
      
      private var var_2100:int;
      
      private var var_1584:int;
      
      private var var_2458:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1292 = param1.readInteger();
         this.var_282 = param1.readString();
         this.var_2459 = param1.readInteger();
         this.var_2100 = param1.readInteger();
         this.var_1584 = param1.readInteger();
         this.var_2458 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_282;
      }
      
      public function get level() : int
      {
         return this.var_1292;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2459;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2100;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1584;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2458;
      }
   }
}
