local M = {}

M.colors = {
	base03  = "#002b36", -- 深色背景
	base02  = "#073642", -- 深色背景
	base01  = "#586e75", -- 暗色文本
	base00  = "#657b83", -- 普通文本
	base0   = "#839496", -- 高亮文本
	base1   = "#93a1a1", -- 浅色高亮
	base2   = "#eee8d5", -- 较亮文本
	base3   = "#fdf6e3", -- 白色背景（浅色背景）
	yellow  = "#b58900", -- 黄色
	orange  = "#cb4b16", -- 橙色
	red     = "#dc322f", -- 红色
	magenta = "#d33682", -- 品红色
	violet  = "#6c71c4", -- 紫色
	blue    = "#268bd2", -- 蓝色
	cyan    = "#2aa198", -- 青色
	green   = "#859900", -- 绿色
}

-- 配置 Solarized 背景模式
function M.setup()
	-- 根据背景模式设置正确的背景色
	if vim.o.background == "light" then
		-- 浅色背景模式 (light mode)
		vim.cmd("hi Normal guibg=" .. M.colors.base3 .. " guifg=" .. M.colors.base00) -- 浅色背景
		vim.cmd("hi Comment guifg=" .. M.colors.base01)                         -- 注释颜色
		vim.cmd("hi Keyword guifg=" .. M.colors.blue)                           -- 关键字颜色
		vim.cmd("hi Constant guifg=" .. M.colors.cyan)                          -- 常量颜色
		vim.cmd("hi String guifg=" .. M.colors.green)                           -- 字符串颜色
		vim.cmd("hi Function guifg=" .. M.colors.yellow)                        -- 函数颜色
		vim.cmd("hi Statement guifg=" .. M.colors.red)                          -- 语句颜色
		vim.cmd("hi Type guifg=" .. M.colors.magenta)                           -- 类型颜色
	else
		-- 深色背景模式 (dark mode)
		vim.cmd("hi Normal guibg=" .. M.colors.base03 .. " guifg=" .. M.colors.base0) -- 深色背景
		vim.cmd("hi Comment guifg=" .. M.colors.base01)                         -- 注释颜色
		vim.cmd("hi Keyword guifg=" .. M.colors.blue)                           -- 关键字颜色
		vim.cmd("hi Constant guifg=" .. M.colors.cyan)                          -- 常量颜色
		vim.cmd("hi String guifg=" .. M.colors.green)                           -- 字符串颜色
		vim.cmd("hi Function guifg=" .. M.colors.yellow)                        -- 函数颜色
		vim.cmd("hi Statement guifg=" .. M.colors.red)                          -- 语句颜色
		vim.cmd("hi Type guifg=" .. M.colors.magenta)                           -- 类型颜色
	end

	-- 启用 TrueColor
	vim.o.termguicolors = true

	-- 设置其他 UI 组件
	vim.cmd("hi Visual guibg=" .. M.colors.base02)                              -- 选中行颜色
	vim.cmd("hi Search guibg=" .. M.colors.yellow .. " guifg=" .. M.colors.base03) -- 搜索高亮
	vim.cmd("hi IncSearch guibg=" .. M.colors.orange)                           -- 增量搜索高亮
	vim.cmd("hi LineNr guifg=" .. M.colors.base01)                              -- 行号颜色
	vim.cmd("hi CursorLineNr guifg=" .. M.colors.blue)                          -- 当前行号颜色

	-- 设置状态栏背景
	vim.cmd("hi StatusLine guibg=" .. M.colors.base02 .. " guifg=" .. M.colors.base1)
	vim.cmd("hi VertSplit guifg=" .. M.colors.base01) -- 垂直分割线颜色
end

return M
