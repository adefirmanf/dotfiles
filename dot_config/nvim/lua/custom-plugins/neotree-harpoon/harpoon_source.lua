local M = {}

M.name = "harpoon"
M.display_name = "Harpoon"
M.icon = "🔖"

local function get_nodes()
  local list = require("harpoon"):list()
  local items = list.items
  local nodes = {}
  for i, item in ipairs(items) do
    table.insert(nodes, {
      id = tostring(i),
      name = item.value,
      path = item.value,
      type = "file",
      extra = { index = i },
    })
  end
  return nodes
end

M.nodes = function(state)
  return get_nodes()
end

M.commands = {
  open = function(state)
    vim.cmd("edit " .. state.node.path)
  end,
  add_current = function()
    require("harpoon"):list():append()
    require("neo-tree.sources.manager").refresh("harpoon")
  end,
  remove = function(state)
    require("harpoon"):list():remove(state.node.extra.index)
    require("neo-tree.sources.manager").refresh("harpoon")
  end,
  move_up = function(state)
    local list = require("harpoon"):list()
    local idx = state.node.extra.index
    if idx > 1 then
      list.items[idx], list.items[idx - 1] = list.items[idx - 1], list.items[idx]
      require("neo-tree.sources.manager").refresh("harpoon")
    end
  end,
  move_down = function(state)
    local list = require("harpoon"):list()
    local idx = state.node.extra.index
    if idx < #list.items then
      list.items[idx], list.items[idx + 1] = list.items[idx + 1], list.items[idx]
      require("neo-tree.sources.manager").refresh("harpoon")
    end
  end,
}

return M
