macro(link_glslang)

   set(DIRNAME "glslang")

   target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include)

   if(WIN32)
     # target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Debug/GenericCodeGend.lib
     # PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Release/GenericCodeGen.lib)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Debug/glslangd.lib
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Release/glslang.lib)

    # target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Debug/glslang-default-resource-limitsd.lib
    # PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Release/glslang-default-resource-limits.lib)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Debug/HLSLd.lib
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Release/HLSL.lib)

    # target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Debug/MachineIndependentd.lib
    # PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Release/MachineIndependent.lib)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Debug/OGLCompilerd.lib
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Release/OGLCompiler.lib)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Debug/OSDependentd.lib
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Release/OSDependent.lib)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Debug/SPIRVd.lib
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Release/SPIRV.lib)

    # target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Debug/SPIRV-Toolsd.lib
    # PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Release/SPIRV-Tools.lib)

    # target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Debug/SPIRV-Tools-optd.lib
    # PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Release/SPIRV-Tools-opt.lib)

    # target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Debug/SPVRemapperd.lib
    # PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Release/SPVRemapper.lib)

   endif(WIN32)

   if(LINUX)
     # target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/GenericCodeGend.a
     # PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/GenericCodeGen.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/glslangd.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/glslang.a)

    #  target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/glslang-default-resource-limitsd.a
    #  PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/glslang-default-resource-limits.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/HLSLd.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/HLSL.a)

    #  target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/MachineIndependentd.a
    #  PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/MachineIndependent.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/OGLCompilerd.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/OGLCompiler.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/OSDependentd.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/OSDependent.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/SPIRVd.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/SPIRV.a)

    #  target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/SPIRV-Toolsd.a
    #  PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/SPIRV-Tools.a)

    #  target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/SPIRV-Tools-optd.a
    #  PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/SPIRV-Tools-opt.a)

    #  target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/SPVRemapperd.a
    #  PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/SPVRemapper.a)
   endif(LINUX)

   
   if(APPLE)
     # target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/GenericCodeGend.a
     # PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/GenericCodeGen.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/glslangd.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/glslang.a)

    #  target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/glslang-default-resource-limitsd.a
    #  PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/glslang-default-resource-limits.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/HLSLd.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/HLSL.a)

    #  target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/MachineIndependentd.a
    #  PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/MachineIndependent.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/OGLCompilerd.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/OGLCompiler.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/OSDependentd.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/OSDependent.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/SPIRVd.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/SPIRV.a)

    #  target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/SPIRV-Toolsd.a
    #  PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/SPIRV-Tools.a)

    #  target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/SPIRV-Tools-optd.a
    #  PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/SPIRV-Tools-opt.a)

    #  target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/SPVRemapperd.a
    #  PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/SPVRemapper.a)
   endif(APPLE)

   message("${PROJECT_NAME} -> ${DIRNAME} has been linked.")
endmacro()