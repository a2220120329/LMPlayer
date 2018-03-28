using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;

using Id3Lib;
namespace WpfApp1
{
    class MusicInfo : INotifyPropertyChanged
    {
        private string currentTime;
        private string totalTime;
        private double totalTimeLength;
        private double currentTimeLength;

        public TagHandler tag;
        
        public string CurrentTime
        {
            get { return currentTime; }
            set
            {
                currentTime = value;
                if (PropertyChanged != null)
                {
                    this.PropertyChanged.Invoke(this, new PropertyChangedEventArgs("CurrentTime"));
                }
            }
        }

        public string TotalTime
            {
            get { return totalTime; }
            set
            {
                totalTime = value;
                if(PropertyChanged!=null)
                {
                    this.PropertyChanged.Invoke(this,new PropertyChangedEventArgs("TotalTime"));
                }
            }

            }
        public double CurrentTimeLength
        {
            get { return currentTimeLength; }
            set
            {
                currentTimeLength = value;
                if(PropertyChanged!=null)
                {
                    this.PropertyChanged.Invoke(this,new PropertyChangedEventArgs("CurrentTimeLength"));
                }
            }
        }

        public double TotalTimeLength
        {
            get { return totalTimeLength; }
            set
            {
                totalTimeLength = value;
                if (PropertyChanged != null)
                {
                    this.PropertyChanged.Invoke(this, new PropertyChangedEventArgs("TotalTimeLength"));
                }
            }
        }
        public event PropertyChangedEventHandler PropertyChanged;
    }
}
