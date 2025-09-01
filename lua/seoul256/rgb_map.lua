if vim.g.seoul256_srgb ~= 0 then
  rgb_map = require("seoul256.map.rgb_map")
else
  rgb_map = require("seoul256.map.srgb_map")
end
return rgb_map
