---@meta


---
---Bindings for ImGui. Can be used in the `re.on_draw_ui` callback.
---
---Some methods can be used in `re.on_frame` if `begin_window`/`end_window` is used.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html)
---
---@class imgui
imgui = {}


---
---Draws a button with `label` text.
---
---Returns `true` when the user presses the button.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibuttonlabel)
---
---@param label string
---@return boolean
function imgui.button(label) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguismall_buttonlabel)
---
---@param label string
---@return boolean
function imgui.small_button(label) end

---
---`size` is a Vector2f or a size 2 array.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiinvisible_buttonid-size-flags)
---
---@param id string
---@param size_object Vector2f|number[]|Vector3f|Vector4f
---@param flags_object? integer `ImGuiButtonFlags`
---@return boolean
function imgui.invisible_button(id, size_object, flags_object) end

---
---`dir` is an `ImguiDir`
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiarrow_buttonid-dir)
---
---@param str_id string
---@param dir integer `ImGuiDir`
---@return boolean
function imgui.arrow_button(str_id, dir) end

---
---Returns a tuple of `changed, value`.
---
---`changed` = true when selection changes.
---
---`value` is the selection index within `values` (a table)
---
---`values` can be a table with any type of keys, as long as the values are strings.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguicombolabel-selection-values)
---
---@param label string
---@param selection integer|string
---@param values { [integer|string]: string }
---@return boolean, integer|string
function imgui.combo(label, selection, values) end

---
---Returns a tuple of `changed`, `value`
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguidrag_floatlabel-value-speed-min-max-display_format-optional)
---
---@param label string
---@param v number
---@param v_speed number
---@param v_min number
---@param v_max number
---@param display_format? string
---@return boolean, number
function imgui.drag_float(label, v, v_speed, v_min, v_max, display_format) end

---
---Returns a tuple of `changed`, `value`
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguidrag_float2label-value-vector2f-speed-min-max-display_format-optional)
---
---@param label string
---@param v Vector2f
---@param v_speed number
---@param v_min number
---@param v_max number
---@param display_format? string
---@return boolean, Vector2f
function imgui.drag_float2(label, v, v_speed, v_min, v_max, display_format) end

---
---Returns a tuple of `changed`, `value`
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguidrag_float3label-value-vector3f-speed-min-max-display_format-optional)
---
---@param label string
---@param v Vector3f
---@param v_speed number
---@param v_min number
---@param v_max number
---@param display_format? string
---@return boolean, Vector3f
function imgui.drag_float3(label, v, v_speed, v_min, v_max, display_format) end

---
---Returns a tuple of `changed`, `value`
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguidrag_float4label-value-vector4f-speed-min-max-display_format-optional)
---
---@param label string
---@param v Vector4f
---@param v_speed number
---@param v_min number
---@param v_max number
---@param display_format? string
---@return boolean, Vector4f
function imgui.drag_float4(label, v, v_speed, v_min, v_max, display_format) end

---
---Returns a tuple of `changed`, `value`
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguidrag_intlabel-value-speed-min-max-display_format-optional)
---
---@param label string
---@param v integer
---@param v_speed number
---@param v_min number
---@param v_max number
---@param display_format? string
---@return boolean, integer
function imgui.drag_int(label, v, v_speed, v_min, v_max, display_format) end

---
---Returns a tuple of `changed`, `value`
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguislider_floatlabel-value-min-max-display_format-optional)
---
---@param label string
---@param v number
---@param v_min number
---@param v_max number
---@param display_format? string
---@return boolean, number
function imgui.slider_float(label, v, v_min, v_max, display_format) end

---
---Returns a tuple of `changed`, `value`
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguislider_intlabel-value-min-max-display_format-optional)
---
---@param label string
---@param v integer
---@param v_min number
---@param v_max number
---@param display_format? string
---@return boolean, integer
function imgui.slider_int(label, v, v_min, v_max, display_format) end

