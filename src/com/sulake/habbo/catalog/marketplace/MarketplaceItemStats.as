package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2016:int;
      
      private var var_2258:int;
      
      private var var_2259:int;
      
      private var _dayOffsets:Array;
      
      private var var_1840:Array;
      
      private var var_1839:Array;
      
      private var var_2260:int;
      
      private var var_2261:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2016;
      }
      
      public function get offerCount() : int
      {
         return this.var_2258;
      }
      
      public function get historyLength() : int
      {
         return this.var_2259;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1840;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1839;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2260;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2261;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2016 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2258 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2259 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1840 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1839 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2260 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2261 = param1;
      }
   }
}
