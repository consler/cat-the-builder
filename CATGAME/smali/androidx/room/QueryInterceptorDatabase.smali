.class final Landroidx/room/QueryInterceptorDatabase;
.super Ljava/lang/Object;
.source "QueryInterceptorDatabase.java"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteDatabase;


# instance fields
.field private final mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

.field private final mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

.field private final mQueryCallbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Landroidx/room/RoomDatabase$QueryCallback;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "supportSQLiteDatabase"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .param p2, "queryCallback"    # Landroidx/room/RoomDatabase$QueryCallback;
    .param p3, "queryCallbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "supportSQLiteDatabase",
            "queryCallback",
            "queryCallbackExecutor"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 55
    iput-object p2, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 56
    iput-object p3, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 57
    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 2

    .line 68
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$Z0OvI2-Z3VdTh6bv2YiJeJHMtfU;

    invoke-direct {v1, p0}, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$Z0OvI2-Z3VdTh6bv2YiJeJHMtfU;-><init>(Landroidx/room/QueryInterceptorDatabase;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 71
    return-void
.end method

.method public beginTransactionNonExclusive()V
    .locals 2

    .line 75
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$JeYODuh_dQ67pcyPd7guitIWMEQ;

    invoke-direct {v1, p0}, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$JeYODuh_dQ67pcyPd7guitIWMEQ;-><init>(Landroidx/room/QueryInterceptorDatabase;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 77
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionNonExclusive()V

    .line 78
    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 2
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transactionListener"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$vOm7OPNexrxUEKMVpoGUI8X-XPQ;

    invoke-direct {v1, p0}, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$vOm7OPNexrxUEKMVpoGUI8X-XPQ;-><init>(Landroidx/room/QueryInterceptorDatabase;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 85
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 86
    return-void
.end method

.method public beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 2
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transactionListener"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$r1-mp2ViNyx6ZyQY-L6CqqUtPwQ;

    invoke-direct {v1, p0}, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$r1-mp2ViNyx6ZyQY-L6CqqUtPwQ;-><init>(Landroidx/room/QueryInterceptorDatabase;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 94
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->close()V

    .line 301
    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sql"
        }
    .end annotation

    .line 62
    new-instance v0, Landroidx/room/QueryInterceptorStatement;

    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v1, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    iget-object v2, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    iget-object v3, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, p1, v3}, Landroidx/room/QueryInterceptorStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteStatement;Landroidx/room/RoomDatabase$QueryCallback;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "table",
            "whereClause",
            "whereArgs"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public disableWriteAheadLogging()V
    .locals 1

    .line 278
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->disableWriteAheadLogging()V

    .line 279
    return-void
.end method

.method public enableWriteAheadLogging()Z
    .locals 1

    .line 272
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->enableWriteAheadLogging()Z

    move-result v0

    return v0
.end method

.method public endTransaction()V
    .locals 2

    .line 98
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$FfzjNlPeZUqLzQxMHfmjBqizWqA;

    invoke-direct {v1, p0}, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$FfzjNlPeZUqLzQxMHfmjBqizWqA;-><init>(Landroidx/room/QueryInterceptorDatabase;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 100
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 101
    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sql"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$AQmWypxYKMTDEqtcskInY-GWa4w;

    invoke-direct {v1, p0, p1}, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$AQmWypxYKMTDEqtcskInY-GWa4w;-><init>(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 222
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sql",
            "bindArgs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v0, "inputArguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$EAiDr4WGdUirbl0E2iQBRCgF3iE;

    invoke-direct {v2, p0, p1, v0}, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$EAiDr4WGdUirbl0E2iQBRCgF3iE;-><init>(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 230
    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method public getAttachedDbs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumSize()J
    .locals 2

    .line 142
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getMaximumSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPageSize()J
    .locals 2

    .line 152
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getPageSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 132
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getVersion()I

    move-result v0

    return v0
.end method

.method public inTransaction()Z
    .locals 1

    .line 112
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public insert(Ljava/lang/String;ILandroid/content/ContentValues;)J
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "conflictAlgorithm"    # I
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "table",
            "conflictAlgorithm",
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->insert(Ljava/lang/String;ILandroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 1

    .line 295
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result v0

    return v0
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    .line 117
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 240
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 235
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public isWriteAheadLoggingEnabled()Z
    .locals 1

    .line 284
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$beginTransaction$0$QueryInterceptorDatabase()V
    .locals 3

    .line 68
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 68
    const-string v2, "BEGIN EXCLUSIVE TRANSACTION"

    invoke-interface {v0, v2, v1}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$beginTransactionNonExclusive$1$QueryInterceptorDatabase()V
    .locals 3

    .line 75
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 75
    const-string v2, "BEGIN DEFERRED TRANSACTION"

    invoke-interface {v0, v2, v1}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$beginTransactionWithListener$2$QueryInterceptorDatabase()V
    .locals 3

    .line 83
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 83
    const-string v2, "BEGIN EXCLUSIVE TRANSACTION"

    invoke-interface {v0, v2, v1}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$beginTransactionWithListenerNonExclusive$3$QueryInterceptorDatabase()V
    .locals 3

    .line 91
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 91
    const-string v2, "BEGIN DEFERRED TRANSACTION"

    invoke-interface {v0, v2, v1}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$endTransaction$4$QueryInterceptorDatabase()V
    .locals 3

    .line 98
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 98
    const-string v2, "END TRANSACTION"

    invoke-interface {v0, v2, v1}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$execSQL$10$QueryInterceptorDatabase(Ljava/lang/String;)V
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;

    .line 221
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1, v1}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$execSQL$11$QueryInterceptorDatabase(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "inputArguments"    # Ljava/util/List;

    .line 229
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    invoke-interface {v0, p1, p2}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$query$6$QueryInterceptorDatabase(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 163
    invoke-interface {v0, p1, v1}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$query$7$QueryInterceptorDatabase(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "inputArguments"    # Ljava/util/List;

    .line 173
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    invoke-interface {v0, p1, p2}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$query$8$QueryInterceptorDatabase(Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/QueryInterceptorProgram;)V
    .locals 3
    .param p1, "query"    # Landroidx/sqlite/db/SupportSQLiteQuery;
    .param p2, "queryInterceptorProgram"    # Landroidx/room/QueryInterceptorProgram;

    .line 183
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {p2}, Landroidx/room/QueryInterceptorProgram;->getBindArgs()Ljava/util/List;

    move-result-object v2

    .line 183
    invoke-interface {v0, v1, v2}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$query$9$QueryInterceptorDatabase(Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/QueryInterceptorProgram;)V
    .locals 3
    .param p1, "query"    # Landroidx/sqlite/db/SupportSQLiteQuery;
    .param p2, "queryInterceptorProgram"    # Landroidx/room/QueryInterceptorProgram;

    .line 194
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-virtual {p2}, Landroidx/room/QueryInterceptorProgram;->getBindArgs()Ljava/util/List;

    move-result-object v2

    .line 194
    invoke-interface {v0, v1, v2}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$setTransactionSuccessful$5$QueryInterceptorDatabase()V
    .locals 3

    .line 105
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 105
    const-string v2, "TRANSACTION SUCCESSFUL"

    invoke-interface {v0, v2, v1}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public needUpgrade(I)Z
    .locals 1
    .param p1, "newVersion"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newVersion"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->needUpgrade(I)Z

    move-result v0

    return v0
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .locals 3
    .param p1, "query"    # Landroidx/sqlite/db/SupportSQLiteQuery;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    .line 181
    new-instance v0, Landroidx/room/QueryInterceptorProgram;

    invoke-direct {v0}, Landroidx/room/QueryInterceptorProgram;-><init>()V

    .line 182
    .local v0, "queryInterceptorProgram":Landroidx/room/QueryInterceptorProgram;
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteQuery;->bindTo(Landroidx/sqlite/db/SupportSQLiteProgram;)V

    .line 183
    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$COOB8iArYNI30QreNCpToZEujsg;

    invoke-direct {v2, p0, p1, v0}, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$COOB8iArYNI30QreNCpToZEujsg;-><init>(Landroidx/room/QueryInterceptorDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/QueryInterceptorProgram;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 185
    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v1, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 3
    .param p1, "query"    # Landroidx/sqlite/db/SupportSQLiteQuery;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "query",
            "cancellationSignal"
        }
    .end annotation

    .line 192
    new-instance v0, Landroidx/room/QueryInterceptorProgram;

    invoke-direct {v0}, Landroidx/room/QueryInterceptorProgram;-><init>()V

    .line 193
    .local v0, "queryInterceptorProgram":Landroidx/room/QueryInterceptorProgram;
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteQuery;->bindTo(Landroidx/sqlite/db/SupportSQLiteProgram;)V

    .line 194
    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$3clm1M6-oq_3_2_5HK3EY2KR8mU;

    invoke-direct {v2, p0, p1, v0}, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$3clm1M6-oq_3_2_5HK3EY2KR8mU;-><init>(Landroidx/room/QueryInterceptorDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/QueryInterceptorProgram;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 196
    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v1, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$9efGQ7F9Dl7IUef2bt0_L2GloSA;

    invoke-direct {v1, p0, p1}, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$9efGQ7F9Dl7IUef2bt0_L2GloSA;-><init>(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 165
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "query",
            "bindArgs"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v0, "inputArguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$mSirGVbzmuLwFcgBUOPgCPEAPgo;

    invoke-direct {v2, p0, p1, v0}, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$mSirGVbzmuLwFcgBUOPgCPEAPgo;-><init>(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 175
    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public setForeignKeyConstraintsEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    .line 268
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locale"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 257
    return-void
.end method

.method public setMaxSqlCacheSize(I)V
    .locals 1
    .param p1, "cacheSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheSize"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setMaxSqlCacheSize(I)V

    .line 262
    return-void
.end method

.method public setMaximumSize(J)J
    .locals 2
    .param p1, "numBytes"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numBytes"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setMaximumSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setPageSize(J)V
    .locals 1
    .param p1, "numBytes"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numBytes"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setPageSize(J)V

    .line 158
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 2

    .line 105
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$h-iFizAxeNml6DHj3f4BZwoQ3tA;

    invoke-direct {v1, p0}, Landroidx/room/-$$Lambda$QueryInterceptorDatabase$h-iFizAxeNml6DHj3f4BZwoQ3tA;-><init>(Landroidx/room/QueryInterceptorDatabase;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 107
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V

    .line 108
    return-void
.end method

.method public setVersion(I)V
    .locals 1
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setVersion(I)V

    .line 138
    return-void
.end method

.method public update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "conflictAlgorithm"    # I
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "whereClause"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "table",
            "conflictAlgorithm",
            "values",
            "whereClause",
            "whereArgs"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely()Z
    .locals 1

    .line 122
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->yieldIfContendedSafely()Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1
    .param p1, "sleepAfterYieldDelay"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sleepAfterYieldDelay"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->mDelegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v0

    return v0
.end method
