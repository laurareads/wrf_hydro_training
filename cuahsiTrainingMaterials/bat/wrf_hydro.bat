cmd /c start PowerShell -Command "Start-Process -FilePath 'C:\Program Files (x86)\Xming\Xming.exe' -ArgumentList ':0 -clipboard -multiwindow -ac'"
cmd /c start PowerShell -NoExit -Command "$ipaddress = $(ipconfig | where {$_ -match 'IPv4.+\s(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})' } | out-null; $Matches[1]); docker stop wrf_hydro; docker rm wrf_hydro; docker run --name wrf_hydro -it -e DISPLAY="$($ipaddress):0.0" -v  C:/ClassMaterials:/home/cuahsi/ClassMaterials wrf_hydro_docker"