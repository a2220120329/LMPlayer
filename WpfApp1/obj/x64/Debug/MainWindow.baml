   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	   7 clr-namespace:WpfApp1.PropertiesWpfApp1.Properties  5   	       WpfApp1.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	   7
Properties clr-namespace:WpfApp1.Properties     5   	   V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          � Title$  
MainWindow��5	   	   $	��350��6    � 
ResizeMode$ CanResizeWithGrip=�5   	    � Icon$ ./Resources/windows.ico��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	   $	��525��5   	    � WindowStartupLocation$ CenterScreen=�6,    � AllowsTransparency .  � WindowStyle$
 None=�6k   .��5      �� 
�������$��2q�6%    �� Padding$ 2q�69   ._�5   
   ]� ���#03A9F4.+�5      � -   5        $	��Top=�5      $��50��6(   ���#9C27B0	 � ColumnDefinitions	 5      �� 5      $
��auto �6'   �� 5       $��* �6'   �� 5!      $	��120 �6'   .+�5$      '  !MaterialDesignThemes.Wpf.PackIcon  $��Center=�6+   �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]
   Kind$

 Play=�6F   $��40��6R   $��40��6^   
�������6i   �� 5%      -   5         ��Name$ ThisMusicName��5'   .   $��1��5%      $��Center=�6(   $��30(�6C   $
��Left=�5&      ���#F3E5F55'   .   �� 5(      $��2��6   $��Right=�6-    �� Orientation$ 
Horizontal=�6I   .+�5)      �� -   5        $��	10 0 10 0q�5+      ��5,      Z� ��5-      Z� .��5/        $
 WindowMinimize=�62   $��20��50   2   $��20��6>   52      �� 53      -   5        $��	10 0 10 0q�55      ��56      Z� ��57      Z� .��59        $
 WindowClose=�62   $��20��5:   2   $��20��6>   5;      5=      5?      � 5A      -   5         �Name$ ContentGrid��5A       � RowDefinitions 5B      �� 5C      $
��auto �6$   �� 5D      $
��auto �6$   �� 5E      $
��auto �6$   �� 5F      $��* �6$   	 5H      �� 5I      $
��auto �6'   �� 5J      $
��auto �6'   �� 5K      $
��auto �6'   �� 5L      $��* �6'   .+�5N      �� -   5        $��10q�5O       , (MaterialDesignFloatingActionAccentButton#��[ 5P      .��5R        $
 	OpenInNew=�6.   $��28��6?   $��28��6K   5S      �� 5V      -   5         ��Name$ StopBtn��5W      $��1��5Y       . *MaterialDesignFloatingActionMiniDarkButton#��[ 5Z      $��
10 0 10 10q�5[      .��5\        $

 Stop=�6.   $��28��6:   $��28��6F   5]      �� 5^      -	   5        $ PauseBtn��5_      $��	10 0 10 0q�5a      #��[ 5b      $��2��5c      .��5e      �� $ 
Horizontal=�6!   .+�5f        $

 Play=�62   $��24��6>   $��24��6J     5g      $
 Pause=�62   $��24��6?   $��24��6K   5h      5i      �� 5k      $��	MusicInfo��6   $��1��5l      $��0��5m      $��Center=�5n      $��Center=�69   �� 5o      -
   5         ��Name$ MusicInfoBlock��5v      $��2��5o      $��2��5p      ���#673AB7$��Center=�5r      $
��Left=�5s      $��20(�5t       # MaterialDesignHeadlineTextBlock#��[ 5u      5v      �� 5x      $��Volume��6   $��1��5y      $��1��5z      $��Center=�5{      $��Center=�69   �� 5|      -   5         ��Name$ VolBar��5|   0    �� TickFrequency$ 10Q�6   $��2��5}      $��1��5~       � Minimum$ 0Q�5       � Maximum$	 100Q�6!    � Value$ 50Q�6/   $
��Left=�5�      $��Center=�5�      $	��250��5�      5�      �� 5�      $��3��5�      $��1��5�      $��Center=�5�      $��Center=�5�      ��5�      ��  �� ElementName$ VolBar�� �� Path$ Value�5�      �� 5�      -   5        $ CurrentTimeLabel��5�      $��Center=�5�      $��Center=�5�      $�� ��5�      $��1��5�      $��2��5�      $��26��5�      �� 5�      -   5        $ PSlider��5�      $ 10Q�5�      $��2��5�      $��2��5�      $ 0Q�5�      $	 100Q�6)   $
��Left=�5�      $��Center=�5�      $	��250��5�      6)   �� 5�      -   5        $ TotalTimeLabel��5�      $��3��5�      $��2��5�      $��Center=�5�      $��Center=�5�      $��26��65   5�      5�      5�      5�      