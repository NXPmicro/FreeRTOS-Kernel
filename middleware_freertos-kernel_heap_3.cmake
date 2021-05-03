#Description: FreeRTOS heap 3; user_visible: False
include_guard(GLOBAL)
message("middleware_freertos-kernel_heap_3 component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/portable/MemMang/heap_3.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
)


include(middleware_freertos-kernel_MKE16Z4)
