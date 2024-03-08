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
  add_config_file(${CMAKE_CURRENT_LIST_DIR}/./template/ARM_CM0/FreeRTOSConfig.h ${CMAKE_CURRENT_LIST_DIR}/./template/ARM_CM0 middleware_freertos-kernel_template)
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

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./include
)

if(CONFIG_COMPILER STREQUAL gcc AND CONFIG_CORE STREQUAL cm0p AND (CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./portable/GCC/ARM_CM0
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

