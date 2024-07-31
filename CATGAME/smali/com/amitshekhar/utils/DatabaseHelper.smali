.class public Lcom/amitshekhar/utils/DatabaseHelper;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static addRow(Lcom/amitshekhar/sqlite/SQLiteDB;Ljava/lang/String;Ljava/util/List;)Lcom/amitshekhar/model/UpdateRowResponse;
    .locals 11
    .param p0, "db"    # Lcom/amitshekhar/sqlite/SQLiteDB;
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amitshekhar/sqlite/SQLiteDB;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amitshekhar/model/RowDataRequest;",
            ">;)",
            "Lcom/amitshekhar/model/UpdateRowResponse;"
        }
    .end annotation

    .line 242
    .local p2, "rowDataRequests":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/RowDataRequest;>;"
    new-instance v0, Lcom/amitshekhar/model/UpdateRowResponse;

    invoke-direct {v0}, Lcom/amitshekhar/model/UpdateRowResponse;-><init>()V

    .line 244
    .local v0, "updateRowResponse":Lcom/amitshekhar/model/UpdateRowResponse;
    const/4 v1, 0x0

    if-eqz p2, :cond_b

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 249
    :cond_0
    invoke-static {p1}, Lcom/amitshekhar/utils/DatabaseHelper;->getQuotedTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 251
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .local v2, "contentValues":Landroid/content/ContentValues;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amitshekhar/model/RowDataRequest;

    .line 254
    .local v4, "rowDataRequest":Lcom/amitshekhar/model/RowDataRequest;
    iget-object v7, v4, Lcom/amitshekhar/model/RowDataRequest;->value:Ljava/lang/String;

    const-string v8, "null"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 255
    iput-object v5, v4, Lcom/amitshekhar/model/RowDataRequest;->value:Ljava/lang/String;

    .line 258
    :cond_1
    iget-object v5, v4, Lcom/amitshekhar/model/RowDataRequest;->dataType:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x35599e

    const/4 v10, 0x2

    if-eq v8, v9, :cond_5

    const v9, 0x36452d

    if-eq v8, v9, :cond_4

    const v9, 0x74b5813e

    if-eq v8, v9, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v8, "integer"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v7, v1

    goto :goto_1

    :cond_4
    const-string v8, "text"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v7, v10

    goto :goto_1

    :cond_5
    const-string v8, "real"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v7, v6

    :goto_1
    if-eqz v7, :cond_8

    if-eq v7, v6, :cond_7

    if-eq v7, v10, :cond_6

    .line 269
    iget-object v5, v4, Lcom/amitshekhar/model/RowDataRequest;->title:Ljava/lang/String;

    iget-object v6, v4, Lcom/amitshekhar/model/RowDataRequest;->value:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 266
    :cond_6
    iget-object v5, v4, Lcom/amitshekhar/model/RowDataRequest;->title:Ljava/lang/String;

    iget-object v6, v4, Lcom/amitshekhar/model/RowDataRequest;->value:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    goto :goto_2

    .line 263
    :cond_7
    iget-object v5, v4, Lcom/amitshekhar/model/RowDataRequest;->title:Ljava/lang/String;

    iget-object v6, v4, Lcom/amitshekhar/model/RowDataRequest;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 264
    goto :goto_2

    .line 260
    :cond_8
    iget-object v5, v4, Lcom/amitshekhar/model/RowDataRequest;->title:Ljava/lang/String;

    iget-object v6, v4, Lcom/amitshekhar/model/RowDataRequest;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    nop

    .line 272
    .end local v4    # "rowDataRequest":Lcom/amitshekhar/model/RowDataRequest;
    :goto_2
    goto :goto_0

    .line 274
    :cond_9
    invoke-interface {p0, p1, v5, v2}, Lcom/amitshekhar/sqlite/SQLiteDB;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 275
    .local v3, "result":J
    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    if-lez v5, :cond_a

    move v1, v6

    :cond_a
    iput-boolean v1, v0, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 277
    return-object v0

    .line 245
    .end local v2    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "result":J
    :cond_b
    :goto_3
    iput-boolean v1, v0, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 246
    return-object v0
