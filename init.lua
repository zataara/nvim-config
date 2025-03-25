-- Load core settings
require("user.options")
require("user.mappings")

-- Load plugins
require("user.plugins")

-- Initialize plugin configurations
require("user.plugins.init").setup()

-- Load theme (moved to end to ensure it overrides any plugin settings)
require("user.theme")