---
---Returns a tuple of `changed`, `value`, `selection_start`, `selection_end`
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiinput_textlabel-value-flags-optional)
---
---@param label string
---@param v string
---@param flags? integer `ImGuiInputTextFlags`
---@return boolean, string, integer, integer
function imgui.input_text(label, v, flags) end

---
---Returns a tuple of `changed`, `value`, `selection_start`, `selection_end`
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiinput_text_multilinelabel-value-size-flags-optional)
---
---@param label string
---@param v string
---@param size_obj? Vector2f|number[]|Vector3f|Vector4f
---@param flags? integer `ImGuiInputTextFlags`
---@return boolean, string, integer, integer
function imgui.input_text_multiline(label, v, size_obj, flags) end

---
---Draws text.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitexttext)
---
---@param text string
---@return nil
function imgui.text(text) end

---
---Draws text with color.
---
---`color` is an integer color in the form ARGB.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitext_coloredtext-color)
---
---@param text string
---@param color integer
---@return nil
function imgui.text_colored(text, color) end

---
---Returns a tuple of `changed`, `value`
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguicheckboxlabel-value)
---
---@param label string
---@param v boolean
---@return boolean, boolean
function imgui.checkbox(label, v) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitree_nodelabel)
---
---@param label string
---@return boolean
function imgui.tree_node(label) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitree_node_ptr_idid-label)
---
---@param id userdata
---@param label string
---@return boolean
function imgui.tree_node_ptr_id(id, label) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitree_node_str_idid-label)
---
---@param id string
---@param label string
---@return boolean
function imgui.tree_node_str_id(id, label) end

---
---All of the above `tree` functions must have a corresponding `tree_pop`!
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitree_pop)
---
---@return nil
function imgui.tree_pop() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguisame_line)
---
---@return nil
function imgui.same_line() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_item_hoveredflags)
---
---@param flags_obj? integer `ImGuiHoveredFlags`
---@return boolean
function imgui.is_item_hovered(flags_obj) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_item_active)
---
---@return boolean
function imgui.is_item_active() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_item_focused)
---
---@return boolean
function imgui.is_item_focused() end

---
---Creates a new window with the title of `name`.
---
---`open` is a bool. Can be `nil`. If not `nil`, a close button will be shown in the top right of the window.
---
---`flags` - ImGuiWindowFlags.
---
---`begin_window` must have a corresponding `end_window` call.
---
---This function may only be called in `on_frame`, not `on_draw_ui`.
---
---Returns a bool. Returns `false` if the user wants to close the window.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_windowname-open-flags)
---
---@param name string
---@param open_obj boolean
---@param flags? integer `ImGuiWindowFlags`
---@return boolean
function imgui.begin_window(name, open_obj, flags) end

---
---Ends the last `begin_window` call. Required.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_window)
---
---@return nil
function imgui.end_window() end

---
---`size` - Vector2f
---
---`border` - bool
---
---`flags` - ImGuiWindowFlags
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_child_windowsize-border-flags)
---
---@param name string
---@param size_obj Vector2f|number[]|Vector3f|Vector4f
---@param border_obj boolean
---@param flags? integer `ImGuiWindowFlags`
---@return boolean
function imgui.begin_child_window(name, size_obj, border_obj, flags) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_child_window)
---
---@return nil
function imgui.end_child_window() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_group)
---
---@return nil
function imgui.begin_group() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_group)
---
---@return nil
function imgui.end_group() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_rect)
---
---@return nil
function imgui.begin_rect() end

---
---These two methods draw a rectangle around the elements between `begin_rect` and `end_rect`
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_rectadditional_size-rounding)
---
---@param additional_size_obj number
---@param rounding_obj number
---@return nil
function imgui.end_rect(additional_size_obj, rounding_obj) end

---@return nil
function imgui.separator() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguispacing)
---
---@return nil
function imgui.spacing() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguinew_line)
---
---@return nil
function imgui.new_line() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguicollapsing_headername)
---
---@param name string
---@return boolean
function imgui.collapsing_header(name) end

