package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationStateData
   {
       
      
      private var var_1777:int = -1;
      
      private var var_2483:int = 0;
      
      private var var_1778:Boolean = false;
      
      private var var_578:int = 0;
      
      private var _frames:Array;
      
      private var var_936:Array;
      
      private var var_937:Array;
      
      private var var_601:int = 0;
      
      public function AnimationStateData()
      {
         this._frames = [];
         this.var_936 = [];
         this.var_937 = [];
         super();
      }
      
      public function get animationOver() : Boolean
      {
         return this.var_1778;
      }
      
      public function set animationOver(param1:Boolean) : void
      {
         this.var_1778 = param1;
      }
      
      public function get frameCounter() : int
      {
         return this.var_578;
      }
      
      public function set frameCounter(param1:int) : void
      {
         this.var_578 = param1;
      }
      
      public function get animationId() : int
      {
         return this.var_1777;
      }
      
      public function set animationId(param1:int) : void
      {
         if(param1 != this.var_1777)
         {
            this.var_1777 = param1;
            this.resetAnimationFrames(false);
         }
      }
      
      public function get animationAfterTransitionId() : int
      {
         return this.var_2483;
      }
      
      public function set animationAfterTransitionId(param1:int) : void
      {
         this.var_2483 = param1;
      }
      
      public function dispose() : void
      {
         this._frames = null;
         this.var_936 = null;
         this.var_937 = null;
      }
      
      public function setLayerCount(param1:int) : void
      {
         this.var_601 = param1;
         this.resetAnimationFrames();
      }
      
      public function resetAnimationFrames(param1:Boolean = true) : void
      {
         var _loc3_:* = null;
         if(param1 || this._frames == null)
         {
            this._frames = [];
         }
         this.var_936 = [];
         this.var_937 = [];
         this.var_1778 = false;
         this.var_578 = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_601)
         {
            if(param1 || this._frames.length <= _loc2_)
            {
               this._frames[_loc2_] = null;
            }
            else
            {
               _loc3_ = this._frames[_loc2_];
               if(_loc3_ != null)
               {
                  this._frames[_loc2_] = new AnimationFrame(_loc3_.id,_loc3_.x,_loc3_.y,_loc3_.repeats,0,_loc3_.isLastFrame);
               }
            }
            this.var_936[_loc2_] = false;
            this.var_937[_loc2_] = false;
            _loc2_++;
         }
      }
      
      public function getFrame(param1:int) : AnimationFrame
      {
         if(param1 >= 0 && param1 < this.var_601)
         {
            return this._frames[param1];
         }
         return null;
      }
      
      public function setFrame(param1:int, param2:AnimationFrame) : void
      {
         if(param1 >= 0 && param1 < this.var_601)
         {
            this._frames[param1] = param2;
         }
      }
      
      public function getAnimationPlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_601)
         {
            return this.var_937[param1];
         }
         return true;
      }
      
      public function setAnimationPlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_601)
         {
            this.var_937[param1] = param2;
         }
      }
      
      public function getLastFramePlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_601)
         {
            return this.var_936[param1];
         }
         return true;
      }
      
      public function setLastFramePlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_601)
         {
            this.var_936[param1] = param2;
         }
      }
   }
}
