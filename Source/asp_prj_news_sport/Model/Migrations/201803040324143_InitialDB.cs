namespace Model.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialDB : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.advertisement_position",
                c => new
                    {
                        id = c.String(nullable: false, maxLength: 20, unicode: false),
                        name = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.advertisement",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        url_image = c.String(nullable: false, maxLength: 250),
                        url_source = c.String(maxLength: 250, unicode: false),
                        click_count = c.Int(nullable: false),
                        description_ad = c.String(maxLength: 500),
                        display_order = c.Int(nullable: false),
                        advertisement_position_id = c.String(maxLength: 20, unicode: false),
                        created_at = c.DateTime(),
                        created_by = c.String(maxLength: 50, unicode: false),
                        modified_at = c.DateTime(),
                        modified_by = c.String(maxLength: 50, unicode: false),
                        is_active = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.advertisement_position", t => t.advertisement_position_id)
                .Index(t => t.advertisement_position_id);
            
            CreateTable(
                "dbo.content_category",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        name = c.String(maxLength: 50),
                        meta_title = c.String(maxLength: 250, unicode: false),
                        display_order = c.Int(nullable: false),
                        seo_title = c.String(maxLength: 250),
                        created_at = c.DateTime(),
                        created_by = c.String(maxLength: 50, unicode: false),
                        modified_at = c.DateTime(),
                        modified_by = c.String(maxLength: 50, unicode: false),
                        meta_keyword = c.String(maxLength: 250),
                        meta_description = c.String(maxLength: 500),
                        is_active = c.Boolean(nullable: false),
                        is_showhome = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.content",
                c => new
                    {
                        id = c.Long(nullable: false, identity: true),
                        name = c.String(nullable: false, maxLength: 250),
                        meta_title = c.String(maxLength: 250, unicode: false),
                        description_content = c.String(maxLength: 500),
                        url_image = c.String(nullable: false, maxLength: 250),
                        detail = c.String(storeType: "ntext"),
                        content_category_id = c.Int(),
                        view_count = c.Int(nullable: false),
                        share_count = c.Int(nullable: false),
                        tag = c.String(maxLength: 500),
                        seo_title = c.String(maxLength: 250),
                        created_at = c.DateTime(),
                        created_by = c.String(maxLength: 50, unicode: false),
                        modified_at = c.DateTime(),
                        modified_by = c.String(maxLength: 50, unicode: false),
                        meta_keyword = c.String(maxLength: 250),
                        meta_description = c.String(maxLength: 500),
                        is_active = c.Boolean(nullable: false),
                        is_top_hot = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.content_category", t => t.content_category_id)
                .Index(t => t.content_category_id);
            
            CreateTable(
                "dbo.content_tag",
                c => new
                    {
                        id = c.Long(nullable: false, identity: true),
                        idx_content_id = c.Long(),
                        idx_tag_id = c.String(maxLength: 50, unicode: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.tag", t => t.idx_tag_id)
                .ForeignKey("dbo.content", t => t.idx_content_id, cascadeDelete: true)
                .Index(t => t.idx_content_id)
                .Index(t => t.idx_tag_id);
            
            CreateTable(
                "dbo.tag",
                c => new
                    {
                        id = c.String(nullable: false, maxLength: 50, unicode: false),
                        name = c.String(maxLength: 250),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.info",
                c => new
                    {
                        id = c.String(nullable: false, maxLength: 50, unicode: false),
                        name = c.String(maxLength: 250),
                        meta_title = c.String(maxLength: 250, unicode: false),
                        detail = c.String(storeType: "ntext"),
                        seo_title = c.String(maxLength: 250),
                        created_at = c.DateTime(),
                        created_by = c.String(maxLength: 50, unicode: false),
                        modified_at = c.DateTime(),
                        modified_by = c.String(maxLength: 50, unicode: false),
                        meta_keyword = c.String(maxLength: 250),
                        meta_description = c.String(maxLength: 500),
                        is_active = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.menu_type",
                c => new
                    {
                        id = c.String(nullable: false, maxLength: 128),
                        display_order = c.Int(nullable: false),
                        name = c.String(maxLength: 20, unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.menu",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        name = c.String(maxLength: 50),
                        url = c.String(maxLength: 200),
                        target = c.String(maxLength: 20),
                        display_order = c.Int(nullable: false),
                        is_active = c.Boolean(nullable: false),
                        menu_type_id = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.menu_type", t => t.menu_type_id)
                .Index(t => t.menu_type_id);
            
            CreateTable(
                "dbo.sysdiagrams",
                c => new
                    {
                        diagram_id = c.Int(nullable: false, identity: true),
                        name = c.String(nullable: false, maxLength: 128),
                        principal_id = c.Int(nullable: false),
                        version = c.Int(),
                        definition = c.Binary(),
                    })
                .PrimaryKey(t => t.diagram_id);
            
            CreateTable(
                "dbo.system_config",
                c => new
                    {
                        id = c.String(nullable: false, maxLength: 50, unicode: false),
                        name = c.String(maxLength: 50),
                        type = c.String(maxLength: 50, unicode: false),
                        value = c.String(maxLength: 250),
                        is_active = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.user_credential",
                c => new
                    {
                        id = c.Long(nullable: false, identity: true),
                        idx_user_group_id = c.String(nullable: false, maxLength: 20, unicode: false),
                        idx_user_role_id = c.String(maxLength: 50, unicode: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.user_group", t => t.idx_user_group_id, cascadeDelete: true)
                .ForeignKey("dbo.user_role", t => t.idx_user_role_id, cascadeDelete: true)
                .Index(t => t.idx_user_group_id)
                .Index(t => t.idx_user_role_id);
            
            CreateTable(
                "dbo.user_group",
                c => new
                    {
                        id = c.String(nullable: false, maxLength: 20, unicode: false),
                        name = c.String(maxLength: 50),
                        is_active = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.user_log",
                c => new
                    {
                        id = c.Long(nullable: false, identity: true),
                        name_log = c.String(nullable: false, maxLength: 50, unicode: false),
                        password_log = c.String(nullable: false, maxLength: 32, unicode: false),
                        name_person = c.String(maxLength: 50),
                        address_current = c.String(maxLength: 100),
                        email = c.String(nullable: false, maxLength: 100),
                        phone = c.String(nullable: false, maxLength: 20, unicode: false),
                        user_group_id = c.String(maxLength: 20, unicode: false),
                        created_at = c.DateTime(),
                        created_by = c.String(maxLength: 50, unicode: false),
                        modified_at = c.DateTime(),
                        modified_by = c.String(maxLength: 50, unicode: false),
                        is_active = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.user_group", t => t.user_group_id)
                .Index(t => t.user_group_id);
            
            CreateTable(
                "dbo.user_role",
                c => new
                    {
                        id = c.String(nullable: false, maxLength: 50, unicode: false),
                        name = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.user_credential", "idx_user_role_id", "dbo.user_role");
            DropForeignKey("dbo.user_log", "user_group_id", "dbo.user_group");
            DropForeignKey("dbo.user_credential", "idx_user_group_id", "dbo.user_group");
            DropForeignKey("dbo.menu", "menu_type_id", "dbo.menu_type");
            DropForeignKey("dbo.content", "content_category_id", "dbo.content_category");
            DropForeignKey("dbo.content_tag", "idx_content_id", "dbo.content");
            DropForeignKey("dbo.content_tag", "idx_tag_id", "dbo.tag");
            DropForeignKey("dbo.advertisement", "advertisement_position_id", "dbo.advertisement_position");
            DropIndex("dbo.user_log", new[] { "user_group_id" });
            DropIndex("dbo.user_credential", new[] { "idx_user_role_id" });
            DropIndex("dbo.user_credential", new[] { "idx_user_group_id" });
            DropIndex("dbo.menu", new[] { "menu_type_id" });
            DropIndex("dbo.content_tag", new[] { "idx_tag_id" });
            DropIndex("dbo.content_tag", new[] { "idx_content_id" });
            DropIndex("dbo.content", new[] { "content_category_id" });
            DropIndex("dbo.advertisement", new[] { "advertisement_position_id" });
            DropTable("dbo.user_role");
            DropTable("dbo.user_log");
            DropTable("dbo.user_group");
            DropTable("dbo.user_credential");
            DropTable("dbo.system_config");
            DropTable("dbo.sysdiagrams");
            DropTable("dbo.menu");
            DropTable("dbo.menu_type");
            DropTable("dbo.info");
            DropTable("dbo.tag");
            DropTable("dbo.content_tag");
            DropTable("dbo.content");
            DropTable("dbo.content_category");
            DropTable("dbo.advertisement");
            DropTable("dbo.advertisement_position");
        }
    }
}
