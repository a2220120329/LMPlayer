using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using NAudio;
using NAudio.Wave;
using NAudio.Wave.SampleProviders;
namespace WpfApp1
{
    class MusicPlayer
    {
        public bool playstate = false;
        public WaveOutEvent pwo;
        public  void play()
        {
            pwo.Play();
        }
        public  void stop()
        {

        }
        public  void pause()
        {

        }

    }
}
