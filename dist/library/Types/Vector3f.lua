---@meta


---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html)
---
---@class Vector3f
---@operator add(Vector3f): Vector3f
---@operator sub(Vector3f): Vector3f
---@operator mul(number): Vector3f
---
---The X component of the `VectorXf`
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#x-number)
---
---@field x number
---
---The Y component of the `VectorXf`
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#y-number)
---
---@field y number
---
---The Z component of the `VectorXf`. Only `Vector3f` and `Vector4f` have this field.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#z-number)
---
---@field z number
Vector3f = {}


---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#vector3fnewx-y-z)
---
---@param x number
---@param y number
---@param z number
---@return Vector3f
function Vector3f.new(x, y, z) end

---@return Vector3f
function Vector3f:clone() end

---
---Returns the dot product between `self` and `other`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#selfdotother)
---
---@param v2 Vector3f
---@return number
function Vector3f:dot(v2) end

---
---Returns the cross product between `self` and `other`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#selfcrossother)
---
---@param v2 Vector3f
---@return Vector3f
function Vector3f:cross(v2) end

---
---Returns the length of `self`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#selflength)
---
---@return number
function Vector3f:length() end

---
---Normalizes `self`. Nothing is returned.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#selfnormalize)
---
---@return nil
function Vector3f:normalize() end

---
---Returns the normalization of `self`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#selfnormalized)
---
---@return Vector3f
function Vector3f:normalized() end

---
---Returns the reflection of `self` over `normal`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#selfreflectnormal)
---
---@param normal Vector3f
---@return Vector3f
function Vector3f:reflect(normal) end

---
---Returns the refraction of `self` over `normal` with the given `eta`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#selfrefractnormal-eta)
---
---@param normal Vector3f
---@param eta number
---@return Vector3f
function Vector3f:refract(normal, eta) end

---
---Returns the linear interpolation between `self` and `other` with the given `t`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#selflerpother-t)
---
---@param v2 Vector3f
---@param t number
---@return Vector3f
function Vector3f:lerp(v2, t) end

---
---Converts `self` to a `Vector2f`. Not available if `self` is already a `Vector2f`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#selfto_vec2)
---
---@return Vector2f
function Vector3f:to_vec2() end

---
---Converts `self` to a `Vector4f`. Not available if `self` is already a `Vector4f`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#selfto_vec4)
---
---@return Vector4f
function Vector3f:to_vec4() end

---
---Converts `self` to a `Matrix4x4f`. Treats `self` as the forward vector.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#selfto_mat)
---
---@return Matrix4x4f
function Vector3f:to_mat() end

---
---Converts `self` to a `Quaternion`. Treats `self` as the forward vector.
---
---Equivalent to `self:to_mat():to_quat()`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#selfto_quat)
---
---@return Quaternion
function Vector3f:to_quat() end
