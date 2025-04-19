using Lavka.Windows;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace Lavka.Pages
{
    /// <summary>
    /// Логика взаимодействия для MainPage.xaml
    /// </summary>
    public partial class MainPage : Page
    {
        public MainPage()
        {
            InitializeComponent();
            LoadPosts();
        }

        private void LoadPosts()
        {
            // Проверяем, что App.user не null и загружаем посты
            if (App.user != null)
            {
                LvPosts.ItemsSource = App.db.Posts.Where(x => x.IdUser == App.user.Id).ToList();
            }
            else
            {
                MessageBox.Show("Пользователь не авторизован", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                // Можно перенаправить на страницу авторизации
            }
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            // Создаем и показываем окно добавления поста
            AddPosts addPostsWindow = new AddPosts();
            addPostsWindow.ShowDialog(); // Используем ShowDialog для модального окна

            // Обновляем список постов после закрытия окна добавления
            LoadPosts();
        }
    }
}