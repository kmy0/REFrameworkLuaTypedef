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
---Draws a button with `label` text, and optional `size`.
---
---`size` is a Vector2f or a size 2 array.
---
---Returns `true` when the user presses the button.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibuttonlabel-size)
---
---@param label string
---@param size_object? Vector2f|number[]|Vector3f|Vector4f
---@return boolean
function imgui.button(label, size_object) end

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
---@param size_object? Vector2f|number[]|Vector3f|Vector4f
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

---@overload fun(label: string, selection: integer, values: string[]): boolean, integer
---@overload fun(label: string, selection: string, values: { [string]: string }): boolean, string
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
---@param text string | number?
---@return nil
function imgui.text(text) end

---
---Draws text with color.
---
---`color` is an integer color in the form ARGB.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitext_coloredtext-color)
---
---@param text string | number?
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

---
---These two methods will disable and darken elements in between it.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_disableddisabledtrue)
---
---@param disabled_obj? boolean
---@return nil
function imgui.begin_disabled(disabled_obj) end

---
---These two methods will disable and darken elements in between it.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_disabled)
---
---@return nil
function imgui.end_disabled() end

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
---@param filepath_obj string?
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
---Returns the index of the specified `imgui_key`.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_key_indeximgui_key)
---
---@param imgui_key integer `ImGuiKey`
---@return integer `ImGuiKey`
function imgui.get_key_index(imgui_key) end

---
---Returns true if the specified `key` is currently being held down.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_key_downkey)
---
---@param key integer `ImGuiKey`
---@return boolean
function imgui.is_key_down(key) end

---
---Returns true if the specified `key` was pressed during the current frame.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_key_pressedkey )
---
---@param key integer `ImGuiKey`
---@return boolean
function imgui.is_key_pressed(key) end

---
---Returns true if the specified `key` was released during the current frame.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_key_releasedkey)
---
---@param key integer `ImGuiKey`
---@return boolean
function imgui.is_key_released(key) end

---
---Returns true if the specified mouse `button` is currently being held down.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_mouse_downbutton)
---
---@param button integer `ImGuiMouseButton`
---@return boolean
function imgui.is_mouse_down(button) end

---
---Returns true if the specified mouse `button` was clicked during the current frame.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_mouse_clickedbutton)
---
---@param button integer `ImGuiMouseButton`
---@return boolean
function imgui.is_mouse_clicked(button) end

---
---Returns true if the specified mouse `button` was released during the current frame.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_mouse_releasedbutton)
---
---@param button integer `ImGuiMouseButton`
---@return boolean
function imgui.is_mouse_released(button) end

---
---Returns true if the specified mouse `button` was double-clicked during the current frame.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_mouse_double_clickedbutton)
---
---@param button integer `ImGuiMouseButton`
---@return boolean
function imgui.is_mouse_double_clicked(button) end

---
---Indents the current line by `indent_width` pixels.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiindentindent_width)
---
---@param indent_width integer
---@return nil
function imgui.indent(indent_width) end

---
---Unindents the current line by `indent_width` pixels.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiunindentindent_width)
---
---@param indent_width integer
---@return nil
function imgui.unindent(indent_width) end

---
---Starts a tooltip window that will be drawn at the current cursor position.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_tooltip)
---
---@return nil
function imgui.begin_tooltip() end

---
---Ends the current tooltip window.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_tooltip)
---
---@return nil
function imgui.end_tooltip() end

---
---Sets the text for the current tooltip window.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_tooltiptext)
---
---@param text string
---@return nil
function imgui.set_tooltip(text) end

---
---Opens a popup with the specified str_id and flags.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiopen_popupstr_id-flags)
---
---@param str_id string
---@param flags_obj? integer `ImGuiWindowFlags`
---@return nil
function imgui.open_popup(str_id, flags_obj) end

---
---Begins a new popup with the specified str_id and flags.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_popupstr_id-flags)
---
---@param str_id string
---@param flags_obj? integer `ImGuiWindowFlags`
---@return boolean
function imgui.begin_popup(str_id, flags_obj) end

