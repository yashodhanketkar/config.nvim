return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()
		local function map(lhs, rhs, opts)
			vim.keymap.set("n", lhs, rhs, opts or {})
		end
		map("<leader>ha", function()
			harpoon:list():add()
		end, { desc = "Add file to harpoon list" })
		map("<leader>hm", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Open harpoon list UI" })
		map("<leader>h1", function()
			harpoon:list():select(1)
		end, { desc = "Open item 1 from harpoon list" })
		map("<leader>h2", function()
			harpoon:list():select(2)
		end, { desc = "Open item 2 from harpoon list" })
		map("<leader>h3", function()
			harpoon:list():select(3)
		end, { desc = "Open item 3 from harpoon list" })
		map("<leader>h4", function()
			harpoon:list():select(4)
		end, { desc = "Open item 4 from harpoon list" })
	end,
}
