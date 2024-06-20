# Define the folder path of parent folder
$folderPath = (get-item .).parent.FullName

# Get the day of the week as a string
$day = (Get-Date).DayOfWeek.ToString()

# Define the image path based on the day of the week (change your background name here)
switch ($day) {
    "Monday"    { $imgPath = $folderPath + "\backgrounds\Monday.bmp" }
    "Tuesday"   { $imgPath = $folderPath + "\backgrounds\Tuesday.bmp" }
    "Wednesday" { $imgPath = $folderPath + "\backgrounds\Wednesday.bmp" }
    "Thursday"  { $imgPath = $folderPath + "\backgrounds\Thursday.bmp" }
    "Friday"    { $imgPath = $folderPath + "\backgrounds\Friday.bmp" }
    "Saturday"  { $imgPath = $folderPath + "\backgrounds\Saturday.bmp" }
    "Sunday"    { $imgPath = $folderPath + "\backgrounds\Sunday.bmp" }
}

# Define C# code as a string, this code forces background to refresh
$code = @'
using System.Runtime.InteropServices; 
namespace Win32{ 
     public class Wallpaper{ 
        [DllImport("user32.dll", CharSet=CharSet.Auto)] 
         static extern int SystemParametersInfo (int uAction , int uParam , string lpvParam , int fuWinIni) ; 
         
         public static void SetWallpaper(string thePath){ 
            SystemParametersInfo(20,0,thePath,3); 
         }
    }
 } 
'@

# Add the C# code to the current session
Add-Type -TypeDefinition $code -Language CSharp

# Apply the change on the system by setting the desktop background to the appropriate image
[Win32.Wallpaper]::SetWallpaper($imgPath)