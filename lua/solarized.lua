local M = {}

M.colors = {
	base03 = "#002b36", -- 背景色
	base02 = "#073642", -- 深色背景
	base01 = "#586e75", -- 暗色文本
	base00 = "#657b83", -- 普通文本
	base0 = "#839496", -- 高亮文本
	base1 = "#93a1a1", -- 浅色高亮
	base2 = "#eee8d5", -- 较亮文本
	base3 = "#fdf6e3", -- 白色背景
	yellow = "#b58900", -- 黄色
	orange = "#cb4b16", -- 橙色
	red = "#dc322f", -- 红色
	magenta = "#d33682", -- 品红色
	violet = "#6c71c4", -- 紫色
	blue = "#268bd2", -- 蓝色
	cyan = "#2aa198", -- 青色
	green = "#859900", -- 绿色
}

-- 配置 Solarized 背景模式
function M.setup()
	vim.o.background = "light" -- 可以改为 "light" 使用浅色背景
	vim.o.termguicolors = true

	-- 设定配色方案
	vim.cmd("highlight clear")
	vim.cmd("syntax enable")

	-- 为各种 UI 元素设置颜色
	vim.cmd("hi Normal guibg=" .. M.colors.base03 .. " guifg=" .. M.colors.base0)
	vim.cmd("hi Comment guifg=" .. M.colors.base01)
	vim.cmd("hi Keyword guifg=" .. M.colors.blue)
	vim.cmd("hi Constant guifg=" .. M.colors.cyan)
	vim.cmd("hi String guifg=" .. M.colors.green)
	vim.cmd("hi Function guifg=" .. M.colors.yellow)
	vim.cmd("hi Statement guifg=" .. M.colors.red)
	vim.cmd("hi Type guifg=" .. M.colors.magenta)

	-- 其他 UI 组件的设置
	vim.cmd("hi Visual guibg=" .. M.colors.base02)
	vim.cmd("hi Search guibg=" .. M.colors.yellow .. " guifg=" .. M.colors.base03)
	vim.cmd("hi IncSearch guibg=" .. M.colors.orange)
	vim.cmd("hi LineNr guifg=" .. M.colors.base01)
	vim.cmd("hi CursorLineNr guifg=" .. M.colors.blue)

	-- 用于不同模式的设置
	vim.cmd("hi StatusLine guibg=" .. M.colors.base02 .. " guifg=" .. M.colors.base1)
	vim.cmd("hi VertSplit guifg=" .. M.colors.base01)
end

return M
