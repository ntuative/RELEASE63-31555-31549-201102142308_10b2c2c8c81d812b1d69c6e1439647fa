package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_885:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_972:String = "inventory_effects";
      
      public static const const_1085:String = "inventory_badges";
      
      public static const const_1446:String = "inventory_clothes";
      
      public static const const_1429:String = "inventory_furniture";
       
      
      private var var_2681:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_885);
         this.var_2681 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2681;
      }
   }
}
