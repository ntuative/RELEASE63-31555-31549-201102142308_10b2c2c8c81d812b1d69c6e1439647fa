package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_708:TileHeightMap = null;
      
      private var var_1087:LegacyWallGeometry = null;
      
      private var var_1088:RoomCamera = null;
      
      private var var_706:SelectedRoomObjectData = null;
      
      private var var_707:SelectedRoomObjectData = null;
      
      private var var_2217:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1087 = new LegacyWallGeometry();
         this.var_1088 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_708;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_708 != null)
         {
            this.var_708.dispose();
         }
         this.var_708 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1087;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1088;
      }
      
      public function get worldType() : String
      {
         return this.var_2217;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_2217 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_706;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_706 != null)
         {
            this.var_706.dispose();
         }
         this.var_706 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_707;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_707 != null)
         {
            this.var_707.dispose();
         }
         this.var_707 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_708 != null)
         {
            this.var_708.dispose();
            this.var_708 = null;
         }
         if(this.var_1087 != null)
         {
            this.var_1087.dispose();
            this.var_1087 = null;
         }
         if(this.var_1088 != null)
         {
            this.var_1088.dispose();
            this.var_1088 = null;
         }
         if(this.var_706 != null)
         {
            this.var_706.dispose();
            this.var_706 = null;
         }
         if(this.var_707 != null)
         {
            this.var_707.dispose();
            this.var_707 = null;
         }
      }
   }
}
