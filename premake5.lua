project 'glfw'
	kind 'StaticLib'
	language 'C'

	target_dir = ('bin/' .. output_dir .. '/%{prj.name}')
	obj_dir = ('bin-int/' .. output_dir .. '/%{prj.name}')

	files {
		'include/GLFW/glfw3.h',
		'include/GLFW/glfw3native.h',
		'src/context.c',
		'src/init.c',
		'src/input.c',
		'src/monitor.c',
		'src/window.c',
	}

	filter 'system:windows'
		systemversion 'latest'
		staticruntime 'On'

		files {
			'src/win32_init.c',
			'src/win32_joystick.c',
			'src/win32_monitor.c',
			'src/win32_time.c',
			'src/win32_thread.c',
			'src/win32_window.c',
			'src/wgl_context.c',
			'src/egl_context.c',
			'src/osmesa_context.c'
		}

	filter 'configurations:Debug'
		runtime 'Debug'
		symbols 'on'

	filter 'configurations:Release'
		runtime 'Release'
		optimize 'on'