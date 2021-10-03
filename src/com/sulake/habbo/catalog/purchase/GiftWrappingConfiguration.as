package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1327:Boolean = false;
      
      private var var_1671:int;
      
      private var var_1546:Array;
      
      private var var_665:Array;
      
      private var var_664:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1327 = _loc2_.isWrappingEnabled;
         this.var_1671 = _loc2_.wrappingPrice;
         this.var_1546 = _loc2_.stuffTypes;
         this.var_665 = _loc2_.boxTypes;
         this.var_664 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1327;
      }
      
      public function get price() : int
      {
         return this.var_1671;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1546;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_665;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_664;
      }
   }
}
