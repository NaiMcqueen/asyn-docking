@echo off
setlocal enabledelayedexpansion

set configFile=C:\Users\adm\Nai\8FPT_C7_config.txt
set ligandDir=C:\Users\adm\Nai\ligands\
set outputDir=C:\Users\adm\Nai\c7_output\

if not exist "%outputDir%" mkdir "%outputDir%"

for %%f in ("%ligandDir%*.pdbqt") do (
    set "ligand=%%f"
    set "ligandName=%%~nf"
    "C:\Program Files (x86)\The Scripps Research Institute\Vina\vina.exe" --config "%configFile%" --ligand "%%f" --out "%outputDir%%%~nf_out.pdbqt"
    echo Docking completado para: %%~nf
)

echo Todos los dockings han sido completados.
pause
