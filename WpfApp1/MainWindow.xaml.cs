using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;

using NAudio;
using NAudio.Wave;
using NAudio.Wave.SampleProviders;
using System.Threading;
using Microsoft.Win32;
using System.IO;
using mp3InfoTest;
using System.Windows.Media.Animation;

namespace WpfApp1
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        WaveOutEvent wo=null;
        AudioFileReader af=null;
        Thread t;
        MusicInfo m1 = new MusicInfo();
        Thread playerThread;
        MusicPlayer player1;
        public MainWindow()
        {
            InitializeComponent();


            MusicInfoInit();
            player1 = new MusicPlayer();
            
            t = new Thread(player1.play);
        }
        private void MusicInfoInit()
        {
            m1.CurrentTime = "00:00:00";
            m1.TotalTime = "00:00:00";
            m1.TotalTimeLength = 100;
            m1.CurrentTimeLength = 0;
            t = new Thread(UpdateTime);
        }
        private void UpdateTime()
        {
            while(true)
            {
                if ((af != null) && (wo != null))
                {
                    m1.CurrentTime = af.CurrentTime.ToString(@"hh\:mm\:ss");
                    m1.TotalTime = af.TotalTime.ToString(@"hh\:mm\:ss");
                    //m1.TotalTimeLength= double.Parse(af.TotalTime.ToString(@"ss")) + float.Parse(af.TotalTime.ToString(@"mm")) * 60f + float.Parse(af.TotalTime.ToString(@"hh")) * 3600f;
                    m1.TotalTimeLength = af.TotalTime.TotalSeconds;
                    if (playstate == true)
                    {
                        //m1.CurrentTimeLength = double.Parse(af.CurrentTime.ToString(@"ss")) + float.Parse(af.CurrentTime.ToString(@"mm")) * 60f + float.Parse(af.CurrentTime.ToString(@"hh")) * 3600f;
                        m1.CurrentTimeLength = af.CurrentTime.TotalSeconds;
                    }
                }
                Thread.Sleep(200);
            }
        }


        private bool playstate = false;
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Filter = "(*.mp3,*.wav)|*.mp3;*.wav";
            if (dlg.ShowDialog() != true)
            {
                return;
            }

            MusicDispose();

            string fName = dlg.FileName;
            musicPlayer(fName);

            
        }
        private string GetFileName(string aFile)
        {
            return aFile.Substring(aFile.LastIndexOf("\\") + 1, (aFile.LastIndexOf(".") - aFile.LastIndexOf("\\") - 1));
        }
        private void musicPlayer(string fName)
        {
            if (fName.EndsWith(".mp3")|fName.EndsWith(".wav"))
            {
                TagLibSharpSub subtag = new TagLibSharpSub();
                subtag.init(fName);
                MusicCover.Source = new BitmapImage(new Uri(subtag.GetImagePath()));
                //开启封面旋转动画
                //CoverImgRote(true);

                this.ThisMusicName.Text = (subtag.GetTag(fName)).Title;
                this.MusicInfoBlock.Text = (subtag.GetTag(fName)).Title;
                wo = new WaveOutEvent();
                af = new AudioFileReader(fName);
                //af = new AudioFileReader(@"F:\音乐\阿涵 - 过客.mp3");
                wo.Init(af);
                player1.pwo = wo;

                if (playstate == false)
                {
                    playstate = true;
                    //wo.Play();
                    t.Start();
                    if (!t.IsAlive)
                        t.Start();
                }
                    
                
                
            }

        }
        private Storyboard storyboard;
       private DoubleAnimation doubleAnimation ;
        private RotateTransform rotate ;
        

        //Volume
        private void Slider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            if (af != null)
            {
                wo.Volume = (float)(VolBar.Value / 100f);
            }
        }
        

        //Process
        private double LastPValue=0;
        private int count = 0;
        private void PSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            if(af!=null)
            {
                af.CurrentTime = TimeSpan.FromSeconds(PSlider.Value);
                if(PSlider.Value==PSlider.Maximum)
                {
                    af.CurrentTime= TimeSpan.FromSeconds(-af.TotalTime.TotalSeconds);
                    PSlider.Value = 0;
                    //播放完毕
                    PauseBtn_Click(this,new RoutedEventArgs());
                }
            }      
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if(t!=null)
            t.Abort();
            MusicDispose();
            //this.Close();
            
        }

        private void Window_MouseMove(object sender, MouseEventArgs e)
        {
            if(af!=null)
            {
                
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            
            this.CurrentTimeLabel.SetBinding(Label.ContentProperty, new Binding()
            {
                Path = new PropertyPath("CurrentTime"),
                Source = m1
                
            });
            this.TotalTimeLabel.SetBinding(Label.ContentProperty,
                new Binding()
                {
                    Path = new PropertyPath("TotalTime"),
                    Source = m1
                });
            this.PSlider.SetBinding(Slider.MaximumProperty, new Binding()
            {
                Path=new PropertyPath("TotalTimeLength"),
                Source=m1
            });
            this.PSlider.SetBinding(Slider.ValueProperty, new Binding()
            {
                Path = new PropertyPath("CurrentTimeLength"),
                Source = m1
            });


        }
        
        private void StopBtn_Click(object sender, RoutedEventArgs e)
        {
            playstate = false;
            //MusicDispose();
            //wo.Stop();
            player1.pwo.Stop();
            PSlider.Value = 0;
            m1.CurrentTime = "00:00:00";
        }
        private void MusicDispose()
        {
            playstate = false;
            if (wo != null)
            {
                if(wo.PlaybackState==NAudio.Wave.PlaybackState.Playing)
                wo.Stop();
                wo.Dispose();
                wo = null;
            }
            if (af != null)
            {
                af.Dispose();
                af = null;
            }
            //if (t.IsAlive) t.Abort();
        }

        private void PauseBtn_Click(object sender, RoutedEventArgs e)
        {
            if (wo != null)
            {
                if (wo.PlaybackState == NAudio.Wave.PlaybackState.Playing)
                {
                    //wo.Pause();
                    player1.pwo.Pause();
                    playstate = false;
                    return;
                }

                if (wo.PlaybackState == NAudio.Wave.PlaybackState.Paused)
                {
                    wo.Play();
                    playstate = true;
                }
                if(wo.PlaybackState==NAudio.Wave.PlaybackState.Stopped)
                {
                    wo.Play();
                    playstate = true;
                }

            }
            
        }

        private void Grid_MouseDown(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }

        private void ExitBtn_Click(object sender, RoutedEventArgs e)
        {

            this.Close();
        }

        private void MinimuBtn_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }
       
    }
}
