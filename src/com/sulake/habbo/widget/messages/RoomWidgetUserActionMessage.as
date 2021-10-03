package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_806:String = "RWUAM_WHISPER_USER";
      
      public static const const_859:String = "RWUAM_IGNORE_USER";
      
      public static const const_648:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_458:String = "RWUAM_KICK_USER";
      
      public static const const_890:String = "RWUAM_BAN_USER";
      
      public static const const_694:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_744:String = "RWUAM_RESPECT_USER";
      
      public static const const_770:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_622:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_624:String = "RWUAM_START_TRADING";
      
      public static const const_774:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_425:String = "RWUAM_KICK_BOT";
      
      public static const const_751:String = "RWUAM_REPORT";
      
      public static const const_548:String = "RWUAM_PICKUP_PET";
      
      public static const const_1360:String = "RWUAM_TRAIN_PET";
      
      public static const const_473:String = " RWUAM_RESPECT_PET";
      
      public static const const_375:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
