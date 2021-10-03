package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.geom.Vector3D;
   
   public class FurnitureParticleSystemParticle
   {
       
      
      private var _x:Number;
      
      private var var_168:Number;
      
      private var var_167:Number;
      
      private var var_1850:Number;
      
      private var var_1852:Number;
      
      private var var_1849:Number;
      
      private var var_1177:Boolean = false;
      
      private var _direction:Vector3D;
      
      private var var_509:int = 0;
      
      private var var_960:int;
      
      private var var_2605:Boolean = false;
      
      private var var_1851:Boolean = false;
      
      private var var_1853:Number;
      
      private var _alphaMultiplier:Number = 1.0;
      
      private var _frames:Array;
      
      public function FurnitureParticleSystemParticle()
      {
         super();
      }
      
      public function get fade() : Boolean
      {
         return this.var_1851;
      }
      
      public function get alphaMultiplier() : Number
      {
         return this._alphaMultiplier;
      }
      
      public function get direction() : Vector3D
      {
         return this._direction;
      }
      
      public function get age() : int
      {
         return this.var_509;
      }
      
      public function init(param1:Number, param2:Number, param3:Number, param4:Vector3D, param5:Number, param6:Number, param7:int, param8:Boolean = false, param9:Array = null, param10:Boolean = false) : void
      {
         this._x = param1;
         this.var_168 = param2;
         this.var_167 = param3;
         this._direction = new Vector3D(param4.x,param4.y,param4.z);
         this._direction.scaleBy(param5);
         this.var_1850 = this._x - this._direction.x * param6;
         this.var_1852 = this.var_168 - this._direction.y * param6;
         this.var_1849 = this.var_167 - this._direction.z * param6;
         this.var_509 = 0;
         this.var_1177 = false;
         this.var_960 = param7;
         this.var_2605 = param8;
         this._frames = param9;
         this.var_1851 = param10;
         this._alphaMultiplier = 1;
         this.var_1853 = 0.5 + Math.random() * 0.5;
      }
      
      public function update() : void
      {
         ++this.var_509;
         if(this.var_509 == this.var_960)
         {
            this.ignite();
         }
         if(this.var_1851)
         {
            if(this.var_509 / this.var_960 > this.var_1853)
            {
               this._alphaMultiplier = (this.var_960 - this.var_509) / (this.var_960 * (1 - this.var_1853));
            }
         }
      }
      
      public function getAsset() : IGraphicAsset
      {
         if(this._frames && this._frames.length > 0)
         {
            return this._frames[this.var_509 % this._frames.length];
         }
         return null;
      }
      
      protected function ignite() : void
      {
      }
      
      public function get isEmitter() : Boolean
      {
         return this.var_2605;
      }
      
      public function get isAlive() : Boolean
      {
         return this.var_509 <= this.var_960;
      }
      
      public function dispose() : void
      {
         this._direction = null;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_168;
      }
      
      public function get z() : Number
      {
         return this.var_167;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.var_168 = param1;
      }
      
      public function set z(param1:Number) : void
      {
         this.var_167 = param1;
      }
      
      public function get lastX() : Number
      {
         return this.var_1850;
      }
      
      public function set lastX(param1:Number) : void
      {
         this.var_1177 = true;
         this.var_1850 = param1;
      }
      
      public function get lastY() : Number
      {
         return this.var_1852;
      }
      
      public function set lastY(param1:Number) : void
      {
         this.var_1177 = true;
         this.var_1852 = param1;
      }
      
      public function get lastZ() : Number
      {
         return this.var_1849;
      }
      
      public function set lastZ(param1:Number) : void
      {
         this.var_1177 = true;
         this.var_1849 = param1;
      }
      
      public function get hasMoved() : Boolean
      {
         return this.var_1177;
      }
      
      public function toString() : String
      {
         return [this._x,this.var_168,this.var_167].toString();
      }
   }
}
