---@meta


---
---Gives access to some of the Object Explorer's UI display. Must be called within `re.on_draw_ui`.
---
---[View documents](https://cursey.github.io/reframework-book/api/object_explorer.html)
---
---@class ObjectExplorer
object_explorer = {}


---
---Same as typing in the address in the Object Explorer.
---
---`addr` must point to an REManagedObject for the display to work.
---
---Verification is not necessary, Object Explorer automatically handles it.
---
---[View documents](https://cursey.github.io/reframework-book/api/object_explorer.html#object_explorerhandle_addressaddr)
---
---@param addr integer|REManagedObject
---@return nil
function object_explorer:handle_address(addr) end
