-- Load core settings
require("user.options")
require("user.mappings")

-- Load plugins
require("user.plugins")

-- Load theme
require("user.theme")

-- Initialize plugin configurations
require("user.plugins.init").setup()
