---@meta


---
---Tools for logging to REFramework's log.
---
---[View documents](https://cursey.github.io/reframework-book/api/log.html)
---
---@class log
log = {}


---
---[View documents](https://cursey.github.io/reframework-book/api/log.html#loginfotext)
---
---@param str string
---@return nil
function log.info(str) end

---
---[View documents](https://cursey.github.io/reframework-book/api/log.html#logwarntext)
---
---@param str string
---@return nil
function log.warn(str) end

---
---[View documents](https://cursey.github.io/reframework-book/api/log.html#logerrortext)
---
---@param str string
---@return nil
function log.error(str) end

---
---Requires DebugView or a debugger to see this. Can also be viewed in the debug console spawned with "Spawn Debug Console" under ScriptRunner.
---
---[View documents](https://cursey.github.io/reframework-book/api/log.html#logdebugtext)
---
---@param str string
---@return nil
function log.debug(str) end
