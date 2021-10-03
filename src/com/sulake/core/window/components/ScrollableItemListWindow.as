package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.utils.IIterator;
   import flash.geom.Rectangle;
   
   public class ScrollableItemListWindow extends WindowController implements IScrollableListWindow
   {
       
      
      private var var_1039:IItemListWindow;
      
      private var var_392:IScrollbarWindow;
      
      private var var_1551:Boolean = true;
      
      public function ScrollableItemListWindow(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function = null, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this._scrollBar.scrollable = this.name_1;
         if(this._scrollBar.testStateFlag(WindowState.const_77))
         {
            this.hideScrollBar();
         }
      }
      
      override public function dispose() : void
      {
         if(this.var_392)
         {
            this.var_392.removeEventListener(WindowEvent.const_274,this.scrollBarEventProc);
            this.var_392.removeEventListener(WindowEvent.const_226,this.scrollBarEventProc);
            this.var_392 = null;
         }
         if(this.var_1039)
         {
            this.var_1039 = null;
         }
         super.dispose();
      }
      
      protected function get name_1() : IItemListWindow
      {
         if(!this.var_1039)
         {
            this.var_1039 = findChildByTag("_ITEMLIST") as IItemListWindow;
         }
         return this.var_1039;
      }
      
      protected function get _scrollBar() : IScrollbarWindow
      {
         if(!this.var_392)
         {
            this.var_392 = findChildByTag("_SCROLLBAR") as IScrollbarWindow;
            if(this.var_392)
            {
               this.var_392.addEventListener(WindowEvent.const_274,this.scrollBarEventProc);
               this.var_392.addEventListener(WindowEvent.const_226,this.scrollBarEventProc);
            }
         }
         return this.var_392;
      }
      
      private function scrollBarEventProc(param1:WindowEvent) : void
      {
         if(param1.type == WindowEvent.const_274)
         {
            this.showScrollBar();
         }
         else if(param1.type == WindowEvent.const_226)
         {
            this.hideScrollBar();
         }
      }
      
      private function hideScrollBar() : void
      {
         if(this._scrollBar.visible)
         {
            this._scrollBar.visible = false;
            this.name_1.width = var_11.width;
         }
      }
      
      private function showScrollBar() : void
      {
         if(this._scrollBar.visible == false)
         {
            this._scrollBar.visible = true;
            this.name_1.width = 0 - this._scrollBar.width;
         }
      }
      
      private function updateScrollBarVisibility() : void
      {
         if(this.var_1551)
         {
            if(this._scrollBar.testStateFlag(WindowState.const_77))
            {
               if(this._scrollBar.visible)
               {
                  this.hideScrollBar();
               }
            }
         }
         else if(this._scrollBar.visible)
         {
            this.showScrollBar();
         }
      }
      
      protected function isConstructionReady() : Boolean
      {
         return this.name_1 && this._scrollBar;
      }
      
      public function set autoHideScrollBar(param1:Boolean) : void
      {
         this.var_1551 = param1;
         this.updateScrollBarVisibility();
      }
      
      public function get autoHideScrollBar() : Boolean
      {
         return this.var_1551;
      }
      
      public function get iterator() : IIterator
      {
         return !!this.isConstructionReady() ? this.name_1.iterator : null;
      }
      
      public function get scrollH() : Number
      {
         return this.name_1.scrollH;
      }
      
      public function get scrollV() : Number
      {
         return this.name_1.scrollV;
      }
      
      public function set scrollH(param1:Number) : void
      {
         this.name_1.scrollH = param1;
      }
      
      public function set scrollV(param1:Number) : void
      {
         this.name_1.scrollV = param1;
      }
      
      public function get maxScrollH() : int
      {
         return this.name_1.maxScrollH;
      }
      
      public function get maxScrollV() : int
      {
         return this.name_1.maxScrollV;
      }
      
      public function get visibleRegion() : Rectangle
      {
         return this.name_1.visibleRegion;
      }
      
      public function get scrollableRegion() : Rectangle
      {
         return this.name_1.scrollableRegion;
      }
      
      public function get scrollStepH() : Number
      {
         return this.name_1.scrollStepH;
      }
      
      public function get scrollStepV() : Number
      {
         return this.name_1.scrollStepV;
      }
      
      public function set scrollStepH(param1:Number) : void
      {
         this.name_1.scrollStepH = param1;
      }
      
      public function set scrollStepV(param1:Number) : void
      {
         this.name_1.scrollStepV = param1;
      }
      
      public function get spacing() : int
      {
         return this.name_1.spacing;
      }
      
      public function set spacing(param1:int) : void
      {
         this.name_1.spacing = param1;
      }
      
      public function get method_6() : Boolean
      {
         return this.name_1.method_6;
      }
      
      public function set method_6(param1:Boolean) : void
      {
         this.name_1.method_6 = param1;
      }
      
      public function get autoArrangeItems() : Boolean
      {
         return this.name_1.autoArrangeItems;
      }
      
      public function set autoArrangeItems(param1:Boolean) : void
      {
         this.name_1.autoArrangeItems = param1;
      }
      
      public function set resizeOnItemUpdate(param1:Boolean) : void
      {
         this.name_1.resizeOnItemUpdate = param1;
      }
      
      public function get resizeOnItemUpdate() : Boolean
      {
         return this.name_1.resizeOnItemUpdate;
      }
      
      public function get numListItems() : int
      {
         return this.name_1.numListItems;
      }
      
      public function addListItem(param1:IWindow) : IWindow
      {
         return this.name_1.addListItem(param1);
      }
      
      public function addListItemAt(param1:IWindow, param2:uint) : IWindow
      {
         return this.name_1.addListItemAt(param1,param2);
      }
      
      public function getListItemAt(param1:uint) : IWindow
      {
         return this.name_1.getListItemAt(param1);
      }
      
      public function getListItemByID(param1:uint) : IWindow
      {
         return this.name_1.getListItemByID(param1);
      }
      
      public function getListItemByName(param1:String) : IWindow
      {
         return this.name_1.getListItemByName(param1);
      }
      
      public function getListItemIndex(param1:IWindow) : int
      {
         return this.name_1.getListItemIndex(param1);
      }
      
      public function removeListItem(param1:IWindow) : IWindow
      {
         return this.name_1.removeListItem(param1);
      }
      
      public function removeListItemAt(param1:int) : IWindow
      {
         return this.name_1.removeListItemAt(param1);
      }
      
      public function setListItemIndex(param1:IWindow, param2:int) : void
      {
         this.name_1.setListItemIndex(param1,param2);
      }
      
      public function swapListItems(param1:IWindow, param2:IWindow) : void
      {
         this.name_1.swapListItems(param1,param2);
      }
      
      public function swapListItemsAt(param1:int, param2:int) : void
      {
         this.name_1.swapListItemsAt(param1,param2);
      }
      
      public function groupListItemsWithID(param1:uint, param2:Array, param3:Boolean = false) : uint
      {
         return this.name_1.groupListItemsWithID(param1,param2,param3);
      }
      
      public function groupListItemsWithTag(param1:String, param2:Array, param3:Boolean = false) : uint
      {
         return this.name_1.groupListItemsWithTag(param1,param2,param3);
      }
      
      public function removeListItems() : void
      {
         this.name_1.removeListItems();
      }
      
      public function destroyListItems() : void
      {
         this.name_1.destroyListItems();
      }
      
      public function arrangeListItems() : void
      {
         this.name_1.arrangeListItems();
      }
   }
}
