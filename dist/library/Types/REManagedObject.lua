---@meta


---
---REManagedObjects are the basic building blocks of most types in the engine (unless they're native types).
---
---They are returned from methods like:
---
---* `sdk.call_native_func`
---
---* `sdk.call_object_func`
---
---* `sdk.get_managed_singleton`
---
---* `REManagedObject:call`
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html)
---
---@class REManagedObject
local REManagedObject = {}


---
---Increments the object's internal reference count.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfadd_ref)
---
---@return REManagedObject
function REManagedObject:add_ref() end

---
---Increments the object's internal reference count without REFramework managing it. Any objects created with REFramework and also using this method will not be deleted after the Lua state is destroyed.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfadd_ref_permanent)
---
---@return REManagedObject
function REManagedObject:add_ref_permanent() end

---
---Decrements the object's internal reference count. Destroys the object if it reaches 0. Can be used on any REManagedObject. Can crash the game or cause undefined behavior.
---
---When a new Lua reference is created to an `REManagedObject`, REFramework automatically increments its reference count internally with `self:add_ref()`. This will keep the object alive until you are no longer referencing the object in Lua. `self:release()` is automatically called when Lua is no longer referencing the object anywhere.
---
---The only time you will need to manually call `self:add_ref()` and `self:release()` is when a newly created object is returned by the engine, e.g. an array, or something from `sdk.create_instance()`.
---
---A more in-depth explanation can be found in the "FrameGC Algorithm" section of this GDC presentation by Capcom:
---
---https://github.com/kasicass/blog/blob/master/3d-reengine/2021_03_10_achieve_rapid_iteration_re_engine_design.md#framegc-algorithm-17
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfforce_release)
---
---@return nil
function REManagedObject:force_release() end

---
---Decrements the object's internal reference count. Destroys the object if it reaches 0. Can only be used on objects managed by Lua.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfrelease)
---
---@return nil
function REManagedObject:release() end

---
---Experimental API to deserialize `data` into `self`.
---
---`data` is RSZ data, in `table` format as an array of bytes.
---
---Will only work on native `via` types.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfdeserialize_nativedata-objects)
---
---@param data_obj integer[]
---@param objects_obj? REManagedObject[]
---@return nil
function REManagedObject:deserialize_native(data_obj, objects_obj) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfget_reference_count)
---
---@return integer
function REManagedObject:get_reference_count() end

---
---[View documents](hhttps://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfget_address)
---
---@return integer
function REManagedObject:get_address() end

---
---Returns an `RETypeDefinition*`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfget_type_definition)
---
---@return RETypeDefinition?
function REManagedObject:get_type_definition() end

---
---Return type is dependent on the field type.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfget_fieldname)
---
---@param name string
---@return any
function REManagedObject:get_field(name) end

---@return integer
function REManagedObject:get_object_size() end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfset_fieldname-value)
---
---@param name string
---@param value any
---@return nil
function REManagedObject:set_field(name, value) end

---
---Return value is dependent on the method's return type. Wrapper over `sdk.call_object_func`.
---
---Full function prototype can be passed as `method_name` if there are multiple functions with the same name but different parameters.
---
---e.g. `self:call("foo(System.String, System.Single, System.UInt32, System.Object)", a, b, c, d)`
---
---Valid method names can be found in the Object Explorer. Find the type you're looking for, and valid methods will be found under `TDB Methods`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfcallmethod_name-args)
---
---@param name string
---@param ... any
---@return any
function REManagedObject:call(name, ...) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfwrite_byteoffset-value)
---
---@param offset integer
---@param value integer
---@return nil
function REManagedObject:write_byte(offset, value) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfwrite_shortoffset-value)
---
---@param offset integer
---@param value integer
---@return nil
function REManagedObject:write_short(offset, value) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfwrite_dwordoffset-value)
---
---@param offset integer
---@param value integer
---@return nil
function REManagedObject:write_dword(offset, value) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfwrite_qwordoffset-value)
---
---@param offset integer
---@param value integer
---@return nil
function REManagedObject:write_qword(offset, value) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfwrite_floatoffset-value)
---
---@param offset integer
---@param value number
---@return nil
function REManagedObject:write_float(offset, value) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfwrite_doubleoffset-value)
---
---@param offset integer
---@param value number
---@return nil
function REManagedObject:write_double(offset, value) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfread_byteoffset)
---
---@param offset integer
---@return integer
function REManagedObject:read_byte(offset) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfread_shortoffset)
---
---@param offset integer
---@return integer
function REManagedObject:read_short(offset) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfread_dwordoffset)
---
---@param offset integer
---@return integer
function REManagedObject:read_dword(offset) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfread_qwordoffset)
---
---@param offset integer
---@return integer
function REManagedObject:read_qword(offset) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfread_floatoffset)
---
---@param offset integer
---@return number
function REManagedObject:read_float(offset) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/REManagedObject.html#selfread_doubleoffset)
---
---@param offset integer
---@return number
function REManagedObject:read_double(offset) end
