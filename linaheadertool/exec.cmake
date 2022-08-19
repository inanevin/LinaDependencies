# Launch Lina Header tool prior to building to prepare the reflection data for runtime.
macro(execute_linaheadertool)

add_custom_command(
TARGET ${PROJECT_NAME}
PRE_BUILD
COMMAND ${CMAKE_COMMAND} -E chdir ${CMAKE_SOURCE_DIR}/_Dependencies/linaheadertool/bin/Win64/LinaHeader.exe)

endmacro()