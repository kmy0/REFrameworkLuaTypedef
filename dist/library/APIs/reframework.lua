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

---
---Returns the branch name of the REFramework build.
---
---ex: "master"
---
---[View documents](https://cursey.github.io/reframework-book/api/reframework.html#reframeworkget_branch)
---
---@return string
function reframework:get_branch() end

---
---Returns the total number of commits on the current branch of the REFramework build.
---
---[View documents](https://cursey.github.io/reframework-book/api/reframework.html#reframeworkget_commit_count)
---
---@return integer
function reframework:get_commit_count() end

---
---Returns the last tag of the REFramework build on its current branch.
---
---ex: "v1.5.4"
---
---[View documents](https://cursey.github.io/reframework-book/api/reframework.html#reframeworkget_tag)
---
---@return string
function reframework:get_tag() end

---
---[View documents](https://cursey.github.io/reframework-book/api/reframework.html#reframeworkget_tag_long)
---
---@return string
function reframework:get_tag_long() end

---
---Returns the number of commits past the last tag.
---
---[View documents](https://cursey.github.io/reframework-book/api/reframework.html#reframeworkget_commits_past_tag)
---
---@return string
function reframework:get_commits_past_tag() end

---
---Returns the date that REFramework was built (mm/dd/yyyy).
---
---[View documents](https://cursey.github.io/reframework-book/api/reframework.html#reframeworkget_build_date)
---
---@return string
function reframework:get_build_date() end

---
---Returns the time that REFramework was built.
---
---[View documents](https://cursey.github.io/reframework-book/api/reframework.html#reframeworkget_build_time)
---
---@return string
function reframework:get_build_time() end
