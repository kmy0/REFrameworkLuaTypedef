---@meta


---
---[View documents](https://cursey.github.io/reframework-book/api/types/Matrix4x4f.html)
---
---@class Matrix4x4f
---@operator mul(Matrix4x4f): Matrix4x4f
---@operator mul(Vector4f): Vector4f
Matrix4x4f = {}


---
---[View documents](https://cursey.github.io/reframework-book/api/types/Matrix4x4f.html#matrix4x4fnew)
---
---@return Matrix4x4f
function Matrix4x4f.new() end

---@param v1 Vector4f
---@param v2 Vector4f
---@param v3 Vector4f
---@param v4 Vector4f
---@return Matrix4x4f
function Matrix4x4f.new(v1, v2, v3, v4) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/Matrix4x4f.html#matrix4x4fnewx1-y1-z1-w1-x2-y2-z2-w2-x3-y3-z3-w3-x4-y4-z4-w4)
---
---@param x1 number
---@param y1 number
---@param z1 number
---@param w1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param w2 number
---@param x3 number
---@param y3 number
---@param z3 number
---@param w3 number
---@param x4 number
---@param y4 number
---@param z4 number
---@param w4 number
---@return Matrix4x4f
function Matrix4x4f.new(x1, y1, z1, w1, x2, y2, z2, w2, x3, y3, z3, w3, x4, y4, z4, w4) end

---@return Matrix4x4f
function Matrix4x4f:clone() end

---
---Returns the identity matrix.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Matrix4x4f.html#matrix4x4fidentity)
---
---@return Matrix4x4f
function Matrix4x4f.identity() end

---
---Returns a `Quaternion` built from `self`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Matrix4x4f.html#selfto_quat)
---
---@return Quaternion
function Matrix4x4f:to_quat() end

---
---Returns a `Matrix4x4f` that is the inverse of `self`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Matrix4x4f.html#selfinverse)
---
---@return Matrix4x4f
function Matrix4x4f:inverse() end

---
---Inverts `self`. Returns nothing.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Matrix4x4f.html#selfinvert)
---
---@return nil
function Matrix4x4f:invert() end

---
---Returns the linear interpolation between `self` and `other` with the given `t`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Matrix4x4f.html#selfinterpolateother-t)
---
---@param m2 Matrix4x4f
---@param t number
---@return Matrix4x4f
function Matrix4x4f:interpolate(m2, t) end

---
---Extracts the rotation matrix from `self`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/Matrix4x4f.html#selfmatrix_rotation)
---
---@return Matrix4x4f
function Matrix4x4f:matrix_rotation() end
