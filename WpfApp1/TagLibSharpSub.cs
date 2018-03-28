using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TagLib;
using TagLib.Id3v2;
using System.Drawing;
using System.IO;

namespace mp3InfoTest
{
    class TagLibSharpSub
    {
        public TagLib.File mFile;
        public string Mpath { set; get; }
        public List<string> Info;

        public TagLib.Tag GetTag(string path)
        {
            return mFile.Tag;
        }

        public List<string> GetInfo()
        {
            Info.Add($"标题：{mFile.Tag.Title}");
            Info.Add($"歌手：{mFile.Tag.FirstAlbumArtist}");
            Info.Add($"专辑：{mFile.Tag.Album}");
            return Info;
        }
        public string GetImagePath()
        {
            string CoverPath;
           // FileStream imgFs = new FileStream($"MusicImgs/{mFile.Tag.Title}.jpg", FileMode.Open);
            CoverPath = $"MusicImgs/{mFile.Tag.Title}.jpg";
            if (System.IO.File.Exists(CoverPath))
            {
                CoverPath=$"MusicImgs/{mFile.Tag.Title}.jpg";
            }
            else
            {
                var ss = GetCover();
                if (ss != null)
                {
                    Image image = Image.FromStream(ss);
                    FileStream fs = new FileStream($"MusicImgs/{mFile.Tag.Title}.jpg", FileMode.Create);
                    image.Save(fs, System.Drawing.Imaging.ImageFormat.Jpeg);
                    CoverPath = $"MusicImgs/{mFile.Tag.Title}.jpg";
                    fs.Close();

                }
                else
                {
                    CoverPath = $"Resources/MusicCover.png";
                }

            }
            //设置背景图
            string currDir = AppDomain.CurrentDomain.BaseDirectory;
            currDir += CoverPath;
           
            return currDir;
        }

        public  MemoryStream GetCover()
        {
            TagLib.File f = mFile;
            if (f.Tag.Pictures != null && f.Tag.Pictures.Length != 0)
            {
                var bin = (byte[])(f.Tag.Pictures[0].Data.Data);
                return new MemoryStream(bin);
            }
            else
                return null;

        }
        public void init(string path)
        {
            Mpath = path;
            mFile = TagLib.File.Create(Mpath);
            Info = new List<string>();
        }
    }
}
