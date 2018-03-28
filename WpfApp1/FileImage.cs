using System;
using System.Collections.Generic;
using System.Drawing.Imaging;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;
using Microsoft.WindowsAPICodePack.Dialogs;
using Microsoft.WindowsAPICodePack.Shell;

namespace WpfApp1
{
    class FileImage
    {
        public string fDirctroy
        { set; get; }
      public  static BitmapImage GetBitmap(string dir)
        {
            ShellFile shellFile = ShellFile.FromFilePath(dir);
            System.Drawing.Bitmap shellThumb = shellFile.Thumbnail.ExtraLargeBitmap;
            shellThumb.Save("./Resources/", ImageFormat.Bmp);
            return new BitmapImage(new Uri ("./Resources/"));
        }
    }
}
