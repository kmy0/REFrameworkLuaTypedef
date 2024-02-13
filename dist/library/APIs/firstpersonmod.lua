---@meta


---@class FirstPerson
firstpersonmod = {}


---@return boolean
function firstpersonmod:is_enabled() end

---@return boolean
function firstpersonmod:will_be_used() end

---@param flashlight_component REManagedObject
---@return boolean
function firstpersonmod:on_pre_flashlight_apply_transform(flashlight_component) end
