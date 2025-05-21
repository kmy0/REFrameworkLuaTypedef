---@meta

---
---Methods to be used on `re.on_frame` or `re.on_draw_ui`.
---
---If you need more rendering functionality, check out the REFramework plugin [reframework-d2d](https://github.com/cursey/reframework-d2d)
---
---[View documents](https://cursey.github.io/reframework-book/api/draw.html)
---
---@class draw
draw = {}

---
---Returns an optional `Vector2f` corresponding to the 2D screen position. Returns `nil` if `world_pos` is not visible.
---
---[View documents](https://cursey.github.io/reframework-book/api/draw.html#drawworld_to_screenworld_pos)
---
---@param world_pos_object Vector2f|Vector3f|Vector4f
---@return Vector2f?
function draw.world_to_screen(world_pos_object) end

---
---[View documents](https://cursey.github.io/reframework-book/api/draw.html#drawworld_texttext-3d_pos-color)
---
---@param text string
---@param world_pos_object Vector2f|Vector3f|Vector4f
---@param color? integer
---@return nil
function draw.world_text(text, world_pos_object, color) end

---
---[View documents](https://cursey.github.io/reframework-book/api/draw.html#drawtexttext-x-y-color)
---
---@param text string
---@param x number
---@param y number
---@param color integer
---@return nil
function draw.text(text, x, y, color) end

---
---[View documents](https://cursey.github.io/reframework-book/api/draw.html#drawfilled_rectx-y-w-h-color)
---
---@param x number
---@param y number
---@param w number
---@param h number
---@param color integer
---@return nil
function draw.filled_rect(x, y, w, h, color) end

---
---[View documents](https://cursey.github.io/reframework-book/api/draw.html#drawoutline_rectx-y-w-h-color)
---
---@param x number
---@param y number
---@param w number
---@param h number
---@param color integer
---@return nil
function draw.outline_rect(x, y, w, h, color) end

---
---[View documents](https://cursey.github.io/reframework-book/api/draw.html#drawlinex1-y1-x2-y2-color)
---
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param color integer
---@return nil
function draw.line(x1, y1, x2, y2, color) end

---
---[View documents](https://cursey.github.io/reframework-book/api/draw.html#drawoutline_circlex-y-radius-color-num_segments)
---
---@param x number
---@param y number
---@param radius number
---@param color integer
---@param num_segments integer
---@return nil
function draw.outline_circle(x, y, radius, color, num_segments) end

---
---[View documents](https://cursey.github.io/reframework-book/api/draw.html#drawfilled_circlex-y-radius-color-num_segments)
---
---@param x number
---@param y number
---@param radius number
---@param color integer
---@param num_segments integer
---@return nil
function draw.filled_circle(x, y, radius, color, num_segments) end

---
---[View documents](https://cursey.github.io/reframework-book/api/draw.html#drawoutline_quadx1-y1-x2-y2-x3-y3-x4-y4-color)
---
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param x3 number
---@param y3 number
---@param x4 number
---@param y4 number
---@param color integer
---@return nil
function draw.outline_quad(x1, y1, x2, y2, x3, y3, x4, y4, color) end

---
---[View documents](https://cursey.github.io/reframework-book/api/draw.html#drawfilled_quadx1-y1-x2-y2-x3-y3-x4-y4-color)
---
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param x3 number
---@param y3 number
---@param x4 number
---@param y4 number
---@param color integer
---@return nil
function draw.filled_quad(x1, y1, x2, y2, x3, y3, x4, y4, color) end

---
---Draws a 3D sphere with a 2D approximation in world space.
---
---[View documents](https://cursey.github.io/reframework-book/api/draw.html#drawsphereworld_pos-radius-color-outline)
---
---@param world_pos_object Vector2f|Vector3f|Vector4f
---@param radius number
---@param color integer
---@param outline? boolean
---@return nil
function draw.sphere(world_pos_object, radius, color, outline) end

---
---Draws a 3D capsule with a 2D approximation in world space.
---
---[View documents](https://cursey.github.io/reframework-book/api/draw.html#drawcapsuleworld_start_pos-world_end_pos-radius-color-outline)
---
---@param start_pos_object Vector2f|Vector3f|Vector4f
---@param end_pos_object Vector2f|Vector3f|Vector4f
---@param radius number
---@param color integer
---@param outline? boolean
---@return nil
function draw.capsule(start_pos_object, end_pos_object, radius, color, outline) end

---
---* `unique_id`, an int64 that must be unique for every gizmo. Usually an address of an object will work. The same ID will control multiple gizmos with the same ID.
---
---* `matrix`, the Matrix4x4f the gizmo is modifying.
---
---* `operation`, defaults to UNIVERSAL. Use `imgui.ImGuizmoOperation` enum.
---
---* `mode`, defaults to WORLD. WORLD or LOCAL. Use `imgui.ImGuizmoMode` enum.
---
---Returns a tuple of `changed`, `mat`. Mat is the modified `matrix` that was passed.
---
---[View documents](https://cursey.github.io/reframework-book/api/draw.html#drawgizmounique_id-matrix-operation-mode)
---
---@param unique_id integer
---@param transform Matrix4x4f
---@param operation_obj? ImGuizmoOperation
---@param mode_obj? ImGuizmoMode
---@return boolean, Matrix4x4f
function draw.gizmo(unique_id, transform, operation_obj, mode_obj) end

---
---[View documents](https://cursey.github.io/reframework-book/api/draw.html#drawcubematrix)
---
---@param mat Matrix4x4f
---@return nil
function draw.cube(mat) end

---
---[View documents](https://cursey.github.io/reframework-book/api/draw.html#drawgridmatrix-size)
---
---@param mat Matrix4x4f
---@param size number
---@return nil
function draw.grid(mat, size) end
