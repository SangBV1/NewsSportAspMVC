namespace Model.EF
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class news_sportDbContext : DbContext
    {
        public news_sportDbContext()
            : base("name=news_sportDbContext")
        {
        }

        public virtual DbSet<advertisement> advertisements { get; set; }
        public virtual DbSet<advertisement_position> advertisement_position { get; set; }
        public virtual DbSet<content> contents { get; set; }
        public virtual DbSet<content_category> content_category { get; set; }
        public virtual DbSet<content_tag> content_tag { get; set; }
        public virtual DbSet<football_club> football_club { get; set; }
        public virtual DbSet<footballer> footballers { get; set; }
        public virtual DbSet<footballer_type> footballer_type { get; set; }
        public virtual DbSet<general_rule> general_rule { get; set; }
        public virtual DbSet<goal_type> goal_type { get; set; }
        public virtual DbSet<info> infoes { get; set; }
        public virtual DbSet<match> matches { get; set; }
        public virtual DbSet<match_goal> match_goal { get; set; }
        public virtual DbSet<menu> menus { get; set; }
        public virtual DbSet<menu_type> menu_type { get; set; }
        public virtual DbSet<rank> ranks { get; set; }
        public virtual DbSet<round> rounds { get; set; }
        public virtual DbSet<season> seasons { get; set; }
        public virtual DbSet<season_club> season_club { get; set; }
        public virtual DbSet<season_round> season_round { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<system_config> system_config { get; set; }
        public virtual DbSet<tag> tags { get; set; }
        public virtual DbSet<tournament> tournaments { get; set; }
        public virtual DbSet<user_credential> user_credential { get; set; }
        public virtual DbSet<user_group> user_group { get; set; }
        public virtual DbSet<user_log> user_log { get; set; }
        public virtual DbSet<user_role> user_role { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<advertisement>()
                .Property(e => e.url_source)
                .IsUnicode(false);

            modelBuilder.Entity<advertisement>()
                .Property(e => e.advertisement_position_id)
                .IsUnicode(false);

            modelBuilder.Entity<advertisement>()
                .Property(e => e.created_by)
                .IsUnicode(false);

            modelBuilder.Entity<advertisement>()
                .Property(e => e.modified_by)
                .IsUnicode(false);

            modelBuilder.Entity<advertisement_position>()
                .Property(e => e.id)
                .IsUnicode(false);

            modelBuilder.Entity<advertisement_position>()
                .HasMany(e => e.advertisements)
                .WithOptional(e => e.advertisement_position)
                .HasForeignKey(e => e.advertisement_position_id);

            modelBuilder.Entity<content>()
                .Property(e => e.meta_title)
                .IsUnicode(false);

            modelBuilder.Entity<content>()
                .Property(e => e.created_by)
                .IsUnicode(false);

            modelBuilder.Entity<content>()
                .Property(e => e.modified_by)
                .IsUnicode(false);

            modelBuilder.Entity<content>()
                .HasMany(e => e.content_tag)
                .WithOptional(e => e.content)
                .HasForeignKey(e => e.idx_content_id)
                .WillCascadeOnDelete();

            modelBuilder.Entity<content_category>()
                .Property(e => e.meta_title)
                .IsUnicode(false);

            modelBuilder.Entity<content_category>()
                .Property(e => e.created_by)
                .IsUnicode(false);

            modelBuilder.Entity<content_category>()
                .Property(e => e.modified_by)
                .IsUnicode(false);

            modelBuilder.Entity<content_category>()
                .HasMany(e => e.contents)
                .WithOptional(e => e.content_category)
                .HasForeignKey(e => e.content_category_id);

            modelBuilder.Entity<content_tag>()
                .Property(e => e.idx_tag_id)
                .IsUnicode(false);

            modelBuilder.Entity<football_club>()
                .Property(e => e.id)
                .IsUnicode(false);

            modelBuilder.Entity<football_club>()
                .Property(e => e.url_logo)
                .IsUnicode(false);

            modelBuilder.Entity<football_club>()
                .HasMany(e => e.footballers)
                .WithOptional(e => e.football_club)
                .HasForeignKey(e => e.footballClub_id);

            modelBuilder.Entity<football_club>()
                .HasMany(e => e.season_club)
                .WithOptional(e => e.football_club)
                .HasForeignKey(e => e.idx_fooballClub_id);

            modelBuilder.Entity<football_club>()
                .HasMany(e => e.matches)
                .WithOptional(e => e.football_club)
                .HasForeignKey(e => e.guest_club);

            modelBuilder.Entity<football_club>()
                .HasMany(e => e.matches1)
                .WithOptional(e => e.football_club1)
                .HasForeignKey(e => e.home_club);

            modelBuilder.Entity<football_club>()
                .HasMany(e => e.ranks)
                .WithOptional(e => e.football_club)
                .HasForeignKey(e => e.footballClub_id);

            modelBuilder.Entity<footballer>()
                .Property(e => e.footballer_type_id)
                .IsUnicode(false);

            modelBuilder.Entity<footballer>()
                .Property(e => e.footballClub_id)
                .IsUnicode(false);

            modelBuilder.Entity<footballer>()
                .HasMany(e => e.match_goal)
                .WithOptional(e => e.footballer)
                .HasForeignKey(e => e.footballer_id);

            modelBuilder.Entity<footballer_type>()
                .Property(e => e.id)
                .IsUnicode(false);

            modelBuilder.Entity<footballer_type>()
                .HasMany(e => e.footballers)
                .WithOptional(e => e.footballer_type)
                .HasForeignKey(e => e.footballer_type_id);

            modelBuilder.Entity<goal_type>()
                .Property(e => e.id)
                .IsUnicode(false);

            modelBuilder.Entity<goal_type>()
                .HasMany(e => e.match_goal)
                .WithOptional(e => e.goal_type)
                .HasForeignKey(e => e.goal_type_id);

            modelBuilder.Entity<info>()
                .Property(e => e.id)
                .IsUnicode(false);

            modelBuilder.Entity<info>()
                .Property(e => e.meta_title)
                .IsUnicode(false);

            modelBuilder.Entity<info>()
                .Property(e => e.created_by)
                .IsUnicode(false);

            modelBuilder.Entity<info>()
                .Property(e => e.modified_by)
                .IsUnicode(false);

            modelBuilder.Entity<match>()
                .Property(e => e.home_club)
                .IsUnicode(false);

            modelBuilder.Entity<match>()
                .Property(e => e.guest_club)
                .IsUnicode(false);

            modelBuilder.Entity<match>()
                .Property(e => e.score)
                .IsUnicode(false);

            modelBuilder.Entity<match>()
                .Property(e => e.round_id)
                .IsUnicode(false);

            modelBuilder.Entity<match>()
                .Property(e => e.season_id)
                .IsUnicode(false);

            modelBuilder.Entity<match>()
                .HasMany(e => e.match_goal)
                .WithOptional(e => e.match)
                .HasForeignKey(e => e.match_id);

            modelBuilder.Entity<match_goal>()
                .Property(e => e.goal_type_id)
                .IsUnicode(false);

            modelBuilder.Entity<menu_type>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<menu_type>()
                .HasMany(e => e.menus)
                .WithOptional(e => e.menu_type)
                .HasForeignKey(e => e.menu_type_id);

            modelBuilder.Entity<rank>()
                .Property(e => e.footballClub_id)
                .IsUnicode(false);

            modelBuilder.Entity<rank>()
                .Property(e => e.season_id)
                .IsUnicode(false);

            modelBuilder.Entity<round>()
                .Property(e => e.id)
                .IsUnicode(false);

            modelBuilder.Entity<round>()
                .Property(e => e.tournament_id)
                .IsUnicode(false);

            modelBuilder.Entity<round>()
                .HasMany(e => e.matches)
                .WithOptional(e => e.round)
                .HasForeignKey(e => e.round_id);

            modelBuilder.Entity<round>()
                .HasMany(e => e.season_round)
                .WithOptional(e => e.round)
                .HasForeignKey(e => e.idx_round_id);

            modelBuilder.Entity<season>()
                .Property(e => e.id)
                .IsUnicode(false);

            modelBuilder.Entity<season>()
                .Property(e => e.tournamnet_id)
                .IsUnicode(false);

            modelBuilder.Entity<season>()
                .HasMany(e => e.matches)
                .WithOptional(e => e.season)
                .HasForeignKey(e => e.season_id);

            modelBuilder.Entity<season>()
                .HasMany(e => e.ranks)
                .WithOptional(e => e.season)
                .HasForeignKey(e => e.season_id);

            modelBuilder.Entity<season>()
                .HasMany(e => e.season_round)
                .WithOptional(e => e.season)
                .HasForeignKey(e => e.idx_season_id);

            modelBuilder.Entity<season>()
                .HasMany(e => e.season_club)
                .WithOptional(e => e.season)
                .HasForeignKey(e => e.idx_season_id);

            modelBuilder.Entity<season_club>()
                .Property(e => e.idx_season_id)
                .IsUnicode(false);

            modelBuilder.Entity<season_club>()
                .Property(e => e.idx_fooballClub_id)
                .IsUnicode(false);

            modelBuilder.Entity<season_round>()
                .Property(e => e.idx_season_id)
                .IsUnicode(false);

            modelBuilder.Entity<season_round>()
                .Property(e => e.idx_round_id)
                .IsUnicode(false);

            modelBuilder.Entity<system_config>()
                .Property(e => e.id)
                .IsUnicode(false);

            modelBuilder.Entity<system_config>()
                .Property(e => e.type)
                .IsUnicode(false);

            modelBuilder.Entity<tag>()
                .Property(e => e.id)
                .IsUnicode(false);

            modelBuilder.Entity<tag>()
                .HasMany(e => e.content_tag)
                .WithOptional(e => e.tag)
                .HasForeignKey(e => e.idx_tag_id);

            modelBuilder.Entity<tournament>()
                .Property(e => e.id)
                .IsUnicode(false);

            modelBuilder.Entity<tournament>()
                .HasMany(e => e.rounds)
                .WithOptional(e => e.tournament)
                .HasForeignKey(e => e.tournament_id);

            modelBuilder.Entity<tournament>()
                .HasMany(e => e.seasons)
                .WithOptional(e => e.tournament)
                .HasForeignKey(e => e.tournamnet_id);

            modelBuilder.Entity<user_credential>()
                .Property(e => e.idx_user_group_id)
                .IsUnicode(false);

            modelBuilder.Entity<user_credential>()
                .Property(e => e.idx_user_role_id)
                .IsUnicode(false);

            modelBuilder.Entity<user_group>()
                .Property(e => e.id)
                .IsUnicode(false);

            modelBuilder.Entity<user_group>()
                .HasMany(e => e.user_credential)
                .WithRequired(e => e.user_group)
                .HasForeignKey(e => e.idx_user_group_id);

            modelBuilder.Entity<user_group>()
                .HasMany(e => e.user_log)
                .WithOptional(e => e.user_group)
                .HasForeignKey(e => e.user_group_id);

            modelBuilder.Entity<user_log>()
                .Property(e => e.name_log)
                .IsUnicode(false);

            modelBuilder.Entity<user_log>()
                .Property(e => e.password_log)
                .IsUnicode(false);

            modelBuilder.Entity<user_log>()
                .Property(e => e.phone)
                .IsUnicode(false);

            modelBuilder.Entity<user_log>()
                .Property(e => e.user_group_id)
                .IsUnicode(false);

            modelBuilder.Entity<user_log>()
                .Property(e => e.created_by)
                .IsUnicode(false);

            modelBuilder.Entity<user_log>()
                .Property(e => e.modified_by)
                .IsUnicode(false);

            modelBuilder.Entity<user_role>()
                .Property(e => e.id)
                .IsUnicode(false);

            modelBuilder.Entity<user_role>()
                .HasMany(e => e.user_credential)
                .WithOptional(e => e.user_role)
                .HasForeignKey(e => e.idx_user_role_id)
                .WillCascadeOnDelete();
        }
    }
}
