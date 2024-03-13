---@meta


---
---`RETransform` is the basic building block of all GameObjects, they always contain one.
---
---Inherits from `REComponent`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETransform.html)
---
---@class RETransform: REComponent
local RETransform = {}


---
---Returns a `Matrix4x4f`. Returns the reference pose (T-pose) for a specific joint relative to the transform's origin (in local transform space).
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETransform.html#selfcalculate_base_transformjoint)
---
---@param target REManagedObject
---@return Matrix4x4f
function RETransform:calculate_base_transform(target) end

---@param joint REManagedObject
---@param depth? integer
---@return Vector4f
function RETransform:calculate_tpose_pos_world(joint, depth) end

---@param joints REManagedObject[]
---@param additional_parents? integer
---@return nil
function RETransform:apply_joints_tpose(joints, additional_parents) end

---
---Sets the world position (`Vector4f`) of the transform.
---
---When `no_dirty` is `true`, the transform and its parents will not be marked as dirty. This seems to be necessary when the scene is locked, because parent transforms will end up getting stuck.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETransform.html#selfset_positionposition-no_dirty)
---
---@param pos Vector4f
---@param no_dirty? boolean
---@return nil
function RETransform:set_position(pos, no_dirty) end

---
---Sets the world rotation (`Quaternion`) of the transform.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETransform.html#selfset_rotationrotation)
---
---@param rot Quaternion
---@return nil
function RETransform:set_rotation(rot) end

---
---Gets the world position (`Vector4f`) of the transform.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETransform.html#selfget_position)
---
---@return Vector4f
function RETransform:get_position() end

---
---Gets the world rotation (`Quaternion`) of the transform.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETransform.html#selfget_rotation)
---
---@return Quaternion
function RETransform:get_rotation() end
