using Lavka.DataBase;
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

namespace Lavka.Pages
{
    /// <summary>
    /// Логика взаимодействия для RegPage.xaml
    /// </summary>
    public partial class RegPage : Page
    {
        public RegPage()
        {
            InitializeComponent();
        }
        private void RegBtn_Click(object sender, RoutedEventArgs e)
        {
            var Login = LoginTb.Text;
            var Password = PasswordTb.Text;
            var Name = NameTb.Text;
            var User = new User()
            {
                Login = Login,
                Password = Password,
                Name = Name,
                IdRoles = 1
            };

            App.db.User.Add(User);
            App.db.SaveChanges();
            App.user = User;
            NavigationService.Navigate(new MainPage());
        }
    }
}
