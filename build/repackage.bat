@REM This will package everything in the parent folder EXCEPT the build components themselves.
@REM Relative paths will be preserved

cd ..
copy build\resource.xml
copy command.sh command.bat
del aem-component.cpt
.\bin\7zip\7z.exe a  aem-component.cpt -tzip * -x!.git/ -x!initialize/ -x!build/
del resource.xml
del command.bat
