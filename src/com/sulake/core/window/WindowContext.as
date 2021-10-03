package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_547:uint = 0;
      
      public static const const_1367:uint = 1;
      
      public static const const_1807:int = 0;
      
      public static const const_1737:int = 1;
      
      public static const const_1785:int = 2;
      
      public static const const_1861:int = 3;
      
      public static const const_1434:int = 4;
      
      public static const const_399:int = 5;
      
      public static var var_1474:IMouseCursor;
      
      public static var var_373:IEventQueue;
      
      private static var var_574:IEventProcessor;
      
      private static var var_1673:uint = const_547;
      
      private static var stage:Stage;
      
      private static var var_161:IWindowRenderer;
       
      
      private var _eventProcessorState:EventProcessorState;
      
      private var var_2294:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_185:DisplayObjectContainer;
      
      protected var var_2783:Boolean = true;
      
      protected var var_1221:Error;
      
      protected var var_1966:int = -1;
      
      protected var var_1227:IInternalWindowServices;
      
      protected var var_1478:IWindowParser;
      
      protected var var_2730:IWindowFactory;
      
      protected var var_135:IDesktopWindow;
      
      protected var var_1479:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_531:Boolean = false;
      
      private var var_2293:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_161 = param2;
         this._localization = param4;
         this.var_185 = param5;
         this.var_1227 = new ServiceManager(this,param5);
         this.var_2730 = param3;
         this.var_1478 = new WindowParser(this);
         this.var_2294 = param7;
         if(!stage)
         {
            if(this.var_185 is Stage)
            {
               stage = this.var_185 as Stage;
            }
            else if(this.var_185.stage)
            {
               stage = this.var_185.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_135 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_185.addChild(this.var_135.getDisplayObject());
         this.var_185.doubleClickEnabled = true;
         this.var_185.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this._eventProcessorState = new EventProcessorState(var_161,this.var_135,this.var_135,null,this.var_2294);
         inputMode = const_547;
         this.var_1479 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1673;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_373)
         {
            if(var_373 is IDisposable)
            {
               IDisposable(var_373).dispose();
            }
         }
         if(var_574)
         {
            if(var_574 is IDisposable)
            {
               IDisposable(var_574).dispose();
            }
         }
         switch(value)
         {
            case const_547:
               var_373 = new MouseEventQueue(stage);
               var_574 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1367:
               var_373 = new TabletEventQueue(stage);
               var_574 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_547;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_185.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_185.removeChild(IGraphicContextHost(this.var_135).getGraphicContext(true) as DisplayObject);
            this.var_135.destroy();
            this.var_135 = null;
            this.var_1479.destroy();
            this.var_1479 = null;
            if(this.var_1227 is IDisposable)
            {
               IDisposable(this.var_1227).dispose();
            }
            this.var_1227 = null;
            this.var_1478.dispose();
            this.var_1478 = null;
            var_161 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1221;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_1966;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1221 = param2;
         this.var_1966 = param1;
         if(this.var_2783)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1221 = null;
         this.var_1966 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1227;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1478;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2730;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_135;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1474 == null)
         {
            var_1474 = new MouseCursorControl(this.var_185);
         }
         return var_1474;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_135.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1434,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1479;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_135,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_135)
         {
            this.var_135 = null;
         }
         if(param1.state != WindowState.const_485)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_161.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_531 = true;
         if(this.var_1221)
         {
            throw this.var_1221;
         }
         var_574.process(this._eventProcessorState,var_373);
         this.var_531 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2293 = true;
         var_161.update(param1);
         this.var_2293 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_135 != null && !this.var_135.disposed)
         {
            if(this.var_185 is Stage)
            {
               this.var_135.width = Stage(this.var_185).stageWidth;
               this.var_135.height = Stage(this.var_185).stageHeight;
            }
            else
            {
               this.var_135.width = this.var_185.width;
               this.var_135.height = this.var_185.height;
            }
         }
      }
   }
}
