package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_170;
         param1["bound_to_parent_rect"] = const_95;
         param1["child_window"] = const_1086;
         param1["embedded_controller"] = const_1019;
         param1["resize_to_accommodate_children"] = const_69;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_612;
         param1["mouse_dragging_target"] = const_227;
         param1["mouse_dragging_trigger"] = const_397;
         param1["mouse_scaling_target"] = const_303;
         param1["mouse_scaling_trigger"] = const_419;
         param1["horizontal_mouse_scaling_trigger"] = const_253;
         param1["vertical_mouse_scaling_trigger"] = const_229;
         param1["observe_parent_input_events"] = const_1129;
         param1["optimize_region_to_layout_size"] = const_508;
         param1["parent_window"] = const_1045;
         param1["relative_horizontal_scale_center"] = const_176;
         param1["relative_horizontal_scale_fixed"] = const_130;
         param1["relative_horizontal_scale_move"] = const_339;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_1111;
         param1["relative_scale_fixed"] = const_707;
         param1["relative_scale_move"] = const_987;
         param1["relative_scale_strech"] = const_1008;
         param1["relative_vertical_scale_center"] = const_184;
         param1["relative_vertical_scale_fixed"] = const_141;
         param1["relative_vertical_scale_move"] = const_329;
         param1["relative_vertical_scale_strech"] = const_359;
         param1["on_resize_align_left"] = const_742;
         param1["on_resize_align_right"] = const_505;
         param1["on_resize_align_center"] = const_433;
         param1["on_resize_align_top"] = const_668;
         param1["on_resize_align_bottom"] = const_446;
         param1["on_resize_align_middle"] = const_523;
         param1["on_accommodate_align_left"] = const_1078;
         param1["on_accommodate_align_right"] = const_445;
         param1["on_accommodate_align_center"] = const_747;
         param1["on_accommodate_align_top"] = const_1004;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_699;
         param1["route_input_events_to_parent"] = const_429;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1124;
         param1["scalable_with_mouse"] = const_1013;
         param1["reflect_horizontal_resize_to_parent"] = const_477;
         param1["reflect_vertical_resize_to_parent"] = const_531;
         param1["reflect_resize_to_parent"] = const_295;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
