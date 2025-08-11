settings
{
	priority=1
	exclude.where = !process.is_explorer
	showdelay = 200
	// Options to allow modification of system items
	modify.remove.duplicate=1
	tip.enabled=true
}

// import 'imports/theme.nss'

// catppuccin macchiato green
theme
{
	name = "modern"

	// view = view.small

	background
	{
		color = #24273a
		opacity = 100
		// effect = 2
	}

	item
	{
		opacity = 100

		prefix = 1

		text
		{
			normal = #cad3f5
			select = #cad3f5
			normal-disabled = #a5adcb
			select-disabled = #a5adcb
		}

		back
		{
			select = #494d64
			select-disabled = #363a4f
		}
	}

	// font
	// {
	// 	size = 14
	// 	name = "Segoe UI Variable Text"
	// 	weight = 2
	// 	italic = 0
	// }

	border
	{
		enabled = true
		size = 1
		color = #a6da95
		opacity = 100
		radius = 2
	}

	shadow
	{
		enabled = true
		size = 5
		opacity = 5
		color = #181926
	}

	separator
	{
		size = 1
		color = #363a4f
	}

	symbol
	{
		normal = #a6da95
		select = #a6da95
		normal-disabled = #a5adcb
		select-disabled = #a5adcb
	}

	image
	{
		enabled = true
		color = [#cad3f5, #a6da95, #24273a]
	}
}

import 'imports/images.nss'
import 'imports/modify.nss'

// import 'imports/taskbar.nss'

// taskbar menu
menu(where=@(this.count == 0) type='taskbar' image=icon.settings expanded=true)
{
	item(title="Task Manager" image=icon.task_manager cmd='taskmgr.exe')
	item(title="System Informer" sep=both image=icon.task_manager cmd='systeminformer.exe')
	item(title="Everything" sep=both image='@user.home/scoop/persist/nilesoft-shell/everything.ico' cmd='everything.exe')
	item(title="Taskbar Settings" sep=both image=inherit cmd='ms-settings:taskbar')
}

// import 'imports/terminal.nss'
// import 'imports/file-manage.nss'
// import 'imports/develop.nss'
// import 'imports/goto.nss'

// mine

// add windows terminal to context menu
// see imports/terminal.nss
// item(where=package.exists("WindowsTerminal") sep="both" type="back.directory | directory | desktop" title=title.Windows_Terminal admin=key.shift() image='@package.path("WindowsTerminal")\WindowsTerminal.exe' cmd="wt.exe" arg=`-w 0 nt -d "@sel.path\."`)

// wezterm (works, but doesnt attach to new tab)
item(sep="both" type="back.directory | directory | desktop" title="WezTerm" admin=key.shift() image='@user.home/scoop/apps/wezterm-nightly/current/wezterm-gui.exe' cmd="wezterm.exe" arg=`start --new-tab --cwd "@sel.path"` window=hidden)

// create shortcut 
// modify(where=)

// windows
remove(find="Add to Favorites")
remove(find="New folder with selection")
remove(find="Include in library")
remove(find="Scan with Microsoft Defender")
remove(find="Extract all")
remove(find="Add to Windows Media Player Legacy list")
remove(find="Play with Windows Media Player Legacy")

// extra
remove(find="TeraCopy")
remove(find="Edit with IntelliJ IDEA Community Edition")
remove(find="Pin/Unpin")
remove(find="Move to Onedrive")
remove(find="Upload with ShareX")
