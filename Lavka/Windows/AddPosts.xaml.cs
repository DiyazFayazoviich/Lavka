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
using System.Windows.Shapes;

namespace Lavka.Windows
{
    /// <summary>
    /// Логика взаимодействия для AddPosts.xaml
    /// </summary>
    public partial class AddPosts : Window
    {
        public AddPosts()
        {
            InitializeComponent();
            PostsCb.ItemsSource = App.db.Posts.ToList();
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            var posts = new Posts()
            {
                IdServices = (PostsCb.SelectedItem as Posts).Id,
                IdUser = App.user.Id,

            };

            App.db.Posts.Add(posts);
            App.db.SaveChanges();
            MessageBox.Show("Заказ добавлен!");
        }
    }
}
