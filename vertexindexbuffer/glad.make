file(COPY "../depends/glad/" DESTINATION "../depends/glad/")

#头文件
include_directories("depends/glad")

#源文件
file(GLOB_RECURSE glad_src depends/glad/*.c)
