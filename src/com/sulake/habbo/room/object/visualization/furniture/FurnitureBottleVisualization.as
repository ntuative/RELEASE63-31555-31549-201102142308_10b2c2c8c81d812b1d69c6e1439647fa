package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_898:int = 20;
      
      private static const const_576:int = 9;
      
      private static const ANIMATION_ID_ROLL:int = -1;
       
      
      private var var_281:Array;
      
      private var var_667:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_281 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_667)
            {
               this.var_667 = true;
               this.var_281 = new Array();
               this.var_281.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_667)
            {
               this.var_667 = false;
               this.var_281 = new Array();
               this.var_281.push(const_898);
               this.var_281.push(const_576 + param1);
               this.var_281.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(0))
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
