   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	   7 clr-namespace:WpfApp1.PropertiesWpfApp1.Properties  5   	   V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null{Sclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf#MaterialDesignThemes.Wpf.Converters 5   	       WpfApp1.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	   7
Properties clr-namespace:WpfApp1.Properties     5   	   FmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   rmaterialDesignConvertersSclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf  5   	   -   5          � Title$  
MainWindow��5	   	   $��295.6��6    � 
ResizeMode$ CanResizeWithGrip=�5   	    � Icon$ ./Resources/windows.ico��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	   $	��620��5   	    � WindowStartupLocation$ CenterScreen=�6,    � AllowsTransparency .  � WindowStyle$
 None=�6k   .��5      �� 
�������$��2q�6%    �� Padding$ 2q�69   ._�5   
   ]� ���#03A9F4.+�5      (  "MaterialDesignThemes.Wpf.ColorZone  -   5        $	��Top=�5   (   $��60��5   (   	   Mode$	 Accent=�5   (   .��5!      � $	��Top=�6   $��60��6,   
 � ColumnDefinitions
 5"      �� 5#      $
��auto �6+   �� 5$      $��* �6+   �� 5%      $	��120 �6+   .+�5)      '  !MaterialDesignThemes.Wpf.PackIcon  $��Center=�6/   �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$
 Play=�5*   +   $��50��67   $��20 0 0 0q�5+   +   $��50��5,   +   
���� ��66   �� 5-      -   5         ��Name$ ThisMusicName��51      $��1��5-       $��Center=�60   $��30(�6K   $
��Left=�5.      $��LMPlayer��5/       # MaterialDesignDisplay1TextBlock#��[ 50      51      �� 52      $��2��6!   $��Right=�61    �� Orientation$ 
Horizontal=�6M   .+�53      �� -   5        $��	10 0 10 0q�55      ��56      Z� ��57      Z� .��59        $ WindowMinimize=�66   $��20��5:   2   $��20��6>   
���� ��5;   2   5=      �� 5>      -   5        $��	10 0 10 0q�5@      ��5A      Z� ��5B      Z� .��5D        $ WindowClose=�66   $��20��5E   2   $��20��6>   
���� ��5F   6   5G      5I      5K      5M      � 5P      -   5         �Name$ ContentGrid��5P       � RowDefinitions 5Q      �� 5R      $
��auto �6$   �� 5S      $
��auto �6$   �� 5T      $
��auto �6$   �� 5U      $��* �6$   
 5W      �� 5X      $
��auto �6'   �� 5Z      $��* �6'   .+�5\      �� -   5        $��20 10 10 10q�5]       & "MaterialDesignFloatingActionButton#��[ 5^      .��5`        $ 
WindowOpen=�6.   $��28��6@   $��28��6K   5a      �� 5d      -   5         ��Name$ StopBtn��5e      $��1��5g      #��[ 5h      $��
20 0 10 10q�5i      .��5j        $
 Stop=�6.   $��28��6:   $��28��6F   5k      �� 5l      -	   5        $ PauseBtn��5m      $��	20 0 10 0q�5o      #��[ 5p      $��2��5q      .��5s      �� $ 
Horizontal=�6!   .+�5t        $
 Play=�62   $��24��6>   $��24��6J     5u      $ Pause=�62   $��24��6?   $��24��6K   5v      5w      #  MaterialDesignThemes.Wpf.Card  5y      $��0��6&   $��3��63   $��3��6G   $��1��5z   &   $	��200��66   $��10 10q�5{   &   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth3=�5|   &      ShadowEdges$ Right=�5}   &   $
��Left=�5~   &   $	��520��5   &   .��5�      �  5�      �� 5�      $��60 �6,   �� 5�      $��60 �6,   �� 5�      $��60 �6,   
 5�      �� 5�      $
��auto �6/   �� 5�      $
��auto �6/   �� 5�      $
��auto �6/   �� 5�      $
��auto �6/   .+�5�      �� $
��Name��6    $��0��5�      $��0��5�      $��Center=�5�      $��Center=�69   �� 5�      -
   5        $ MusicInfoBlock��5�      $��1��5�   $   $��2��5�      ���#673AB7$��Center=�5�      $
��Left=�5�      $��20(�5�       # MaterialDesignHeadlineTextBlock#��[ 5�      5�      �� 5�      $��Volume��6    $��0��5�      $��1��5�      $��Center=�5�      $��Center=�69   �� 5�      -   5         ��Name$ VolBar��5�   4    �� TickFrequency$ 10Q�6!   $��1��5�      $��1��5�       � Minimum$ 0Q�5�       � Maximum$	 100Q�6!    � Value$ 50Q�6/   $
��Left=�5�      $��Center=�5�      $	��250��5�      5�      �� 5�      -   5         ��Name$ VolInfoBlock��5�      $��2��5�      $��1��5�      $��Center=�5�      $��0q�5�       �� TextAlignment$ Center=�5�      $��Center=�5�      ��5�      ��  �� ElementName$ VolBar�� �� Path$ Value� �� StringFormat$ {0:##}��5�      �� 5�      -   5         ��Name$ CurrentTimeLabel��5�       $��Center=�5�      $��Center=�5�      $�� ��5�      $��0��5�      $��2��5�      $��26��5�      �� 5�      -   5        $ PSlider��5�      $ 10Q�5�   !   $��1��5�      $��2��5�      $ 0Q�5�      $	 100Q�6)   $
��Left=�5�      $��Center=�5�      $	��250��5�      6)   �� 5�      -   5        $ TotalTimeLabel��5�       $��2��5�      $��2��5�      $��Center=�5�      $��Center=�5�      $��26��65   � 5�      -   5        $
 Mpic��5�      $��3��5�       $��3��5�       $	��100��5�       $	��100��5�       $��10q�5�       .+�5�      ��  �� CornerRadius$ 20,20,20,20��6%   
�������.  (MaterialDesignThemes.Wpf.ColorZoneAssist   Mode$ Accent=�5�   %   ._�5�   "     $
	 Dark=�6;     J� Opacity$	  0.8Q�5�   ;   $��3q�5�   ;   !   CornerRadius$! 4��5�   ;   .��5�   &   �� -   5        " ��Name$" 
MusicCover��5�   (   $
��auto��5�   (   $
��auto��5�   (   # J� RenderTransformOrigin$# 0.5,0.5&�5�   (   $��Resources/MusicCover.png��5�   !   5�   #   5�      5�      5�      5�      5�      5�      5�      5�      