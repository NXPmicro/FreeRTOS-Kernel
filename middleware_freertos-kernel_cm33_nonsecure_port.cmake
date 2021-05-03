#Description: FreeRTOS cm33 nonsecure port; user_visible: True
include_guard(GLOBAL)
message("middleware_freertos-kernel_cm33_nonsecure_port component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/portable/GCC/ARM_CM33_NTZ/non_secure/port.c
    ${CMAKE_CURRENT_LIST_DIR}/portable/GCC/ARM_CM33_NTZ/non_secure/portasm.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/portable/GCC/ARM_CM33_NTZ/non_secure
)

#OR Logic component
if(${MCUX_DEVICE} STREQUAL "LPC55S16")
    include(middleware_freertos-kernel_LPC55S16)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC55S69_cm33_core0")
    include(middleware_freertos-kernel_LPC55S69_cm33_core0)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC55S28")
    include(middleware_freertos-kernel_LPC55S28)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT685S_cm33")
    include(middleware_freertos-kernel_MIMXRT685S_cm33)
endif()