---
---Begins a new popup with the specified str_id and flags, anchored to the last item.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_popup_context_itemstr_id-flags)
---
---@param str_id string
---@param flags_obj? integer `ImGuiPopupFlags`
---@return boolean
function imgui.begin_popup_context_item(str_id, flags_obj) end

---
---Ends the current popup window.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_popup)
---
---@return nil
function imgui.end_popup() end

---
---Closes the current popup window.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiclose_current_popup)
---
---@return nil
function imgui.close_current_popup() end

---
---Returns true if the popup with the specified str_id is open.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiis_popup_openstr_id)
---
---@param str_id string
---@return boolean
function imgui.is_popup_open(str_id) end

---
---Calculates and returns the size of the specified text as a Vector2f.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguicalc_text_sizetext)
---
---@param text string
---@return Vector2f
function imgui.calc_text_size(text) end

---
---Returns the size of the current window as a Vector2f.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_window_size)
---
---@return Vector2f
function imgui.get_window_size() end

---
---Returns the position of the current window as a Vector2f.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_window_pos)
---
---@return Vector2f
function imgui.get_window_pos() end

---
---Sets the open state of the next collapsing header or tree node to `is_open` based on the specified `condition`.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_next_item_openis_open-condition)
---
---@param is_open boolean
---@param condition_obj? integer `ImGuiCond`
---@return nil
function imgui.set_next_item_open(is_open, condition_obj) end

---
---Begins a new list box with the specified label and size.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_list_boxlabel-size)
---
---@param label string
---@param size_obj Vector2f|number[]|Vector3f|Vector4f
---@return boolean
function imgui.begin_list_box(label, size_obj) end

---
---Ends the current list box.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_list_box)
---
---@return nil
function imgui.end_list_box() end

---
---Begins a new menu bar.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_menu_bar)
---
---@return boolean
function imgui.begin_menu_bar() end

---
---Ends the current menu bar.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_menu_bar)
---
---@return nil
function imgui.end_menu_bar() end

---
---Begins the main menu bar.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_main_menu_bar)
---
---@return boolean
function imgui.begin_main_menu_bar() end

---
---Ends the main menu bar.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_main_menu_bar)
---
---@return nil
function imgui.end_main_menu_bar() end

---
---Begins a new menu with the specified label. The menu will be disabled if enabled is false.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_menulabel-enabled)
---
---@param label string
---@param enabled_obj? boolean
---@return boolean
function imgui.begin_menu(label, enabled_obj) end

---
---Ends the current menu.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_menu)
---
---@return nil
function imgui.end_menu() end

---
---Adds a menu item with the specified label, shortcut, selected state, and enabled state.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguimenu_itemlabel-shortcut-selected-enabled)
---
---@param label string
---@param shortcut_obj? string
---@param selected_obj? boolean
---@param enabled_obj? boolean
---@return boolean
function imgui.menu_item(label, shortcut_obj, selected_obj, enabled_obj) end

---
---Returns the size of the display as a `Vector2f.`
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_display_size)
---
---@return Vector2f
function imgui.get_display_size() end

---
---Pushes the width of the next item to `item_width` pixels.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguipush_item_widthitem_width)
---
---@param item_width number
---@return nil
function imgui.push_item_width(item_width) end

---
---Pops the last item width off the stack.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguipop_item_width)
---
---@return nil
function imgui.pop_item_width() end

---
---Sets the width of the next item to `item_width` pixels.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_next_item_widthitem_width)
---
---@param item_width number
---@return nil
function imgui.set_next_item_width(item_width) end

---
---Calculates and returns the current item width.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguicalc_item_width)
---
---@return number
function imgui.calc_item_width() end

