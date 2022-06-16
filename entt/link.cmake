macro(link_entt)

   set(LIBNAME "entt")
   set(DIRNAME "entt")
   target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include)
   message("${PROJECT_NAME} -> ${LIBNAME} has been linked.")
endmacro()