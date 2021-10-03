package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_965:String = "select_outfit";
       
      
      private var var_2007:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_965);
         this.var_2007 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_2007;
      }
   }
}
