---@meta


---
---[View documents](https://cursey.github.io/reframework-book/api/types/REResource.html)
---
---@class REResource
local REResource = {}


---
---Adds a reference to `self`. `REResource` types are not automatically reference counted like `REManagedObject`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REResource.html#selfadd_ref)
---
---@return REResource
function REResource:add_ref() end

---
---Releases a reference to `self`. `REResource` types are not automatically reference counted like `REManagedObject`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REResource.html#selfrelease)
---
---@return nil
function REResource:release() end

---
---Returns a `via.ResourceHolder` variant which holds `self`. Automatically adds a reference to `self`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REResource.html#selfcreate_holdertypename)
---
---@param tn string
---@return REManagedObject?
function REResource:create_holder(tn) end

---
---Returns the address of `self`.
---
---[View documents](https://cursey.github.io/reframework-book/api/types/REResource.html#selfget_address)
---
---@return integer
function REResource:get_address() end
