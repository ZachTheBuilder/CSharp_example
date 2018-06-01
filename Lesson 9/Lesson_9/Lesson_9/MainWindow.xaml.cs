using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Lesson_9
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            Lesson_9.Lesson9DataBaseDataSet lesson9DataBaseDataSet = ((Lesson_9.Lesson9DataBaseDataSet)(this.FindResource("lesson9DataBaseDataSet")));
            // Load data into the table Chairmen. You can modify this code as needed.
            Lesson_9.Lesson9DataBaseDataSetTableAdapters.ChairmenTableAdapter lesson9DataBaseDataSetChairmenTableAdapter = new Lesson_9.Lesson9DataBaseDataSetTableAdapters.ChairmenTableAdapter();
            lesson9DataBaseDataSetChairmenTableAdapter.Fill(lesson9DataBaseDataSet.Chairmen);
            System.Windows.Data.CollectionViewSource chairmenViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("chairmenViewSource")));
            chairmenViewSource.View.MoveCurrentToFirst();
            // Load data into the table Faculty. You can modify this code as needed.
            Lesson_9.Lesson9DataBaseDataSetTableAdapters.FacultyTableAdapter lesson9DataBaseDataSetFacultyTableAdapter = new Lesson_9.Lesson9DataBaseDataSetTableAdapters.FacultyTableAdapter();
            lesson9DataBaseDataSetFacultyTableAdapter.Fill(lesson9DataBaseDataSet.Faculty);
            System.Windows.Data.CollectionViewSource facultyViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("facultyViewSource")));
            facultyViewSource.View.MoveCurrentToFirst();

    
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (TBFName.Text == "")
                {
                    lbDisplay.Content = "First name box is eympty please enter correct info";
                }
                else if (TBLName.Text == "")
                {
                    lbDisplay.Content = "Last name box is eympty please enter correct info";
                }
                else if (TBMID.Text == "")
                {
                    lbDisplay.Content = "Major ID box is eympty please enter correct info";
                }
                else if (TBEmail.Text == "")
                {
                    lbDisplay.Content = "E-mail box is eympty please enter correct info";
                }
                else if (TBAddress.Text == "")
                {
                    lbDisplay.Content = "Address box is eympty please enter correct info";
                }
                else if (TBPhone.Text == "")
                {
                    lbDisplay.Content = "Phone number box is eympty please enter correct info";
                }
                else
                {
                    lbDisplay.Content = "";
                    MessageBox.Show("E-Mail has been sent to the board to be checked over.");
                    TBFName.Clear();
                    TBLName.Clear();
                    TBMID.Clear();
                    TBEmail.Clear();
                    TBAddress.Clear();
                    TBPhone.Clear();
                }
            }
            catch
            {
            
            }
        }

       


    }
}
