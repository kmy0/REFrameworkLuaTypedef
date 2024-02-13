---@meta


---
---Bindings to access VR from lua.
---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html)
---
---@class VR
vrmod = {}


---
---Returns a list of device indices for the active controllers.
---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_controllers)
---
---@return integer[]
function vrmod:get_controllers() end

---
---Returns the position for a given device index.
---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_positionindex)
---
---@param index integer
---@return Vector4f
function vrmod:get_position(index) end

---
---Returns the velocity for a given device index.
---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_velocityindex)
---
---@param index integer
---@return Vector4f
function vrmod:get_velocity(index) end

---
---Returns the angular velocity for a given device index.
---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_angular_velocityindex)
---
---@param index integer
---@return Vector4f
function vrmod:get_angular_velocity(index) end

---
---Returns the rotation for a given device index.
---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_rotationindex)
---
---@param index integer
---@return Matrix4x4f
function vrmod:get_rotation(index) end

---
---Returns the full transformation matrix for a given device index.
---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_transformindex)
---
---@param index integer
---@return Matrix4x4f
function vrmod:get_transform(index) end

---
---Returns a `Vector2f`
---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_left_stick_axis)
---
---@return Vector2f
function vrmod:get_left_stick_axis() end

---
---Returns a `Vector2f`
---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_right_stick_axis)
---
---@return Vector2f
function vrmod:get_right_stick_axis() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_current_eye_transformflip)
---
---@param flip boolean
---@return Matrix4x4f
function vrmod:get_current_eye_transform(flip) end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_current_projection_matrixflip)
---
---@param flip boolean
---@return Matrix4x4f
function vrmod:get_current_projection_matrix(flip) end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_standing_origin)
---
---@return Vector4f
function vrmod:get_standing_origin() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodset_standing_originpos)
---
---@param origin Vector4f
---@return nil
function vrmod:set_standing_origin(origin) end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_rotation_offset)
---
---@return Quaternion
function vrmod:get_rotation_offset() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodset_rotation_offsetquat)
---
---@param offset Quaternion
---@return nil
function vrmod:set_rotation_offset(offset) end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodrecenter_view)
---
---@return nil
function vrmod:recenter_view() end

---@return Quaternion
function vrmod:get_gui_rotation_offset() end

---@param offset Quaternion
---@return nil
function vrmod:set_gui_rotation_offset(offset) end

---
---`from` is a `Quaternion`.
---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodrecenter_guifrom)
---
---@param from Quaternion
---@return nil
function vrmod:recenter_gui(from) end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_action_set)
---
---@return integer
function vrmod:get_action_set() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_active_action_set)
---
---@return userdata
function vrmod:get_active_action_set() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_action_trigger)
---
---@return integer
function vrmod:get_action_trigger() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_action_grip)
---
---@return integer
function vrmod:get_action_grip() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_action_joystick)
---
---@return integer
function vrmod:get_action_joystick() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_action_joystick_click)
---
---@return integer
function vrmod:get_action_joystick_click() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_action_a_button)
---
---@return integer
function vrmod:get_action_a_button() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_action_b_button)
---
---@return integer
function vrmod:get_action_b_button() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_action_weapon_dial)
---
---@return integer
function vrmod:get_action_weapon_dial() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_action_minimap)
---
---@return integer
function vrmod:get_action_minimap() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_action_block)
---
---@return integer
function vrmod:get_action_block() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_action_dpad_up)
---
---@return integer
function vrmod:get_action_dpad_up() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_action_dpad_down)
---
---@return integer
function vrmod:get_action_dpad_down() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_action_dpad_left)
---
---@return integer
function vrmod:get_action_dpad_left() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_action_dpad_right)
---
---@return integer
function vrmod:get_action_dpad_right() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_action_heal)
---
---@return integer
function vrmod:get_action_heal() end

---
---Returns a `vr::VRInputValueHandle_t`. To be used in `vrmod:is_action_active` as the `source`.
---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_left_joystick)
---
---@return integer
function vrmod:get_left_joystick() end

---
---Returns a `vr::VRInputValueHandle_t`. To be used in `vrmod:is_action_active` as the `source`.
---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_right_joystick)
---
---@return integer
function vrmod:get_right_joystick() end

---
---Returns `true` if the user has issued any inputs to the controllers within the last 10 seconds.
---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodis_using_controllers)
---
---@return boolean
function vrmod:is_using_controllers() end

---
---Returns `true` if OpenVR is loaded.
---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodis_openvr_loaded)
---
---@return boolean
function vrmod:is_openvr_loaded() end

---
---Returns `true` if OpenXR is loaded.
---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodis_openxr_loaded)
---
---@return boolean
function vrmod:is_openxr_loaded() end

---
---Returns `true` if the user currently has their VR headset on.
---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodis_hmd_active)
---
---@return boolean
function vrmod:is_hmd_active() end

---
---Returns `true` if the `action` belonging to `source` is active.
---
---Active meaning that the user is e.g. holding the A button down if the A button was the `action`.
---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodis_action_activeaction-source)
---
---@param action integer
---@param source integer
---@return boolean
function vrmod:is_action_active(action, source) end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodis_using_hmd_oriented_audio)
---
---@return boolean
function vrmod:is_using_hmd_oriented_audio() end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodtoggle_hmd_oriented_audio)
---
---@return nil
function vrmod:toggle_hmd_oriented_audio() end

---
---Applies the headset's transform to the given rotation and position. Both parameters are in and out parameters.
---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodapply_hmd_transformrotation-position)
---
---@param rotation Quaternion
---@param position Vector4f
---@return nil
function vrmod:apply_hmd_transform(rotation, position) end

---@param seconds_from_now number
---@param duration number
---@param frequency number
---@param amplitude number
---@param source integer
---@return nil
function vrmod:trigger_haptic_vibration(seconds_from_now, duration, frequency, amplitude, source) end

---
---[View documents](https://cursey.github.io/reframework-book/api/vrmod.html#vrmodget_last_render_matrix)
---
---@return Matrix4x4f
function vrmod:get_last_render_matrix() end

---@return boolean
function vrmod:should_handle_pause() end

---@param state boolean
---@return boolean
function vrmod:set_handle_pause(state) end

---@return nil
function vrmod:unhide_crosshair() end
