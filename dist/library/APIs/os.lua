---@meta


---
---This function is restricted by REFramework.
---
---@param filename string
---@return boolean suc
---@return string? errmsg
---@deprecated
function os.remove(filename) end

---
---This function is restricted by REFramework.
---
---@param oldname string
---@param newname string
---@return boolean suc
---@return string? errmsg
---@deprecated
function os.rename(oldname, newname) end

---
---This function is restricted by REFramework.
---
---@param command? string
---@return boolean? suc
---@return exitcode? exitcode
---@return integer? code
---@deprecated
function os.execute(command) end

---
---This function is restricted by REFramework.
---
---@param code? boolean|integer
---@param close? boolean
---@deprecated
function os.exit(code, close) end

---
---This function is restricted by REFramework.
---
---@param locale string|nil
---@param category? localecategory
---@return string localecategory
---@deprecated
function os.setlocale(locale, category) end

---
---This function is restricted by REFramework.
---
---@param varname string
---@return string?
---@nodiscard
---@deprecated
function os.getenv(varname) end
