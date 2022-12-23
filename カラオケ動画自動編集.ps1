$ffmpeg="Z:\100.Video\ffmpeg-master-latest-win64-gpl\bin\ffmpeg.exe"
Get-ChildItem *.* -Include *.mp4 | % {
    $ArgumentLst = @("-i `""+$_.Name+"`"","-vf hue=s=0 -s 10x10", "`"z_"+$_.Name+".mp4`"")
            Start-Process -NoNewWindow -Wait $ffmpeg -ArgumentList $ArgumentLst 
}