---
---Adds an item with the specified position and size to the current window.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiitem_addpos-size)
---
---@param label string
---@param pos Vector2f|number[]|Vector3f|Vector4f
---@param size Vector2f|number[]|Vector3f|Vector4f
---@return boolean
function imgui.item_add(label, pos, size) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiitem_sizepos-size)
---
---@param pos Vector2f|number[]|Vector3f|Vector4f
---@param size Vector2f|number[]|Vector3f|Vector4f
---@param text_baseline_y? number
---@return nil
function imgui.item_size(pos, size, text_baseline_y) end

---
---Pushes a new style color onto the style stack.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguipush_style_colorstyle_color-color)
---
---@param style_color integer 'ImGuiCol'
---@param color_obj integer|Vector4f
---@return nil
function imgui.push_style_color(style_color, color_obj) end

---
---Pops count style colors off the style stack.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguipop_style_colorcount)
---
---@param count_obj integer
---@return nil
function imgui.pop_style_color(count_obj) end

---
---Pushes a new style variable onto the style stack.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguipush_style_varidx-value)
---
---@param idx integer
---@param value_obj number|Vector2f
---@return nil
function imgui.push_style_var(idx, value_obj) end

---
---Pops count style variables off the style stack.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguipop_style_varcount)
---
---@param count_obj integer
---@return nil
function imgui.pop_style_var(count_obj) end

---
---Returns the current cursor position as a `Vector2f`.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_cursor_pos)
---
---@return Vector2f
function imgui.get_cursor_pos() end

---
---Sets the current cursor position to `pos`.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_cursor_pospos)
---
---@param pos Vector2f|number[]|Vector3f|Vector4f
---@return nil
function imgui.set_cursor_pos(pos) end

---
---Returns the initial cursor position as a `Vector2f`.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_cursor_start_pos)
---
---@return Vector2f
function imgui.get_cursor_start_pos() end

---
---Returns the current cursor position in screen coordinates as a `Vector2f`.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_cursor_screen_pos)
---
---@return Vector2f
function imgui.get_cursor_screen_pos() end

---
---Sets the current cursor position in screen coordinates to `pos`.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_cursor_screen_pospos)
---
---@param pos Vector2f|number[]|Vector3f|Vector4f
---@return nil
function imgui.set_cursor_screen_pos(pos) end

---
---Sets the default focus to the next widget.
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

---
---`progress` is a float between 0 and 1.
---
---`size` is a `Vector2f` or a size 2 array.
---
---`overlay` is a string on top of the progress bar.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiprogress_barprogress-size-overlay)
---
---@param progress number
---@param size Vector2f|number[]|Vector3f|Vector4f
---@param overlay string
---@return nil
function imgui.progress_bar(progress, size, overlay) end

---
---Clears the current window's draw list path.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguidraw_list_path_clear)
---
---@return nil
function imgui.draw_list_path_clear() end

---
---Adds a line to the current window's draw list path given the specified `pos`
---
---- `pos` is a `Vector2f` or a size 2 array.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguidraw_list_path_line_topos)
---
---@param pos_obj Vector2f|number[]|Vector3f|Vector4f
---@return nil
function imgui.draw_list_path_line_to(pos_obj) end

---
---Strokes the current window's draw list path with the specified `color`, `closed` state, and `thickness`.
---
---- `color` is an integer color in the form ARGB.
---
---- `closed` is a bool.
---
---- `thickness` is a float.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguidraw_list_path_strokecolor-closed-thickness)
---
---@param color integer
---@param closed? boolean
---@param thickness? number
---@return nil
function imgui.draw_list_path_stroke(color, closed, thickness) end

---
---Returns the horizontal scroll position.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_scroll_x)
---
---@return number
function imgui.get_scroll_x() end

---
---Returns the vertical scroll position.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_scroll_y)
---
---@return number
function imgui.get_scroll_y() end

---
---Sets the horizontal scroll position to `scroll_x`.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_scroll_xscroll_x)
---
---@param scroll_x number
---@return nil
function imgui.set_scroll_x(scroll_x) end

---
---Sets the vertical scroll position to `scroll_y`.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_scroll_yscroll_y)
---
---@param scroll_y number
---@return nil
function imgui.set_scroll_y(scroll_y) end

