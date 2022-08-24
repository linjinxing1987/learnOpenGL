#拷贝depends目录
file(COPY "../depends/glfw/" DESTINATION "../depends/glfw/")


#头文件目录
include_directories("depends/glfw/include")


if(WIN32)
    #链接目录
    link_directories("depends/glfw/lib-vc2019")
    link_libraries(glfw3dll)
    #拷贝dll到exe目录
    file(COPY "depends/glfw/lib-vc2019/glfw3.dll" DESTINATION "./")
endif()