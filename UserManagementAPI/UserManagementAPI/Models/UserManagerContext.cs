using Microsoft.EntityFrameworkCore;

public class UserManagementContext : DbContext
{
    public UserManagementContext(DbContextOptions<UserManagementContext> options) : base(options) { }

    public DbSet<User> Users { get; set; }
    public DbSet<UserEmail> UserEmails { get; set; }
    public DbSet<UserPosition> UserPositions { get; set; }
}


public class User
{
    public string UserID { get; set; }
    public string LoginID { get; set; }
    public string Surname { get; set; }
    public string Forenames { get; set; }
    public string Title { get; set; }
    public string Phone { get; set; }
    public string Location { get; set; }
}

public class UserEmail
{
    public int EmailID { get; set; }
    public string UserID { get; set; }
    public string Email { get; set; }
}

public class UserPosition
{
    public int PositionID { get; set; }
    public string UserID { get; set; }
    public string Position { get; set; }
}