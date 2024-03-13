---@meta


---
---Functions for converting Lua values to/from JSON. Useful for saving configuration setting tables (ideally in a [config save callback](https://cursey.github.io/reframework-book/api/re.html#reon_config_savefunction)), importing data that users are intended to edit externally, and storing large data structures outside your Lua code.
---
---The `indent` parameter is an integer specifying the number of spaces to indent with when dumping tables. 0 disables indentation, and -1 also disables line breaks.
---
---Supports Lua's boolean, number, string, and table (see warning below) types. Other types will be converted to `nil`, stored as JSON `null`s. Due to JSON limitations, non-string table keys will be converted to strings (if numbers) or an empty string (if another type), unless the table is a sequence (consecutive integer keys, starting at 1; see the [lua manual](https://www.lua.org/manual/5.4/manual.html#3.4.7) for more details). Sequences are stored as JSON arrays.
---
---**WARNING:** Care should be taken when storing non-sequence tables with numeric keys, as those keys will be converted to strings. Extra work must be done to convert those keys back into numbers.
---
---[View documents](https://cursey.github.io/reframework-book/api/json.html)
---
---@class json
json = {}


---
---Takes a JSON string and turns it into a Lua value (usually a table). Returns `nil` on error.
---
---[View documents](https://cursey.github.io/reframework-book/api/json.html#jsonload_stringjson_str)
---
---@param s string
---@return table?
function json.load_string(s) end

---
---Takes a Lua value (usually a table) and turns it into a JSON string. Returns an empty string on error. If unspecified, `indent` will default to -1.
---
---[View documents](https://cursey.github.io/reframework-book/api/json.html#jsondump_stringvalue-indent)
---
---@param obj table
---@param indent_obj? integer
---@return string
function json.dump_string(obj, indent_obj) end

---
---Loads a JSON file identified by `filepath` relative to the `reframework/data` subdirectory and returns it as a Lua value (usually a table). Returns `nil` if the file does not exist.
---
---[View documents](https://cursey.github.io/reframework-book/api/json.html#jsonload_filefilepath)
---
---@param filepath string
---@return table?
function json.load_file(filepath) end

---
---Takes a Lua value (usually a table), and turns it into a JSON file identified as `filepath` relative to the `reframework/data` subdirectory.  Returns `true` if the dump was successful, `false` otherwise. If unspecified, `indent` will default to 4
---
---[View documents](https://cursey.github.io/reframework-book/api/json.html#jsondump_filefilepath-value-indent)
---
---@param filepath string
---@param obj table
---@param indent_obj? integer
---@return boolean
function json.dump_file(filepath, obj, indent_obj) end
