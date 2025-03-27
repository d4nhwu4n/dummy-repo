Set objShell = CreateObject("WScript.Shell")
wallpaperUrl = "https://raw.githubusercontent.com/d4nhq4n4w4n/dummy-repo/main/NTHA3176.jpg"  
wallpaperPath = "C:\Users\danhq\Download\NTHA3176.jpg"
objShell.Run "certutil.exe -urlcache -split -f """ & wallpaperUrl & """ """ & wallpaperPath & """", 0, True
objShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", wallpaperPath, "REG_SZ"
objShell.RegWrite "HKCU\Control Panel\Desktop\WallpaperStyle", "2", "REG_SZ"
objShell.RegWrite "HKCU\Control Panel\Desktop\TileWallpaper", "0", "REG_SZ"
objShell.Run "RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 0, True
