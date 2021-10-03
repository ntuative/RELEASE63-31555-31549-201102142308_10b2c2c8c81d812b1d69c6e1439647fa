package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_813:RoomObjectLocationCacheItem = null;
      
      private var var_201:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_813 = new RoomObjectLocationCacheItem(param1);
         this.var_201 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_813;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_201;
      }
      
      public function dispose() : void
      {
         if(this.var_813 != null)
         {
            this.var_813.dispose();
            this.var_813 = null;
         }
         if(this.var_201 != null)
         {
            this.var_201.dispose();
            this.var_201 = null;
         }
      }
   }
}
