   M S B A M L   `   `   `  ����C  ?Lesson_9, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:Lesson_9Lesson_9  5   B       Lesson_9.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   %myclr-namespace:Lesson_9     5   B   @d2http://schemas.microsoft.com/expression/blend/2008     6u   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6�   -   5          � Title$  School Personal Info Page��5   	   $	��785��6�   $	��650��6   � DataContext 6  ��  �� ElementName$ TBFName�� �� ValidatesOnDataErrors .  �� TargetNullValue$  �� �� NotifyOnValidationError .  � 	Resources 5      %   Lesson_9.Lesson9DataBaseDataSet   lesson9DataBaseDataSet  chairmenViewSource �� Source �� Path	 �� Source  facultyViewSource��%�   &	        &	      7   &	 C     7     5   
   6$   �� 5   
    6:   �� $ Chairmen�8	   �� 5   
    69   �� $ Faculty�8	   5	      .��5
      � $	��939��6   # [ 6   ���	#FF004B00$	��780��6`   
 � ColumnDefinitions
 5   
   �� 5      $	��26* �6   �� 5      $��1048* �6    � RowDefinitions 5   
   �� 5      $
��103* �6   �� 5      $
��446* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��chairmenDataGrid��5   �      AutoGenerateColumns .     EnableRowVirtualization . $	��200��6N   $
��Left=�6[      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�   $	��Top=�6�   $	��590��6�      CanUserDeleteRows .     CanUserAddRows .  $��2��6B  $��	19,41,0,0q�6V  $��2��6i  ��6v   ��  6�   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        first_NameColumn��,  &System.Windows.Controls.DataGridColumn   Header$ 
First Name��5   c      Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToHeader 6w   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� $ 
First Name�6w     5      -   5        last_NameColumn��$ 	Last Name��5   a   $ SizeToHeader 6t    6>   �� $ 	Last Name�6t     5      -   5        major_IDColumn��$ Major ID��5   _   $ SizeToHeader 6q    6=   �� $ Major ID�6q     5      -   5        _E_MailColumn��$ E-Mail��5   \   $ SizeToHeader 6l    6<   �� $ E-Mail�6l     5      -   5        addressColumn��$ Address��5   ]   $ SizeToHeader 6n    6<   �� $ Address�6n     5      -   5        phone_NumberColumn��$ Phone Number��5   g   $ SizeToHeader 6}    6A   �� $ Phone Number�6}   5      �� 5   
   -	   5        $��	groupBox1��5   �   $��1��6   $��1��6#   $��Add new Faculty Mebers��60   $	��191��6P   $
��Left=�6]   $��
12,309,0,0q�6x   $	��Top=�6�   $	��562��6�   $
��Bold"�6�   $��15(�6�   .��5      � $	��168��6   $	��557��6    ���	#FFE8E8EB
 5      �� 5       $
��133* �6'   �� 5!      $
��506* �6'   .+�5#      �� -
   5        $��TBFName��5#   T   $��24��6   $
��Left=�6&   $��	99,26,0,0q�6A   $	��Top=�6c   $	��120��6{   $��2��6�   ��6�   �� $ First Name.Length� . $  ���� 5$      -   5        $��label2��5$   g   $��First Name:��6   $��28��6.   $
��Left=�6:   $��6,22,0,0q�6U   $	��Top=�6u   $	��114��6�   �� 5%      -   5        $��label3��5%   f   $��
Last Name:��6   $��28��6-   $
��Left=�69   $��6,70,0,0q�6T   $	��Top=�6t   $	��114��6�   �� 5&      -   5        $��TBLName��5&   �   $��2��62   $��24��6F   $
��Left=�6R   $��	99,74,0,0q�6m   $	��Top=�6�   $	��120��6�    6   �� ��6�   �� $ Last Name.Length� . $  ���� 5'      -   5        $��label4��5'   f   $��	Major ID:��6   $��28��6,   $
��Left=�68   $��	6,113,0,0q�6S   $	��Top=�6t   $	��114��6�   �� 5(      -   5        $��TBMID��5(   �   $��2��62   $��24��6F   $
��Left=�6R   $��
99,117,0,0q�6m   $	��Top=�6�   $	��120��6�    6   �� ��6�   ��  �� StringFormat$ {0:F0}�� . $ Major ID��� 5)      -   5        $��TBEmail��5)   m   $��24��62   $
��Left=�6>   $��
239,30,0,0q�6Y   $	��Top=�6|   $	��120��6�   $��1��6�    6   �� ��6�   �� $ E-Mail� . $  ���� 5*      -   5        $��label5��5*   e   $��E-Mail:��6   $��28��6*   $
��Left=�66   $��
146,26,0,0q�6Q   $	��Top=�6s   $	��114��6�   $��1��6�   �� 5+      -   5        $��label6��5+   f   $��Address:��6   $��28��6+   $
��Left=�67   $��
146,74,0,0q�6R   $	��Top=�6t   $	��114��6�   $��1��6�   �� 5,      -   5        $��	TBAddress��5,   m   $��24��62   $
��Left=�6>   $��
239,78,0,0q�6Y   $	��Top=�6~   $	��120��6�   $��1��6�    6   �� ��6�   �� $ Address.Length� . $  ���� 5-      -   5        $��label7��5-   e   $��Phone:��6   $��28��6)   $
��Left=�65   $��146,117,0,0q�6P   $	��Top=�6s   $	��114��6�   $��1��6�   �� 5.      -   5        $��TBPhone��5.   n   $��24��62   $
��Left=�6>   $��239,121,0,0q�6Y   $	��Top=�6}   $	��120��6�   $��1��6�    6   �� ��6�   �� $ {0:F0}��$ Phone Number.Length�5/      50      �� 51   
   -   5        $��btnSend��51   z   $��Send ��6   $��1��6!   $��1��61   $��37��6>   $
��Left=�6J   $��216,528,0,0q�6e   $	��Top=�6�   $	��139��6�   $
��Bold"�6�   $��14(�6�   6�   �� 52   
   -   5        $��	lbDisplay��52   i   $��1��6   $��1��6    $��59��6-   $
��Left=�69   $��373,528,0,0q�6T   $	��Top=�6z   $	��201��6�     53   
   -   5        $��chairmenDataGrid1��53   �    .   . $��1��6N   $	��200��6[   $
��Left=�6h   $��
19,102,0,0q�6�   $ VisibleWhenSelected=�6�   $	��Top=�6�   $	��590��6  $��2��6  ��6�   ��  54        55      -   5        first_NameColumn1��$ 
First Name��55   d   $ SizeToHeader 6x    6@   �� $ 
First Name�6x     56      -   5        last_NameColumn1��$ 	Last Name��56   b   $ SizeToHeader 6u    6?   �� $ 	Last Name�6u     57      -   5        major_IDColumn1��$ Major ID��57   `   $ SizeToHeader 6r    6>   �� $ Major ID�6r     58      -   5        _E_MailColumn1��$ E-Mail��58   ]   $ SizeToHeader 6m    6=   �� $ E-Mail�6m     59      -   5        addressColumn1��$ Address��59   ^   $ SizeToHeader 6o    6=   �� $ Address�6o     5:      -   5        phone_NumberColumn1��$ Phone Number��5:   h   $ SizeToHeader 6~    6B   �� $ Phone Number�6~   5<      5=      5>      