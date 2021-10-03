package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_700:String = "";
      
      public static const const_544:int = 0;
      
      public static const const_430:int = 255;
      
      public static const const_682:Boolean = false;
      
      public static const const_534:int = 0;
      
      public static const const_516:int = 0;
      
      public static const const_420:int = 0;
      
      public static const const_1122:int = 1;
      
      public static const const_1032:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2057:String = "";
      
      private var var_1834:int = 0;
      
      private var var_2061:int = 255;
      
      private var var_2528:Boolean = false;
      
      private var var_2530:int = 0;
      
      private var var_2529:int = 0;
      
      private var var_2531:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2057 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2057;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1834 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1834;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2061 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2061;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2528 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2528;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2530 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2530;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2529 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2529;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2531 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2531;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
