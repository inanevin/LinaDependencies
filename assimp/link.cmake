macro(link_assimp)

   set(DIRNAME "assimp")
   set(LIBNAME_DBG "assimp-vc142-mtd")
   set(LIBNAME_RLS "assimp-vc142-mt")

   target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include)

   set(DEBUGLIB_WIN64 ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Debug/${LIBNAME_DBG}.lib)
   set(RELLIB_WIN64 ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Release/${LIBNAME_RLS}.lib)
   set(DEBUGLIB_UNIX64 ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Unix64/Debug/${LIBNAME_DBG}.a)
   set(RELLIB_UNIX64 ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Unix64/Release/${LIBNAME_RLS}.a)

   if(WIN32)
      target_link_libraries(${PROJECT_NAME} PUBLIC ${DEBUGLIB_WIN64})
   endif(WIN32)

   if(UNIX)
      target_link_libraries(${PROJECT_NAME} PUBLIC Debug ${DEBUGLIB_UNIX64} Release ${RELLIB_UNIX64})
   endif(UNIX)

   message("${PROJECT_NAME} -> ${DIRNAME} has been linked.")
endmacro()