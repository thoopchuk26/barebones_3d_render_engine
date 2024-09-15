# Parent project does not export its library target, so this CML implicitly
# depends on being added from it, i.e. the testing is done only from the build
# tree and is not feasible from an install location

project(barebones_3d_render_engineTests LANGUAGES CXX)

# ---- Tests ----

add_executable(barebones_3d_render_engine_test source/barebones_3d_render_engine_test.cpp)
target_link_libraries(barebones_3d_render_engine_test PRIVATE barebones_3d_render_engine_lib)
target_compile_features(barebones_3d_render_engine_test PRIVATE cxx_std_17)

add_test(NAME barebones_3d_render_engine_test COMMAND barebones_3d_render_engine_test)

# ---- End-of-file commands ----

add_folders(Test)
