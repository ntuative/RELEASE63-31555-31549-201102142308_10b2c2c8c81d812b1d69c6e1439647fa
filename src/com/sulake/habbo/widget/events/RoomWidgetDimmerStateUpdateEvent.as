package com.sulake.habbo.widget.events
{
   public class RoomWidgetDimmerStateUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_61:String = "RWDSUE_DIMMER_STATE";
       
      
      private var _state:int;
      
      private var var_2269:int;
      
      private var var_1183:int;
      
      private var _color:uint;
      
      private var var_1182:int;
      
      public function RoomWidgetDimmerStateUpdateEvent(param1:int, param2:int, param3:int, param4:uint, param5:uint, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_61,param6,param7);
         this._state = param1;
         this.var_2269 = param2;
         this.var_1183 = param3;
         this._color = param4;
         this.var_1182 = param5;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get method_4() : int
      {
         return this.var_2269;
      }
      
      public function get effectId() : int
      {
         return this.var_1183;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : uint
      {
         return this.var_1182;
      }
   }
}
