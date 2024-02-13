---@meta


---@class RE8VR
---@field player REManagedObject
---@field transform RETransform
---@field inventory REManagedObject
---@field updater REManagedObject
---@field weapon REManagedObject
---@field hand_touch REManagedObject
---@field order REManagedObject
---@field status REManagedObject
---@field event_action_controller REManagedObject
---@field game_event_action_controller REManagedObject
---@field hit_controller REManagedObject
---@field left_hand_ik REManagedObject
---@field right_hand_ik REManagedObject
---@field left_hand_ik_transform RETransform
---@field right_hand_ik_transform RETransform
---@field left_hand_ik_object REManagedObject
---@field right_hand_ik_object REManagedObject
---@field left_hand_position_offset Vector4f
---@field right_hand_position_offset Vector4f
---@field left_hand_rotation_offset Quaternion
---@field right_hand_rotation_offset Quaternion
---@field last_right_hand_position Vector4f
---@field last_right_hand_rotation Quaternion
---@field last_left_hand_position Vector4f
---@field last_left_hand_rotation Quaternion
---@field last_shoot_pos Vector3f
---@field last_shoot_dir Vector3f
---@field last_muzzle_pos Vector3f
---@field last_muzzle_forward Vector3f
---@field was_gripping_weapon boolean
---@field is_holding_left_grip boolean
---@field is_in_cutscene boolean
---@field is_grapple_aim boolean
---@field is_reloading boolean
---@field is_motion_play boolean
---@field in_re8_end_game_event boolean
---@field has_vehicle boolean
---@field can_use_hands boolean
---@field is_arm_jacked boolean
---@field wants_block boolean
---@field wants_heal boolean
---@field delta_time number
---@field movement_speed_rate number
re8vr = {}


---@param hand_ik REManagedObject
---@return nil
function re8vr:set_hand_joints_to_tpose(hand_ik) end

---@return nil
function re8vr:update_hand_ik() end

---@param camera_rotation Quaternion
---@param camera_pos Vector4f
---@return nil
function re8vr:update_body_ik(camera_rotation, camera_pos) end

---@return nil
function re8vr:update_player_gestures() end

---@return boolean
function re8vr:update_pointers() end

---@return boolean
function re8vr:update_ik_pointers() end

---@param player_camera REManagedObject
---@return nil
function re8vr:fix_player_camera(player_camera) end

---@return nil
function re8vr:fix_player_shadow() end

---@return REManagedObject
function re8vr:get_localplayer() end

---@param player REManagedObject
---@return REManagedObject
function re8vr:get_weapon_object(player) end
