package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_938:int = 3;
       
      
      private var var_2518:int = -1;
      
      private var var_2525:int = -2;
      
      private var var_357:Vector3d = null;
      
      private var var_419:Vector3d = null;
      
      private var var_2524:Boolean = false;
      
      private var var_2519:Boolean = false;
      
      private var var_2520:Boolean = false;
      
      private var var_2523:Boolean = false;
      
      private var var_2517:int = 0;
      
      private var var_2526:int = 0;
      
      private var var_2522:int = 0;
      
      private var var_2521:int = 0;
      
      private var var_1408:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_419;
      }
      
      public function get targetId() : int
      {
         return this.var_2518;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2525;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2524;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2519;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2520;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2523;
      }
      
      public function get screenWd() : int
      {
         return this.var_2517;
      }
      
      public function get screenHt() : int
      {
         return this.var_2526;
      }
      
      public function get roomWd() : int
      {
         return this.var_2522;
      }
      
      public function get roomHt() : int
      {
         return this.var_2521;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2518 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2525 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2524 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2519 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2520 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2523 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2517 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2526 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2522 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2521 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_357 == null)
         {
            this.var_357 = new Vector3d();
         }
         if(this.var_357.x != param1.x || this.var_357.y != param1.y || this.var_357.z != param1.z)
         {
            this.var_357.assign(param1);
            this.var_1408 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_357 = null;
         this.var_419 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_419 != null)
         {
            return;
         }
         this.var_419 = new Vector3d();
         this.var_419.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_357 != null && this.var_419 != null)
         {
            ++this.var_1408;
            _loc4_ = Vector3d.method_1(this.var_357,this.var_419);
            if(_loc4_.length <= param2)
            {
               this.var_419 = this.var_357;
               this.var_357 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_938 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1408 <= const_938)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_419 = Vector3d.sum(this.var_419,_loc4_);
            }
         }
      }
   }
}
