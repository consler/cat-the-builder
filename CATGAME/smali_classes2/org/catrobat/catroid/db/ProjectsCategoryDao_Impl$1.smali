.class Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "ProjectsCategoryDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 47
    iput-object p1, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$1;->this$0:Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;)V

    return-void
.end method

.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;)V
    .locals 2
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;

    .line 55
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 56
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 60
    :goto_0
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 61
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 65
    :goto_1
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "INSERT OR REPLACE INTO `project_category` (`type`,`name`) VALUES (?,?)"

    return-object v0
.end method
