//------------------------------------------------------------------------------
// <auto-generated>
//    Этот код был создан из шаблона.
//
//    Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//    Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Lavka.DataBase
{
    using System;
    using System.Collections.Generic;
    
    public partial class User
    {
        public User()
        {
            this.Posts = new HashSet<Posts>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public string Login { get; set; }
        public string Password { get; set; }
        public Nullable<int> IdRoles { get; set; }
        public Nullable<decimal> Balance { get; set; }
    
        public virtual ICollection<Posts> Posts { get; set; }
        public virtual Roles Roles { get; set; }
    }
}
