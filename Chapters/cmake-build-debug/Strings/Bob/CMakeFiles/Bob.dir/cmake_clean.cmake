file(REMOVE_RECURSE
  "Bob.exe"
  "Bob.exe.manifest"
  "Bob.pdb"
  "CMakeFiles/Bob.dir/task.obj"
  "libBob.dll.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/Bob.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
