package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_898:int = 20;
      
      private static const const_576:int = 10;
      
      private static const const_1225:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
      
      private static const ANIMATION_ID_OFF:int = 30;
       
      
      private var var_281:Array;
      
      private var var_667:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_281 = new Array();
         super();
         super.setAnimation(ANIMATION_ID_OFF);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_576)
         {
            if(this.var_667)
            {
               this.var_667 = false;
               this.var_281 = new Array();
               if(_direction == 2)
               {
                  this.var_281.push(const_898 + 5 - param1);
                  this.var_281.push(const_576 + 5 - param1);
               }
               else
               {
                  this.var_281.push(const_898 + param1);
                  this.var_281.push(const_576 + param1);
               }
               this.var_281.push(ANIMATION_ID_OFF);
               return;
            }
            super.setAnimation(ANIMATION_ID_OFF);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(11))
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
