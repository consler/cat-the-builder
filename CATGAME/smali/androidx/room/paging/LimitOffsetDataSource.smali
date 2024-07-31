.class public abstract Landroidx/room/paging/LimitOffsetDataSource;
.super Landroidx/paging/PositionalDataSource;
.source "LimitOffsetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/paging/PositionalDataSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mCountQuery:Ljava/lang/String;

.field private final mDb:Landroidx/room/RoomDatabase;

.field private final mInTransaction:Z

.field private final mLimitOffsetQuery:Ljava/lang/String;

.field private final mObserver:Landroidx/room/InvalidationTracker$Observer;

.field private final mRegisteredObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSourceQuery:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method protected varargs constructor <init>(Landroidx/room/RoomDatabase;Landroidx/room/RoomSQLiteQuery;ZZ[Ljava/lang/String;)V
    .locals 2
    .param p1, "db"    # Landroidx/room/RoomDatabase;
    .param p2, "query"    # Landroidx/room/RoomSQLiteQuery;
    .param p3, "inTransaction"    # Z
    .param p4, "registerObserverImmediately"    # Z
    .param p5, "tables"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "db",
            "query",
            "inTransaction",
            "registerObserverImmediately",
            "tables"
        }
    .end annotation

    .line 94
    .local p0, "this":Landroidx/room/paging/LimitOffsetDataSource;, "Landroidx/room/paging/LimitOffsetDataSource<TT;>;"
    invoke-direct {p0}, Landroidx/paging/PositionalDataSource;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/paging/LimitOffsetDataSource;->mRegisteredObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    iput-object p1, p0, Landroidx/room/paging/LimitOffsetDataSource;->mDb:Landroidx/room/RoomDatabase;

    .line 96
    iput-object p2, p0, Landroidx/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroidx/room/RoomSQLiteQuery;

    .line 97
    iput-boolean p3, p0, Landroidx/room/paging/LimitOffsetDataSource;->mInTransaction:Z

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT COUNT(*) FROM ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/paging/LimitOffsetDataSource;->mCountQuery:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ) LIMIT ? OFFSET ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/paging/LimitOffsetDataSource;->mLimitOffsetQuery:Ljava/lang/String;

    .line 100
    new-instance v0, Landroidx/room/paging/LimitOffsetDataSource$1;

    invoke-direct {v0, p0, p5}, Landroidx/room/paging/LimitOffsetDataSource$1;-><init>(Landroidx/room/paging/LimitOffsetDataSource;[Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/room/paging/LimitOffsetDataSource;->mObserver:Landroidx/room/InvalidationTracker$Observer;

    .line 106
    if-eqz p4, :cond_0

    .line 107
    invoke-direct {p0}, Landroidx/room/paging/LimitOffsetDataSource;->registerObserverIfNecessary()V

    .line 109
    :cond_0
    return-void
.end method

.method protected varargs constructor <init>(Landroidx/room/RoomDatabase;Landroidx/room/RoomSQLiteQuery;Z[Ljava/lang/String;)V
    .locals 6
    .param p1, "db"    # Landroidx/room/RoomDatabase;
    .param p2, "query"    # Landroidx/room/RoomSQLiteQuery;
    .param p3, "inTransaction"    # Z
    .param p4, "tables"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "db",
            "query",
            "inTransaction",
            "tables"
        }
    .end annotation

    .line 86
    .local p0, "this":Landroidx/room/paging/LimitOffsetDataSource;, "Landroidx/room/paging/LimitOffsetDataSource<TT;>;"
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/room/paging/LimitOffsetDataSource;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/RoomSQLiteQuery;ZZ[Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method protected varargs constructor <init>(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZZ[Ljava/lang/String;)V
    .locals 6
    .param p1, "db"    # Landroidx/room/RoomDatabase;
    .param p2, "query"    # Landroidx/sqlite/db/SupportSQLiteQuery;
    .param p3, "inTransaction"    # Z
    .param p4, "registerObserverImmediately"    # Z
    .param p5, "tables"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "db",
            "query",
            "inTransaction",
            "registerObserverImmediately",
            "tables"
        }
    .end annotation

    .line 77
    .local p0, "this":Landroidx/room/paging/LimitOffsetDataSource;, "Landroidx/room/paging/LimitOffsetDataSource<TT;>;"
    invoke-static {p2}, Landroidx/room/RoomSQLiteQuery;->copyFrom(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/room/paging/LimitOffsetDataSource;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/RoomSQLiteQuery;ZZ[Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected varargs constructor <init>(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z[Ljava/lang/String;)V
    .locals 1
    .param p1, "db"    # Landroidx/room/RoomDatabase;
    .param p2, "query"    # Landroidx/sqlite/db/SupportSQLiteQuery;
    .param p3, "inTransaction"    # Z
    .param p4, "tables"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "db",
            "query",
            "inTransaction",
            "tables"
        }
    .end annotation

    .line 68
    .local p0, "this":Landroidx/room/paging/LimitOffsetDataSource;, "Landroidx/room/paging/LimitOffsetDataSource<TT;>;"
    invoke-static {p2}, Landroidx/room/RoomSQLiteQuery;->copyFrom(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Landroidx/room/paging/LimitOffsetDataSource;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/RoomSQLiteQuery;Z[Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private getSQLiteQuery(II)Landroidx/room/RoomSQLiteQuery;
    .locals 4
    .param p1, "startPosition"    # I
    .param p2, "loadCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startPosition",
            "loadCount"
        }
    .end annotation

    .line 232
    .local p0, "this":Landroidx/room/paging/LimitOffsetDataSource;, "Landroidx/room/paging/LimitOffsetDataSource<TT;>;"
    iget-object v0, p0, Landroidx/room/paging/LimitOffsetDataSource;->mLimitOffsetQuery:Ljava/lang/String;

    iget-object v1, p0, Landroidx/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroidx/room/RoomSQLiteQuery;

    .line 233
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->getArgCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    .line 232
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 234
    .local v0, "sqLiteQuery":Landroidx/room/RoomSQLiteQuery;
    iget-object v1, p0, Landroidx/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->copyArgumentsFrom(Landroidx/room/RoomSQLiteQuery;)V

    .line 235
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->getArgCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 236
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->getArgCount()I

    move-result v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 237
    return-object v0
.end method

.method private registerObserverIfNecessary()V
    .locals 3

    .line 112
    .local p0, "this":Landroidx/room/paging/LimitOffsetDataSource;, "Landroidx/room/paging/LimitOffsetDataSource<TT;>;"
    iget-object v0, p0, Landroidx/room/paging/LimitOffsetDataSource;->mRegisteredObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Landroidx/room/paging/LimitOffsetDataSource;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/paging/LimitOffsetDataSource;->mObserver:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v0, v1}, Landroidx/room/InvalidationTracker;->addWeakObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract convertRows(Landroid/database/Cursor;)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cursor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public countItems()I
    .locals 4

    .line 124
    .local p0, "this":Landroidx/room/paging/LimitOffsetDataSource;, "Landroidx/room/paging/LimitOffsetDataSource<TT;>;"
    invoke-direct {p0}, Landroidx/room/paging/LimitOffsetDataSource;->registerObserverIfNecessary()V

    .line 125
    iget-object v0, p0, Landroidx/room/paging/LimitOffsetDataSource;->mCountQuery:Ljava/lang/String;

    iget-object v1, p0, Landroidx/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroidx/room/RoomSQLiteQuery;

    .line 126
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->getArgCount()I

    move-result v1

    .line 125
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 127
    .local v0, "sqLiteQuery":Landroidx/room/RoomSQLiteQuery;
    iget-object v1, p0, Landroidx/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->copyArgumentsFrom(Landroidx/room/RoomSQLiteQuery;)V

    .line 128
    iget-object v1, p0, Landroidx/room/paging/LimitOffsetDataSource;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    .line 130
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 131
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 136
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 131
    return v2

    .line 133
    :cond_0
    nop

    .line 135
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 136
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 133
    return v3

    .line 135
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 136
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 137
    throw v2
.end method

.method public isInvalid()Z
    .locals 1

    .line 142
    .local p0, "this":Landroidx/room/paging/LimitOffsetDataSource;, "Landroidx/room/paging/LimitOffsetDataSource<TT;>;"
    invoke-direct {p0}, Landroidx/room/paging/LimitOffsetDataSource;->registerObserverIfNecessary()V

    .line 143
    iget-object v0, p0, Landroidx/room/paging/LimitOffsetDataSource;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/InvalidationTracker;->refreshVersionsSync()V

    .line 144
    invoke-super {p0}, Landroidx/paging/PositionalDataSource;->isInvalid()Z

    move-result v0

    return v0
.end method

.method public loadInitial(Landroidx/paging/PositionalDataSource$LoadInitialParams;Landroidx/paging/PositionalDataSource$LoadInitialCallback;)V
    .locals 8
    .param p1, "params"    # Landroidx/paging/PositionalDataSource$LoadInitialParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PositionalDataSource$LoadInitialParams;",
            "Landroidx/paging/PositionalDataSource$LoadInitialCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 155
    .local p0, "this":Landroidx/room/paging/LimitOffsetDataSource;, "Landroidx/room/paging/LimitOffsetDataSource<TT;>;"
    .local p2, "callback":Landroidx/paging/PositionalDataSource$LoadInitialCallback;, "Landroidx/paging/PositionalDataSource$LoadInitialCallback<TT;>;"
    invoke-direct {p0}, Landroidx/room/paging/LimitOffsetDataSource;->registerObserverIfNecessary()V

    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 158
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 159
    .local v1, "firstLoadPosition":I
    const/4 v2, 0x0

    .line 160
    .local v2, "sqLiteQuery":Landroidx/room/RoomSQLiteQuery;
    const/4 v3, 0x0

    .line 161
    .local v3, "cursor":Landroid/database/Cursor;
    iget-object v4, p0, Landroidx/room/paging/LimitOffsetDataSource;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 163
    :try_start_0
    invoke-virtual {p0}, Landroidx/room/paging/LimitOffsetDataSource;->countItems()I

    move-result v4

    .line 164
    .local v4, "totalCount":I
    if-eqz v4, :cond_0

    .line 166
    invoke-static {p1, v4}, Landroidx/room/paging/LimitOffsetDataSource;->computeInitialLoadPosition(Landroidx/paging/PositionalDataSource$LoadInitialParams;I)I

    move-result v5

    move v1, v5

    .line 167
    invoke-static {p1, v1, v4}, Landroidx/room/paging/LimitOffsetDataSource;->computeInitialLoadSize(Landroidx/paging/PositionalDataSource$LoadInitialParams;II)I

    move-result v5

    .line 169
    .local v5, "firstLoadSize":I
    invoke-direct {p0, v1, v5}, Landroidx/room/paging/LimitOffsetDataSource;->getSQLiteQuery(II)Landroidx/room/RoomSQLiteQuery;

    move-result-object v6

    move-object v2, v6

    .line 170
    iget-object v6, p0, Landroidx/room/paging/LimitOffsetDataSource;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {v6, v2}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v6

    move-object v3, v6

    .line 171
    invoke-virtual {p0, v3}, Landroidx/room/paging/LimitOffsetDataSource;->convertRows(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v6

    .line 172
    .local v6, "rows":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v7, p0, Landroidx/room/paging/LimitOffsetDataSource;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    move-object v0, v6

    .line 176
    .end local v5    # "firstLoadSize":I
    .end local v6    # "rows":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    if-eqz v3, :cond_1

    .line 177
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_1
    iget-object v5, p0, Landroidx/room/paging/LimitOffsetDataSource;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 180
    if-eqz v2, :cond_2

    .line 181
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 185
    :cond_2
    invoke-virtual {p2, v0, v1, v4}, Landroidx/paging/PositionalDataSource$LoadInitialCallback;->onResult(Ljava/util/List;II)V

    .line 186
    return-void

    .line 176
    .end local v4    # "totalCount":I
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    .line 177
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_3
    iget-object v5, p0, Landroidx/room/paging/LimitOffsetDataSource;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 180
    if-eqz v2, :cond_4

    .line 181
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 183
    :cond_4
    throw v4
.end method

.method public loadRange(II)Ljava/util/List;
    .locals 4
    .param p1, "startPosition"    # I
    .param p2, "loadCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startPosition",
            "loadCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 202
    .local p0, "this":Landroidx/room/paging/LimitOffsetDataSource;, "Landroidx/room/paging/LimitOffsetDataSource<TT;>;"
    invoke-direct {p0, p1, p2}, Landroidx/room/paging/LimitOffsetDataSource;->getSQLiteQuery(II)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 203
    .local v0, "sqLiteQuery":Landroidx/room/RoomSQLiteQuery;
    iget-boolean v1, p0, Landroidx/room/paging/LimitOffsetDataSource;->mInTransaction:Z

    if-eqz v1, :cond_2

    .line 204
    iget-object v1, p0, Landroidx/room/paging/LimitOffsetDataSource;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 205
    const/4 v1, 0x0

    .line 208
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Landroidx/room/paging/LimitOffsetDataSource;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {v2, v0}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 209
    invoke-virtual {p0, v1}, Landroidx/room/paging/LimitOffsetDataSource;->convertRows(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    .line 210
    .local v2, "rows":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v3, p0, Landroidx/room/paging/LimitOffsetDataSource;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    nop

    .line 213
    if-eqz v1, :cond_0

    .line 214
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_0
    iget-object v3, p0, Landroidx/room/paging/LimitOffsetDataSource;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 217
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 211
    return-object v2

    .line 213
    .end local v2    # "rows":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 214
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_1
    iget-object v3, p0, Landroidx/room/paging/LimitOffsetDataSource;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 217
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 218
    throw v2

    .line 220
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    iget-object v1, p0, Landroidx/room/paging/LimitOffsetDataSource;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    .line 223
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0, v1}, Landroidx/room/paging/LimitOffsetDataSource;->convertRows(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 226
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 223
    return-object v2

    .line 225
    :catchall_1
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 226
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 227
    throw v2
.end method

.method public loadRange(Landroidx/paging/PositionalDataSource$LoadRangeParams;Landroidx/paging/PositionalDataSource$LoadRangeCallback;)V
    .locals 2
    .param p1, "params"    # Landroidx/paging/PositionalDataSource$LoadRangeParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PositionalDataSource$LoadRangeParams;",
            "Landroidx/paging/PositionalDataSource$LoadRangeCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 191
    .local p0, "this":Landroidx/room/paging/LimitOffsetDataSource;, "Landroidx/room/paging/LimitOffsetDataSource<TT;>;"
    .local p2, "callback":Landroidx/paging/PositionalDataSource$LoadRangeCallback;, "Landroidx/paging/PositionalDataSource$LoadRangeCallback<TT;>;"
    iget v0, p1, Landroidx/paging/PositionalDataSource$LoadRangeParams;->startPosition:I

    iget v1, p1, Landroidx/paging/PositionalDataSource$LoadRangeParams;->loadSize:I

    invoke-virtual {p0, v0, v1}, Landroidx/room/paging/LimitOffsetDataSource;->loadRange(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/paging/PositionalDataSource$LoadRangeCallback;->onResult(Ljava/util/List;)V

    .line 192
    return-void
.end method
