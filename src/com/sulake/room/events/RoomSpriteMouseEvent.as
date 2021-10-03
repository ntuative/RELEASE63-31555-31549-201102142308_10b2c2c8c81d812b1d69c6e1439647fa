package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1904:String = "";
      
      private var var_1743:String = "";
      
      private var var_2635:String = "";
      
      private var var_2633:Number = 0;
      
      private var var_2634:Number = 0;
      
      private var var_2494:Number = 0;
      
      private var var_2493:Number = 0;
      
      private var var_2318:Boolean = false;
      
      private var var_2319:Boolean = false;
      
      private var var_2320:Boolean = false;
      
      private var var_2317:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1904 = param2;
         this.var_1743 = param3;
         this.var_2635 = param4;
         this.var_2633 = param5;
         this.var_2634 = param6;
         this.var_2494 = param7;
         this.var_2493 = param8;
         this.var_2318 = param9;
         this.var_2319 = param10;
         this.var_2320 = param11;
         this.var_2317 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1904;
      }
      
      public function get canvasId() : String
      {
         return this.var_1743;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2635;
      }
      
      public function get screenX() : Number
      {
         return this.var_2633;
      }
      
      public function get screenY() : Number
      {
         return this.var_2634;
      }
      
      public function get localX() : Number
      {
         return this.var_2494;
      }
      
      public function get localY() : Number
      {
         return this.var_2493;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2318;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2319;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2320;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2317;
      }
   }
}
