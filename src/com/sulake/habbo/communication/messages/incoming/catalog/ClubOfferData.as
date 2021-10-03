package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1683:String;
      
      private var var_1671:int;
      
      private var var_2283:Boolean;
      
      private var var_2286:Boolean;
      
      private var var_2289:int;
      
      private var var_2288:int;
      
      private var var_2285:int;
      
      private var var_2284:int;
      
      private var var_2287:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1683 = param1.readString();
         this.var_1671 = param1.readInteger();
         this.var_2283 = param1.readBoolean();
         this.var_2286 = param1.readBoolean();
         this.var_2289 = param1.readInteger();
         this.var_2288 = param1.readInteger();
         this.var_2285 = param1.readInteger();
         this.var_2284 = param1.readInteger();
         this.var_2287 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1683;
      }
      
      public function get price() : int
      {
         return this.var_1671;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2283;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2286;
      }
      
      public function get periods() : int
      {
         return this.var_2289;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2288;
      }
      
      public function get year() : int
      {
         return this.var_2285;
      }
      
      public function get month() : int
      {
         return this.var_2284;
      }
      
      public function get day() : int
      {
         return this.var_2287;
      }
   }
}
