---@meta


---@class MemoryView
---@field size integer
local MemoryView = {}


---@param offset integer
---@param value integer
---@return nil
function MemoryView:write_byte(offset, value) end

---@param offset integer
---@param value integer
---@return nil
function MemoryView:write_short(offset, value) end

---@param offset integer
---@param value integer
---@return nil
function MemoryView:write_dword(offset, value) end

---@param offset integer
---@param value integer
---@return nil
function MemoryView:write_qword(offset, value) end

---@param offset integer
---@param value number
---@return nil
function MemoryView:write_float(offset, value) end

---@param offset integer
---@param value number
---@return nil
function MemoryView:write_double(offset, value) end

---@param offset integer
---@return integer
function MemoryView:read_byte(offset) end

---@param offset integer
---@return integer
function MemoryView:read_short(offset) end

---@param offset integer
---@return integer
function MemoryView:read_dword(offset) end

---@param offset integer
---@return integer
function MemoryView:read_qword(offset) end

---@param offset integer
---@return number
function MemoryView:read_float(offset) end

---@param offset integer
---@return number
function MemoryView:read_double(offset) end

---@return integer
function MemoryView:address() end

---@return integer
function MemoryView:get_address() end

---@return nil
function MemoryView:wipe() end