---
---Loads a font file from the `reframework/fonts` subdirectory at the specified `size` with optional Unicode `ranges` (an array of start, end pairs ending with 0). Returns a handle for use with `imgui.push_font()`. If `filepath` is nil, it will load the default font at the specified size.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiload_fontfilepath-size-ranges)
---
---@param filepath_obj string
---@param size integer
---@param ranges? integer[]
---@return integer
function imgui.load_font(filepath_obj, size, ranges) end

---
---Sets the font to be used for the next set of ImGui widgets/draw commands until `imgui.pop_font` is called.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguipush_fontfont)
---
---@param font integer
---@return nil
function imgui.push_font(font) end

---
---Unsets the previously pushed font.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguipop_font)
---
---@return nil
function imgui.pop_font() end

---
---Returns size of the default font for REFramework's UI.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_default_font_size)
---
---@return integer
function imgui.get_default_font_size() end

---
---Returns a tuple of `changed`, `value`. `color` is an integer color in the form ABGR which `imgui` and `draw` APIs expect.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguicolor_pickerlabel-color-flags)
---
---@param label string
---@param color integer
---@param flags_obj? integer `ImGuiColorEditFlags`
---@return boolean, integer
function imgui.color_picker(label, color, flags_obj) end

---
---Returns a tuple of `changed`, `value`. `color` is an integer color in the form ARGB.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguicolor_picker_argblabel-color-flags)
---
---@param label string
---@param color integer
---@param flags_obj? integer `ImGuiColorEditFlags`
---@return boolean, integer
function imgui.color_picker_argb(label, color, flags_obj) end

---
---Returns a tuple of `changed`, `value`
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguicolor_picker3label-color-vector3f-flags)
---
---@param label string
---@param color Vector3f
---@param flags_obj? integer `ImGuiColorEditFlags`
---@return boolean, Vector3f
function imgui.color_picker3(label, color, flags_obj) end

---
---Returns a tuple of `changed`, `value`
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguicolor_picker4label-color-vector4f-flags)
---
---@param label string
---@param color Vector4f
---@param flags_obj? integer `ImGuiColorEditFlags`
---@return boolean, Vector4f
function imgui.color_picker4(label, color, flags_obj) end

---
---Returns a tuple of `changed`, `value`. `color` is an integer color in the form ABGR which `imgui` and `draw` APIs expect.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguicolor_editlabel-color-flags)
---
---@param label string
---@param color integer
---@param flags_obj? integer `ImGuiColorEditFlags`
---@return boolean, integer
function imgui.color_edit(label, color, flags_obj) end

---
---Returns a tuple of `changed`, `value`. `color` is an integer color in the form ARGB.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguicolor_edit_argblabel-color-flags)
---
---@param label string
---@param color integer
---@param flags_obj? integer `ImGuiColorEditFlags`
---@return boolean, integer
function imgui.color_edit_argb(label, color, flags_obj) end

---
---Returns a tuple of `changed`, `value`
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguicolor_edit3label-color-vector3f-flags)
---
---@param label string
---@param color Vector3f
---@param flags_obj? integer `ImGuiColorEditFlags`
---@return boolean, Vector3f
function imgui.color_edit3(label, color, flags_obj) end

---
---Returns a tuple of `changed`, `value`
---
---`flags` for `color_picker/edit` APIs: `ImGuiColorEditFlags`
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguicolor_edit4label-color-vector4f-flags)
---
---@param label string
---@param color Vector4f
---@param flags_obj? integer `ImGuiColorEditFlags`
---@return boolean, Vector4f
function imgui.color_edit4(label, color, flags_obj) end

---
---`condition` is the `ImGuiCond` enum.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_next_window_pospos-vector2f-or-table-condition-pivot-vector2f-or-table)
---
---@param pos_obj Vector2f|number[]|Vector3f|Vector4f
---@param condition_obj? integer `ImGuiCond`
---@param pivot_obj? Vector2f|number[]|Vector3f|Vector4f
---@return nil
function imgui.set_next_window_pos(pos_obj, condition_obj, pivot_obj) end

