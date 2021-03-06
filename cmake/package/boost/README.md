Boost
=====
http://www.boost.org


Supported platforms
-------------------

| host platform | target platform | compiler | architecture |
| ------------- | --------------- | -------- | ------------ |
| linux         | linux           | gcc, 4.9 | x86-64       |
| linux         | linux           | clang-3  | x86-64       |
| linux         | windows         | mingw    | x86-32       |
| linux         | windows         | mingw    | x86-64       |
| windows       | windows         | mingw    | x86-64       |
| windows       | windows         | mingw    | x86-32       |
| macosx        | macosx          | gcc-4    | x86-64       |

Other platforms may work but have not been tested.


Package-specific options
------------------------

| variable                            | description                            |
| ----------------------------------- | -------------------------------------- |
| `boost_version`                     | Version of Boost to build              |
| `boost_build_boost_atomic`          | Build Atomic library                   |
| `boost_build_boost_chrono`          | Build Chrono library                   |
| `boost_build_boost_date_time`       | Build DateTime library                 |
| `boost_build_boost_filesystem`      | Build Filesystem library               |
| `boost_build_boost_log`             | Build Log library                      |
| `boost_build_boost_math`            | Build Math library                     |
| `boost_build_boost_program_options` | Build ProgramOptions library           |
| `boost_build_boost_python`          | Build Python library                   |
| `boost_build_boost_regex`           | Build Regex library                    |
| `boost_build_boost_serialization`   | Build Serialization library            |
| `boost_build_boost_system`          | Build System library                   |
| `boost_build_boost_test`            | Build Test library                     |
| `boost_build_boost_thread`          | Build Thread library                   |
| `boost_build_boost_timer`           | Build Timer library                    |


Boost.Python
------------
The Python version used by Boost.Python is determined by the standard CMake modules to find Python. So, in order to use a specific version of Python, pass `Python_ADDITIONAL_VERSIONS` when calling CMake, e.g.:

```bash
cmake -DPython_ADDITIONAL_VERSIONS=3 <path_to>/peacock
```


Platform-specific notes
-----------------------
**Windows, Mingw, Cygwin Bash shell**

The build of Boost.Context requires the [ml or ml64 command](http://msdn.microsoft.com/en-us/library/s0ksfwcf.aspx)(for 32- or 64-bit build respectively) to be available. In case this command cannot be found, add the directory containing the command to the PATH environment variable before calling CMake:

```bash
# 32-bit build:
export PATH="$VS90COMNTOOLS/../../VC/BIN:$PATH"

# 64-bit build:
export PATH="$VS90COMNTOOLS/../../VC/BIN/amd64:$PATH"
```

If the command cannot be found, the build of Boost.Context will be skipped, including projects depending on it (Boost.Coroutine).