.end method

.method public static deleteRow(Lcom/amitshekhar/sqlite/SQLiteDB;Ljava/lang/String;Ljava/util/List;)Lcom/amitshekhar/model/UpdateRowResponse;
    .locals 8
    .param p0, "db"    # Lcom/amitshekhar/sqlite/SQLiteDB;
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amitshekhar/sqlite/SQLiteDB;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amitshekhar/model/RowDataRequest;",
            ">;)",
            "Lcom/amitshekhar/model/UpdateRowResponse;"
        }
    .end annotation

    .line 340
    .local p2, "rowDataRequests":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/RowDataRequest;>;"
    new-instance v0, Lcom/amitshekhar/model/UpdateRowResponse;

    invoke-direct {v0}, Lcom/amitshekhar/model/UpdateRowResponse;-><init>()V

    .line 342
    .local v0, "updateRowResponse":Lcom/amitshekhar/model/UpdateRowResponse;
    if-eqz p2, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 347
    :cond_0
    invoke-static {p1}, Lcom/amitshekhar/utils/DatabaseHelper;->getQuotedTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, "whereClause":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v2, "whereArgsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amitshekhar/model/RowDataRequest;

    .line 354
    .local v4, "rowDataRequest":Lcom/amitshekhar/model/RowDataRequest;
    iget-object v5, v4, Lcom/amitshekhar/model/RowDataRequest;->value:Ljava/lang/String;

    const-string v6, "null"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 355
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/amitshekhar/model/RowDataRequest;->value:Ljava/lang/String;

    .line 357
    :cond_1
    iget-boolean v5, v4, Lcom/amitshekhar/model/RowDataRequest;->isPrimary:Z

    if-eqz v5, :cond_3

    .line 358
    const-string v5, "=? "

    if-nez v1, :cond_2

    .line 359
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/amitshekhar/model/RowDataRequest;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 361
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/amitshekhar/model/RowDataRequest;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    :goto_1
    iget-object v5, v4, Lcom/amitshekhar/model/RowDataRequest;->value:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    .end local v4    # "rowDataRequest":Lcom/amitshekhar/model/RowDataRequest;
    :cond_3
    goto :goto_0

    .line 367
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_5

    .line 368
    iput-boolean v4, v0, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 369
    return-object v0

    .line 372
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 374
    .local v3, "whereArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 375
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v3, v5

    .line 374
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 378
    .end local v5    # "i":I
    :cond_6
    invoke-interface {p0, p1, v1, v3}, Lcom/amitshekhar/sqlite/SQLiteDB;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 379
    iput-boolean v4, v0, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 380
    return-object v0

    .line 343
    .end local v1    # "whereClause":Ljava/lang/String;
    .end local v2    # "whereArgsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "whereArgs":[Ljava/lang/String;
    :cond_7
    :goto_3
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 344
    return-object v0
.end method

.method public static exec(Lcom/amitshekhar/sqlite/SQLiteDB;Ljava/lang/String;)Lcom/amitshekhar/model/TableDataResponse;
    .locals 5
    .param p0, "database"    # Lcom/amitshekhar/sqlite/SQLiteDB;
    .param p1, "sql"    # Ljava/lang/String;

    .line 385
    new-instance v0, Lcom/amitshekhar/model/TableDataResponse;

    invoke-direct {v0}, Lcom/amitshekhar/model/TableDataResponse;-><init>()V

    .line 386
    .local v0, "tableDataResponse":Lcom/amitshekhar/model/TableDataResponse;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amitshekhar/model/TableDataResponse;->isSelectQuery:Z

    .line 389
    :try_start_0
    invoke-static {p1}, Lcom/amitshekhar/utils/DatabaseHelper;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "tableName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 392
    invoke-static {v2}, Lcom/amitshekhar/utils/DatabaseHelper;->getQuotedTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, "quotedTableName":Ljava/lang/String;
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object p1, v4

    .line 396
    .end local v3    # "quotedTableName":Ljava/lang/String;
    :cond_0
    invoke-interface {p0, p1}, Lcom/amitshekhar/sqlite/SQLiteDB;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v2    # "tableName":Ljava/lang/String;
    nop

    .line 403
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amitshekhar/model/TableDataResponse;->isSuccessful:Z

    .line 404
    return-object v0

    .line 397
    :catch_0
    move-exception v2

    .line 398
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 399
    iput-boolean v1, v0, Lcom/amitshekhar/model/TableDataResponse;->isSuccessful:Z

    .line 400
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amitshekhar/model/TableDataResponse;->errorMessage:Ljava/lang/String;

    .line 401
    return-object v0
