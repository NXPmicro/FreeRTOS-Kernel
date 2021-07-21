#Description: FreeRTOS heap_3; user_visible: False
include_guard(GLOBAL)
message("middleware_freertos-kernel_heap_3 component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/portable/MemMang/heap_3.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
)

#OR Logic component
if(${MCUX_DEVICE} STREQUAL "MKE16Z4")
    include(middleware_freertos-kernel_MKE16Z4)
endif()
if(${MCUX_DEVICE} STREQUAL "K32L3A60_cm0plus")
    include(middleware_freertos-kernel_K32L3A60_cm0plus)
endif()
if(${MCUX_DEVICE} STREQUAL "K32L3A60_cm4")
    include(middleware_freertos-kernel_K32L3A60_cm4)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC54114_cm0plus")
    include(middleware_freertos-kernel_LPC54114_cm0plus)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC54114_cm4")
    include(middleware_freertos-kernel_LPC54114_cm4)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC55S69_cm33_core0")
    include(middleware_freertos-kernel_LPC55S69_cm33_core0)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC55S69_cm33_core1")
    include(middleware_freertos-kernel_LPC55S69_cm33_core1)
endif()

