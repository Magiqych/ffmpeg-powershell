$ffmpeg="Z:\100.Video\ffmpeg-master-latest-win64-gpl\bin\ffmpeg.exe"
Get-ChildItem *.* -Include *.mp4 | % {
    $ArgumentLst = @("-i `""+$_.Name+"`"","-s 1920x1920", "`"z_"+$_.Name+".mp4`"")
            Start-Process -NoNewWindow -Wait $ffmpeg -ArgumentList $ArgumentLst 
}