.class public Lcom/amitshekhar/server/RequestHandler;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# instance fields
.field private isDbOpened:Z

.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mContext:Landroid/content/Context;

.field private mCustomDatabaseFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDatabaseFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDbFactory:Lcom/amitshekhar/sqlite/DBFactory;

.field private final mGson:Lcom/google/gson/Gson;

.field private mRoomInMemoryDatabases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedDatabase:Ljava/lang/String;

.field private sqLiteDB:Lcom/amitshekhar/sqlite/SQLiteDB;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amitshekhar/sqlite/DBFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbFactory"    # Lcom/amitshekhar/sqlite/DBFactory;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amitshekhar/server/RequestHandler;->mSelectedDatabase:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amitshekhar/server/RequestHandler;->mRoomInMemoryDatabases:Ljava/util/HashMap;

    .line 73
    iput-object p1, p0, Lcom/amitshekhar/server/RequestHandler;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amitshekhar/server/RequestHandler;->mAssets:Landroid/content/res/AssetManager;

    .line 75
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    .line 76
    iput-object p2, p0, Lcom/amitshekhar/server/RequestHandler;->mDbFactory:Lcom/amitshekhar/sqlite/DBFactory;

    .line 77
    return-void
.end method

.method private addTableDataAndGetResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "route"    # Ljava/lang/String;

    .line 317
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 318
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "tableName"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "tableName":Ljava/lang/String;
    const-string v2, "addData"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "updatedData":Ljava/lang/String;
    iget-object v3, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/amitshekhar/server/RequestHandler$1;

    invoke-direct {v4, p0}, Lcom/amitshekhar/server/RequestHandler$1;-><init>(Lcom/amitshekhar/server/RequestHandler;)V

    .line 321
    invoke-virtual {v4}, Lcom/amitshekhar/server/RequestHandler$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 320
    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 322
    .local v3, "rowDataRequests":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/RowDataRequest;>;"
    const-string v4, "APP_SHARED_PREFERENCES"

    iget-object v5, p0, Lcom/amitshekhar/server/RequestHandler;->mSelectedDatabase:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    iget-object v4, p0, Lcom/amitshekhar/server/RequestHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v3}, Lcom/amitshekhar/utils/PrefHelper;->addOrUpdateRow(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lcom/amitshekhar/model/UpdateRowResponse;

    move-result-object v4

    .local v4, "response":Lcom/amitshekhar/model/UpdateRowResponse;
    goto :goto_0

    .line 325
    .end local v4    # "response":Lcom/amitshekhar/model/UpdateRowResponse;
    :cond_0
    iget-object v4, p0, Lcom/amitshekhar/server/RequestHandler;->sqLiteDB:Lcom/amitshekhar/sqlite/SQLiteDB;

    invoke-static {v4, v1, v3}, Lcom/amitshekhar/utils/DatabaseHelper;->addRow(Lcom/amitshekhar/sqlite/SQLiteDB;Ljava/lang/String;Ljava/util/List;)Lcom/amitshekhar/model/UpdateRowResponse;

    move-result-object v4

    .line 327
    .restart local v4    # "response":Lcom/amitshekhar/model/UpdateRowResponse;
    :goto_0
    iget-object v5, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 328
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "tableName":Ljava/lang/String;
    .end local v2    # "updatedData":Ljava/lang/String;
    .end local v3    # "rowDataRequests":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/RowDataRequest;>;"
    .end local v4    # "response":Lcom/amitshekhar/model/UpdateRowResponse;
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    new-instance v1, Lcom/amitshekhar/model/UpdateRowResponse;

    invoke-direct {v1}, Lcom/amitshekhar/model/UpdateRowResponse;-><init>()V

    .line 331
    .local v1, "response":Lcom/amitshekhar/model/UpdateRowResponse;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 332
    iget-object v2, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private closeDatabase()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amitshekhar/server/RequestHandler;->sqLiteDB:Lcom/amitshekhar/sqlite/SQLiteDB;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amitshekhar/sqlite/SQLiteDB;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/amitshekhar/server/RequestHandler;->sqLiteDB:Lcom/amitshekhar/sqlite/SQLiteDB;

    invoke-interface {v0}, Lcom/amitshekhar/sqlite/SQLiteDB;->close()V

    .line 196
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amitshekhar/server/RequestHandler;->sqLiteDB:Lcom/amitshekhar/sqlite/SQLiteDB;

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amitshekhar/server/RequestHandler;->isDbOpened:Z

    .line 198
    return-void
.end method

.method private deleteSelectedDatabaseAndGetResponse()Ljava/lang/String;
    .locals 5

    .line 382
    new-instance v0, Lcom/amitshekhar/model/UpdateRowResponse;

    invoke-direct {v0}, Lcom/amitshekhar/model/UpdateRowResponse;-><init>()V

    .line 384
    .local v0, "response":Lcom/amitshekhar/model/UpdateRowResponse;
    iget-object v1, p0, Lcom/amitshekhar/server/RequestHandler;->mSelectedDatabase:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/amitshekhar/server/RequestHandler;->mDatabaseFiles:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 390
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amitshekhar/server/RequestHandler;->closeDatabase()V

    .line 392
    iget-object v1, p0, Lcom/amitshekhar/server/RequestHandler;->mDatabaseFiles:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/amitshekhar/server/RequestHandler;->mSelectedDatabase:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    .line 393
    .local v1, "dbFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    iput-boolean v3, v0, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 395
    iget-boolean v3, v0, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    if-eqz v3, :cond_1

    .line 396
    iget-object v3, p0, Lcom/amitshekhar/server/RequestHandler;->mDatabaseFiles:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/amitshekhar/server/RequestHandler;->mSelectedDatabase:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v3, p0, Lcom/amitshekhar/server/RequestHandler;->mCustomDatabaseFiles:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/amitshekhar/server/RequestHandler;->mSelectedDatabase:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_1
    iget-object v3, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 401
    .end local v1    # "dbFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 403
    iput-boolean v2, v0, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 404
    iget-object v2, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 385
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    iput-boolean v2, v0, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 386
    iget-object v1, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private deleteTableDataAndGetResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "route"    # Ljava/lang/String;

    .line 362
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 363
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "tableName"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "tableName":Ljava/lang/String;
    const-string v2, "deleteData"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "updatedData":Ljava/lang/String;
    iget-object v3, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/amitshekhar/server/RequestHandler$3;

    invoke-direct {v4, p0}, Lcom/amitshekhar/server/RequestHandler$3;-><init>(Lcom/amitshekhar/server/RequestHandler;)V

    .line 366
    invoke-virtual {v4}, Lcom/amitshekhar/server/RequestHandler$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 365
    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 367
    .local v3, "rowDataRequests":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/RowDataRequest;>;"
    const-string v4, "APP_SHARED_PREFERENCES"

    iget-object v5, p0, Lcom/amitshekhar/server/RequestHandler;->mSelectedDatabase:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 368
    iget-object v4, p0, Lcom/amitshekhar/server/RequestHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v3}, Lcom/amitshekhar/utils/PrefHelper;->deleteRow(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lcom/amitshekhar/model/UpdateRowResponse;

    move-result-object v4

    .local v4, "response":Lcom/amitshekhar/model/UpdateRowResponse;
    goto :goto_0

    .line 370
    .end local v4    # "response":Lcom/amitshekhar/model/UpdateRowResponse;
    :cond_0
    iget-object v4, p0, Lcom/amitshekhar/server/RequestHandler;->sqLiteDB:Lcom/amitshekhar/sqlite/SQLiteDB;

    invoke-static {v4, v1, v3}, Lcom/amitshekhar/utils/DatabaseHelper;->deleteRow(Lcom/amitshekhar/sqlite/SQLiteDB;Ljava/lang/String;Ljava/util/List;)Lcom/amitshekhar/model/UpdateRowResponse;

    move-result-object v4

    .line 372
    .restart local v4    # "response":Lcom/amitshekhar/model/UpdateRowResponse;
    :goto_0
    iget-object v5, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 373
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "tableName":Ljava/lang/String;
    .end local v2    # "updatedData":Ljava/lang/String;
    .end local v3    # "rowDataRequests":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/RowDataRequest;>;"
    .end local v4    # "response":Lcom/amitshekhar/model/UpdateRowResponse;
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 375
    new-instance v1, Lcom/amitshekhar/model/UpdateRowResponse;

    invoke-direct {v1}, Lcom/amitshekhar/model/UpdateRowResponse;-><init>()V

    .line 376
    .local v1, "response":Lcom/amitshekhar/model/UpdateRowResponse;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 377
    iget-object v2, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private executeQueryAndGetResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "route"    # Ljava/lang/String;

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "query":Ljava/lang/String;
    const/4 v1, 0x0

    .line 249
    .local v1, "data":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "?query="

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v3

    .line 253
    :cond_0
    :try_start_1
    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    .line 256
    goto :goto_0

    .line 254
    :catch_0
    move-exception v3

    .line 255
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_5

    .line 259
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "statements":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_5

    .line 263
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "aQuery":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, "first":Ljava/lang/String;
    const-string v7, "select"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "pragma"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    .line 272
    :cond_1
    iget-object v7, p0, Lcom/amitshekhar/server/RequestHandler;->sqLiteDB:Lcom/amitshekhar/sqlite/SQLiteDB;

    invoke-static {v7, v5}, Lcom/amitshekhar/utils/DatabaseHelper;->exec(Lcom/amitshekhar/sqlite/SQLiteDB;Ljava/lang/String;)Lcom/amitshekhar/model/TableDataResponse;

    move-result-object v7

    .line 273
    .local v7, "response":Lcom/amitshekhar/model/TableDataResponse;
    iget-object v8, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v8, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 274
    iget-boolean v8, v7, Lcom/amitshekhar/model/TableDataResponse;->isSuccessful:Z

    if-nez v8, :cond_4

    .line 275
    goto :goto_3

    .line 266
    .end local v7    # "response":Lcom/amitshekhar/model/TableDataResponse;
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/amitshekhar/server/RequestHandler;->sqLiteDB:Lcom/amitshekhar/sqlite/SQLiteDB;

    const/4 v8, 0x0

    invoke-static {v7, v5, v8}, Lcom/amitshekhar/utils/DatabaseHelper;->getTableData(Lcom/amitshekhar/sqlite/SQLiteDB;Ljava/lang/String;Ljava/lang/String;)Lcom/amitshekhar/model/TableDataResponse;

    move-result-object v7

    .line 267
    .restart local v7    # "response":Lcom/amitshekhar/model/TableDataResponse;
    iget-object v8, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v8, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 268
    iget-boolean v8, v7, Lcom/amitshekhar/model/TableDataResponse;->isSuccessful:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v8, :cond_3

    .line 269
    goto :goto_3

    .line 271
    .end local v7    # "response":Lcom/amitshekhar/model/TableDataResponse;
    :cond_3
    nop

    .line 261
    .end local v5    # "aQuery":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 282
    .end local v3    # "statements":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "first":Ljava/lang/String;
    :cond_5
    :goto_3
    goto :goto_4

    .line 280
    :catch_1
    move-exception v3

    .line 281
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4
    if-nez v1, :cond_6

    .line 285
    new-instance v3, Lcom/amitshekhar/model/Response;

    invoke-direct {v3}, Lcom/amitshekhar/model/Response;-><init>()V

    .line 286
    .local v3, "response":Lcom/amitshekhar/model/Response;
    iput-boolean v2, v3, Lcom/amitshekhar/model/Response;->isSuccessful:Z

    .line 287
    iget-object v2, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .end local v3    # "response":Lcom/amitshekhar/model/Response;
    :cond_6
    return-object v1
.end method

.method private getAllDataFromTheTableResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "route"    # Ljava/lang/String;

    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, "tableName":Ljava/lang/String;
    const-string v1, "?tableName="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_0
    iget-boolean v1, p0, Lcom/amitshekhar/server/RequestHandler;->isDbOpened:Z

    if-eqz v1, :cond_1

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/amitshekhar/server/RequestHandler;->sqLiteDB:Lcom/amitshekhar/sqlite/SQLiteDB;

    invoke-static {v2, v1, v0}, Lcom/amitshekhar/utils/DatabaseHelper;->getTableData(Lcom/amitshekhar/sqlite/SQLiteDB;Ljava/lang/String;Ljava/lang/String;)Lcom/amitshekhar/model/TableDataResponse;

    move-result-object v1

    .line 236
    .local v1, "response":Lcom/amitshekhar/model/TableDataResponse;
    goto :goto_0

    .line 237
    .end local v1    # "response":Lcom/amitshekhar/model/TableDataResponse;
    :cond_1
    iget-object v1, p0, Lcom/amitshekhar/server/RequestHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amitshekhar/utils/PrefHelper;->getAllPrefData(Landroid/content/Context;Ljava/lang/String;)Lcom/amitshekhar/model/TableDataResponse;

    move-result-object v1

    .line 240
    .restart local v1    # "response":Lcom/amitshekhar/model/TableDataResponse;
    :goto_0
    iget-object v2, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getDBListResponse()Ljava/lang/String;
    .locals 11

    .line 201
    iget-object v0, p0, Lcom/amitshekhar/server/RequestHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amitshekhar/utils/DatabaseFileProvider;->getDatabaseFiles(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amitshekhar/server/RequestHandler;->mDatabaseFiles:Ljava/util/HashMap;

    .line 202
    iget-object v1, p0, Lcom/amitshekhar/server/RequestHandler;->mCustomDatabaseFiles:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 205
    :cond_0
    new-instance v0, Lcom/amitshekhar/model/Response;

    invoke-direct {v0}, Lcom/amitshekhar/model/Response;-><init>()V

    .line 206
    .local v0, "response":Lcom/amitshekhar/model/Response;
    iget-object v1, p0, Lcom/amitshekhar/server/RequestHandler;->mDatabaseFiles:Ljava/util/HashMap;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    const-string v6, "false"

    if-eqz v1, :cond_2

    .line 207
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 208
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/io/File;Ljava/lang/String;>;>;"
    new-array v8, v4, [Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v8, v3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string/jumbo v10, "true"

    if-nez v9, :cond_1

    move-object v9, v10

    goto :goto_1

    :cond_1
    move-object v9, v6

    :goto_1
    aput-object v9, v8, v5

    aput-object v10, v8, v2

    .line 209
    .local v8, "dbEntry":[Ljava/lang/String;
    iget-object v9, v0, Lcom/amitshekhar/model/Response;->rows:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/io/File;Ljava/lang/String;>;>;"
    .end local v8    # "dbEntry":[Ljava/lang/String;
    goto :goto_0

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/amitshekhar/server/RequestHandler;->mRoomInMemoryDatabases:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 213
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 214
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteDatabase;>;"
    new-array v8, v4, [Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v8, v3

    aput-object v6, v8, v5

    aput-object v6, v8, v2

    .line 215
    .restart local v8    # "dbEntry":[Ljava/lang/String;
    iget-object v9, v0, Lcom/amitshekhar/model/Response;->rows:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteDatabase;>;"
    .end local v8    # "dbEntry":[Ljava/lang/String;
    goto :goto_2

    .line 218
    :cond_3
    iget-object v1, v0, Lcom/amitshekhar/model/Response;->rows:Ljava/util/List;

    const-string v2, "APP_SHARED_PREFERENCES"

    filled-new-array {v2, v6, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iput-boolean v5, v0, Lcom/amitshekhar/model/Response;->isSuccessful:Z

    .line 220
    iget-object v1, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTableListResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "route"    # Ljava/lang/String;

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "database":Ljava/lang/String;
    const-string v1, "?database="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 301
    :cond_0
    const-string v1, "APP_SHARED_PREFERENCES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/amitshekhar/server/RequestHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/amitshekhar/utils/PrefHelper;->getAllPrefTableName(Landroid/content/Context;)Lcom/amitshekhar/model/Response;

    move-result-object v2

    .line 303
    .local v2, "response":Lcom/amitshekhar/model/Response;
    invoke-direct {p0}, Lcom/amitshekhar/server/RequestHandler;->closeDatabase()V

    .line 304
    iput-object v1, p0, Lcom/amitshekhar/server/RequestHandler;->mSelectedDatabase:Ljava/lang/String;

    goto :goto_0

    .line 306
    .end local v2    # "response":Lcom/amitshekhar/model/Response;
    :cond_1
    invoke-direct {p0, v0}, Lcom/amitshekhar/server/RequestHandler;->openDatabase(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/amitshekhar/server/RequestHandler;->sqLiteDB:Lcom/amitshekhar/sqlite/SQLiteDB;

    invoke-static {v1}, Lcom/amitshekhar/utils/DatabaseHelper;->getAllTableName(Lcom/amitshekhar/sqlite/SQLiteDB;)Lcom/amitshekhar/model/Response;

    move-result-object v2

    .line 308
    .restart local v2    # "response":Lcom/amitshekhar/model/Response;
    iput-object v0, p0, Lcom/amitshekhar/server/RequestHandler;->mSelectedDatabase:Ljava/lang/String;

    .line 310
    :goto_0
    iget-object v1, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private openDatabase(Ljava/lang/String;)V
    .locals 5
    .param p1, "database"    # Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Lcom/amitshekhar/server/RequestHandler;->closeDatabase()V

    .line 182
    iget-object v0, p0, Lcom/amitshekhar/server/RequestHandler;->mRoomInMemoryDatabases:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Lcom/amitshekhar/sqlite/InMemoryDebugSQLiteDB;

    iget-object v1, p0, Lcom/amitshekhar/server/RequestHandler;->mRoomInMemoryDatabases:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/amitshekhar/sqlite/InMemoryDebugSQLiteDB;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iput-object v0, p0, Lcom/amitshekhar/server/RequestHandler;->sqLiteDB:Lcom/amitshekhar/sqlite/SQLiteDB;

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/amitshekhar/server/RequestHandler;->mDatabaseFiles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    .line 186
    .local v0, "databaseFile":Ljava/io/File;
    iget-object v1, p0, Lcom/amitshekhar/server/RequestHandler;->mDatabaseFiles:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 187
    .local v1, "password":Ljava/lang/String;
    iget-object v2, p0, Lcom/amitshekhar/server/RequestHandler;->mDbFactory:Lcom/amitshekhar/sqlite/DBFactory;

    iget-object v3, p0, Lcom/amitshekhar/server/RequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/amitshekhar/sqlite/DBFactory;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amitshekhar/sqlite/SQLiteDB;

    move-result-object v2

    iput-object v2, p0, Lcom/amitshekhar/server/RequestHandler;->sqLiteDB:Lcom/amitshekhar/sqlite/SQLiteDB;

    .line 189
    .end local v0    # "databaseFile":Ljava/io/File;
    .end local v1    # "password":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amitshekhar/server/RequestHandler;->isDbOpened:Z

    .line 190
    return-void
.end method

.method private updateTableDataAndGetResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "route"    # Ljava/lang/String;

    .line 339
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 340
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "tableName"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "tableName":Ljava/lang/String;
    const-string/jumbo v2, "updatedData"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "updatedData":Ljava/lang/String;
    iget-object v3, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/amitshekhar/server/RequestHandler$2;

    invoke-direct {v4, p0}, Lcom/amitshekhar/server/RequestHandler$2;-><init>(Lcom/amitshekhar/server/RequestHandler;)V

    .line 343
    invoke-virtual {v4}, Lcom/amitshekhar/server/RequestHandler$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 342
    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 344
    .local v3, "rowDataRequests":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/RowDataRequest;>;"
    const-string v4, "APP_SHARED_PREFERENCES"

    iget-object v5, p0, Lcom/amitshekhar/server/RequestHandler;->mSelectedDatabase:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 345
    iget-object v4, p0, Lcom/amitshekhar/server/RequestHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v3}, Lcom/amitshekhar/utils/PrefHelper;->addOrUpdateRow(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lcom/amitshekhar/model/UpdateRowResponse;

    move-result-object v4

    .local v4, "response":Lcom/amitshekhar/model/UpdateRowResponse;
    goto :goto_0

    .line 347
    .end local v4    # "response":Lcom/amitshekhar/model/UpdateRowResponse;
    :cond_0
    iget-object v4, p0, Lcom/amitshekhar/server/RequestHandler;->sqLiteDB:Lcom/amitshekhar/sqlite/SQLiteDB;

    invoke-static {v4, v1, v3}, Lcom/amitshekhar/utils/DatabaseHelper;->updateRow(Lcom/amitshekhar/sqlite/SQLiteDB;Ljava/lang/String;Ljava/util/List;)Lcom/amitshekhar/model/UpdateRowResponse;

    move-result-object v4

    .line 349
    .restart local v4    # "response":Lcom/amitshekhar/model/UpdateRowResponse;
    :goto_0
    iget-object v5, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 350
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "tableName":Ljava/lang/String;
    .end local v2    # "updatedData":Ljava/lang/String;
    .end local v3    # "rowDataRequests":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/RowDataRequest;>;"
    .end local v4    # "response":Lcom/amitshekhar/model/UpdateRowResponse;
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    new-instance v1, Lcom/amitshekhar/model/UpdateRowResponse;

    invoke-direct {v1}, Lcom/amitshekhar/model/UpdateRowResponse;-><init>()V

    .line 353
    .local v1, "response":Lcom/amitshekhar/model/UpdateRowResponse;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 354
    iget-object v2, p0, Lcom/amitshekhar/server/RequestHandler;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private writeServerError(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "output"    # Ljava/io/PrintStream;

    .line 176
    const-string v0, "HTTP/1.0 500 Internal Server Error"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 178
    return-void
.end method


# virtual methods
.method public handle(Ljava/net/Socket;)V
    .locals 8
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 83
    .local v1, "output":Ljava/io/PrintStream;
    const/4 v2, 0x0

    .line 86
    .local v2, "route":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v3

    .line 88
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 89
    const-string v3, "GET /"

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const/16 v3, 0x2f

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 91
    .local v3, "start":I
    const/16 v5, 0x20

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 92
    .local v5, "end":I
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 98
    .end local v3    # "start":I
    .end local v5    # "end":I
    :cond_1
    new-instance v3, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v3

    .line 100
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    :cond_2
    const-string v3, "index.html"

    move-object v2, v3

    .line 106
    :cond_3
    const-string v3, "getDbList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "downloadDb"

    if-eqz v3, :cond_4

    .line 107
    :try_start_1
    invoke-direct {p0}, Lcom/amitshekhar/server/RequestHandler;->getDBListResponse()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "response":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v3, v6

    .line 109
    .local v3, "bytes":[B
    goto/16 :goto_0

    .end local v3    # "bytes":[B
    :cond_4
    const-string v3, "getAllDataFromTheTable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 110
    invoke-direct {p0, v2}, Lcom/amitshekhar/server/RequestHandler;->getAllDataFromTheTableResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "response":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v3, v6

    .line 112
    .local v3, "bytes":[B
    goto/16 :goto_0

    .end local v3    # "bytes":[B
    :cond_5
    const-string v3, "getTableList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 113
    invoke-direct {p0, v2}, Lcom/amitshekhar/server/RequestHandler;->getTableListResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "response":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v3, v6

    .line 115
    .local v3, "bytes":[B
    goto/16 :goto_0

    .end local v3    # "bytes":[B
    :cond_6
    const-string v3, "addTableData"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 116
    invoke-direct {p0, v2}, Lcom/amitshekhar/server/RequestHandler;->addTableDataAndGetResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "response":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v3, v6

    .line 118
    .local v3, "bytes":[B
    goto :goto_0

    .end local v3    # "bytes":[B
    :cond_7
    const-string/jumbo v3, "updateTableData"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 119
    invoke-direct {p0, v2}, Lcom/amitshekhar/server/RequestHandler;->updateTableDataAndGetResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "response":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v3, v6

    .line 121
    .local v3, "bytes":[B
    goto :goto_0

    .end local v3    # "bytes":[B
    :cond_8
    const-string v3, "deleteTableData"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 122
    invoke-direct {p0, v2}, Lcom/amitshekhar/server/RequestHandler;->deleteTableDataAndGetResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "response":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v3, v6

    .line 124
    .local v3, "bytes":[B
    goto :goto_0

    .end local v3    # "bytes":[B
    :cond_9
    const-string v3, "query"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 125
    invoke-direct {p0, v2}, Lcom/amitshekhar/server/RequestHandler;->executeQueryAndGetResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "response":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v3, v6

    .line 127
    .local v3, "bytes":[B
    goto :goto_0

    .end local v3    # "bytes":[B
    :cond_a
    const-string v3, "deleteDb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 128
    invoke-direct {p0}, Lcom/amitshekhar/server/RequestHandler;->deleteSelectedDatabaseAndGetResponse()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "response":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v3, v6

    .line 130
    .local v3, "bytes":[B
    goto :goto_0

    .end local v3    # "bytes":[B
    :cond_b
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 131
    iget-object v3, p0, Lcom/amitshekhar/server/RequestHandler;->mSelectedDatabase:Ljava/lang/String;

    iget-object v6, p0, Lcom/amitshekhar/server/RequestHandler;->mDatabaseFiles:Ljava/util/HashMap;

    invoke-static {v3, v6}, Lcom/amitshekhar/utils/Utils;->getDatabase(Ljava/lang/String;Ljava/util/HashMap;)[B

    move-result-object v3

    .restart local v3    # "bytes":[B
    goto :goto_0

    .line 133
    .end local v3    # "bytes":[B
    :cond_c
    iget-object v3, p0, Lcom/amitshekhar/server/RequestHandler;->mAssets:Landroid/content/res/AssetManager;

    invoke-static {v2, v3}, Lcom/amitshekhar/utils/Utils;->loadContent(Ljava/lang/String;Landroid/content/res/AssetManager;)[B

    move-result-object v3

    .line 136
    .restart local v3    # "bytes":[B
    :goto_0
    if-nez v3, :cond_d

    .line 137
    invoke-direct {p0, v1}, Lcom/amitshekhar/server/RequestHandler;->writeServerError(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    nop

    .line 156
    :try_start_2
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 158
    nop

    .line 159
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 163
    goto :goto_1

    .line 161
    :catch_0
    move-exception v5

    .line 162
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 142
    :cond_d
    :try_start_3
    const-string v6, "HTTP/1.0 200 OK"

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-Type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/amitshekhar/utils/Utils;->detectMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Disposition: attachment; filename="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/amitshekhar/server/RequestHandler;->mSelectedDatabase:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 148
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    :goto_2
    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 151
    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->write([B)V

    .line 152
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    .end local v2    # "route":Ljava/lang/String;
    .end local v3    # "bytes":[B
    .end local v4    # "line":Ljava/lang/String;
    nop

    .line 156
    :try_start_4
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 158
    nop

    .line 159
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 163
    goto :goto_3

    .line 161
    :catch_1
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    .end local v2    # "e":Ljava/lang/Exception;
    nop

    .line 165
    :goto_3
    return-void

    .line 154
    :catchall_0
    move-exception v2

    .line 155
    if-eqz v1, :cond_f

    .line 156
    :try_start_5
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    goto :goto_4

    .line 161
    :catch_2
    move-exception v3

    goto :goto_5

    .line 158
    :cond_f
    :goto_4
    if-eqz v0, :cond_10

    .line 159
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    .line 162
    .local v3, "e":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 163
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_6
    nop

    .line 164
    :goto_7
    throw v2
.end method

.method public setCustomDatabaseFiles(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 168
    .local p1, "customDatabaseFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/io/File;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/amitshekhar/server/RequestHandler;->mCustomDatabaseFiles:Ljava/util/HashMap;

    .line 169
    return-void
.end method

.method public setInMemoryRoomDatabases(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p1, "databases":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteDatabase;>;"
    iput-object p1, p0, Lcom/amitshekhar/server/RequestHandler;->mRoomInMemoryDatabases:Ljava/util/HashMap;

    .line 173
    return-void
.end method