---
---Returns the maximum horizontal scroll position.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_scroll_max_x)
---
---@return number
function imgui.get_scroll_max_x() end

---
---Returns the maximum vertical scroll position.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiget_scroll_max_y)
---
---@return number
function imgui.get_scroll_max_y() end

---
---Centers the horizontal scroll position.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_scroll_here_xcenter_x_ratio)
---
---@param center_x_ratio? number
---@return nil
function imgui.set_scroll_here_x(center_x_ratio) end

---
---Centers the vertical scroll position.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_scroll_here_ycenter_y_ratio)
---
---@param center_y_ratio? number
---@return nil
function imgui.set_scroll_here_y(center_y_ratio) end

---
---Sets the horizontal scroll position from the specified `local_x` and `center_x_ratio`.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_scroll_from_pos_xlocal_x-center_x_ratio)
---
---@param local_x number
---@param center_x_ratio? number
---@return nil
function imgui.set_scroll_from_pos_x(local_x, center_x_ratio) end

---
---Sets the vertical scroll position from the specified `local_y` and `center_y_ratio`.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiset_scroll_from_pos_ylocal_y-center_y_ratio)
---
---@param local_y number
---@param center_y_ratio? number
---@return nil
function imgui.set_scroll_from_pos_y(local_y, center_y_ratio) end

---
---Begins a new table with the specified `str_id`, `column` count, `flags`, `outer_size`, and `inner_width`.
---
---- `str_id` is a string.
---
---- `column` is an integer.
---
---- `flags` is an optional `ImGuiTableFlags` enum.
---
---- `outer_size` is a `Vector2f` or a size 2 array.
---
---- `inner_width` is an optional float.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguibegin_tablestr_id-column-flags-outer_size-inner_width)
---
---@param str_id string
---@param column integer
---@param flags_obj? ImGuiTableFlags
---@param outer_size_obj? Vector2f
---@param inner_width_obj? number
---@return boolean
function imgui.begin_table(str_id, column, flags_obj, outer_size_obj, inner_width_obj) end

---
---Ends the current table.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguiend_table)
---
---@return nil
function imgui.end_table() end

---
---Begins a new row in the current table with the specified `row_flags` and `min_row_height`.
---
---- `row_flags` is an optional `ImGuiTableRowFlags` enum.
---
---- `min_row_height` is an optional float.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_next_rowrow_flags-min_row_height)
---
---@param row_flags? integer `ImGuiTableRowFlags`
---@param min_row_height? number
---@return nil
function imgui.table_next_row(row_flags, min_row_height) end

---
---Advances to the next column in the current table.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_next_column)
---
---@return boolean
function imgui.table_next_column() end

---
---Sets the current column index to column_index.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_set_column_indexcolumn_index)
---
---@param column_index integer
---@return boolean
function imgui.table_set_column_index(column_index) end

---
---Sets up a column in the current table with the specified label, flags, init_width_or_weight, and user_id.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_setup_columnlabel-flags-init_width_or_weight-user_id)
---
---@param label string
---@param flags_obj? ImGuiTableColumnFlags
---@param init_width_or_weight_obj? number
---@param user_id_obj? integer
---@return nil
function imgui.table_setup_column(label, flags_obj, init_width_or_weight_obj, user_id_obj) end

---
---Sets up a scrolling region in the current table with cols columns and rows rows frozen.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_setup_scroll_freezecols-rows)
---
---@param cols integer
---@param rows integer
---@return nil
function imgui.table_setup_scroll_freeze(cols, rows) end

---
---Submits a header row in the current table.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_headers_row)
---
---@return nil
function imgui.table_headers_row() end

---
---Submits a header cell with the specified label in the current table.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_headerlabel)
---
---@param label string
---@return nil
function imgui.table_header(label) end

---
---Returns the sort specifications for the current table.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_get_sort_specs)
---
---@return ImGuiTableSortSpecs?
function imgui.table_get_sort_specs() end

