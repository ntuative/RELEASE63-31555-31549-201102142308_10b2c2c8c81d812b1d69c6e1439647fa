package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_81:String = "i";
      
      public static const const_88:String = "s";
      
      public static const const_248:String = "e";
       
      
      private var var_1810:String;
      
      private var var_2516:int;
      
      private var var_1415:String;
      
      private var var_1414:int;
      
      private var var_1811:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1810 = param1.readString();
         this.var_2516 = param1.readInteger();
         this.var_1415 = param1.readString();
         this.var_1414 = param1.readInteger();
         this.var_1811 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1810;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2516;
      }
      
      public function get extraParam() : String
      {
         return this.var_1415;
      }
      
      public function get productCount() : int
      {
         return this.var_1414;
      }
      
      public function get expiration() : int
      {
         return this.var_1811;
      }
   }
}
