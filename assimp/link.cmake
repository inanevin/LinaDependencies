macro(link_assimp)

   set(DIRNAME "assimp")
   set(LIBNAME_DBG "assimp-vc142-mtd")
   set(LIBNAME_RLS "assimp-vc142-mt")

   target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include)

   if(WIN32)
      target_link_libraries(${PROJECT_NAME} Debug PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/$<CONFIGURATION>/${LIBNAME_DBG}.lib)
      target_link_libraries(${PROJECT_NAME} Release PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/$<CONFIGURATION>/${LIBNAME_RLS}.lib)
   endif(WIN32)

   if(UNIX)
      target_link_libraries(${PROJECT_NAME} Debug PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Unix64/$<CONFIGURATION>/${LIBNAME_DBG}.a)
      target_link_libraries(${PROJECT_NAME} Release PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Unix64/$<CONFIGURATION>/${LIBNAME_RLS}.a)
   endif(UNIX)

   message("${PROJECT_NAME} -> ${LIBNAME} has been linked.")
endmacro()