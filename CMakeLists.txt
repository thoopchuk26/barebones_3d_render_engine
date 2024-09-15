cmake_minimum_required(VERSION 3.14)

include(cmake/prelude.cmake)

project(
    barebones_3d_render_engine
    VERSION 0.1.0
    DESCRIPTION "3D render engine made entirely within the standard library of cpp"
    HOMEPAGE_URL "https://th00p.com"
    LANGUAGES CXX
)

include(cmake/project-is-top-level.cmake)
include(cmake/variables.cmake)

# ---- Declare library ----

#add_library(
#   barebones_3d_render_engine_lib OBJECT
#    
#)

#target_include_directories(
#    barebones_3d_render_engine_lib ${warning_guard}
#    PUBLIC
#    "\$<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/source>"
#)

#target_compile_features(barebones_3d_render_engine_lib PUBLIC cxx_std_17)

# ---- Declare executable ----

add_executable(barebones_3d_render_engine_exe source/main.cpp)
add_executable(barebones_3d_render_engine::exe ALIAS barebones_3d_render_engine_exe)

set_property(TARGET barebones_3d_render_engine_exe PROPERTY OUTPUT_NAME barebones_3d_render_engine)

target_compile_features(barebones_3d_render_engine_exe PRIVATE cxx_std_17)

#target_link_libraries(barebones_3d_render_engine_exe PRIVATE barebones_3d_render_engine_lib)

# ---- Install rules ----

if(NOT CMAKE_SKIP_INSTALL_RULES)
  include(cmake/install-rules.cmake)
endif()

# ---- Developer mode ----

if(NOT barebones_3d_render_engine_DEVELOPER_MODE)
  return()
elseif(NOT PROJECT_IS_TOP_LEVEL)
  message(
      AUTHOR_WARNING
      "Developer mode is intended for developers of barebones_3d_render_engine"
  )
endif()

include(cmake/dev-mode.cmake)