---
---`condition` is the `ImGuiCond` enum.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_next_window_sizesize-vector2f-or-table-condition)
---
---@param pos_obj Vector2f|number[]|Vector3f|Vector4f
---@param condition_obj? integer `ImGuiCond`
---@return nil
function imgui.set_next_window_size(pos_obj, condition_obj) end

---
---`id` can be an `int`, `const char*`, or `void*`.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguipush_idid)
---
---@param id integer|string|userdata
---@return nil
function imgui.push_id(id) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguipop_id)
---
---@return nil
function imgui.pop_id() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_id)
---
---@param id integer|string|userdata
---@return integer
function imgui.get_id(id) end

---
---Returns a `Vector2f` corresponding to the user's mouse position in window space.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_mouse)
---
---@return Vector2f
function imgui.get_mouse() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_key_index)
---
---@param imgui_key integer `ImGuiKey`
---@return integer `ImGuiKey`
function imgui.get_key_index(imgui_key) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_key_down)
---
---@param key integer `ImGuiKey`
---@return boolean
function imgui.is_key_down(key) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_key_pressed)
---
---@param key integer `ImGuiKey`
---@return boolean
function imgui.is_key_pressed(key) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_key_released)
---
---@param key integer `ImGuiKey`
---@return boolean
function imgui.is_key_released(key) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_mouse_down)
---
---@param button integer `ImGuiMouseButton`
---@return boolean
function imgui.is_mouse_down(button) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_mouse_clicked)
---
---@param button integer `ImGuiMouseButton`
---@return boolean
function imgui.is_mouse_clicked(button) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_mouse_released)
---
---@param button integer `ImGuiMouseButton`
---@return boolean
function imgui.is_mouse_released(button) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_mouse_double_clicked)
---
---@param button integer `ImGuiMouseButton`
---@return boolean
function imgui.is_mouse_double_clicked(button) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiindent)
---
---@param indent_width integer
---@return nil
function imgui.indent(indent_width) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiunindent)
---
---@param indent_width integer
---@return nil
function imgui.unindent(indent_width) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_tooltip)
---
---@return nil
function imgui.begin_tooltip() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_tooltip)
---
---@return nil
function imgui.end_tooltip() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_tooltip)
---
---@param text string
---@return nil
function imgui.set_tooltip(text) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiopen_popup)
---
---@param str_id string
---@param flags_obj? integer `ImGuiWindowFlags`
---@return nil
function imgui.open_popup(str_id, flags_obj) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_popup)
---
---@param str_id string
---@param flags_obj? integer `ImGuiWindowFlags`
---@return boolean
function imgui.begin_popup(str_id, flags_obj) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_popup_context_item)
---
---@param str_id string
---@param flags_obj? integer `ImGuiPopupFlags`
---@return boolean
function imgui.begin_popup_context_item(str_id, flags_obj) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_popup)
---
---@return nil
function imgui.end_popup() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiclose_current_popup)
---
---@return nil
function imgui.close_current_popup() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_popup_open)
---
---@param str_id string
---@return boolean
function imgui.is_popup_open(str_id) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguicalc_text_size)
---
---@param text string
---@return Vector2f
function imgui.calc_text_size(text) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_window_size)
---
---@return Vector2f
function imgui.get_window_size() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_window_pos)
---
---@return Vector2f
function imgui.get_window_pos() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_next_item_open)
---
---@param is_open boolean
---@param condition_obj? integer `ImGuiCond`
---@return nil
function imgui.set_next_item_open(is_open, condition_obj) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_list_box)
---
---@param label string
---@param size_obj Vector2f|number[]|Vector3f|Vector4f
---@return boolean
function imgui.begin_list_box(label, size_obj) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_list_box)
---
---@return nil
function imgui.end_list_box() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_menu_bar)
---
---@return boolean
function imgui.begin_menu_bar() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_menu_bar)
---
---@return nil
function imgui.end_menu_bar() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_main_menu_bar)
---
---@return boolean
function imgui.begin_main_menu_bar() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_main_menu_bar)
---
---@return nil
function imgui.end_main_menu_bar() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_menu)
---
---@param label string
---@param enabled_obj? boolean
---@return boolean
function imgui.begin_menu(label, enabled_obj) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_menu)
---
---@return nil
function imgui.end_menu() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguimenu_item)
---
---@param label string
---@param shortcut_obj? string
---@param selected_obj? boolean
---@param enabled_obj? boolean
---@return boolean
function imgui.menu_item(label, shortcut_obj, selected_obj, enabled_obj) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_display_size)
---
---@return Vector2f
function imgui.get_display_size() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguipush_item_width)
---
---@param item_width number
---@return nil
function imgui.push_item_width(item_width) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguipop_item_width)
---
---@return nil
function imgui.pop_item_width() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_next_item_width)
---
---@param item_width number
---@return nil
function imgui.set_next_item_width(item_width) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguicalc_item_width)
---
---@return number
function imgui.calc_item_width() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguipush_style_color)
---
---@param style_color integer
---@param color_obj integer|Vector4f
---@return nil
function imgui.push_style_color(style_color, color_obj) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguipop_style_color)
---
---@param count_obj integer
---@return nil
function imgui.pop_style_color(count_obj) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguipush_style_var)
---
---@param idx integer
---@param value_obj number|Vector2f
---@return nil
function imgui.push_style_var(idx, value_obj) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguipop_style_var)
---
---@param count_obj integer
---@return nil
function imgui.pop_style_var(count_obj) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_cursor_pos)
---
---@return Vector2f
function imgui.get_cursor_pos() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_cursor_pos)
---
---@param pos Vector2f|number[]|Vector3f|Vector4f
---@return nil
function imgui.set_cursor_pos(pos) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_cursor_start_pos)
---
---@return Vector2f
function imgui.get_cursor_start_pos() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_cursor_screen_pos)
---
---@return Vector2f
function imgui.get_cursor_screen_pos() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_cursor_screen_pos)
---
---@param pos Vector2f|number[]|Vector3f|Vector4f
---@return nil
function imgui.set_cursor_screen_pos(pos) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_item_default_focus)
---
---@return nil
function imgui.set_item_default_focus() end

