.class Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "FeaturedProjectDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lorg/catrobat/catroid/retrofit/models/FeaturedProject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl$1;->this$0:Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lorg/catrobat/catroid/retrofit/models/FeaturedProject;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/catrobat/catroid/retrofit/models/FeaturedProject;)V

    return-void
.end method

.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/catrobat/catroid/retrofit/models/FeaturedProject;)V
    .locals 2
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lorg/catrobat/catroid/retrofit/models/FeaturedProject;

    .line 42
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/FeaturedProject;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 43
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/FeaturedProject;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 47
    :goto_0
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/FeaturedProject;->getProject_id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 48
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/FeaturedProject;->getProject_id()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 52
    :goto_1
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/FeaturedProject;->getProject_url()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 53
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/FeaturedProject;->getProject_url()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 57
    :goto_2
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/FeaturedProject;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 58
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 60
    :cond_3
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/FeaturedProject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 62
    :goto_3
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/FeaturedProject;->getAuthor()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 63
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 65
    :cond_4
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/FeaturedProject;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 67
    :goto_4
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/FeaturedProject;->getFeatured_image()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_5

    .line 68
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 70
    :cond_5
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/FeaturedProject;->getFeatured_image()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 72
    :goto_5
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "INSERT OR REPLACE INTO `featured_project` (`id`,`project_id`,`project_url`,`name`,`author`,`featured_image`) VALUES (?,?,?,?,?,?)"

    return-object v0
.end method