---
---Returns the number of columns in the current table.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_get_column_count)
---
---@return integer
function imgui.table_get_column_count() end

---
---Returns the current column index.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_get_column_index)
---
---@return integer
function imgui.table_get_column_index() end

---
---Returns the current row index.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_get_row_index)
---
---@return integer
function imgui.table_get_row_index() end

---
---Returns the name of the specified `column` in the current table.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_get_column_namecolumn)
---
---@param column integer
---@return string
function imgui.table_get_column_name(column) end

---
---Returns the flags of the specified `column` in the current table.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_get_column_flagscolumn)
---
---@param column integer
---@return ImGuiTableColumnFlags
function imgui.table_get_column_flags(column) end

---
---Sets the background color of the specified `target` in the current table with the given `color` and `column` index.
---
---[View documents](https://cursey.github.io/reframework-book/api/imgui.html#imguitable_set_bg_colortarget-color-column)
---
---@param target integer `ImGuiTableBgTarget`
---@param color integer
---@param column integer
---@return nil
function imgui.table_set_bg_color(target, color, column) end

---@enum ImGuizmoOperation
imgui.ImGuizmoOperation = {
    TRANSLATE = 1 << 0 | 1 << 1 | 1 << 2,
    ROTATE = 1 << 3 | 1 << 4 | 1 << 5 | 1 << 6,
    SCALE = 1 << 7 | 1 << 8 | 1 << 9,
    SCALEU = 1 << 11 | 1 << 12 | 1 << 13,
    UNIVERSAL = 1 << 0 | 1 << 1 | 1 << 2 | 1 << 3 | 1 << 4 | 1 << 5 | 1 << 6 | 1 << 11 | 1 << 12 | 1 << 13,
}

---@enum ImGuizmoMode
imgui.ImGuizmoMode = {
    WORLD = 1,
    LOCAL = 0,
}

---@enum ImGuiTableFlags
imgui.TableFlags = {
    None = 0,
    Resizable = 1 << 0,
    Reorderable = 1 << 1,
    Hideable = 1 << 2,
    Sortable = 1 << 3,
    NoSavedSettings = 1 << 4,
    ContextMenuInBody = 1 << 5,
    RowBg = 1 << 6,
    BordersInnerH = 1 << 7,
    BordersOuterH = 1 << 8,
    BordersInnerV = 1 << 9,
    BordersOuterV = 1 << 10,
    BordersH = 1 << 7 | 1 << 8,
    BordersV = 1 << 9 | 1 << 10,
    BordersInner = 1 << 9 | 1 << 7,
    BordersOuter = 1 << 10 | 1 << 8,
    Borders = 1 << 9 | 1 << 7 | 1 << 10 | 1 << 8,
    NoBordersInBody = 1 << 11,
    NoBordersInBodyUntilResize = 1 << 12,
    SizingFixedFit = 1 << 13,
    SizingFixedSame = 2 << 13,
    SizingStretchProp = 3 << 13,
    SizingStretchSame = 4 << 13,
    NoHostExtendX = 1 << 16,
    NoHostExtendY = 1 << 17,
    NoKeepColumnsVisible = 1 << 18,
    PreciseWidths = 1 << 19,
    NoClip = 1 << 20,
    PadOuterX = 1 << 21,
    NoPadOuterX = 1 << 22,
    NoPadInnerX = 1 << 23,
    ScrollX = 1 << 24,
    ScrollY = 1 << 25,
    SortMulti = 1 << 26,
    SortTristate = 1 << 27,
}

---@enum ImGuiTableColumnFlags
imgui.ColumnFlags = {
    None = 0,
    DefaultHide = 1 << 1,
    DefaultSort = 1 << 2,
    WidthStretch = 1 << 3,
    WidthFixed = 1 << 4,
    NoResize = 1 << 5,
    NoReorder = 1 << 6,
    NoHide = 1 << 7,
    NoClip = 1 << 8,
    NoSort = 1 << 9,
    NoSortAscending = 1 << 10,
    NoSortDescending = 1 << 11,
    NoHeaderWidth = 1 << 13,
    PreferSortAscending = 1 << 14,
    PreferSortDescending = 1 << 15,
    IndentEnable = 1 << 16,
    IndentDisable = 1 << 17,
    IsEnabled = 1 << 24,
    IsVisible = 1 << 25,
    IsSorted = 1 << 26,
    IsHovered = 1 << 27,
}

---@enum ImGuiStyleVar
imgui.StyleVar = {
    Alpha = 0, -- number
    DisabledAlpha = 1, -- number
    WindowPadding = 2, -- Vector2f
    WindowRounding = 3, -- number
    WindowBorderSize = 4, -- number
    WindowMinSize = 5, -- Vector2f
    WindowTitleAlign = 6, -- Vector2f
    ChildRounding = 7, -- number
    ChildBorderSize = 8, -- number
    PopupRounding = 9, -- number
    PopupBorderSize = 10, -- number
    FramePadding = 11, -- Vector2f
    FrameRounding = 12, -- number
    FrameBorderSize = 13, -- number
    ItemSpacing = 14, -- Vector2f
    ItemInnerSpacing = 15, -- Vector2f
    IndentSpacing = 16, -- number
    CellPadding = 17, -- Vector2f
    ScrollbarSize = 18, -- number
    ScrollbarRounding = 19, -- number
    GrabMinSize = 20, -- number
    GrabRounding = 21, -- number
    TabRounding = 22, -- number
    TabBorderSize = 23, -- number
    TabBarBorderSize = 24, -- number
    TableAngledHeadersAngle = 25, -- number
    TableAngledHeadersTextAlign = 26, -- Vector2f
    ButtonTextAlign = 27, -- Vector2f
    SelectableTextAlign = 28, -- Vector2f
    SeparatorTextBorderSize = 29, -- number
    SeparatorTextAlign = 30, -- Vector2f
    SeparatorTextPadding = 31, -- Vector2f
}

---@enum ImGuiWindowFlags
imgui.WindowFlags = {
    None = 0,
    NoTitleBar = 1 << 0,
    NoResize = 1 << 1,
    NoMove = 1 << 2,
    NoScrollbar = 1 << 3,
    NoScrollWithMouse = 1 << 4,
    NoCollapse = 1 << 5,
    AlwaysAutoResize = 1 << 6,
    NoBackground = 1 << 7,
    NoSavedSettings = 1 << 8,
    NoMouseInputs = 1 << 9,
    MenuBar = 1 << 10,
    HorizontalScrollbar = 1 << 11,
    NoFocusOnAppearing = 1 << 12,
    NoBringToFrontOnFocus = 1 << 13,
    AlwaysVerticalScrollbar = 1 << 14,
    AlwaysHorizontalScrollbar = 1 << 15,
    NoNavInputs = 1 << 16,
    NoNavFocus = 1 << 17,
    UnsavedDocument = 1 << 18,
}
---@diagnostic disable-next-line: inject-field
imgui.WindowFlags.NoNav = imgui.WindowFlags.NoNavInputs | imgui.WindowFlags.NoNavFocus
---@diagnostic disable-next-line: inject-field
imgui.WindowFlags.NoDecoration = imgui.WindowFlags.NoTitleBar
    | imgui.WindowFlags.NoResize
    | imgui.WindowFlags.NoScrollbar
    | imgui.WindowFlags.NoCollapse
---@diagnostic disable-next-line: inject-field
imgui.WindowFlags.NoInputs = imgui.WindowFlags.NoMouseInputs
    | imgui.WindowFlags.NoNavInputs
    | imgui.WindowFlags.NoNavFocus

---@enum ImguiCond
imgui.Cond = {
    None = 0,
    Always = 1 << 0,
    Once = 1 << 1,
    FirstUseEver = 1 << 2,
    Appearing = 1 << 3,
}

---@enum ImGuiInputTextFlags
imgui.InputTextFlags = {
    None = 0,
    CharsDecimal = 1 << 0,
    CharsHexadecimal = 1 << 1,
    CharsScientific = 1 << 2,
    CharsUppercase = 1 << 3,
    CharsNoBlank = 1 << 4,
    AllowTabInput = 1 << 5,
    EnterReturnsTrue = 1 << 6,
    EscapeClearsAll = 1 << 7,
    CtrlEnterForNewLine = 1 << 8,
    ReadOnly = 1 << 9,
    Password = 1 << 10,
    AlwaysOverwrite = 1 << 11,
    AutoSelectAll = 1 << 12,
    ParseEmptyRefVal = 1 << 13,
    DisplayEmptyRefVal = 1 << 14,
    NoHorizontalScroll = 1 << 15,
    NoUndoRedo = 1 << 16,
    CallbackCompletion = 1 << 17,
    CallbackHistory = 1 << 18,
    CallbackAlways = 1 << 19,
    CallbackCharFilter = 1 << 20,
    CallbackResize = 1 << 21,
    CallbackEdit = 1 << 22,
}

---@enum ImGuiCol
imgui.Col = {
    ImGuiCol_Text = 0,
    ImGuiCol_TextDisabled = 1,
    ImGuiCol_WindowBg = 2,
    ImGuiCol_ChildBg = 3,
    ImGuiCol_PopupBg = 4,
    ImGuiCol_Border = 5,
    ImGuiCol_BorderShadow = 6,
    ImGuiCol_FrameBg = 7,
    ImGuiCol_FrameBgHovered = 8,
    ImGuiCol_FrameBgActive = 9,
    ImGuiCol_TitleBg = 10,
    ImGuiCol_TitleBgActive = 11,
    ImGuiCol_TitleBgCollapsed = 12,
    ImGuiCol_MenuBarBg = 13,
    ImGuiCol_ScrollbarBg = 14,
    ImGuiCol_ScrollbarGrab = 15,
    ImGuiCol_ScrollbarGrabHovered = 16,
    ImGuiCol_ScrollbarGrabActive = 17,
    ImGuiCol_CheckMark = 18,
    ImGuiCol_SliderGrab = 19,
    ImGuiCol_SliderGrabActive = 20,
    ImGuiCol_Button = 21,
    ImGuiCol_ButtonHovered = 22,
    ImGuiCol_ButtonActive = 23,
    ImGuiCol_Header = 24,
    ImGuiCol_HeaderHovered = 25,
    ImGuiCol_HeaderActive = 26,
    ImGuiCol_Separator = 27,
    ImGuiCol_SeparatorHovered = 28,
    ImGuiCol_SeparatorActive = 29,
    ImGuiCol_ResizeGrip = 30,
    ImGuiCol_ResizeGripHovered = 32,
    ImGuiCol_ResizeGripActive = 32,
    ImGuiCol_TabHovered = 33,
    ImGuiCol_Tab = 34,
    ImGuiCol_TabSelected = 35,
    ImGuiCol_TabSelectedOverline = 36,
    ImGuiCol_TabDimmed = 37,
    ImGuiCol_TabDimmedSelected = 38,
    ImGuiCol_TabDimmedSelectedOverline = 39,
    ImGuiCol_PlotLines = 40,
    ImGuiCol_PlotLinesHovered = 41,
    ImGuiCol_PlotHistogram = 42,
    ImGuiCol_PlotHistogramHovered = 43,
    ImGuiCol_TableHeaderBg = 44,
    ImGuiCol_TableBorderStrong = 45,
    ImGuiCol_TableBorderLight = 46,
    ImGuiCol_TableRowBg = 47,
    ImGuiCol_TableRowBgAlt = 48,
    ImGuiCol_TextSelectedBg = 49,
    ImGuiCol_DragDropTarget = 50,
    ImGuiCol_NavHighlight = 51,
    ImGuiCol_NavWindowingHighlight = 52,
    ImGuiCol_NavWindowingDimBg = 53,
    ImGuiCol_ModalWindowDimBg = 54,
}