.end method

.method public static getAllTableName(Lcom/amitshekhar/sqlite/SQLiteDB;)Lcom/amitshekhar/model/Response;
    .locals 4
    .param p0, "database"    # Lcom/amitshekhar/sqlite/SQLiteDB;

    .line 47
    new-instance v0, Lcom/amitshekhar/model/Response;

    invoke-direct {v0}, Lcom/amitshekhar/model/Response;-><init>()V

    .line 48
    .local v0, "response":Lcom/amitshekhar/model/Response;
    const-string v1, "SELECT name FROM sqlite_master WHERE type=\'table\' OR type=\'view\' ORDER BY name COLLATE NOCASE"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lcom/amitshekhar/sqlite/SQLiteDB;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 49
    .local v1, "c":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    iget-object v2, v0, Lcom/amitshekhar/model/Response;->rows:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 56
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/amitshekhar/model/Response;->isSuccessful:Z

    .line 58
    :try_start_0
    invoke-interface {p0}, Lcom/amitshekhar/sqlite/SQLiteDB;->getVersion()I

    move-result v2

    iput v2, v0, Lcom/amitshekhar/model/Response;->dbVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_1

    .line 59
    :catch_0
    move-exception v2

    .line 62
    :goto_1
    return-object v0
.end method

.method private static getQuotedTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tableName"    # Ljava/lang/String;

    .line 191
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTableData(Lcom/amitshekhar/sqlite/SQLiteDB;Ljava/lang/String;Ljava/lang/String;)Lcom/amitshekhar/model/TableDataResponse;
    .locals 16
    .param p0, "db"    # Lcom/amitshekhar/sqlite/SQLiteDB;
    .param p1, "selectQuery"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;

    .line 67
    move-object/from16 v1, p0

    new-instance v0, Lcom/amitshekhar/model/TableDataResponse;

    invoke-direct {v0}, Lcom/amitshekhar/model/TableDataResponse;-><init>()V

    move-object v2, v0

    .line 68
    .local v2, "tableData":Lcom/amitshekhar/model/TableDataResponse;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/amitshekhar/model/TableDataResponse;->isSelectQuery:Z

    .line 69
    if-nez p2, :cond_0

    .line 70
    invoke-static/range {p1 .. p1}, Lcom/amitshekhar/utils/DatabaseHelper;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .end local p2    # "tableName":Ljava/lang/String;
    .local v0, "tableName":Ljava/lang/String;
    goto :goto_0

    .line 69
    .end local v0    # "tableName":Ljava/lang/String;
    .restart local p2    # "tableName":Ljava/lang/String;
    :cond_0
    move-object/from16 v4, p2

    .line 73
    .end local p2    # "tableName":Ljava/lang/String;
    .local v4, "tableName":Ljava/lang/String;
    :goto_0
    invoke-static {v4}, Lcom/amitshekhar/utils/DatabaseHelper;->getQuotedTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "quotedTableName":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA table_info("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "pragmaQuery":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/amitshekhar/utils/DatabaseHelper;->getTableInfo(Lcom/amitshekhar/sqlite/SQLiteDB;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v2, Lcom/amitshekhar/model/TableDataResponse;->tableInfos:Ljava/util/List;

    .line 79
    .end local v0    # "pragmaQuery":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    .line 80
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 82
    .local v7, "isView":Z
    const/4 v8, 0x0

    :try_start_0
    const-string v0, "SELECT type FROM sqlite_master WHERE name=?"

    new-array v9, v3, [Ljava/lang/String;

    aput-object v5, v9, v8

    invoke-interface {v1, v0, v9}, Lcom/amitshekhar/sqlite/SQLiteDB;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v6, v0

    .line 84
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const-string/jumbo v0, "view"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v0

    .line 90
    :cond_2
    if-eqz v6, :cond_3

    .line 91
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 90
    :catchall_0
    move-exception v0

    move-object/from16 v9, p1

    goto/16 :goto_b

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 91
    goto :goto_1

    .line 94
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    iget-object v0, v2, Lcom/amitshekhar/model/TableDataResponse;->tableInfos:Ljava/util/List;

    if-eqz v0, :cond_4

    if-nez v7, :cond_4

    move v0, v3

    goto :goto_3

    :cond_4
    move v0, v8

    :goto_3
    iput-boolean v0, v2, Lcom/amitshekhar/model/TableDataResponse;->isEditable:Z

    .line 97
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 98
    move-object/from16 v9, p1

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .end local p1    # "selectQuery":Ljava/lang/String;
    .local v0, "selectQuery":Ljava/lang/String;
    goto :goto_4

    .line 97
    .end local v0    # "selectQuery":Ljava/lang/String;
    .restart local p1    # "selectQuery":Ljava/lang/String;
    :cond_5
    move-object/from16 v9, p1

    .line 102
    .end local p1    # "selectQuery":Ljava/lang/String;
    .local v9, "selectQuery":Ljava/lang/String;
    :goto_4
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v9, v0}, Lcom/amitshekhar/sqlite/SQLiteDB;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 108
    .end local v6    # "cursor":Landroid/database/Cursor;
    .local v0, "cursor":Landroid/database/Cursor;
    nop

    .line 110
    if-eqz v0, :cond_12

    .line 111
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 115
    iget-object v6, v2, Lcom/amitshekhar/model/TableDataResponse;->tableInfos:Ljava/util/List;

    if-nez v6, :cond_6

    .line 116
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v2, Lcom/amitshekhar/model/TableDataResponse;->tableInfos:Ljava/util/List;

    .line 117
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v10

    if-ge v6, v10, :cond_6

    .line 118
    new-instance v10, Lcom/amitshekhar/model/TableDataResponse$TableInfo;

    invoke-direct {v10}, Lcom/amitshekhar/model/TableDataResponse$TableInfo;-><init>()V

    .line 119
    .local v10, "tableInfo":Lcom/amitshekhar/model/TableDataResponse$TableInfo;
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/amitshekhar/model/TableDataResponse$TableInfo;->title:Ljava/lang/String;

    .line 120
    iput-boolean v3, v10, Lcom/amitshekhar/model/TableDataResponse$TableInfo;->isPrimary:Z

    .line 121
    iget-object v11, v2, Lcom/amitshekhar/model/TableDataResponse;->tableInfos:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v10    # "tableInfo":Lcom/amitshekhar/model/TableDataResponse$TableInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 125
    .end local v6    # "i":I
    :cond_6
    iput-boolean v3, v2, Lcom/amitshekhar/model/TableDataResponse;->isSuccessful:Z

    .line 126
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v2, Lcom/amitshekhar/model/TableDataResponse;->rows:Ljava/util/List;

    .line 128
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "columnNames":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v10, "tableInfoListModified":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/TableDataResponse$TableInfo;>;"
    array-length v11, v6

    move v12, v8

    :goto_6
    if-ge v12, v11, :cond_9

    aget-object v13, v6, v12

    .line 133
    .local v13, "columnName":Ljava/lang/String;
    iget-object v14, v2, Lcom/amitshekhar/model/TableDataResponse;->tableInfos:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/amitshekhar/model/TableDataResponse$TableInfo;

    .line 134
    .local v15, "tableInfo":Lcom/amitshekhar/model/TableDataResponse$TableInfo;
    iget-object v3, v15, Lcom/amitshekhar/model/TableDataResponse$TableInfo;->title:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 135
    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    goto :goto_8

    .line 138
    .end local v15    # "tableInfo":Lcom/amitshekhar/model/TableDataResponse$TableInfo;
    :cond_7
    const/4 v3, 0x1

    goto :goto_7

    .line 132
    .end local v13    # "columnName":Ljava/lang/String;
    :cond_8
    :goto_8
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x1

    goto :goto_6

    .line 141
    :cond_9
    iget-object v3, v2, Lcom/amitshekhar/model/TableDataResponse;->tableInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-eq v3, v11, :cond_a

    .line 142
    iput-object v10, v2, Lcom/amitshekhar/model/TableDataResponse;->tableInfos:Ljava/util/List;

    .line 143
    iput-boolean v8, v2, Lcom/amitshekhar/model/TableDataResponse;->isEditable:Z

    .line 146
    :cond_a
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_11

    .line 149
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v3, "row":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/TableDataResponse$ColumnData;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_9
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v11

    if-ge v8, v11, :cond_10

    .line 151
    new-instance v11, Lcom/amitshekhar/model/TableDataResponse$ColumnData;

    invoke-direct {v11}, Lcom/amitshekhar/model/TableDataResponse$ColumnData;-><init>()V

    .line 152
    .local v11, "columnData":Lcom/amitshekhar/model/TableDataResponse$ColumnData;
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getType(I)I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_f

    const/4 v14, 0x2

    if-eq v12, v14, :cond_e

    const/4 v14, 0x3

    const-string v15, "text"

    if-eq v12, v14, :cond_d

    const/4 v14, 0x4

    if-eq v12, v14, :cond_c

    .line 170
    iput-object v15, v11, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->dataType:Ljava/lang/String;

    .line 171
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->value:Ljava/lang/Object;

    goto :goto_a

    .line 154
    :cond_c
    iput-object v15, v11, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->dataType:Ljava/lang/String;

    .line 155
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    invoke-static {v12}, Lcom/amitshekhar/utils/ConverterUtils;->blobToString([B)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->value:Ljava/lang/Object;

    .line 156
    goto :goto_a

    .line 166
    :cond_d
    iput-object v15, v11, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->dataType:Ljava/lang/String;

    .line 167
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->value:Ljava/lang/Object;

    .line 168
    goto :goto_a

    .line 158
    :cond_e
    const-string v12, "real"

    iput-object v12, v11, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->dataType:Ljava/lang/String;

    .line 159
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    iput-object v12, v11, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->value:Ljava/lang/Object;

    .line 160
    goto :goto_a

    .line 162
    :cond_f
    const-string v12, "integer"

    iput-object v12, v11, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->dataType:Ljava/lang/String;

    .line 163
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v11, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->value:Ljava/lang/Object;

    .line 164
    nop

    .line 173
    :goto_a
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v11    # "columnData":Lcom/amitshekhar/model/TableDataResponse$ColumnData;
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_10
    const/4 v13, 0x1

    .line 175
    .end local v8    # "i":I
    iget-object v8, v2, Lcom/amitshekhar/model/TableDataResponse;->rows:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v3    # "row":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/TableDataResponse$ColumnData;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 179
    :cond_11
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 180
    return-object v2

    .line 182
    .end local v6    # "columnNames":[Ljava/lang/String;
    .end local v10    # "tableInfoListModified":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/TableDataResponse$TableInfo;>;"
    :cond_12
    iput-boolean v8, v2, Lcom/amitshekhar/model/TableDataResponse;->isSuccessful:Z

    .line 183
    const-string v3, "Cursor is null"

    iput-object v3, v2, Lcom/amitshekhar/model/TableDataResponse;->errorMessage:Ljava/lang/String;

    .line 184
    return-object v2

    .line 103
    .end local v0    # "cursor":Landroid/database/Cursor;
    .local v6, "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    iput-boolean v8, v2, Lcom/amitshekhar/model/TableDataResponse;->isSuccessful:Z

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/amitshekhar/model/TableDataResponse;->errorMessage:Ljava/lang/String;

    .line 107
    return-object v2

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "selectQuery":Ljava/lang/String;
    .restart local p1    # "selectQuery":Ljava/lang/String;
    :goto_b
    if-eqz v6, :cond_13

    .line 91
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 93
    :cond_13
    throw v0
.end method

.method private static getTableInfo(Lcom/amitshekhar/sqlite/SQLiteDB;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "db"    # Lcom/amitshekhar/sqlite/SQLiteDB;
    .param p1, "pragmaQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amitshekhar/sqlite/SQLiteDB;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amitshekhar/model/TableDataResponse$TableInfo;",
            ">;"
        }
    .end annotation

    .line 198
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1, v0}, Lcom/amitshekhar/sqlite/SQLiteDB;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .local v1, "cursor":Landroid/database/Cursor;
    nop

    .line 204
    if-eqz v1, :cond_9

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, "tableInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/TableDataResponse$TableInfo;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 210
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    .line 212
    :cond_0
    new-instance v2, Lcom/amitshekhar/model/TableDataResponse$TableInfo;

    invoke-direct {v2}, Lcom/amitshekhar/model/TableDataResponse$TableInfo;-><init>()V

    .line 214
    .local v2, "tableInfo":Lcom/amitshekhar/model/TableDataResponse$TableInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 216
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "columnName":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xdfb

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v6, v7, :cond_3

    const v7, 0x337a8b

    if-eq v6, v7, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string v6, "name"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v9

    goto :goto_1

    :cond_3
    const-string v6, "pk"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v8

    :goto_1
    if-eqz v5, :cond_5

    if-eq v5, v9, :cond_4

    goto :goto_2

    .line 223
    :cond_4
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/amitshekhar/model/TableDataResponse$TableInfo;->title:Ljava/lang/String;

    .line 224
    goto :goto_2

    .line 220
    :cond_5
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v9, :cond_6

    move v8, v9

    :cond_6
    iput-boolean v8, v2, Lcom/amitshekhar/model/TableDataResponse$TableInfo;->isPrimary:Z

    .line 221
    nop

    .line 214
    .end local v4    # "columnName":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    .end local v3    # "i":I
    :cond_7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v2    # "tableInfo":Lcom/amitshekhar/model/TableDataResponse$TableInfo;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    :cond_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 234
    return-object v0

    .line 236
    .end local v0    # "tableInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/TableDataResponse$TableInfo;>;"
    :cond_9
    return-object v0

    .line 199
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    return-object v0
.end method

.method private static getTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "selectQuery"    # Ljava/lang/String;

    .line 409
    new-instance v0, Lcom/amitshekhar/utils/TableNameParser;

    invoke-direct {v0, p0}, Lcom/amitshekhar/utils/TableNameParser;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, "tableNameParser":Lcom/amitshekhar/utils/TableNameParser;
    invoke-virtual {v0}, Lcom/amitshekhar/utils/TableNameParser;->tables()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 412
    .local v1, "tableNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 413
    .local v3, "tableName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 414
    return-object v3

    .line 416
    .end local v3    # "tableName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 418
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static updateRow(Lcom/amitshekhar/sqlite/SQLiteDB;Ljava/lang/String;Ljava/util/List;)Lcom/amitshekhar/model/UpdateRowResponse;
    .locals 13
    .param p0, "db"    # Lcom/amitshekhar/sqlite/SQLiteDB;
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amitshekhar/sqlite/SQLiteDB;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amitshekhar/model/RowDataRequest;",
            ">;)",
            "Lcom/amitshekhar/model/UpdateRowResponse;"
        }
    .end annotation

    .line 284
    .local p2, "rowDataRequests":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/RowDataRequest;>;"
    new-instance v0, Lcom/amitshekhar/model/UpdateRowResponse;

    invoke-direct {v0}, Lcom/amitshekhar/model/UpdateRowResponse;-><init>()V

    .line 286
    .local v0, "updateRowResponse":Lcom/amitshekhar/model/UpdateRowResponse;
    const/4 v1, 0x0

    if-eqz p2, :cond_d

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 291
    :cond_0
    invoke-static {p1}, Lcom/amitshekhar/utils/DatabaseHelper;->getQuotedTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 293
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 295
    .local v2, "contentValues":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 296
    .local v3, "whereClause":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v4, "whereArgsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amitshekhar/model/RowDataRequest;

    .line 299
    .local v6, "rowDataRequest":Lcom/amitshekhar/model/RowDataRequest;
    iget-object v8, v6, Lcom/amitshekhar/model/RowDataRequest;->value:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 300
    const/4 v8, 0x0

    iput-object v8, v6, Lcom/amitshekhar/model/RowDataRequest;->value:Ljava/lang/String;

    .line 302
    :cond_1
    iget-boolean v8, v6, Lcom/amitshekhar/model/RowDataRequest;->isPrimary:Z

    if-eqz v8, :cond_3

    .line 303
    const-string v7, "=? "

    if-nez v3, :cond_2

    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v6, Lcom/amitshekhar/model/RowDataRequest;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 306
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/amitshekhar/model/RowDataRequest;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    :goto_1
    iget-object v7, v6, Lcom/amitshekhar/model/RowDataRequest;->value:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 310
    :cond_3
    iget-object v8, v6, Lcom/amitshekhar/model/RowDataRequest;->dataType:Ljava/lang/String;

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, 0x35599e

    const/4 v12, 0x2

    if-eq v10, v11, :cond_7

    const v11, 0x36452d

    if-eq v10, v11, :cond_6

    const v11, 0x74b5813e

    if-eq v10, v11, :cond_5

    :cond_4
    goto :goto_2

    :cond_5
    const-string v10, "integer"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v9, v1

    goto :goto_2

    :cond_6
    const-string v10, "text"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v9, v12

    goto :goto_2

    :cond_7
    const-string v10, "real"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v9, v7

    :goto_2
    if-eqz v9, :cond_a

    if-eq v9, v7, :cond_9

    if-eq v9, v12, :cond_8

    goto :goto_3

    .line 318
    :cond_8
    iget-object v7, v6, Lcom/amitshekhar/model/RowDataRequest;->title:Ljava/lang/String;

    iget-object v8, v6, Lcom/amitshekhar/model/RowDataRequest;->value:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    goto :goto_3

    .line 315
    :cond_9
    iget-object v7, v6, Lcom/amitshekhar/model/RowDataRequest;->title:Ljava/lang/String;

    iget-object v8, v6, Lcom/amitshekhar/model/RowDataRequest;->value:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 316
    goto :goto_3

    .line 312
    :cond_a
    iget-object v7, v6, Lcom/amitshekhar/model/RowDataRequest;->title:Ljava/lang/String;

    iget-object v8, v6, Lcom/amitshekhar/model/RowDataRequest;->value:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 313
    nop

    .line 323
    .end local v6    # "rowDataRequest":Lcom/amitshekhar/model/RowDataRequest;
    :goto_3
    goto/16 :goto_0

    .line 325
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 327
    .local v1, "whereArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 328
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v1, v5

    .line 327
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 331
    .end local v5    # "i":I
    :cond_c
    invoke-interface {p0, p1, v2, v3, v1}, Lcom/amitshekhar/sqlite/SQLiteDB;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 332
    iput-boolean v7, v0, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 333
    return-object v0

    .line 287
    .end local v1    # "whereArgs":[Ljava/lang/String;
    .end local v2    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "whereArgsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    :goto_5
    iput-boolean v1, v0, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 288
    return-object v0
.end method
