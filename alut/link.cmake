macro(link_alut)

   set(DIRNAME "alut")
   set(LIBNAME "alut")

   target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include)

   if(WIN32)
      target_link_libraries(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/$<CONFIGURATION>/${LIBNAME}.lib)
   endif(WIN32)

   if(UNIX)
      target_link_libraries(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Unix64/$<CONFIGURATION>/${LIBNAME}.a)
   endif(UNIX)

   message("${PROJECT_NAME} -> ${LIBNAME} has been linked.")
endmacro()