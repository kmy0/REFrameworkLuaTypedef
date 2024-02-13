---@meta


---
---Bindings for [ImNodes](https://github.com/Nelarius/imnodes). Can be used in the `re.on_frame` callback.
---
---Real world examples can be found in the [BHVT Editor](https://github.com/praydog/RE-BHVT-Editor)
---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html)
---
---@class imnodes
imnodes = {}


---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesis_editor_hovered)
---
---@return boolean
function imnodes.is_editor_hovered() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesis_node_hovered)
---
---@return boolean, integer
function imnodes.is_node_hovered() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesis_link_hovered)
---
---@return boolean, integer
function imnodes.is_link_hovered() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesis_pin_hovered)
---
---@return boolean, integer
function imnodes.is_pin_hovered() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesbegin_node_editor)
---
---@return nil
function imnodes.begin_node_editor() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesend_node_editor)
---
---@return nil
function imnodes.end_node_editor() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesbegin_node)
---
---@param id integer
---@return nil
function imnodes.begin_node(id) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesend_node)
---
---@return nil
function imnodes.end_node() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesbegin_node_titlebar)
---
---@return nil
function imnodes.begin_node_titlebar() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesend_node_titlebar)
---
---@return nil
function imnodes.end_node_titlebar() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesbegin_input_attribute)
---
---@param attr integer
---@param shape integer `ImNodesPinShape`
---@return nil
function imnodes.begin_input_attribute(attr, shape) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesend_input_attribute)
---
---@return nil
function imnodes.end_input_attribute() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesbegin_output_attribute)
---
---@param attr integer
---@param shape integer `ImNodesPinShape`
---@return nil
function imnodes.begin_output_attribute(attr, shape) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesend_output_attribute)
---
---@return nil
function imnodes.end_output_attribute() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesbegin_static_attribute)
---
---@param attr integer
---@return nil
function imnodes.begin_static_attribute(attr) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesend_static_attribute)
---
---@return nil
function imnodes.end_static_attribute() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesminimap)
---
---@param size_fraction number
---@param location integer `ImNodesMiniMapLocation`
---@return nil
function imnodes.minimap(size_fraction, location) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodeslink)
---
---@param id integer
---@param start_attr_id integer
---@param end_attr_id integer
---@return nil
function imnodes.link(id, start_attr_id, end_attr_id) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesget_node_dimensions)
---
---@param id integer
---@return Vector2f
function imnodes.get_node_dimensions(id) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodespush_color_style)
---
---@param item integer `ImNodesCol`
---@param color integer
---@return nil
function imnodes.push_color_style(item, color) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodespop_color_style)
---
---@return nil
function imnodes.pop_color_style() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodespush_style_var)
---
---@param item integer `ImNodesStyleVar`
---@param value number
---@return nil
function imnodes.push_style_var(item, value) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodespush_style_var_vec2)
---
---@param item integer `ImNodesStyleVar`
---@param x number
---@param y number
---@return nil
function imnodes.push_style_var_vec2(item, x, y) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodespop_style_var)
---
---@return nil
function imnodes.pop_style_var() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesset_node_screen_space_pos)
---
---@param id integer
---@param x number
---@param y number
---@return nil
function imnodes.set_node_screen_space_pos(id, x, y) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesset_node_editor_space_pos)
---
---@param id integer
---@param x number
---@param y number
---@return nil
function imnodes.set_node_editor_space_pos(id, x, y) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesset_node_grid_space_pos)
---
---@param id integer
---@param x number
---@param y number
---@return nil
function imnodes.set_node_grid_space_pos(id, x, y) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesget_node_screen_space_pos)
---
---@param id integer
---@return Vector2f
function imnodes.get_node_screen_space_pos(id) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesget_node_editor_space_pos)
---
---@param id integer
---@return Vector2f
function imnodes.get_node_editor_space_pos(id) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesget_node_grid_space_pos)
---
---@param id integer
---@return Vector2f
function imnodes.get_node_grid_space_pos(id) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesis_editor_hovered-1)
---
---@return boolean
function imnodes.is_editor_hovered() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesis_node_selected)
---
---@param node_id integer
---@return boolean
function imnodes.is_node_selected(node_id) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesis_link_selected)
---
---@param link_id integer
---@return boolean
function imnodes.is_link_selected(link_id) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesnum_selected_nodes)
---
---@return integer
function imnodes.num_selected_nodes() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesnum_selected_links)
---
---@return integer
function imnodes.num_selected_links() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesclear_node_selection)
---
---@param id_object? integer
---@return nil
function imnodes.clear_node_selection(id_object) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesclear_link_selection)
---
---@param id_object? integer
---@return nil
function imnodes.clear_link_selection(id_object) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesselect_node)
---
---@param node_id integer
---@return nil
function imnodes.select_node(node_id) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesselect_link)
---
---@param link_id integer
---@return nil
function imnodes.select_link(link_id) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesis_attribute_active)
---
---@return boolean
function imnodes.is_attribute_active() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodessnap_node_to_grid)
---
---@param node_id integer
---@return nil
function imnodes.snap_node_to_grid(node_id) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodeseditor_move_to_node)
---
---@param node_id integer
---@return nil
function imnodes.editor_move_to_node(node_id) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodeseditor_reset_panning)
---
---@param x number
---@param y number
---@return nil
function imnodes.editor_reset_panning(x, y) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodeseditor_get_panning)
---
---@return Vector2f
function imnodes.editor_get_panning() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesis_link_started)
---
---@return boolean, integer
function imnodes.is_link_started() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesis_link_dropped)
---
---@param including_detached_links? boolean
---@return boolean, integer
function imnodes.is_link_dropped(including_detached_links) end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesis_link_created)
---
---@return boolean, integer, integer, integer, integer, boolean
function imnodes.is_link_created() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesis_link_destroyed)
---
---@return boolean, integer
function imnodes.is_link_destroyed() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesget_selected_nodes)
---
---@return integer[]
function imnodes.get_selected_nodes() end

---
---[View documents](https://cursey.github.io/reframework-book/api/imnodes.html#imnodesget_selected_links)
---
---@return integer[]
function imnodes.get_selected_nodes() end
