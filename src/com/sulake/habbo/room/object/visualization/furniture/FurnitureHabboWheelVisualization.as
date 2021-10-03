package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_898:int = 10;
      
      private static const const_576:int = 20;
      
      private static const const_1225:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
       
      
      private var var_281:Array;
      
      private var var_667:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
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
               this.var_281.push(const_1225);
               this.var_281.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_898)
         {
            if(this.var_667)
            {
               this.var_667 = false;
               this.var_281 = new Array();
               this.var_281.push(const_898 + param1);
               this.var_281.push(const_576 + param1);
               this.var_281.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
