local M = {}

M.colors_name = vim.g.colors_name or ""

local seoul256_background = nil

-- 1. If vim.g.seoul256_background is found
if vim.g.seoul256_background then
  seoul256_background = vim.g.seoul256_background
  if seoul256_background >= 233 and seoul256_background <= 239 then
    M.style = "dark"
  elseif seoul256_background >= 252 and seoul256_background <= 256 then
    M.style = "light"
  else
    seoul256_background = nil
  end
end

-- 2. If style not set yet
if not M.style then
  if M.colors_name ~= "seoul256" then
    M.style = "dark"
  else
    M.style = vim.o.background
  end
end

M.style_idx = (M.style == "light") and 1 or 0

-- Background colors
if M.style == "dark" then
  M.dark_bg = seoul256_background or 237
  M.light_bg = 253
else
  M.dark_bg = 237
  M.light_bg = seoul256_background or 253
end

M.dark_bg_2 = (M.dark_bg > 233) and (M.dark_bg - 2) or 16
M.light_bg_1 = math.min(M.light_bg + 1, 256)
M.light_bg_2 = math.min(M.light_bg + 2, 256)

-- Foreground colors
M.dark_fg = 252
M.light_fg = 239

function M.hi(fg, bg)
  local fg_val = (fg[M.style_idx + 1] > 255) and 231 or fg[M.style_idx + 1]
  local bg_val = (bg[M.style_idx + 1] > 255) and 231 or bg[M.style_idx + 1]

  local hl = {}

  if fg_val and fg_val ~= "" then
    hl.ctermfg = fg_val
    hl.fg = rgb_map[fg_val] or "NONE"
  end

  if bg_val and bg_val ~= "" then
    hl.ctermbg = bg_val
    hl.bg = rgb_map[bg_val] or "NONE"
  end

  return hl
end

return M
