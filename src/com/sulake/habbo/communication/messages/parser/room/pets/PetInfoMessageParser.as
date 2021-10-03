package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1814:int;
      
      private var _name:String;
      
      private var var_1292:int;
      
      private var var_2666:int;
      
      private var var_2066:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_568:String;
      
      private var var_2663:int;
      
      private var var_2665:int;
      
      private var var_2664:int;
      
      private var var_2028:int;
      
      private var var_1991:int;
      
      private var _ownerName:String;
      
      private var var_509:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1814;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1292;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2666;
      }
      
      public function get experience() : int
      {
         return this.var_2066;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_568;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2663;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2665;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2664;
      }
      
      public function get respect() : int
      {
         return this.var_2028;
      }
      
      public function get ownerId() : int
      {
         return this.var_1991;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_509;
      }
      
      public function flush() : Boolean
      {
         this.var_1814 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1814 = param1.readInteger();
         this._name = param1.readString();
         this.var_1292 = param1.readInteger();
         this.var_2666 = param1.readInteger();
         this.var_2066 = param1.readInteger();
         this.var_2663 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2665 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2664 = param1.readInteger();
         this.var_568 = param1.readString();
         this.var_2028 = param1.readInteger();
         this.var_1991 = param1.readInteger();
         this.var_509 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
