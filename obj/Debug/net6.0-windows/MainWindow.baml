   M S B A M L   `   `   `  ����I  EwindowsProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:windowsProjectwindowsProject  5   	       windowsProject.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:windowsProject     5   	     � Title$  
MainWindow��5   	   $	��900��6   $
��1250��6)    � 
ResizeMode$ NoResize=�66   
������  � AllowsTransparency$
 True��6e    � WindowStyle$
 None=�6    � WindowStartupLocation$ CenterScreen=�6�   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $��0 �6   �� 5      $��55 �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   ��  �� CornerRadius$ 0 0 0 0 ��6   
�������$��2��6<   $��2��6L   �� 5   
   $ 0��6   $��2��6"    K� ZIndex$ 2��63   
���� ��$��2��6X   ._�5      � .+�5      �� $��WINDOWS PROGRAMMING CHAT��6   $��20(�6<   $	��Top=�6J   $
��Left=�6b   $��SemiBold"�5      $��
13,186,0,0q�6.   $	��386��6B   	 � LayoutTransform	 5      �� 5      
 �� Angle$	
 270Q�6*   68   5      5       5!      �� 5#   
   $ 
0 20 20 0 ��6   
�������$��2��6>   $��2��6N   ._�5$      � -   5         �Name$	 btn��5$      .+�5%      �� -   5         ��Name$ sendBtn��5%      $
��Send��6*   $
��Left=�69   $��968,776,0,0q�6T   $	��Top=�6i   $��46��6�   $	��121��6�   ${�false��6�   $��18(�6�   �� 5&      -   5         ��Name$ msgSend��5&      $��Center=�6+   $
��Left=�6M   $��106,773,20,0q�6h    �� TextWrapping$
 Wrap=�6~   $��Write a text��5'      $	��Top=�6.   $	��826��6F   $��52��6t   $��20(�6�    �� 	MaxLength$
 1023��6�   ${�False��6�   �� 5)      
���   �$��1q�6-   $	 3.2��6A   $��102,72,106,174q�6T   6o   �� 5*      -   5         ��Name$ chatMessage��5*      $
��Wrap=�61   $��chat history��6E   $��142,87,145,189q�6Y   $��20(�6q   �� 5+      -   5        $ 
connectbtn��5+      $��Connect��6-   $
��Left=�6?   $��
968,21,0,0q�6Z   $	��Top=�6n   $��46��6�   $	��121��6�   $��18(�6�   �� 5,      -   5         ��Name$ label��5,      $��46��6'   $��disconnected��63   $��828,30,232,824q�6J   $��16(�6b   �� 5-      -   5        $ userName��5-      $
��Left=�6,   $��
102,30,0,0q�6G   $
 Wrap=�6[   $��Add User Name��6o   $	��Top=�6�   $	��195��6�   $��36��6�   $��20(�6�   5.      5/      50      51      