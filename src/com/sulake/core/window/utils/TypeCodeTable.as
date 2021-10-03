package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_663;
         param1["bitmap"] = const_869;
         param1["border"] = const_710;
         param1["border_notify"] = const_1624;
         param1["button"] = const_466;
         param1["button_thick"] = const_713;
         param1["button_icon"] = const_1455;
         param1["button_group_left"] = const_640;
         param1["button_group_center"] = const_636;
         param1["button_group_right"] = const_711;
         param1["canvas"] = const_685;
         param1["checkbox"] = const_641;
         param1["closebutton"] = const_1147;
         param1["container"] = const_332;
         param1["container_button"] = const_688;
         param1["display_object_wrapper"] = const_776;
         param1["dropmenu"] = const_539;
         param1["dropmenu_item"] = const_535;
         param1["frame"] = const_369;
         param1["frame_notify"] = const_1501;
         param1["header"] = const_790;
         param1["html"] = const_1095;
         param1["icon"] = const_1165;
         param1["itemgrid"] = const_1101;
         param1["itemgrid_horizontal"] = const_526;
         param1["itemgrid_vertical"] = const_708;
         param1["itemlist"] = const_1099;
         param1["itemlist_horizontal"] = const_327;
         param1["itemlist_vertical"] = const_341;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1393;
         param1["menu"] = const_1430;
         param1["menu_item"] = const_1594;
         param1["submenu"] = const_1005;
         param1["minimizebox"] = const_1402;
         param1["notify"] = const_1545;
         param1["null"] = const_843;
         param1["password"] = const_689;
         param1["radiobutton"] = const_609;
         param1["region"] = const_732;
         param1["restorebox"] = const_1374;
         param1["scaler"] = const_605;
         param1["scaler_horizontal"] = const_1593;
         param1["scaler_vertical"] = const_1390;
         param1["scrollbar_horizontal"] = const_467;
         param1["scrollbar_vertical"] = const_832;
         param1["scrollbar_slider_button_up"] = const_1043;
         param1["scrollbar_slider_button_down"] = const_1198;
         param1["scrollbar_slider_button_left"] = const_1152;
         param1["scrollbar_slider_button_right"] = const_962;
         param1["scrollbar_slider_bar_horizontal"] = const_1077;
         param1["scrollbar_slider_bar_vertical"] = const_1114;
         param1["scrollbar_slider_track_horizontal"] = const_1016;
         param1["scrollbar_slider_track_vertical"] = const_979;
         param1["scrollable_itemlist"] = const_1433;
         param1["scrollable_itemlist_vertical"] = const_560;
         param1["scrollable_itemlist_horizontal"] = const_1051;
         param1["selector"] = const_627;
         param1["selector_list"] = const_645;
         param1["submenu"] = const_1005;
         param1["tab_button"] = const_574;
         param1["tab_container_button"] = const_1200;
         param1["tab_context"] = const_363;
         param1["tab_content"] = const_990;
         param1["tab_selector"] = const_853;
         param1["text"] = const_552;
         param1["input"] = const_651;
         param1["toolbar"] = const_1461;
         param1["tooltip"] = const_348;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
