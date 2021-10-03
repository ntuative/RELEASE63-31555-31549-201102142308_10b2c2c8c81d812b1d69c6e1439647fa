package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1327:Boolean;
      
      private var var_2246:int;
      
      private var var_1654:int;
      
      private var var_1653:int;
      
      private var var_2247:int;
      
      private var var_2245:int;
      
      private var var_2243:int;
      
      private var var_2244:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1327;
      }
      
      public function get commission() : int
      {
         return this.var_2246;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1654;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1653;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2245;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2247;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2243;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2244;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1327 = param1.readBoolean();
         this.var_2246 = param1.readInteger();
         this.var_1654 = param1.readInteger();
         this.var_1653 = param1.readInteger();
         this.var_2245 = param1.readInteger();
         this.var_2247 = param1.readInteger();
         this.var_2243 = param1.readInteger();
         this.var_2244 = param1.readInteger();
         return true;
      }
   }
}
