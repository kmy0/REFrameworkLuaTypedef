---@meta

---
---Main starting point for most things.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html)
---
---@class sdk
sdk = {}

---
---Returns the version of the type database. A good approximation of the version of the RE Engine the game is running on.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkget_tdb_version)
---
---@return integer
function sdk.get_tdb_version() end

---
---Returns `game_namespace.name`.
---
---DMC5: `name` would get converted to `app.name`
---
---RE3: `name` would get converted to `offline.name`
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkgame_namespacename)
---
---@param base_name string
---@return string
function sdk.game_namespace(base_name) end

---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkget_thread_context)
---
---@return userdata
function sdk.get_thread_context() end

---
---Returns a `void*`. Can be used with [sdk.call_native_func](https://cursey.github.io/reframework-book/api/sdk.html#sdkcall_native_funcobject-type_definition-method_name-args)
---
---Possible singletons can be found in the Native Singletons view in the Object Explorer.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkget_native_singletonname)
---
---@param name string
---@return userdata
function sdk.get_native_singleton(name) end

---
---Returns an [REManagedObject*](https://cursey.github.io/reframework-book/api/types/REManagedObject.html).
---
---Possible singletons can be found in the Singletons view in the Object Explorer.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkget_managed_singletonname)
---
---@param name string
---@return REManagedObject?
function sdk.get_managed_singleton(name) end

---
---Creates and returns a new `System.String` from `str`.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkcreate_managed_stringstr)
---
---@param text string
---@return REManagedObject?
function sdk.create_managed_string(text) end

