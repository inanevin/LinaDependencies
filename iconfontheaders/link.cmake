macro(link_iconfontheaders)
   set(DIRNAME "iconfontheaders")
   target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include)
   message("${PROJECT_NAME} -> ${DIRNAME} has been linked.")
endmacro()