---@param data string
---@return nil
function imgui.set_clipboard(data) end

---@return string
function imgui.get_clipboard() end

---@param progress number
---@param size Vector2f|number[]|Vector3f|Vector4f
---@param overlay string
---@return nil
function imgui.progress_bar(progress, size, overlay) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_table)
---
---@param str_id string
---@param column integer
---@param flags_obj? ImGuiTableFlags
---@param outer_size_obj? Vector2f
---@param inner_width_obj? number
---@return boolean
function imgui.begin_table(str_id, column, flags_obj, outer_size_obj, inner_width_obj) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_table)
---
---@return nil
function imgui.end_table() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_next_row)
---
---@param row_flags? integer `ImGuiTableRowFlags`
---@param min_row_height? number
---@return nil
function imgui.table_next_row(row_flags, min_row_height) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_next_column)
---
---@return boolean
function imgui.table_next_column() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_set_column_index)
---
---@param column_index integer
---@return boolean
function imgui.table_set_column_index(column_index) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_setup_column)
---
---@param label string
---@param flags_obj? ImGuiTableColumnFlags
---@param init_width_or_weight_obj? number
---@param user_id_obj? integer
---@return nil
function imgui.table_setup_column(label, flags_obj, init_width_or_weight_obj, user_id_obj) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_setup_scroll_freeze)
---
---@param cols integer
---@param rows integer
---@return nil
function imgui.table_setup_scroll_freeze(cols, rows) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_headers_row)
---
---@return nil
function imgui.table_headers_row() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_header)
---
---@param label string
---@return nil
function imgui.table_header(label) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_get_sort_specs)
---
---@return ImGuiTableSortSpecs?
function imgui.table_get_sort_specs() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_get_column_count)
---
---@return integer
function imgui.table_get_column_count() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_get_column_index)
---
---@return integer
function imgui.table_get_column_index() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_get_row_index)
---
---@return integer
function imgui.table_get_row_index() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_get_column_name)
---
---@param column integer
---@return string
function imgui.table_get_column_name(column) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_get_column_flags)
---
---@param column integer
---@return ImGuiTableColumnFlags
function imgui.table_get_column_flags(column) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_set_bg_color)
---
---@param target integer `ImGuiTableBgTarget`
---@param color integer
---@param column integer
---@return nil
function imgui.table_set_bg_color(target, color, column) end

