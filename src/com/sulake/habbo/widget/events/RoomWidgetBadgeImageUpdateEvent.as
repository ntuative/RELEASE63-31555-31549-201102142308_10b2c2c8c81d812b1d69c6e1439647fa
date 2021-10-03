package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_667:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2230:String;
      
      private var var_2229:BitmapData;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_667,param3,param4);
         this.var_2230 = param1;
         this.var_2229 = param2;
      }
      
      public function get badgeID() : String
      {
         return this.var_2230;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_2229;
      }
   }
}
