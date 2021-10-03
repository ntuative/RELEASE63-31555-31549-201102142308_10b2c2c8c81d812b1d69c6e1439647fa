package com.sulake.habbo.widget.events
{
   public class RoomWidgetCreditFurniUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_737:String = "RWCFUE_CREDIT_FURNI_UPDATE";
       
      
      private var _objectId:int;
      
      private var var_2236:Number;
      
      public function RoomWidgetCreditFurniUpdateEvent(param1:String, param2:int, param3:Number, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.var_2236 = param3;
         this._objectId = param2;
      }
      
      public function get creditValue() : Number
      {
         return this.var_2236;
      }
      
      public function get objectId() : int
      {
         return this._objectId;
      }
   }
}
