macro(link_freetype)

   set(LIBNAME "taskflow")
   set(DIRNAME "taskflow")
   target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include)
   message("${PROJECT_NAME} -> ${LIBNAME} has been linked.")
endmacro()