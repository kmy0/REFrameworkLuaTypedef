---@meta

---
---The `thread` API is for storing thread-specific data and querying information about the current thread.
---
---Added in `8e9375ce5433c5b4ce38e8398c168c3ab036415c`.
---
---[View documents](https://cursey.github.io/reframework-book/api/thread.html)
---
---@class thread
thread = {}

---
---Returns the hash of the ID of the current thread.
---
---[View documents](https://cursey.github.io/reframework-book/api/thread.html#threadget_hash)
---
---@return integer
function thread.get_hash() end

---
---Returns the ID of the current thread.
---
---[View documents](https://cursey.github.io/reframework-book/api/thread.html#threadget_id)
---
---@return integer
function thread.get_id() end

---
---Returns the ephemeral hook storage meant to be used within `sdk.hook`.
---
---This is preferred over storing variables you need in a global variable in the `pre` hook when you need the data in the `post` hook.
---
---The hook storage is popped/destroyed at the end of the `post` hook. Safe to be used within a recursive context.
---
---This API is preferred because there are no longer any guarantees that the entire hook will be locked during pre/post hooks, due to deadlocking issues seen.
---
---[View documents](https://cursey.github.io/reframework-book/api/thread.html#threadget_hook_storage)
---
---@param hash integer?
---@return table?
function thread.get_hook_storage(hash) end
