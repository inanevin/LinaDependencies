macro(link_cereal)

   set(DIRNAME "cereal")
   set(LIBNAME "cereal")

   target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include)

   message("${PROJECT_NAME} -> ${LIBNAME} has been linked.")
endmacro()