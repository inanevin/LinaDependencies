macro(link_bit7z)

   set(DIRNAME "bit7z")
   set(LIBNAME_DBG "bit7z64_d")
   set(LIBNAME_REL "bit7z64")

   target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include)

   if(WIN32)
      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Debug/${LIBNAME_DBG}.lib optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Release/${LIBNAME_REL}.lib)
   endif(WIN32)

   if(LINUX)
      arget_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/${LIBNAME_DBG}.a optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/${LIBNAME_REL}.a)
   endif(LINUX)

   if(APPLE)
      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/${LIBNAME_DBG}.a optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/${LIBNAME_REL}.a)
   endif(APPLE)

   message("${PROJECT_NAME} -> ${DIRNAME} has been linked.")
endmacro()