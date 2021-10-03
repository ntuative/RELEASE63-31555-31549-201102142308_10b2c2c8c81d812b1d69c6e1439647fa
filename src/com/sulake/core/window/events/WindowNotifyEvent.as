package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1424:String = "WN_CRETAE";
      
      public static const const_1578:String = "WN_CREATED";
      
      public static const const_1154:String = "WN_DESTROY";
      
      public static const const_1180:String = "WN_DESTROYED";
      
      public static const const_1133:String = "WN_OPEN";
      
      public static const const_1083:String = "WN_OPENED";
      
      public static const const_1006:String = "WN_CLOSE";
      
      public static const const_996:String = "WN_CLOSED";
      
      public static const const_1139:String = "WN_FOCUS";
      
      public static const const_999:String = "WN_FOCUSED";
      
      public static const const_1120:String = "WN_UNFOCUS";
      
      public static const const_1137:String = "WN_UNFOCUSED";
      
      public static const const_1119:String = "WN_ACTIVATE";
      
      public static const const_385:String = "WN_ACTVATED";
      
      public static const const_1130:String = "WN_DEACTIVATE";
      
      public static const const_1151:String = "WN_DEACTIVATED";
      
      public static const const_559:String = "WN_SELECT";
      
      public static const const_352:String = "WN_SELECTED";
      
      public static const const_678:String = "WN_UNSELECT";
      
      public static const const_618:String = "WN_UNSELECTED";
      
      public static const const_974:String = "WN_LOCK";
      
      public static const const_1054:String = "WN_LOCKED";
      
      public static const const_1030:String = "WN_UNLOCK";
      
      public static const const_1110:String = "WN_UNLOCKED";
      
      public static const const_1161:String = "WN_ENABLE";
      
      public static const const_764:String = "WN_ENABLED";
      
      public static const const_1166:String = "WN_DISABLE";
      
      public static const const_671:String = "WN_DISABLED";
      
      public static const const_882:String = "WN_RESIZE";
      
      public static const const_166:String = "WN_RESIZED";
      
      public static const const_1160:String = "WN_RELOCATE";
      
      public static const const_518:String = "WN_RELOCATED";
      
      public static const const_1159:String = "WN_MINIMIZE";
      
      public static const const_1035:String = "WN_MINIMIZED";
      
      public static const const_1064:String = "WN_MAXIMIZE";
      
      public static const const_1060:String = "WN_MAXIMIZED";
      
      public static const const_1157:String = "WN_RESTORE";
      
      public static const const_1125:String = "WN_RESTORED";
      
      public static const const_1741:String = "WN_ARRANGE";
      
      public static const const_1854:String = "WN_ARRANGED";
      
      public static const const_1755:String = "WN_UPDATE";
      
      public static const const_1708:String = "WN_UPDATED";
      
      public static const const_384:String = "WN_CHILD_ADDED";
      
      public static const const_803:String = "WN_CHILD_REMOVED";
      
      public static const const_310:String = "WN_CHILD_RESIZED";
      
      public static const const_300:String = "WN_CHILD_RELOCATED";
      
      public static const const_228:String = "WN_CHILD_ACTIVATED";
      
      public static const const_438:String = "WN_PARENT_ADDED";
      
      public static const const_1148:String = "WN_PARENT_REMOVED";
      
      public static const const_563:String = "WN_PARENT_RESIZED";
      
      public static const const_1127:String = "WN_PARENT_RELOCATED";
      
      public static const const_703:String = "WN_PARENT_ACTIVATED";
      
      public static const const_536:String = "WN_STATE_UPDATED";
      
      public static const const_519:String = "WN_STYLE_UPDATED";
      
      public static const const_421:String = "WN_PARAM_UPDATED";
      
      public static const const_1764:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1978,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
