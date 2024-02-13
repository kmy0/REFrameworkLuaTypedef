---@meta


---
---Type descriptor for objects in the RE Engine.
---
---Returned from things like `REManagedObject:get_type_definition()` or `sdk.find_type_definition(name)`
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html)
---
---@class RETypeDefinition
local RETypeDefinition = {}


---
---Returns a list of `REMethodDefinition`
---
---Filters out methods that are potentially just stubs or null.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfget_methods)
---
---@return REMethodDefinition[]
function RETypeDefinition:get_methods() end

---
---Returns an `REField`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfget_fields)
---
---@return REField[]
function RETypeDefinition:get_fields() end

---
---Returns the full name of the class.
---
---Equivalent to concatenating `self:get_namespace()` and `self:get_name()`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfget_full_name)
---
---@return string
function RETypeDefinition:get_full_name() end

---
---Returns the type name. Does not contain namespace.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfget_name)
---
---@return string
function RETypeDefinition:get_name() end

---
---Returns the namespace this type is contained in.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfget_namespace)
---
---@return string
function RETypeDefinition:get_namespace() end

---
---Returns an `REMethodDefinition`. To be used in things like `sdk.hook`.
---
---The full function prototype can be supplied to get an overloaded function.
---
---Example: `foo:get_method("Bar(System.Int32, System.Single)")`
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfget_methodname)
---
---@param name string
---@return REMethodDefinition?
function RETypeDefinition:get_method(name) end

---
---Returns an `REField`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfget_fieldname)
---
---@param name string
---@return REField?
function RETypeDefinition:get_field(name) end

---
---Returns a `System.Type`. Useful for methods that require this. Equivalent to `typeof` in C#.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfget_runtime_type)
---
---@return REManagedObject?
function RETypeDefinition:get_runtime_type() end

---
---Returns the `RETypeDefinition` this type inherits from.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfget_parent_type)
---
---@return RETypeDefinition?
function RETypeDefinition:get_parent_type() end

---@return integer
function RETypeDefinition:get_fqn_hash() end

---@return integer
function RETypeDefinition:get_crc_hash() end

---
---Returns the full size of the object. e.g. 0x14 for `System.Int32`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfget_size)
---
---@return integer
function RETypeDefinition:get_size() end

---
---Returns the value type size. e.g. 4 for `System.Int32`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfget_valuetype_size)
---
---@return integer
function RETypeDefinition:get_valuetype_size() end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfget_generic_argument_types)
---
---@return RETypeDefinition[]
function RETypeDefinition:get_generic_argument_types() end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfget_generic_type_definition)
---
---@return RETypeDefinition?
function RETypeDefinition:get_generic_type_definition() end

---
---Returns whether the type is a [ValueType](https://docs.microsoft.com/en-us/dotnet/api/system.valuetype?view=net-5.0).
---
---Does not necessarily need to inherit from `System.ValueType` for this to be true. An example would be `via.vec3`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfis_value_type)
---
---@return boolean
function RETypeDefinition:is_value_type() end

---@return boolean
function RETypeDefinition:is_enum() end

---@return boolean
function RETypeDefinition:is_array() end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfis_by_ref)
---
---@return boolean
function RETypeDefinition:is_by_ref() end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfis_pointer)
---
---@return boolean
function RETypeDefinition:is_pointer() end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfis_primitive)
---
---@return boolean
function RETypeDefinition:is_primitive() end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfis_generic_type)
---
---@return boolean
function RETypeDefinition:is_generic_type() end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfis_generic_type_definition)
---
---@return boolean
function RETypeDefinition:is_generic_type_definition() end

---
---Returns whether `self` or its parents are a `typename` or the `RETypeDefinition` passed.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfis_atypename-or-retypedefinition)
---
---@param comp RETypeDefinition|string
---@return boolean
function RETypeDefinition:is_a(comp) end

---
---Returns an `REManagedObject`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html#selfcreate_instance)
---
---@param simplify? boolean
---@return REManagedObject?
function RETypeDefinition:create_instance(simplify) end
