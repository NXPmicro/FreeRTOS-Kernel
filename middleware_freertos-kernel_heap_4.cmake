#Description: FreeRTOS heap 4; user_visible: False
include_guard(GLOBAL)
message("middleware_freertos-kernel_heap_4 component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/portable/MemMang/heap_4.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
)

#OR Logic component
if(${MCUX_DEVICE} STREQUAL "LPC55S36")
    include(middleware_freertos-kernel_LPC55S36)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1166_cm4")
    include(middleware_freertos-kernel_MIMXRT1166_cm4)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1166_cm7")
    include(middleware_freertos-kernel_MIMXRT1166_cm7)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC5506CPXXXX")
    include(middleware_freertos-kernel_LPC5506CPXXXX)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1052")
    include(middleware_freertos-kernel_MIMXRT1052)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1064")
    include(middleware_freertos-kernel_MIMXRT1064)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMX8MQ6")
    include(middleware_freertos-kernel_MIMX8MQ6)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMX8MM6")
    include(middleware_freertos-kernel_MIMX8MM6)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMX8MM6_ca53")
    include(middleware_freertos-kernel_ca53)
endif()
if(${MCUX_DEVICE} STREQUAL "MKE15Z7")
    include(middleware_freertos-kernel_MKE15Z7)
endif()
if(${MCUX_DEVICE} STREQUAL "K32L2B31A")
    include(middleware_freertos-kernel_K32L2B31A)
endif()
if(${MCUX_DEVICE} STREQUAL "MK64F12")
    include(middleware_freertos-kernel_MK64F12)
endif()
if(${MCUX_DEVICE} STREQUAL "MK66F18")
    include(middleware_freertos-kernel_MK66F18)
endif()
if(${MCUX_DEVICE} STREQUAL "MKE16Z4")
    include(middleware_freertos-kernel_MKE16Z4)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC55S06")
    include(middleware_freertos-kernel_LPC55S06)
endif()
if(${MCUX_DEVICE} STREQUAL "MKV11Z7")
    include(middleware_freertos-kernel_MKV11Z7)
endif()
if(${MCUX_DEVICE} STREQUAL "MKV31F51212")
    include(middleware_freertos-kernel_MKV31F51212)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC54628")
    include(middleware_freertos-kernel_LPC54628)
endif()
if(${MCUX_DEVICE} STREQUAL "MK22F51212")
    include(middleware_freertos-kernel_MK22F51212)
endif()
if(${MCUX_DEVICE} STREQUAL "MKM34ZA5")
    include(middleware_freertos-kernel_MKM34ZA5)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1021")
    include(middleware_freertos-kernel_MIMXRT1021)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC55S16")
    include(middleware_freertos-kernel_LPC55S16)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1062")
    include(middleware_freertos-kernel_MIMXRT1062)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMX8MN6")
    include(middleware_freertos-kernel_MIMX8MN6)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMX8MN6_ca53")
    include(middleware_freertos-kernel_ca53)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC54S018")
    include(middleware_freertos-kernel_LPC54S018)
endif()
if(${MCUX_DEVICE} STREQUAL "K32L3A60_cm0plus")
    include(middleware_freertos-kernel_K32L3A60_cm0plus)
endif()
if(${MCUX_DEVICE} STREQUAL "K32L3A60_cm4")
    include(middleware_freertos-kernel_K32L3A60_cm4)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1176_cm4")
    include(middleware_freertos-kernel_MIMXRT1176_cm4)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1176_cm7")
    include(middleware_freertos-kernel_MIMXRT1176_cm7)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC54S018M")
    include(middleware_freertos-kernel_LPC54S018M)
endif()
if(${MCUX_DEVICE} STREQUAL "MKM35Z7")
    include(middleware_freertos-kernel_MKM35Z7)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC51U68")
    include(middleware_freertos-kernel_LPC51U68)
endif()
if(${MCUX_DEVICE} STREQUAL "MKM34Z7")
    include(middleware_freertos-kernel_MKM34Z7)
endif()
if(${MCUX_DEVICE} STREQUAL "MKE17Z7")
    include(middleware_freertos-kernel_MKE17Z7)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC55S69_cm33_core0")
    include(middleware_freertos-kernel_LPC55S69_cm33_core0)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC55S69_cm33_core1")
    include(middleware_freertos-kernel_LPC55S69_cm33_core1)
endif()
if(${MCUX_DEVICE} STREQUAL "MCIMX7U5")
    include(middleware_freertos-kernel_MCIMX7U5)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1024")
    include(middleware_freertos-kernel_MIMXRT1024)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1011")
    include(middleware_freertos-kernel_MIMXRT1011)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC55S28")
    include(middleware_freertos-kernel_LPC55S28)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMX8ML8")
    include(middleware_freertos-kernel_MIMX8ML8)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMX8ML8_ca53")
    include(middleware_freertos-kernel_ca53)
endif()
if(${MCUX_DEVICE} STREQUAL "K32L2A41A")
    include(middleware_freertos-kernel_K32L2A41A)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT685S_cm33")
    include(middleware_freertos-kernel_MIMXRT685S_cm33)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT595S_cm33")
    include(middleware_freertos-kernel_MIMXRT595S_cm33)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1015")
    include(middleware_freertos-kernel_MIMXRT1015)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC54114_cm4")
    include(middleware_freertos-kernel_LPC54114_cm4)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMX8QM6_cm4_core0")
    include(middleware_freertos-kernel_MIMX8QM6_cm4_core0)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMX8QM6_cm4_core1")
    include(middleware_freertos-kernel_MIMX8QM6_cm4_core1)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMX8QX6")
    include(middleware_freertos-kernel_MIMX8QX6)
endif()
if(${MCUX_DEVICE} STREQUAL "MK28FA15")
    include(middleware_freertos-kernel_MK28FA15)
endif()
if(${MCUX_DEVICE} STREQUAL "MKL27Z644")
    include(middleware_freertos-kernel_MKL27Z644)
endif()

