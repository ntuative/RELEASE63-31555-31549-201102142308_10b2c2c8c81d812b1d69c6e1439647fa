package com.sulake.habbo.widget.events
{
   public class RoomWidgetUserGivableBadgesUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_783:String = "RWUGBUE_USER_GIVABLE_BADGES";
       
      
      private var var_260:Array;
      
      public function RoomWidgetUserGivableBadgesUpdateEvent(param1:Array, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_260 = [];
         super(const_783,param2,param3);
         this.var_260 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_260;
      }
   }
}
