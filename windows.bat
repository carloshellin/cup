@echo off

( 
    curl -SL --output vs_buildtools.exe https://aka.ms/vs/17/release/vs_buildtools.exe
    start /w vs_buildtools.exe --quiet --wait --norestart --nocache --installPath "%ProgramFiles(x86)%\Microsoft Visual Studio\2022\BuildTools" ^
        --add Microsoft.VisualStudio.Workload.VCTools ^
        --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64
    del /q vs_buildtools.exe
)