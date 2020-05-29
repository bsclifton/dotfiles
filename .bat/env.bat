rem commenting out because this breaks other builds
rem was needed though for clang_format to work in sublime :/
rem setx CHROMIUM_BUILDTOOLS_PATH "C:\bb1\src\buildtools"

rem requires admin command prompt to run
setx /M PATH "%PATH%;%USERPROFILE%\.cargo\bin"
