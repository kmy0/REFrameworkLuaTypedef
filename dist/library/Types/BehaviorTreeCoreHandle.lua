---@meta


---@class BehaviorTreeCoreHandle: REManagedObject
local BehaviorTreeCoreHandle = {}


---@return BehaviorTreeObject
function BehaviorTreeCoreHandle:get_tree_object() end

---@param old_start integer
---@param old_end integer
---@param new_nodes DynamicArrayNoCapacityTreeNode
---@return nil
function BehaviorTreeCoreHandle:relocate(old_start, old_end, new_nodes) end

---@param old_start integer
---@param old_end integer
---@param new_nodes DynamicArrayNoCapacityTreeNodeData
---@return nil
function BehaviorTreeCoreHandle:relocate_datas(old_start, old_end, new_nodes) end