---@enum ImGuizmoOperation
imgui.ImGuizmoOperation = {
    TRANSLATE = 1 << 0 | 1 << 1 | 1 << 2,
    ROTATE    = 1 << 3 | 1 << 4 | 1 << 5 | 1 << 6,
    SCALE     = 1 << 7 | 1 << 8 | 1 << 9,
    SCALEU    = 1 << 11 | 1 << 12 | 1 << 13,
    UNIVERSAL = 1 << 0 | 1 << 1 | 1 << 2 | 1 << 3 | 1 << 4 | 1 << 5 | 1 << 6 | 1 << 11 | 1 << 12 | 1 << 13
}

---@enum ImGuizmoMode
imgui.ImGuizmoMode = {
    WORLD = 1,
    LOCAL = 0
}

---@enum ImGuiTableFlags
imgui.TableFlags = {
    None                       = 0,
    Resizable                  = 1 << 0,
    Reorderable                = 1 << 1,
    Hideable                   = 1 << 2,
    Sortable                   = 1 << 3,
    NoSavedSettings            = 1 << 4,
    ContextMenuInBody          = 1 << 5,
    RowBg                      = 1 << 6,
    BordersInnerH              = 1 << 7,
    BordersOuterH              = 1 << 8,
    BordersInnerV              = 1 << 9,
    BordersOuterV              = 1 << 10,
    BordersH                   = 1 << 7 | 1 << 8,
    BordersV                   = 1 << 9 | 1 << 10,
    BordersInner               = 1 << 9 | 1 << 7,
    BordersOuter               = 1 << 10 | 1 << 8,
    Borders                    = 1 << 9 | 1 << 7 | 1 << 10 | 1 << 8,
    NoBordersInBody            = 1 << 11,
    NoBordersInBodyUntilResize = 1 << 12,
    SizingFixedFit             = 1 << 13,
    SizingFixedSame            = 2 << 13,
    SizingStretchProp          = 3 << 13,
    SizingStretchSame          = 4 << 13,
    NoHostExtendX              = 1 << 16,
    NoHostExtendY              = 1 << 17,
    NoKeepColumnsVisible       = 1 << 18,
    PreciseWidths              = 1 << 19,
    NoClip                     = 1 << 20,
    PadOuterX                  = 1 << 21,
    NoPadOuterX                = 1 << 22,
    NoPadInnerX                = 1 << 23,
    ScrollX                    = 1 << 24,
    ScrollY                    = 1 << 25,
    SortMulti                  = 1 << 26,
    SortTristate               = 1 << 27
}

---@enum ImGuiTableColumnFlags
imgui.ColumnFlags = {
    None                 = 0,
    DefaultHide          = 1 << 1,
    DefaultSort          = 1 << 2,
    WidthStretch         = 1 << 3,
    WidthFixed           = 1 << 4,
    NoResize             = 1 << 5,
    NoReorder            = 1 << 6,
    NoHide               = 1 << 7,
    NoClip               = 1 << 8,
    NoSort               = 1 << 9,
    NoSortAscending      = 1 << 10,
    NoSortDescending     = 1 << 11,
    NoHeaderWidth        = 1 << 13,
    PreferSortAscending  = 1 << 14,
    PreferSortDescending = 1 << 15,
    IndentEnable         = 1 << 16,
    IndentDisable        = 1 << 17,
    IsEnabled            = 1 << 24,
    IsVisible            = 1 << 25,
    IsSorted             = 1 << 26,
    IsHovered            = 1 << 27
}
