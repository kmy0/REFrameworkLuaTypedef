---@meta


---@class BehaviorTree: REManagedObject
local BehaviorTree = {}


---@param index integer
---@return BehaviorTreeCoreHandle
function BehaviorTree:get_tree(index) end

---@return integer
function BehaviorTree:get_tree_count() end

---@return BehaviorTreeCoreHandle[]
function BehaviorTree:get_trees() end
