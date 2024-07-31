.class public final Lorg/catrobat/catroid/db/AppDatabase_Impl;
.super Lorg/catrobat/catroid/db/AppDatabase;
.source "AppDatabase_Impl.java"


# instance fields
.field private volatile _featuredProjectDao:Lorg/catrobat/catroid/db/FeaturedProjectDao;

.field private volatile _projectsCategoryDao:Lorg/catrobat/catroid/db/ProjectsCategoryDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/catrobat/catroid/db/AppDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/db/AppDatabase_Impl;

    .line 28
    iget-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/db/AppDatabase_Impl;

    .line 28
    iget-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/catrobat/catroid/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/db/AppDatabase_Impl;

    .line 28
    iget-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/db/AppDatabase_Impl;

    .line 28
    iget-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/db/AppDatabase_Impl;

    .line 28
    iget-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lorg/catrobat/catroid/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/db/AppDatabase_Impl;

    .line 28
    iget-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lorg/catrobat/catroid/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/db/AppDatabase_Impl;

    .line 28
    iget-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lorg/catrobat/catroid/db/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/db/AppDatabase_Impl;
    .param p1, "x1"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 28
    iput-object p1, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Lorg/catrobat/catroid/db/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/db/AppDatabase_Impl;
    .param p1, "x1"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 28
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/db/AppDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Lorg/catrobat/catroid/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/db/AppDatabase_Impl;

    .line 28
    iget-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lorg/catrobat/catroid/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/db/AppDatabase_Impl;

    .line 28
    iget-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    .line 163
    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-super {p0}, Lorg/catrobat/catroid/db/AppDatabase;->assertNotMainThread()V

    .line 164
    invoke-super {p0}, Lorg/catrobat/catroid/db/AppDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 166
    .local v2, "_db":Landroidx/sqlite/db/SupportSQLiteDatabase;
    :try_start_0
    invoke-super {p0}, Lorg/catrobat/catroid/db/AppDatabase;->beginTransaction()V

    .line 167
    const-string v3, "DELETE FROM `featured_project`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    const-string v3, "DELETE FROM `project_category`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    const-string v3, "DELETE FROM `project_response`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 170
    invoke-super {p0}, Lorg/catrobat/catroid/db/AppDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-super {p0}, Lorg/catrobat/catroid/db/AppDatabase;->endTransaction()V

    .line 173
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 174
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void

    .line 172
    :catchall_0
    move-exception v3

    invoke-super {p0}, Lorg/catrobat/catroid/db/AppDatabase;->endTransaction()V

    .line 173
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 174
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 6

    .line 156
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 157
    .local v0, "_shadowTablesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v2

    .line 158
    .local v1, "_viewTables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v2, Landroidx/room/InvalidationTracker;

    const-string v3, "featured_project"

    const-string v4, "project_category"

    const-string v5, "project_response"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v2
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .param p1, "configuration"    # Landroidx/room/DatabaseConfiguration;

    .line 35
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lorg/catrobat/catroid/db/AppDatabase_Impl$1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/db/AppDatabase_Impl$1;-><init>(Lorg/catrobat/catroid/db/AppDatabase_Impl;I)V

    const-string v2, "c60ebf67428479ff4619d56d1eb30d08"

    const-string v3, "e1fa942ed1621eaa158e06aa895679d7"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v0, "_openCallback":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 147
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 148
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v1

    .line 150
    .local v1, "_sqliteConfig":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    .line 151
    .local v2, "_helper":Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    return-object v2
.end method

.method public featuredProjectDao()Lorg/catrobat/catroid/db/FeaturedProjectDao;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->_featuredProjectDao:Lorg/catrobat/catroid/db/FeaturedProjectDao;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->_featuredProjectDao:Lorg/catrobat/catroid/db/FeaturedProjectDao;

    return-object v0

    .line 193
    :cond_0
    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->_featuredProjectDao:Lorg/catrobat/catroid/db/FeaturedProjectDao;

    if-nez v0, :cond_1

    .line 195
    new-instance v0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->_featuredProjectDao:Lorg/catrobat/catroid/db/FeaturedProjectDao;

    .line 197
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->_featuredProjectDao:Lorg/catrobat/catroid/db/FeaturedProjectDao;

    monitor-exit p0

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v0, "_typeConvertersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/util/List<Ljava/lang/Class<*>;>;>;"
    const-class v1, Lorg/catrobat/catroid/db/FeaturedProjectDao;

    invoke-static {}, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-class v1, Lorg/catrobat/catroid/db/ProjectsCategoryDao;

    invoke-static {}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-object v0
.end method

.method public projectCategoryDao()Lorg/catrobat/catroid/db/ProjectsCategoryDao;
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->_projectsCategoryDao:Lorg/catrobat/catroid/db/ProjectsCategoryDao;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->_projectsCategoryDao:Lorg/catrobat/catroid/db/ProjectsCategoryDao;

    return-object v0

    .line 207
    :cond_0
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->_projectsCategoryDao:Lorg/catrobat/catroid/db/ProjectsCategoryDao;

    if-nez v0, :cond_1

    .line 209
    new-instance v0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->_projectsCategoryDao:Lorg/catrobat/catroid/db/ProjectsCategoryDao;

    .line 211
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/db/AppDatabase_Impl;->_projectsCategoryDao:Lorg/catrobat/catroid/db/ProjectsCategoryDao;

    monitor-exit p0

    return-object v0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
