package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_914:IAssetLoader;
      
      private var var_1580:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1580 = param1;
         this.var_914 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1580;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_914;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_914 != null)
            {
               if(!this.var_914.disposed)
               {
                  this.var_914.dispose();
                  this.var_914 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
