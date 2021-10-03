package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_990:String;
      
      protected var var_178:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_795:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_795 = param1;
         this.var_990 = param2;
      }
      
      public function get url() : String
      {
         return this.var_990;
      }
      
      public function get content() : Object
      {
         return this.var_178;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_795;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_178.loaderInfo != null)
            {
               if(this.var_178.loaderInfo.loader != null)
               {
                  this.var_178.loaderInfo.loader.unload();
               }
            }
            this.var_178 = null;
            this.var_795 = null;
            this._disposed = true;
            this.var_990 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_178 = param1 as DisplayObject;
            if(this.var_178 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_178 = DisplayAsset(param1).var_178;
            this.var_795 = DisplayAsset(param1).var_795;
            if(this.var_178 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_178 = DisplayAsset(param1).var_178;
            this.var_795 = DisplayAsset(param1).var_795;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
