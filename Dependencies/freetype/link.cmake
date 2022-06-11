set(DIRNAME "freetype")
set(LIBNAME "freetype")

target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/Dependencies/${DIRNAME}/include)

if(WIN32)
   target_link_libraries(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/Dependencies/${DIRNAME}/Win64/$<CONFIGURATION>/${LIBNAME}.lib)
endif(WIN32)

if(UNIX)
   target_link_libraries(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/Dependencies/${DIRNAME}/Unix64/$<CONFIGURATION>/${LIBNAME}.a)
endif(UNIX)