   M S B A M L   `   `   `  ����J  FWPFControlsDemo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:WPFControlsDemo.ViewsWPFControlsDemo.Views  5   	   %    WPFControlsDemo.Views.ShellView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:WPFControlsDemo.Views     5   	   ^ ZCaliburn.Micro.Platform, Version=3.2.0.0, Culture=neutral, PublicKeyToken=8e5891231f2ed21f(calhttp://www.caliburnproject.org  5   	   $��20(�5        � WindowStartupLocation$  CenterScreen=�6(    � Title$ 	ShellView��5	   	   $	��450��6   $	��800��6(   .��5
      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   .+�5L   
   &   System.Windows.Controls.DataGrid  -   5          Name$ People��5L         AlternatingRowBackground
 �����   CanUserAddRows .     AutoGenerateColumns .     Columns 5N      0  *System.Windows.Controls.DataGridTextColumn  5O      ,  &System.Windows.Controls.DataGridColumn   Header$ 	Full Name��6%   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 68   �� 
 �� Path$
 FullName�4  .System.Windows.Controls.DataGridCheckBoxColumn  5P      $ Is Alive��6)   	 6;   �� $
 IsAlive�4  .System.Windows.Controls.DataGridTemplateColumn  5R      $ Primary Address��6)      CellTemplate 5S      �� 5T      .R�5U      �� ��6(   �� $ 
 PrimaryAddress.FullAddress�5V         CellEditingTemplate 5X      �� 5Y      .R�5Z      �� ��6'   �� $
 	Addresses� �� SelectedItem 6N   �� $
 PrimaryAddress���5[   "   �� 5\   &   .R�5]   *   �� ��64   �� $
 FullAddress�5^   '   5`      5a      5c        5e      $ Birthday��6)    5f      �� 5g      .R�5h      �� ��6(   �� $
 DateOfBirth�5i       5k      �� 5l      .R�5m      (  "System.Windows.Controls.DatePicker     SelectedDate 6)   �� $
 DateOfBirth�5n      5p      5r      5s      5t      