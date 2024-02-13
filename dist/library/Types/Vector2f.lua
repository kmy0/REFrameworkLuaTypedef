---@meta


---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html)
---
---@class Vector2f
---@operator add(Vector2f): Vector2f
---@operator sub(Vector2f): Vector2f
---@operator mul(number): Vector2f
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
Vector2f = {}


---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#vector2fnewx-y)
---
---@param x number
---@param y number
---@return Vector2f
function Vector2f.new(x, y) end

---@return Vector2f
function Vector2f:clone() end

---
---Returns the dot product between `self` and `other`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#selfdotother)
---
---@param v2 Vector2f
---@return number
function Vector2f:dot(v2) end

---
---Returns the length of `self`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#selflength)
---
---@return number
function Vector2f:length() end

---
---Normalizes `self`. Nothing is returned.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#selfnormalize)
---
---@return nil
function Vector2f:normalize() end

---
---Returns the normalization of `self`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#selfnormalized)
---
---@return Vector2f
function Vector2f:normalized() end

---
---Converts `self` to a `Vector3f`. Not available if `self` is already a `Vector3f`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#selfto_vec3)
---
---@return Vector3f
function Vector2f:to_vec3() end

---
---Converts `self` to a `Vector4f`. Not available if `self` is already a `Vector4f`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/VectorXf.html#selfto_vec4)
---
---@return Vector4f
function Vector2f:to_vec4() end
