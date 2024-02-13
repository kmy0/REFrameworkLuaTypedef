---@meta


---@class BehaviorTreeNodeData
---@field id integer
-- ---@field parent integer
---@field is_branch boolean
---@field is_end boolean
---@field has_selector boolean
---@field attr integer
---@field parent integer
---@field parent_2 integer
local BehaviorTreeNodeData = {}


---@return MemoryView
function BehaviorTreeNodeData:as_memoryview() end

---@return BehaviorTreeNodeData
function BehaviorTreeNodeData:to_valuetype() end

---@return DynamicArrayNoCapacityUInt32
function BehaviorTreeNodeData:get_children() end

---@return DynamicArrayNoCapacityUInt32
function BehaviorTreeNodeData:get_actions() end

---@return DynamicArrayNoCapacityUInt32
function BehaviorTreeNodeData:get_states() end

---@return DynamicArrayNoCapacityUInt32
function BehaviorTreeNodeData:get_states_2() end

---@return DynamicArrayNoCapacityUInt32
function BehaviorTreeNodeData:get_start_states() end

---@return DynamicArrayNoCapacityInt32
function BehaviorTreeNodeData:get_start_transitions() end

---@return DynamicArrayNoCapacityInt32
function BehaviorTreeNodeData:get_conditions() end

---@return DynamicArrayNoCapacityInt32
function BehaviorTreeNodeData:get_transition_conditions() end

---@return DynamicArrayNoCapacityUInt32Array
function BehaviorTreeNodeData:get_transition_events() end

---@return DynamicArrayNoCapacityUInt32
function BehaviorTreeNodeData:get_transition_ids() end

---@return DynamicArrayNoCapacityUInt32
function BehaviorTreeNodeData:get_transition_attributes() end

---@return DynamicArrayNoCapacityUInt32
function BehaviorTreeNodeData:get_tags() end

---@return string
function BehaviorTreeNodeData:get_name() end

---@param name string
---@return nil
function BehaviorTreeNodeData:set_name(name) end
