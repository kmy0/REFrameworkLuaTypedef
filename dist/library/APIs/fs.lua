---@meta

---
---This is the filesystem API. ~~REFramework purposefully restricts scripts from the usual Lua `io` API so that scripts do not have unrestricted access to a users system.~~ Instead, this API focuses specifically on the `reframework/data` subdirectory.
---
---In newer builds of REFramework, the `io` API is fully supported, but it can only access the `reframework/data` directory and the stdout/in/err streams. `io.popen` is also removed.
---
---The `io` APIs have access to the `natives` directory via the `$natives` token passed at the start of the filepath string for any of the functions.
---
---[View documents](https://cursey.github.io/reframework-book/api/fs.html)
---
---@class fs
fs = {}

---
---Returns a table of file paths that match the `filter`. `filter` should be a regex string for the files you wish to match.
---
---[View documents](https://cursey.github.io/reframework-book/api/fs.html#fsglobfilter)
---
---@param filter string
---@param modifier string?
---@return string[]
function fs.glob(filter, modifier) end

---
---Writes `data` to `filename`. `data` is a string.
---
---[View documents](https://cursey.github.io/reframework-book/api/fs.html#fswritefilename-data)
---
---@param filepath string
---@param data string
---@return nil
function fs.write(filepath, data) end

---
---Reads `filename` and returns the data as a string.
---
---[View documents](Reads filename and returns the data as a string.)
---
---@param filepath string
---@return string
function fs.read(filepath) end
