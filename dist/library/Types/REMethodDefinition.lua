---@meta


---
---Method descriptor.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REMethodDefinition.html)
---
---@class REMethodDefinition
local REMethodDefinition = {}


---
---[View documents](https://cursey.github.io/reframework-book/api/types/REMethodDefinition.html#selfget_name)
---
---@return string
function REMethodDefinition:get_name() end

---
---Returns an `RETypeDefinition*`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REMethodDefinition.html#selfget_return_type)
---
---@return RETypeDefinition?
function REMethodDefinition:get_return_type() end

---
---Returns a `void*`. Pointer to the actual function in memory.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REMethodDefinition.html#selfget_function)
---
---@return userdata
function REMethodDefinition:get_function() end

---
---Returns an `RETypeDefinition*` corresponding to the class/type that declared this method.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REMethodDefinition.html#selfget_declaring_type)
---
---@return RETypeDefinition?
function REMethodDefinition:get_declaring_type() end

---
---Returns the number of parameters required to call the function.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REMethodDefinition.html#selfget_num_params)
---
---@return integer
function REMethodDefinition:get_num_params() end

---
---Returns a list of `RETypeDefinition`
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REMethodDefinition.html#selfget_param_types)
---
---@return RETypeDefinition[]
function REMethodDefinition:get_param_types() end

---
---Returns a list of strings for the parameter names
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REMethodDefinition.html#selfget_param_names)
---
---@return string[]
function REMethodDefinition:get_param_names() end

---
---Returns whether this method is static or not.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REMethodDefinition.html#selfis_static)
---
---@return boolean
function REMethodDefinition:is_static() end

---
---Equivalent to calling `obj:call(args...)`
---
---Can also use `self(obj, args...)`
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REMethodDefinition.html#selfcallobj-args)
---
---@param obj any
---@param ... any
---@return any
function REMethodDefinition:call(obj, ...) end
