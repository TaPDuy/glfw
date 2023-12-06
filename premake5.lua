project 'GLFW'
	kind 'StaticLib'
	language 'C'

	targetdir (bin_path)
	objdir (int_path)

	files {
		'include/GLFW/glfw3.h',
		'include/GLFW/glfw3native.h',
		'src/**.h',
		'src/**.c',
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

		defines 
		{ 
			"_GLFW_WIN32",
			"_CRT_SECURE_NO_WARNINGS"
		}

	filter 'configurations:Debug'
		runtime 'Debug'
		symbols 'on'

	filter 'configurations:Release'
		runtime 'Release'
		optimize 'on'