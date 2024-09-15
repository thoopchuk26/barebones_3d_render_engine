install(
    TARGETS barebones_3d_render_engine_exe
    RUNTIME COMPONENT barebones_3d_render_engine_Runtime
)

if(PROJECT_IS_TOP_LEVEL)
  include(CPack)
endif()
