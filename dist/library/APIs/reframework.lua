---@meta


---
---[View documents](https://cursey.github.io/reframework-book/api/reframework.html)
---
---@class REFramework
reframework = {}


---@return nil
function reframework:save_config() end

---
---Returns `true` if the REFramework menu is open.
---
---[View documents](https://cursey.github.io/reframework-book/api/reframework.html#reframeworkis_drawing_ui)
---
---@return boolean
function reframework:is_drawing_ui() end

---
---Returns the name of the game this REFramework was compiled for.
---
---e.g. "dmc5" or "re2"
---
---[View documents](https://cursey.github.io/reframework-book/api/reframework.html#reframeworkget_game_name)
---
---@return string
function reframework:get_game_name() end

---@return string
function reframework:get_version_string() end

---@return integer
function reframework:get_version_major() end

---@return integer
function reframework:get_version_minor() end

---@return integer
function reframework:get_version_patch() end

---@return integer[]
function reframework:get_keyboard_state() end

---
---`key` is a Windows virtual key code.
---
---[View documents](https://cursey.github.io/reframework-book/api/reframework.html#reframeworkis_key_downkey)
---
---@param key integer
---@return boolean
function reframework:is_key_down(key) end

---@return integer?
function reframework:get_first_key_down() end
