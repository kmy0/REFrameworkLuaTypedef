---@meta


---
---Container for unknown ValueTypes.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html)
---
---@class ValueType
---
---`std::vector<uint8_t>`
---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selfdata)
---
---@field data integer[]
---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selftype)
---
---@field type RETypeDefinition
ValueType = {}


---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#valuetypenewtypename)
---
---@param t RETypeDefinition
---@return ValueType
function ValueType.new(t) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selfwrite_byteoffset-value)
---
---@param offset integer
---@param value integer
---@return nil
function ValueType:write_byte(offset, value) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selfwrite_shortoffset-value)
---
---@param offset integer
---@param value integer
---@return nil
function ValueType:write_short(offset, value) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selfwrite_dwordoffset-value)
---
---@param offset integer
---@param value integer
---@return nil
function ValueType:write_dword(offset, value) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selfwrite_qwordoffset-value)
---
---@param offset integer
---@param value integer
---@return nil
function ValueType:write_qword(offset, value) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selfwrite_floatoffset-value)
---
---@param offset integer
---@param value number
---@return nil
function ValueType:write_float(offset, value) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selfwrite_doubleoffset-value)
---
---@param offset integer
---@param value number
---@return nil
function ValueType:write_double(offset, value) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selfread_byteoffset)
---
---@param offset integer
---@return integer
function ValueType:read_byte(offset) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selfread_shortoffset)
---
---@param offset integer
---@return integer
function ValueType:read_short(offset) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selfread_dwordoffset)
---
---@param offset integer
---@return integer
function ValueType:read_dword(offset) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selfread_qwordoffset)
---
---@param offset integer
---@return integer
function ValueType:read_qword(offset) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selfread_floatoffset)
---
---@param offset integer
---@return number
function ValueType:read_float(offset) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selfread_doubleoffset)
---
---@param offset integer
---@return number
function ValueType:read_double(offset) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selfaddress)
---
---@return integer
function ValueType:address() end

---@return integer
function ValueType:get_address() end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selfcallname-args)
---
---@param name string
---@param ... any
---@return any
function ValueType:call(name, ...) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selfget_fieldname)
---
---@param name string
---@return any
function ValueType:get_field(name) end

---
---Note that this does not change anything in-game. `ValueType` is just a local copy.
---
---You'll need to pass the `ValueType` somewhere that would make use of the changed data.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selfset_fieldname-value)
---
---@param name string
---@param value any
---@return nil
function ValueType:set_field(name, value) end

---
---[View documents](https://cursey.github.io/reframework-book/api/types/ValueType.html#selfget_type_definition)
---
---@return RETypeDefinition
function ValueType:get_type_definition() end
