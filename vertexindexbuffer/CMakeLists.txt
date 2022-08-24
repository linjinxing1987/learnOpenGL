cmake_minimum_required(VERSION 3.0)
project(learnopengl VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 17)
add_definitions(-D USE_FMOD_STUDIO)#是否使用fmod studio，加载bank文件的形式。


if (MSVC)
    add_compile_options(/bigobj)
    add_compile_options(/wd4819)#忽略保存为unicode警告
endif ()

#执行其他make文件
include(glad.make)
include(glfw.make)

#拷贝depends目录


#头文件目录
include_directories("depends")



add_executable(mygame ${glad_src} main.cpp) 




