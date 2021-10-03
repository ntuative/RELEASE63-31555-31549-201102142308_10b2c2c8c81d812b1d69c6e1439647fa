package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_243:String = "ROE_MOUSE_CLICK";
      
      public static const const_1713:String = "ROE_MOUSE_ENTER";
      
      public static const const_472:String = "ROE_MOUSE_MOVE";
      
      public static const const_1736:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1915:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_416:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1904:String = "";
      
      private var var_2319:Boolean;
      
      private var var_2318:Boolean;
      
      private var var_2320:Boolean;
      
      private var var_2317:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1904 = param2;
         this.var_2319 = param5;
         this.var_2318 = param6;
         this.var_2320 = param7;
         this.var_2317 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1904;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2319;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2318;
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
