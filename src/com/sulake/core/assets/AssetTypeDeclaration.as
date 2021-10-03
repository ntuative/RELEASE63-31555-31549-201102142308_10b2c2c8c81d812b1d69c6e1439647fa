package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2323:String;
      
      private var var_2321:Class;
      
      private var var_2322:Class;
      
      private var var_1681:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2323 = param1;
         this.var_2321 = param2;
         this.var_2322 = param3;
         if(rest == null)
         {
            this.var_1681 = new Array();
         }
         else
         {
            this.var_1681 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2323;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2321;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2322;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1681;
      }
   }
}
