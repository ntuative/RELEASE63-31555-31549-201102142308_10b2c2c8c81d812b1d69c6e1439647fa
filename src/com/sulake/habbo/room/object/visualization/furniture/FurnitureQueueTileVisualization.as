package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1269:int = 2;
      
      private static const const_1270:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_281:Array;
      
      private var var_1083:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_281 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1269)
         {
            this.var_281 = new Array();
            this.var_281.push(const_1270);
            this.var_1083 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1083 > 0)
         {
            --this.var_1083;
         }
         if(this.var_1083 == 0)
         {
            if(this.var_281.length > 0)
            {
               super.setAnimation(this.var_281.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
