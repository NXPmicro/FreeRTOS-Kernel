include_guard(GLOBAL)


if (CONFIG_USE_middleware_freertos-kernel_extension)
# Add set(CONFIG_USE_middleware_freertos-kernel_extension true) in config.cmake to use this component

message("middleware_freertos-kernel_extension component is included from ${CMAKE_CURRENT_LIST_FILE}.")

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./include
)


endif()


if (CONFIG_USE_middleware_freertos-kernel_template)
# Add set(CONFIG_USE_middleware_freertos-kernel_template true) in config.cmake to use this component

message("middleware_freertos-kernel_template component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_CORE STREQUAL cm0p)
  add_config_file(${CMAKE_CURRENT_LIST_DIR}/./template/ARM_CM0/FreeRTOSConfig.h ${CMAKE_CURRENT_LIST_DIR}/./template/ARM_CM4F_4_priority_bits middleware_freertos-kernel_template)
endif()

if(CONFIG_CORE STREQUAL cm33 AND (CONFIG_FPU STREQUAL NO_FPU OR CONFIG_FPU STREQUAL SP_FPU) AND (CONFIG_DEVICE_ID STREQUAL K32W1480xxxA OR CONFIG_DEVICE_ID STREQUAL KW45B41Z52xxxA OR CONFIG_DEVICE_ID STREQUAL KW45B41Z53xxxA OR CONFIG_DEVICE_ID STREQUAL KW45B41Z82xxxA OR CONFIG_DEVICE_ID STREQUAL KW45B41Z83xxxA OR CONFIG_DEVICE_ID STREQUAL KW45Z41052xxxA OR CONFIG_DEVICE_ID STREQUAL KW45Z41053xxxA OR CONFIG_DEVICE_ID STREQUAL KW45Z41082xxxA OR CONFIG_DEVICE_ID STREQUAL KW45Z41083xxxA OR CONFIG_DEVICE_ID STREQUAL MCXN546 OR CONFIG_DEVICE_ID STREQUAL MCXN547 OR CONFIG_DEVICE_ID STREQUAL MCXN946 OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MCXA153 OR CONFIG_DEVICE_ID STREQUAL MCXA152 OR CONFIG_DEVICE_ID STREQUAL MCXA143 OR CONFIG_DEVICE_ID STREQUAL MCXA142 OR CONFIG_DEVICE_ID STREQUAL MCXA156 OR CONFIG_DEVICE_ID STREQUAL MCXA155 OR CONFIG_DEVICE_ID STREQUAL MCXA154 OR CONFIG_DEVICE_ID STREQUAL MCXA146 OR CONFIG_DEVICE_ID STREQUAL MCXA145 OR CONFIG_DEVICE_ID STREQUAL MCXA144 OR CONFIG_DEVICE_ID STREQUAL MCXN235 OR CONFIG_DEVICE_ID STREQUAL MCXN236 OR CONFIG_DEVICE_ID STREQUAL MIMXRT1181xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1182xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL RW610 OR CONFIG_DEVICE_ID STREQUAL RW612 OR CONFIG_DEVICE_ID STREQUAL MCXW716CxxxA OR CONFIG_DEVICE_ID STREQUAL MCXW716AxxxA))
  add_config_file(${CMAKE_CURRENT_LIST_DIR}/./template/ARM_CM33_3_priority_bits/FreeRTOSConfig.h ${CMAKE_CURRENT_LIST_DIR}/./template/ARM_CM4F_4_priority_bits middleware_freertos-kernel_template)
endif()

if((CONFIG_CORE STREQUAL cm4f OR CONFIG_CORE STREQUAL cm7f) AND (CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1176xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1171xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1172xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx))
  add_config_file(${CMAKE_CURRENT_LIST_DIR}/./template/ARM_CM4F_4_priority_bits/FreeRTOSConfig.h ${CMAKE_CURRENT_LIST_DIR}/./template/ARM_CM4F_4_priority_bits middleware_freertos-kernel_template)
endif()


endif()


if (CONFIG_USE_middleware_freertos-kernel)
# Add set(CONFIG_USE_middleware_freertos-kernel true) in config.cmake to use this component

message("middleware_freertos-kernel component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_freertos-kernel_template AND CONFIG_USE_middleware_freertos-kernel_extension)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./croutine.c
  ${CMAKE_CURRENT_LIST_DIR}/./event_groups.c
  ${CMAKE_CURRENT_LIST_DIR}/./list.c
  ${CMAKE_CURRENT_LIST_DIR}/./queue.c
  ${CMAKE_CURRENT_LIST_DIR}/./stream_buffer.c
  ${CMAKE_CURRENT_LIST_DIR}/./tasks.c
  ${CMAKE_CURRENT_LIST_DIR}/./timers.c
)

if(CONFIG_COMPILER STREQUAL gcc AND CONFIG_CORE STREQUAL cm0p AND (CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
  target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
      ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM0/port.c
  )
endif()

if(CONFIG_COMPILER STREQUAL gcc AND (CONFIG_CORE STREQUAL cm4f OR CONFIG_CORE STREQUAL cm7f) AND (CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
  target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
      ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM4F/port.c
  )
endif()

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./include
)

if(CONFIG_COMPILER STREQUAL gcc AND CONFIG_CORE STREQUAL cm0p AND (CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM0
)
endif()

if(CONFIG_COMPILER STREQUAL gcc AND (CONFIG_CORE STREQUAL cm4f OR CONFIG_CORE STREQUAL cm7f) AND (CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM4F
)
endif()

if(CONFIG_USE_COMPONENT_CONFIGURATION)
  message("===>Import configuration from ${CMAKE_CURRENT_LIST_FILE}")

  target_compile_definitions(${MCUX_SDK_PROJECT_NAME} PUBLIC
    -DSDK_OS_FREE_RTOS
  )

endif()

else()

message(SEND_ERROR "middleware_freertos-kernel dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_freertos-kernel_cm33_non_trustzone)
# Add set(CONFIG_USE_middleware_freertos-kernel_cm33_non_trustzone true) in config.cmake to use this component

message("middleware_freertos-kernel_cm33_non_trustzone component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_freertos-kernel AND (CONFIG_USE_middleware_freertos-kernel_template OR (NOT CONFIG_USE_middleware_freertos-kernel_template)) AND (CONFIG_CORE STREQUAL cm33) AND (NOT CONFIG_USE_middleware_freertos-kernel_cm33_trustzone_non_secure) AND (NOT CONFIG_USE_middleware_freertos-kernel_cm33_trustzone_secure))

if(CONFIG_CORE STREQUAL cm33 AND (CONFIG_FPU STREQUAL NO_FPU OR CONFIG_FPU STREQUAL SP_FPU) AND (CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
  target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
      ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM33_NTZ/non_secure/mpu_wrappers_v2_asm.c
      ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM33_NTZ/non_secure/port.c
      ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM33_NTZ/non_secure/portasm.c
  )
endif()

if(CONFIG_CORE STREQUAL cm33 AND (CONFIG_FPU STREQUAL NO_FPU OR CONFIG_FPU STREQUAL SP_FPU) AND (CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM33_NTZ/non_secure
)
endif()

else()

message(SEND_ERROR "middleware_freertos-kernel_cm33_non_trustzone dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_freertos-kernel_cm33_trustzone_non_secure)
# Add set(CONFIG_USE_middleware_freertos-kernel_cm33_trustzone_non_secure true) in config.cmake to use this component

message("middleware_freertos-kernel_cm33_trustzone_non_secure component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_freertos-kernel AND CONFIG_USE_middleware_freertos-kernel_mpu_wrappers_v2 AND CONFIG_USE_middleware_freertos-kernel_cm33_trustzone_secure_context AND (CONFIG_CORE STREQUAL cm33) AND (NOT CONFIG_USE_middleware_freertos-kernel_cm33_non_trustzone))

if(CONFIG_CORE STREQUAL cm33 AND (CONFIG_FPU STREQUAL NO_FPU OR CONFIG_FPU STREQUAL SP_FPU) AND (CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
  target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
      ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM33/non_secure/mpu_wrappers_v2_asm.c
      ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM33/non_secure/port.c
      ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM33/non_secure/portasm.c
  )
endif()

if(CONFIG_CORE STREQUAL cm33 AND (CONFIG_FPU STREQUAL NO_FPU OR CONFIG_FPU STREQUAL SP_FPU) AND (CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM33/non_secure
)
endif()

else()

message(SEND_ERROR "middleware_freertos-kernel_cm33_trustzone_non_secure dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_freertos-kernel_heap_1)
# Add set(CONFIG_USE_middleware_freertos-kernel_heap_1 true) in config.cmake to use this component

message("middleware_freertos-kernel_heap_1 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_freertos-kernel AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_2) AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_3) AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_4) AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_5))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./portable/MemMang/heap_1.c
)

else()

message(SEND_ERROR "middleware_freertos-kernel_heap_1 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_freertos-kernel_heap_2)
# Add set(CONFIG_USE_middleware_freertos-kernel_heap_2 true) in config.cmake to use this component

message("middleware_freertos-kernel_heap_2 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_freertos-kernel AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_1) AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_3) AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_4) AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_5))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./portable/MemMang/heap_2.c
)

else()

message(SEND_ERROR "middleware_freertos-kernel_heap_2 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_freertos-kernel_heap_3)
# Add set(CONFIG_USE_middleware_freertos-kernel_heap_3 true) in config.cmake to use this component

message("middleware_freertos-kernel_heap_3 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_freertos-kernel AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_1) AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_2) AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_4) AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_5))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./portable/MemMang/heap_3.c
)

else()

message(SEND_ERROR "middleware_freertos-kernel_heap_3 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_freertos-kernel_heap_4)
# Add set(CONFIG_USE_middleware_freertos-kernel_heap_4 true) in config.cmake to use this component

message("middleware_freertos-kernel_heap_4 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_freertos-kernel AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_1) AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_2) AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_3) AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_5))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./portable/MemMang/heap_4.c
)

else()

message(SEND_ERROR "middleware_freertos-kernel_heap_4 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_freertos-kernel_heap_5)
# Add set(CONFIG_USE_middleware_freertos-kernel_heap_5 true) in config.cmake to use this component

message("middleware_freertos-kernel_heap_5 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_freertos-kernel AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_1) AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_2) AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_3) AND (NOT CONFIG_USE_middleware_freertos-kernel_heap_4))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./portable/MemMang/heap_5.c
)

else()

message(SEND_ERROR "middleware_freertos-kernel_heap_5 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_freertos-kernel_mpu_wrappers_v2)
# Add set(CONFIG_USE_middleware_freertos-kernel_mpu_wrappers_v2 true) in config.cmake to use this component

message("middleware_freertos-kernel_mpu_wrappers_v2 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_freertos-kernel)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./portable/Common/mpu_wrappers_v2.c
)

else()

message(SEND_ERROR "middleware_freertos-kernel_mpu_wrappers_v2 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_freertos-kernel_mpu_wrappers)
# Add set(CONFIG_USE_middleware_freertos-kernel_mpu_wrappers true) in config.cmake to use this component

message("middleware_freertos-kernel_mpu_wrappers component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_freertos-kernel)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./portable/Common/mpu_wrappers.c
)

else()

message(SEND_ERROR "middleware_freertos-kernel_mpu_wrappers dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_freertos-kernel_cm33_trustzone_secure_context)
# Add set(CONFIG_USE_middleware_freertos-kernel_cm33_trustzone_secure_context true) in config.cmake to use this component

message("middleware_freertos-kernel_cm33_trustzone_secure_context component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_CORE STREQUAL cm33))

if(CONFIG_CORE STREQUAL cm33 AND (CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux) AND (CONFIG_FPU STREQUAL NO_FPU OR CONFIG_FPU STREQUAL SP_FPU))
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM33/secure
)
endif()

else()

message(SEND_ERROR "middleware_freertos-kernel_cm33_trustzone_secure_context dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_freertos-kernel_cm33_trustzone_secure)
# Add set(CONFIG_USE_middleware_freertos-kernel_cm33_trustzone_secure true) in config.cmake to use this component

message("middleware_freertos-kernel_cm33_trustzone_secure component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_freertos-kernel_cm33_trustzone_secure_context AND (CONFIG_USE_middleware_freertos-kernel_template OR (NOT CONFIG_USE_middleware_freertos-kernel_template)) AND (CONFIG_CORE STREQUAL cm33))

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
  target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
      ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM33/secure/secure_context.c
      ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM33/secure/secure_context_port.c
      ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM33/secure/secure_heap.c
      ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM33/secure/secure_init.c
  )
endif()

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM33/secure
)
endif()

else()

message(SEND_ERROR "middleware_freertos-kernel_cm33_trustzone_secure dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()

