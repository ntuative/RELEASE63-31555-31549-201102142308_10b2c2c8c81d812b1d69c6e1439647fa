package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1356:String = "WE_CREATE";
      
      public static const const_1506:String = "WE_CREATED";
      
      public static const const_1589:String = "WE_DESTROY";
      
      public static const const_320:String = "WE_DESTROYED";
      
      public static const const_1577:String = "WE_OPEN";
      
      public static const const_1483:String = "WE_OPENED";
      
      public static const const_1620:String = "WE_CLOSE";
      
      public static const const_1613:String = "WE_CLOSED";
      
      public static const const_1438:String = "WE_FOCUS";
      
      public static const const_273:String = "WE_FOCUSED";
      
      public static const const_1363:String = "WE_UNFOCUS";
      
      public static const const_1640:String = "WE_UNFOCUSED";
      
      public static const const_1552:String = "WE_ACTIVATE";
      
      public static const const_1499:String = "WE_ACTIVATED";
      
      public static const const_1464:String = "WE_DEACTIVATE";
      
      public static const const_716:String = "WE_DEACTIVATED";
      
      public static const const_512:String = "WE_SELECT";
      
      public static const const_57:String = "WE_SELECTED";
      
      public static const const_780:String = "WE_UNSELECT";
      
      public static const const_836:String = "WE_UNSELECTED";
      
      public static const const_1902:String = "WE_ATTACH";
      
      public static const const_1790:String = "WE_ATTACHED";
      
      public static const const_1895:String = "WE_DETACH";
      
      public static const const_1794:String = "WE_DETACHED";
      
      public static const const_1403:String = "WE_LOCK";
      
      public static const const_1539:String = "WE_LOCKED";
      
      public static const const_1568:String = "WE_UNLOCK";
      
      public static const const_1604:String = "WE_UNLOCKED";
      
      public static const const_637:String = "WE_ENABLE";
      
      public static const const_274:String = "WE_ENABLED";
      
      public static const const_861:String = "WE_DISABLE";
      
      public static const const_226:String = "WE_DISABLED";
      
      public static const const_1384:String = "WE_RELOCATE";
      
      public static const const_334:String = "WE_RELOCATED";
      
      public static const const_1460:String = "WE_RESIZE";
      
      public static const const_47:String = "WE_RESIZED";
      
      public static const const_1519:String = "WE_MINIMIZE";
      
      public static const const_1385:String = "WE_MINIMIZED";
      
      public static const const_1592:String = "WE_MAXIMIZE";
      
      public static const const_1459:String = "WE_MAXIMIZED";
      
      public static const const_1551:String = "WE_RESTORE";
      
      public static const const_1529:String = "WE_RESTORED";
      
      public static const const_1820:String = "WE_ARRANGE";
      
      public static const const_1799:String = "WE_ARRANGED";
      
      public static const const_102:String = "WE_UPDATE";
      
      public static const const_1746:String = "WE_UPDATED";
      
      public static const const_1847:String = "WE_CHILD_RELOCATE";
      
      public static const const_542:String = "WE_CHILD_RELOCATED";
      
      public static const const_1760:String = "WE_CHILD_RESIZE";
      
      public static const const_297:String = "WE_CHILD_RESIZED";
      
      public static const const_1817:String = "WE_CHILD_REMOVE";
      
      public static const const_493:String = "WE_CHILD_REMOVED";
      
      public static const const_1829:String = "WE_PARENT_RELOCATE";
      
      public static const const_1769:String = "WE_PARENT_RELOCATED";
      
      public static const const_1810:String = "WE_PARENT_RESIZE";
      
      public static const const_1625:String = "WE_PARENT_RESIZED";
      
      public static const const_179:String = "WE_OK";
      
      public static const const_647:String = "WE_CANCEL";
      
      public static const const_100:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_454:String = "WE_SCROLL";
      
      public static const const_158:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1978:IWindow;
      
      protected var var_1979:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1978 = param3;
         this.var_1979 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1978;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1979 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1979;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
