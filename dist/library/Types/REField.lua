---@meta


---
---[View documents](https://cursey.github.io/reframework-book/api/types/REField.html)
---
---@class REField
local REField = {}


---
---[View documents](https://cursey.github.io/reframework-book/api/types/REField.html#selfget_name)
---
---@return string
function REField:get_name() end

---
---Returns an `RETypeDefinition*`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REField.html#selfget_type)
---
---@return RETypeDefinition?
function REField:get_type() end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REField.html#selfget_offset_from_base)
---
---@return integer
function REField:get_offset_from_base() end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REField.html#selfget_offset_from_fieldptr)
---
---@return integer
function REField:get_offset_from_fieldptr() end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REField.html#selfget_declaring_type)
---
---@return RETypeDefinition?
function REField:get_declaring_type() end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REField.html#selfget_flags)
---
---@return integer
function REField:get_flags() end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REField.html#selfis_static)
---
---@return boolean
function REField:is_static() end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REField.html#selfis_literal)
---
---@return boolean
function REField:is_literal() end

---
---Returns the data contained in the field for `obj`.
---
---`obj` can be any of the following type:
---
---* `nil`, if the field is static
---
---* `REManagedObject*`
---
---* `void*` pointing to a `REManagedObject` or `ValueType`
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REField.html#selfget_dataobj)
---
---@param obj REManagedObject|userdata|nil
---@return any
function REField:get_data(obj) end
