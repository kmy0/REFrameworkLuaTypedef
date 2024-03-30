---@meta


---@class thread
thread = {}


---@return integer
function thread.get_hash() end

---@return integer
function thread.get_id() end

---@param hash integer
---@return table?
function thread.get_hook_storage(hash) end
