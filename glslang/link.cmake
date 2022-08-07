macro(link_glslang)

   set(DIRNAME "glslang")

   target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/include)

   if(WIN32)
      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Debug/GenericCodeGend.lib
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Release/GenericCodeGen.lib)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Debug/glslangd.lib
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Release/glslang.lib)

    # target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Debug/glslang-default-resource-limitsd.lib
    # PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Release/glslang-default-resource-limits.lib)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Debug/HLSLd.lib
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Release/HLSL.lib)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Debug/MachineIndependentd.lib
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Win64/Release/MachineIndependent.lib)

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
      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/libGenericCodeGen.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/GenericCodeGen.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/libglslang.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/libglslang.a)

    #  target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/libglslang-default-resource-limits.a
    #  PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/libglslang-default-resource-limits.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/libHLSL.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/libHLSL.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/libMachineIndependent.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/libMachineIndependent.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/libOGLCompiler.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/libOGLCompiler.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/libOSDependent.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/libOSDependent.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/libSPIRV.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/libSPIRV.a)

    #  target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/libSPIRV-Tools.a
    #  PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/libSPIRV-Tools.a)

    #  target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/libSPIRV-Tools-opt.a
    #  PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/libSPIRV-Tools-opt.a)

    #  target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Debug/libSPVRemapper.a
    #  PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Linux64/Release/libSPVRemapper.a)
   endif(LINUX)

   
   if(APPLE)
     # target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/libGenericCodeGen.a
     # PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/libGenericCodeGen.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/libglslang.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/libglslang.a)

    #  target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/libglslang-default-resource-limits.a
    #  PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/libglslang-default-resource-limits.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/libHLSL.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/libHLSL.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/libMachineIndependent.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/libMachineIndependent.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/libOGLCompiler.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/libOGLCompiler.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/libOSDependent.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/libOSDependent.a)

      target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/libSPIRV.a
      PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/libSPIRV.a)

    #  target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/libSPIRV-Tools.a
    #  PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/libSPIRV-Tools.a)

    #  target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/libSPIRV-Tools-opt.a
    #  PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/libSPIRV-Tools-opt.a)

    #  target_link_libraries(${PROJECT_NAME} PUBLIC debug ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Debug/libSPVRemapper.a
    #  PUBLIC optimized ${CMAKE_SOURCE_DIR}/_Dependencies/${DIRNAME}/Apple/Release/libSPVRemapper.a)
   endif(APPLE)

   message("${PROJECT_NAME} -> ${DIRNAME} has been linked.")
endmacro()