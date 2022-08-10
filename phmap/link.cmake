macro(link_phmap)

   set(DIRNAME "phmap")

   target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include)

   add_custom_target(NatVis SOURCES ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/phmap.natvis)
   message("${PROJECT_NAME} -> ${DIRNAME} has been linked.")
endmacro()