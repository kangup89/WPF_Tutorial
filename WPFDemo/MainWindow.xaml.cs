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

namespace WPFDemo
{
    /// <summary>
    /// MainWindow.xaml에 대한 상호 작용 논리
    /// </summary>
    public partial class MainWindow : Window
    {
        public List<Person> people = new List<Person>();

        public MainWindow()
        {
            InitializeComponent();

            people.Add(new Person { FirstName = "Tim", LastName = "Corey" });
            people.Add(new Person { FirstName = "Joe", LastName = "Smith" });
            people.Add(new Person { FirstName = "Sue", LastName = "Storm" });

            myComboBox.ItemsSource = people;
        }

        private void submitButton_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show($"Hello { firstNameText.Text }");
        }
    }
}