---
---Creates and returns a new [SystemArray](https://cursey.github.io/reframework-book/api/types/SystemArray.html) of the given `type`, with `length` elements.
---
---`type` can be any of the following:
---
---* A `System.Type` returned from [sdk.typeof](https://cursey.github.io/reframework-book/api/sdk.html#sdktypeofname)
---
---* An [RETypeDefinition](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html) returned from [sdk.find_type_definition](https://cursey.github.io/reframework-book/api/sdk.html#sdkfind_type_definitionname)
---
---* A Lua `string` representing the type name.
---
---Any other type will throw a Lua error.
---
---If `type` cannot resolve to a valid `System.Type`, a Lua error will be thrown.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkcreate_managed_arraytype-length)
---
---@param t_obj REManagedObject|RETypeDefinition|string
---@param length integer
---@return SystemArray?
function sdk.create_managed_array(t_obj, length) end

---
---Returns a fully constructed [REManagedObject](https://cursey.github.io/reframework-book/api/types/REManagedObject.html) of type `System.SByte` given the `value`.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkcreate_sbytevalue)
---
---@param value integer
---@return REManagedObject?
function sdk.create_sbyte(value) end

---
---Returns a fully constructed [REManagedObject](https://cursey.github.io/reframework-book/api/types/REManagedObject.html) of type `System.Byte` given the `value`.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkcreate_bytevalue)
---
---@param value integer
---@return REManagedObject?
function sdk.create_byte(value) end

---
---Returns a fully constructed [REManagedObject](https://cursey.github.io/reframework-book/api/types/REManagedObject.html) of type `System.Int16` given the `value`.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkcreate_int16value)
---
---@param value integer
---@return REManagedObject?
function sdk.create_int16(value) end

---
---Returns a fully constructed [REManagedObject](https://cursey.github.io/reframework-book/api/types/REManagedObject.html) of type `System.UInt16` given the `value`.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkcreate_uint16value)
---
---@param value integer
---@return REManagedObject?
function sdk.create_uint16(value) end

---
---Returns a fully constructed [REManagedObject](https://cursey.github.io/reframework-book/api/types/REManagedObject.html) of type `System.Int32` given the `value`.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkcreate_int32value)
---
---@param value integer
---@return REManagedObject?
function sdk.create_int32(value) end

---
---Returns a fully constructed [REManagedObject](https://cursey.github.io/reframework-book/api/types/REManagedObject.html) of type `System.UInt32` given the `value`.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkcreate_uint32value)
---
---@param value integer
---@return REManagedObject?
function sdk.create_uint32(value) end

---
---Returns a fully constructed [REManagedObject](https://cursey.github.io/reframework-book/api/types/REManagedObject.html) of type `System.Int64` given the `value`.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkcreate_int64value)
---
---@param value integer
---@return REManagedObject?
function sdk.create_int64(value) end

---
---Returns a fully constructed [REManagedObject](https://cursey.github.io/reframework-book/api/types/REManagedObject.html) of type `System.UInt64` given the `value`.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkcreate_uint64value)
---
---@param value integer
---@return REManagedObject?
function sdk.create_uint64(value) end

---
---Returns a fully constructed [REManagedObject](https://cursey.github.io/reframework-book/api/types/REManagedObject.html) of type `System.Single` given the `value`.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkcreate_singlevalue)
---
---@param value number
---@return REManagedObject?
function sdk.create_single(value) end

---
---Returns a fully constructed [REManagedObject](https://cursey.github.io/reframework-book/api/types/REManagedObject.html) of type `System.Double` given the `value`.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkcreate_doublevalue)
---
---@param value number
---@return REManagedObject?
function sdk.create_double(value) end

---
---Returns an `REResource`.
---
---If the typename does not correctly correspond to the resource file or is not a resource type, `nil` will be returned.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkcreate_resourcetypename-resource_path)
---
---@param type_name string
---@param name string
---@return REResource?
function sdk.create_resource(type_name, name) end

---
---Returns an [REManagedObject](https://cursey.github.io/reframework-book/api/types/REManagedObject.html) which is a `via.UserData`. `typename` can be `"via.UserData"` unless you know the full typename.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkcreate_userdatatypename-userdata_path)
---
---@param type_name string
---@param name string
---@return REManagedObject?
function sdk.create_userdata(type_name, name) end

---
---Returns an [REManagedObject](https://cursey.github.io/reframework-book/api/types/REManagedObject.html).
---
---Equivalent to calling `sdk.find_type_definition(typename):create_instance()`
---
---`simplify` - defaults to `false`. Set this to `true` if this function is returning `nil`.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkcreate_instancetypename-simplify)
---
---@param name string
---@param simplify_obj? boolean
---@return REManagedObject?
function sdk.create_instance(name, simplify_obj) end

---
---Returns an [RETypeDefinition*](https://cursey.github.io/reframework-book/api/types/RETypeDefinition.html).
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkfind_type_definitionname)
---
---@param name string
---@return RETypeDefinition?
function sdk.find_type_definition(name) end

---
---Returns a `System.Type`.
---
---Equivalent to calling `sdk.find_type_definition(name):get_runtime_type()`.
---
---Equivalent to `typeof` in C#.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdktypeofname)
---
---@param name string
---@return REManagedObject?
function sdk.typeof(name) end

---
---Return value is dependent on what the method returns.
---
---Full function prototype can be passed as `method_name` if there are multiple functions with the same name but different parameters.
---
---Should only be used with native types, not [REManagedObject](https://cursey.github.io/reframework-book/api/types/REManagedObject.html) (though, it can be if wanted).
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkcall_native_funcobject-type_definition-method_name-args)
---
---@param obj userdata|REManagedObject
---@param ty RETypeDefinition
---@param name string
---@param ... any
---@return any
function sdk.call_native_func(obj, ty, name, ...) end

---
---Return value is dependent on what the method returns.
---
---Full function prototype can be passed as `method_name` if there are multiple functions with the same name but different parameters.
---
---Alternative calling method:
---`managed_object:call(method_name, args...)`
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkcall_object_funcmanaged_object-method_name-args)
---
---@param obj REManagedObject
---@param name string
---@param ... any
---@return any
function sdk.call_object_func(obj, name, ...) end

---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkget_native_fieldobject-type_definition-field_name)
---
---@param obj userdata|REManagedObject
---@param ty RETypeDefinition
---@param name string
---@return any
function sdk.get_native_field(obj, ty, name) end

---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkset_native_fieldobject-type_definition-field_name-value)
---
---@param obj userdata|REManagedObject
---@param ty RETypeDefinition
---@param name string
---@param value any
---@return nil
function sdk.set_native_field(obj, ty, name, value) end

---
---Returns a [REManagedObject*](https://cursey.github.io/reframework-book/api/types/REManagedObject.html). Returns the current camera being used by the engine.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkget_primary_camera)
---
---@return REManagedObject?
function sdk.get_primary_camera() end

---
---Creates a hook for [method_definition](https://cursey.github.io/reframework-book/api/types/REMethodDefinition.html), intercepting all incoming calls the game makes to it.
---
---`ignore_jmp` - Skips trying to follow the first jmp in the function. Defaults to `false`.
---
---Using `pre_function` and `post_function`, the behavior of these functions can be modified.
---
---NOTE: Some native methods may not be able to be hooked with this, e.g. if they are just a  wrapper over the native function. Some additional work will need to be done from our end to make those work.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkhookmethod_definition-pre_function-post_function-ignore_jmp)
---
---@param fn REMethodDefinition
---@param pre_cb fun(args?: userdata[]): PreHookResult?
---@param post_cb (fun(retval?: userdata): userdata?)?
---@param ignore_jmp_object? boolean
---@return nil
function sdk.hook(fn, pre_cb, post_cb, ignore_jmp_object) end

---
---Similar to `sdk.hook` but hooks on a **per-object** basis instead, instead of hooking the function globally for all objects.
---
---Only works if the target method is a **virtual method**.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkhook_vtableobj-method-pre-post)
---
---@param obj REManagedObject
---@param fn REMethodDefinition
---@param pre_cb fun(args?: any[]): PreHookResult?
---@param post_cb fun(retval?: userdata): userdata?
---@return nil
function sdk.hook_vtable(obj, fn, pre_cb, post_cb) end

---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkprehookresult)
---
---@enum PreHookResult
sdk.PreHookResult = {
	CALL_ORIGINAL = 0,
	SKIP_ORIGINAL = 1,
}

---
---Returns true if `value` is a valid [REManagedObject](https://cursey.github.io/reframework-book/api/types/REManagedObject.html).
---
---Use only if necessary. Does a bunch of checks and calls [IsBadReadPtr](https://docs.microsoft.com/en-us/windows/win32/api/winbase/nf-winbase-isbadreadptr) a lot.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkis_managed_objectvalue)
---
---@param obj any
---@return boolean
function sdk.is_managed_object(obj) end

---
---Attempts to convert `value` to an [REManagedObject*](https://cursey.github.io/reframework-book/api/types/REManagedObject.html).
---
---`value` can be any of the following types:
---
---* An [REManagedObject*](https://cursey.github.io/reframework-book/api/types/REManagedObject.html), in which case it is returned as-is
---
---* A lua number convertible to `uintptr_t`, representing the object's address
---
---* A `void*`
---
---Any other type will return `nil`.
---
---A `value` that is not a valid [REManagedObject*](https://cursey.github.io/reframework-book/api/types/REManagedObject.html) will return `nil`, equivalent to calling [sdk.is_managed_object](https://cursey.github.io/reframework-book/api/sdk.html#sdkis_managed_objectvalue) on it.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkto_managed_objectvalue)
---
---@param ptr REManagedObject|integer|userdata
---@return REManagedObject?
function sdk.to_managed_object(ptr) end

---@param ptr ValueType|integer|userdata
---@param type RETypeDefinition|string
---@return ValueType?
function sdk.to_valuetype(ptr, type) end

---
---Returns a list of [REManagedObject](https://cursey.github.io/reframework-book/api/types/REManagedObject.html) generated from `data`.
---
---`data` is the raw RSZ data contained for example in a `.scn` file, starting at the `RSZ` magic in the header.
---
---`data` must in `table` format as an array of bytes.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkdeserializedata)
---
---@param data_obj integer[]
---@return REManagedObject[]
function sdk.deserialize(data_obj) end

---@param ptr userdata
---@return REResource
function sdk.to_resource(ptr) end

---
---Attempts to convert `value` to a `double`.
---
---`value` can be any of the following types:
---
---* A `void*`
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkto_doublevalue)
---
---@param ptr userdata
---@return number
function sdk.to_double(ptr) end

---
---Attempts to convert `value` to a `float`.
---
---`value` can be any of the following types:
---
---* A `void*`
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkto_floatvalue)
---
---@param ptr userdata
---@return number
function sdk.to_float(ptr) end

---
---Attempts to convert `value` to a `int64`.
---
---`value` can be any of the following types:
---
---* A `void*`
---
---If you need a smaller datatype, you can do:
---
---* `(sdk.to_int64(value) & 1) == 1` for a boolean
---
---* `(sdk.to_int64(value) & 0xFF)` for an unsigned byte
---
---* `(sdk.to_int64(value) & 0xFFFF)` for an unsigned short (2 bytes)
---
---* `(sdk.to_int64(value) & 0xFFFFFFFF)` for an unsigned int (4 bytes)
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkto_int64value)
---
---@param ptr userdata
---@return integer
function sdk.to_int64(ptr) end

---
---Attempts to convert `value` to a `void*`.
---
---`value` can be any of the following types:
---
---* An [REManagedObject*](https://cursey.github.io/reframework-book/api/types/REManagedObject.html)
---
---* A lua number convertible to `int64_t`
---
---* A lua number convertible to `double`
---
---* A lua boolean
---
---* A `void*`, in which case it is returned as-is
---
---Any other type will return `nil`.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkto_ptrvalue)
---
---@param obj number|REManagedObject|boolean
---@return userdata
function sdk.to_ptr(obj) end

---
---Converts `number` to a `void*`.
---
---[View documents](https://cursey.github.io/reframework-book/api/sdk.html#sdkfloat_to_ptrnumber)
---
---@param f number
---@return userdata
function sdk.float_to_ptr(f) end
