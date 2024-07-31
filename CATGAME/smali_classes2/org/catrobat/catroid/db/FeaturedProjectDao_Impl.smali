.class public final Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;
.super Lorg/catrobat/catroid/db/FeaturedProjectDao;
.source "FeaturedProjectDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfFeaturedProject:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lorg/catrobat/catroid/retrofit/models/FeaturedProject;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;

    .line 32
    invoke-direct {p0}, Lorg/catrobat/catroid/db/FeaturedProjectDao;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 34
    new-instance v0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl$1;-><init>(Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__insertionAdapterOfFeaturedProject:Landroidx/room/EntityInsertionAdapter;

    .line 74
    new-instance v0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl$2;-><init>(Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;

    .line 25
    iget-object v0, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object v0
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAll()V
    .locals 3

    .line 97
    iget-object v0, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 98
    iget-object v0, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 99
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    iget-object v1, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 101
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 102
    iget-object v1, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v1, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 105
    iget-object v1, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 106
    nop

    .line 107
    return-void

    .line 104
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 105
    iget-object v2, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 106
    throw v1
.end method

.method public getFeaturedProjects()Lkotlinx/coroutines/flow/Flow;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/FeaturedProject;",
            ">;>;"
        }
    .end annotation

    .line 111
    const-string v0, "SELECT * FROM featured_project"

    .line 112
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM featured_project"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 113
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v4, "featured_project"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl$3;

    invoke-direct {v5, p0, v1}, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl$3;-><init>(Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v3, v2, v4, v5}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    return-object v2
.end method

.method public insertFeaturedProjects(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/FeaturedProject;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "projects":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/retrofit/models/FeaturedProject;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 86
    iget-object v0, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__insertionAdapterOfFeaturedProject:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 89
    iget-object v0, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 92
    nop

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 92
    throw v0
.end method
