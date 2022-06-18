macro(link_eastl)

   set(DIRNAME "eastl")
   set(LIBNAME "EASTL")

   target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include/EASTL/include)
   target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include/EASTL/test/packages/EAAssert/include)
   target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include/EASTL/test/packages/EABase/include/Common)
   target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include/EASTL/test/packages/EAMain/include)
   target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include/EASTL/test/packages/EAStdC/include)
   target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include/EASTL/test/packages/EATest/include)
   target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include/EASTL/test/packages/EAThread/include)

   if(WIN32)
      target_link_libraries(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/$<CONFIGURATION>/${LIBNAME}.lib)
   endif(WIN32)

   if(UNIX)
      target_link_libraries(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Unix64/$<CONFIGURATION>/${LIBNAME}.a)
   endif(UNIX)

   add_custom_target(NatVis SOURCES ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include/EASTL.natvis)
   message("${PROJECT_NAME} -> ${LIBNAME} has been linked.")
endmacro()