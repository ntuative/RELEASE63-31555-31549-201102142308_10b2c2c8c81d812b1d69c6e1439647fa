package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2017:int;
      
      private var var_1967:String;
      
      private var var_1671:int;
      
      private var var_2016:int;
      
      private var var_2277:int;
      
      private var var_374:int;
      
      private var var_2018:int = -1;
      
      private var var_1672:int;
      
      private var var_43:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2017 = param3;
         this.var_1967 = param4;
         this.var_1671 = param5;
         this.var_374 = param6;
         this.var_2016 = param7;
         this.var_1672 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_43)
         {
            this.var_43.dispose();
            this.var_43 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2017;
      }
      
      public function get stuffData() : String
      {
         return this.var_1967;
      }
      
      public function get price() : int
      {
         return this.var_1671;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2016;
      }
      
      public function get image() : BitmapData
      {
         return this.var_43;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_43 != null)
         {
            this.var_43.dispose();
         }
         this.var_43 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2277 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2277;
      }
      
      public function get status() : int
      {
         return this.var_374;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2018;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2018 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1671 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1672;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1672 = param1;
      }
   }
}
