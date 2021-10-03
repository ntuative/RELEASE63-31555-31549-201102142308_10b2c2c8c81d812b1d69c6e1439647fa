package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2016:int;
      
      private var var_2258:int;
      
      private var var_2259:int;
      
      private var _dayOffsets:Array;
      
      private var var_1840:Array;
      
      private var var_1839:Array;
      
      private var var_2260:int;
      
      private var var_2261:int;
      
      public function MarketplaceItemStatsParser()
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2016 = param1.readInteger();
         this.var_2258 = param1.readInteger();
         this.var_2259 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1840 = [];
         this.var_1839 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1840.push(param1.readInteger());
            this.var_1839.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2261 = param1.readInteger();
         this.var_2260 = param1.readInteger();
         return true;
      }
   }
}
