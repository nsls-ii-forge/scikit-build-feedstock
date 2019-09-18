
:: Update PATH to ensure mingw compiler is not found
pushd %RECIPE_DIR%
call rmpath C:\\Program Files\\Git\\mingw64\\bin
call rmpath C:\\ProgramData\\Chocolatey\\bin
call rmpath C:\\Strawberry\\c\\bin
popd

py.test -k "not test_fortran_compiler and not test_issue352_isolated_environment_support and not test_cmake_install_dir_keyword and not test_generator_selection" -v
