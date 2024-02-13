---@meta


---
---Easy-to-use wrapper over `System.Array`. Functions calls that return arrays or objects will automatically get converted to `SystemArray` types if eligible.
---
---Inherits from `REManagedObject`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/SystemArray.html)
---
---@class SystemArray: REManagedObject
local SystemArray = {}


---
---Returns the size of the array.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/SystemArray.html#selfget_size)
---
---@return integer
function SystemArray:get_size() end

---
---Returns the object at `index` in the array.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/SystemArray.html#selfget_elementindex)
---
---@param index integer
---@return REManagedObject?
function SystemArray:get_element(index) end

---
---Returns the array's elements as a lua table.
---
---Keep in mind these objects will all be full `REManagedObject` types, not the ValueTypes they represent, if any, like `System.Int32`
---
---[View documents](https://cursey.github.io/reframework-book/api/types/SystemArray.html#selfget_elements)
---
---@return REManagedObject[]
function SystemArray:get_elements() end
