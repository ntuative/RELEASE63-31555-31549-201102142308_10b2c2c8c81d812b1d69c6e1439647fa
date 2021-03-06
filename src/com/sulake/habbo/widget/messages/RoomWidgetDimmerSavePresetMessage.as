package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_702:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2257:int;
      
      private var var_2255:int;
      
      private var _color:uint;
      
      private var var_1182:int;
      
      private var var_2256:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_702);
         this.var_2257 = param1;
         this.var_2255 = param2;
         this._color = param3;
         this.var_1182 = param4;
         this.var_2256 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2257;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2255;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1182;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2256;
      }
   }
}
