local harpoon_source = require("custom-plugins.neotree-harpoon.harpoon_source")

return {
  setup = function()
    require("neo-tree.utils").register_stat_provider("harpoon", harpoon_source.nodes)
  end
}
