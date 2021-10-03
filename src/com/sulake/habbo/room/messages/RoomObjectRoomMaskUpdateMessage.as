package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectRoomMaskUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_426:String = "RORMUM_ADD_MASK";
      
      public static const const_860:String = "RORMUM_ADD_MASK";
      
      public static const const_1450:String = "door";
      
      public static const const_444:String = "window";
      
      public static const const_260:String = "hole";
       
      
      private var _type:String = "";
      
      private var var_2395:String = "";
      
      private var var_2394:String = "";
      
      private var var_2393:Vector3d = null;
      
      private var var_2396:String = "window";
      
      public function RoomObjectRoomMaskUpdateMessage(param1:String, param2:String, param3:String = null, param4:IVector3d = null, param5:String = "window")
      {
         super(null,null);
         this._type = param1;
         this.var_2395 = param2;
         this.var_2394 = param3;
         if(param4 != null)
         {
            this.var_2393 = new Vector3d(param4.x,param4.y,param4.z);
         }
         this.var_2396 = param5;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get maskId() : String
      {
         return this.var_2395;
      }
      
      public function get maskType() : String
      {
         return this.var_2394;
      }
      
      public function get maskLocation() : IVector3d
      {
         return this.var_2393;
      }
      
      public function get maskCategory() : String
      {
         return this.var_2396;
      }
   }
}
