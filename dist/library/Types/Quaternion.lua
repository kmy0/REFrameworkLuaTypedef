---@meta


---
---[View documents](https://cursey.github.io/reframework-book/api/types/Quaternion.html)
---
---@class Quaternion
---@operator mul(Quaternion): Quaternion
---@operator mul(Vector3f): Vector3f
---@operator mul(Vector4f): Vector4f
---
---The X component of the `Quaternion`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Quaternion.html#x-number)
---
---@field x number
---
---The Y component of the `Quaternion`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Quaternion.html#y-number)
---
---@field y number
---
---The Z component of the `Quaternion`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Quaternion.html#z-number)
---
---@field z number
---
---The W component of the `Quaternion`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Quaternion.html#w-number)
---
---@field w number
Quaternion = {}


---@return Quaternion
function Quaternion.new() end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/Quaternion.html#quaternionneww-x-y-z)
---
---@param x number
---@param y number
---@param z number
---@param w number
---@return Quaternion
function Quaternion.new(x, y, z, w) end

---@param vec3 Vector3f
---@return Quaternion
function Quaternion.new(vec3) end

---@return Quaternion
function Quaternion:clone() end

---
---Returns the identity quaternion.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Quaternion.html#quaternionidentity)
---
---@return Quaternion
function Quaternion.identity() end

---
---Returns a `Matrix4x4f` built from `self`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Quaternion.html#selfto_mat4)
---
---@return Matrix4x4f
function Quaternion:to_mat4() end

---
---Returns a `Vector3f` representing the Euler angles for this Quaternion.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Quaternion.html#selfto_euler)
---
---@return Vector3f
function Quaternion:to_euler() end

---
---Returns a `Quaternion` that is the inverse of `self`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Quaternion.html#selfinverse)
---
---@return Quaternion
function Quaternion:inverse() end

---
---Inverts `self`. Returns nothing.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Quaternion.html#selfinvert)
---
---@return nil
function Quaternion:invert() end

---
---Normalizes `self`. Returns nothing.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Quaternion.html#selfnormalize)
---
---@return nil
function Quaternion:normalize() end

---
---Returns a `Quaternion` that is the normalization of `self`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Quaternion.html#selfnormalized)
---
---@return Quaternion
function Quaternion:normalized() end

---
---Returns a `Quaternion` that is the spherical linear interpolation between `self` and `other` with the given `t`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Quaternion.html#selfslerpother-t)
---
---@param q2 Quaternion
---@param t number
---@return Quaternion
function Quaternion:slerp(q2, t) end

---
---Returns the dot product between `self` and `other`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Quaternion.html#selfdotother)
---
---@param q2 Quaternion
---@return number
function Quaternion:dot(q2) end

---
---Returns the length of `self`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Quaternion.html#selflength)
---
---@return number
function Quaternion:length() end

---
---Returns a `Quaternion` that is the conjugate of `self`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Quaternion.html#selfconjugate)
---
---@return Quaternion
function Quaternion:conjugate() end
