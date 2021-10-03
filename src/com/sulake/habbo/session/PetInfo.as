package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1814:int;
      
      private var var_1292:int;
      
      private var var_2486:int;
      
      private var var_2066:int;
      
      private var var_2487:int;
      
      private var _energy:int;
      
      private var var_2489:int;
      
      private var _nutrition:int;
      
      private var var_2488:int;
      
      private var var_1991:int;
      
      private var _ownerName:String;
      
      private var var_2028:int;
      
      private var var_509:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1814;
      }
      
      public function get level() : int
      {
         return this.var_1292;
      }
      
      public function get levelMax() : int
      {
         return this.var_2486;
      }
      
      public function get experience() : int
      {
         return this.var_2066;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2487;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2489;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2488;
      }
      
      public function get ownerId() : int
      {
         return this.var_1991;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2028;
      }
      
      public function get age() : int
      {
         return this.var_509;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1814 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1292 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2486 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2066 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2487 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2489 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2488 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_1991 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2028 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_509 = param1;
      }
   }
}
