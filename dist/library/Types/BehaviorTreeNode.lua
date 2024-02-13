---@meta


---@class BehaviorTreeNode
---@field id integer
local BehaviorTreeNode = {}


---@return MemoryView
function BehaviorTreeNode:as_memoryview() end

---@return BehaviorTreeNode
function BehaviorTreeNode:to_valuetype() end

---@return integer
function BehaviorTreeNode:get_id() end

---@return BehaviorTreeNodeData
function BehaviorTreeNode:get_data() end

---@return BehaviorTreeObject
function BehaviorTreeNode:get_owner() end

---@return BehaviorTreeNode
function BehaviorTreeNode:get_parent() end

---@return string
function BehaviorTreeNode:get_name() end

---@param name string
---@return nil
function BehaviorTreeNode:set_name(name) end

---@return string
function BehaviorTreeNode:get_full_name() end

---@return BehaviorTreeNode[]
function BehaviorTreeNode:get_children() end

---@return REManagedObject[]
function BehaviorTreeNode:get_actions() end

---@return REManagedObject[]
function BehaviorTreeNode:get_unloaded_actions() end

---@return REManagedObject[]
function BehaviorTreeNode:get_conditions() end

---@return REManagedObject[]
function BehaviorTreeNode:get_transition_conditions() end

---@return REManagedObject[]
function BehaviorTreeNode:get_transition_events() end

---@return BehaviorTreeNode[]
function BehaviorTreeNode:get_states() end

---@return BehaviorTreeNode[]
function BehaviorTreeNode:get_start_states() end

---@return BehaviorTreeNodeStatus
function BehaviorTreeNode:get_status1() end

---@return BehaviorTreeNodeStatus
function BehaviorTreeNode:get_status2() end

---@param old_start integer
---@param old_end integer
---@param new_start integer
---@return nil
function BehaviorTreeNode:relocate(old_start, old_end, new_start) end

---@return REManagedObject
function BehaviorTreeNode:get_selector() end

---@enum BehaviorTreeNodeStatus
local _ = {
    Off = 0,
    On  = 2
}
