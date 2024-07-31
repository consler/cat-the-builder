.class public final Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;
.super Lorg/catrobat/catroid/db/ProjectsCategoryDao;
.source "ProjectsCategoryDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfProjectResponse:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfProjectsCategory:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAllProjectResponse:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteAllProjectsCategory:Landroidx/room/SharedSQLiteStatement;

.field private final __stringListConverter:Lorg/catrobat/catroid/retrofit/converters/StringListConverter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;

    .line 45
    invoke-direct {p0}, Lorg/catrobat/catroid/db/ProjectsCategoryDao;-><init>()V

    .line 39
    new-instance v0, Lorg/catrobat/catroid/retrofit/converters/StringListConverter;

    invoke-direct {v0}, Lorg/catrobat/catroid/retrofit/converters/StringListConverter;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__stringListConverter:Lorg/catrobat/catroid/retrofit/converters/StringListConverter;

    .line 46
    iput-object p1, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 47
    new-instance v0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$1;-><init>(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__insertionAdapterOfProjectsCategory:Landroidx/room/EntityInsertionAdapter;

    .line 67
    new-instance v0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$2;-><init>(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__insertionAdapterOfProjectResponse:Landroidx/room/EntityInsertionAdapter;

    .line 148
    new-instance v0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$3;-><init>(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__preparedStmtOfDeleteAllProjectsCategory:Landroidx/room/SharedSQLiteStatement;

    .line 155
    new-instance v0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$4;-><init>(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__preparedStmtOfDeleteAllProjectResponse:Landroidx/room/SharedSQLiteStatement;

    .line 162
    return-void
.end method

.method private __fetchRelationshipprojectResponseAsorgCatrobatCatroidRetrofitModelsProjectResponse(Landroidx/collection/ArrayMap;)V
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 316
    .local p1, "_map":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/catrobat/catroid/retrofit/models/ProjectResponse;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "categoryType"

    invoke-virtual/range {p1 .. p1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 317
    .local v3, "__mapKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 318
    return-void

    .line 321
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v4

    const/16 v5, 0x3e7

    if-le v4, v5, :cond_4

    .line 322
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0, v5}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 323
    .local v0, "_tmpInnerMap":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/catrobat/catroid/retrofit/models/ProjectResponse;>;>;"
    const/4 v4, 0x0

    .line 324
    .local v4, "_tmpIndex":I
    const/4 v6, 0x0

    .line 325
    .local v6, "_mapIndex":I
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v7

    .line 326
    .local v7, "_limit":I
    :cond_1
    :goto_0
    if-ge v6, v7, :cond_2

    .line 327
    invoke-virtual {v2, v6}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v6}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    add-int/lit8 v6, v6, 0x1

    .line 329
    add-int/lit8 v4, v4, 0x1

    .line 330
    if-ne v4, v5, :cond_1

    .line 331
    invoke-direct {v1, v0}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__fetchRelationshipprojectResponseAsorgCatrobatCatroidRetrofitModelsProjectResponse(Landroidx/collection/ArrayMap;)V

    .line 332
    new-instance v8, Landroidx/collection/ArrayMap;

    invoke-direct {v8, v5}, Landroidx/collection/ArrayMap;-><init>(I)V

    move-object v0, v8

    .line 333
    const/4 v4, 0x0

    goto :goto_0

    .line 336
    :cond_2
    if-lez v4, :cond_3

    .line 337
    invoke-direct {v1, v0}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__fetchRelationshipprojectResponseAsorgCatrobatCatroidRetrofitModelsProjectResponse(Landroidx/collection/ArrayMap;)V

    .line 339
    :cond_3
    return-void

    .line 341
    .end local v0    # "_tmpInnerMap":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/catrobat/catroid/retrofit/models/ProjectResponse;>;>;"
    .end local v4    # "_tmpIndex":I
    .end local v6    # "_mapIndex":I
    .end local v7    # "_limit":I
    :cond_4
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 342
    .local v4, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v5, "SELECT `id`,`name`,`author`,`description`,`version`,`views`,`download`,`flavor`,`tags`,`uploaded`,`uploadedString`,`screenshotLarge`,`screenshotSmall`,`projectUrl`,`downloadUrl`,`fileSize`,`categoryType` FROM `project_response` WHERE `categoryType` IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    .line 344
    .local v5, "_inputSize":I
    invoke-static {v4, v5}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 345
    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 347
    .local v6, "_sql":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x0

    .line 348
    .local v7, "_argCount":I
    invoke-static {v6, v7}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v8

    .line 349
    .local v8, "_stmt":Landroidx/room/RoomSQLiteQuery;
    const/4 v9, 0x1

    .line 350
    .local v9, "_argIndex":I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 351
    .local v11, "_item":Ljava/lang/String;
    if-nez v11, :cond_5

    .line 352
    invoke-virtual {v8, v9}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 354
    :cond_5
    invoke-virtual {v8, v9, v11}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 356
    :goto_2
    nop

    .end local v11    # "_item":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    .line 357
    goto :goto_1

    .line 358
    :cond_6
    iget-object v10, v1, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v8, v12, v11}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 360
    .local v10, "_cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v10, v0}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 361
    .local v11, "_itemKeyIndex":I
    const/4 v12, -0x1

    if-ne v11, v12, :cond_7

    .line 496
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 362
    return-void

    .line 364
    :cond_7
    :try_start_1
    const-string v12, "id"

    invoke-static {v10, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 365
    .local v12, "_cursorIndexOfId":I
    const-string v13, "name"

    invoke-static {v10, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 366
    .local v13, "_cursorIndexOfName":I
    const-string v14, "author"

    invoke-static {v10, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 367
    .local v14, "_cursorIndexOfAuthor":I
    const-string v15, "description"

    invoke-static {v10, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 368
    .local v15, "_cursorIndexOfDescription":I
    move-object/from16 v16, v3

    .end local v3    # "__mapKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v16, "__mapKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_2
    const-string v3, "version"

    invoke-static {v10, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 369
    .local v3, "_cursorIndexOfVersion":I
    move-object/from16 v17, v4

    .end local v4    # "_stringBuilder":Ljava/lang/StringBuilder;
    .local v17, "_stringBuilder":Ljava/lang/StringBuilder;
    :try_start_3
    const-string v4, "views"

    invoke-static {v10, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 370
    .local v4, "_cursorIndexOfViews":I
    move/from16 v18, v5

    .end local v5    # "_inputSize":I
    .local v18, "_inputSize":I
    :try_start_4
    const-string v5, "download"

    invoke-static {v10, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 371
    .local v5, "_cursorIndexOfDownload":I
    move-object/from16 v19, v6

    .end local v6    # "_sql":Ljava/lang/String;
    .local v19, "_sql":Ljava/lang/String;
    :try_start_5
    const-string v6, "flavor"

    invoke-static {v10, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 372
    .local v6, "_cursorIndexOfFlavor":I
    move/from16 v20, v7

    .end local v7    # "_argCount":I
    .local v20, "_argCount":I
    :try_start_6
    const-string v7, "tags"

    invoke-static {v10, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 373
    .local v7, "_cursorIndexOfTags":I
    move-object/from16 v21, v8

    .end local v8    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .local v21, "_stmt":Landroidx/room/RoomSQLiteQuery;
    :try_start_7
    const-string v8, "uploaded"

    invoke-static {v10, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 374
    .local v8, "_cursorIndexOfUploaded":I
    move/from16 v22, v9

    .end local v9    # "_argIndex":I
    .local v22, "_argIndex":I
    :try_start_8
    const-string v9, "uploadedString"

    invoke-static {v10, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 375
    .local v9, "_cursorIndexOfUploadedString":I
    move/from16 v23, v9

    .end local v9    # "_cursorIndexOfUploadedString":I
    .local v23, "_cursorIndexOfUploadedString":I
    const-string v9, "screenshotLarge"

    invoke-static {v10, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 376
    .local v9, "_cursorIndexOfScreenshotLarge":I
    move/from16 v24, v9

    .end local v9    # "_cursorIndexOfScreenshotLarge":I
    .local v24, "_cursorIndexOfScreenshotLarge":I
    const-string v9, "screenshotSmall"

    invoke-static {v10, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 377
    .local v9, "_cursorIndexOfScreenshotSmall":I
    move/from16 v25, v9

    .end local v9    # "_cursorIndexOfScreenshotSmall":I
    .local v25, "_cursorIndexOfScreenshotSmall":I
    const-string v9, "projectUrl"

    invoke-static {v10, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 378
    .local v9, "_cursorIndexOfProjectUrl":I
    move/from16 v26, v9

    .end local v9    # "_cursorIndexOfProjectUrl":I
    .local v26, "_cursorIndexOfProjectUrl":I
    const-string v9, "downloadUrl"

    invoke-static {v10, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 379
    .local v9, "_cursorIndexOfDownloadUrl":I
    move/from16 v27, v9

    .end local v9    # "_cursorIndexOfDownloadUrl":I
    .local v27, "_cursorIndexOfDownloadUrl":I
    const-string v9, "fileSize"

    invoke-static {v10, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 380
    .local v9, "_cursorIndexOfFileSize":I
    invoke-static {v10, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 381
    .local v0, "_cursorIndexOfCategoryType":I
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v28

    if-eqz v28, :cond_16

    .line 382
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v28

    .line 383
    .local v29, "_tmpKey":Ljava/lang/String;
    move/from16 v28, v11

    move-object/from16 v11, v29

    .end local v29    # "_tmpKey":Ljava/lang/String;
    .local v11, "_tmpKey":Ljava/lang/String;
    .local v28, "_itemKeyIndex":I
    invoke-virtual {v2, v11}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/ArrayList;

    move-object/from16 v30, v29

    .line 384
    .local v30, "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/retrofit/models/ProjectResponse;>;"
    move-object/from16 v2, v30

    .end local v30    # "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/retrofit/models/ProjectResponse;>;"
    .local v2, "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/retrofit/models/ProjectResponse;>;"
    if-eqz v2, :cond_15

    .line 386
    new-instance v29, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;

    invoke-direct/range {v29 .. v29}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;-><init>()V

    move-object/from16 v30, v29

    .line 388
    .local v30, "_item_1":Lorg/catrobat/catroid/retrofit/models/ProjectResponse;
    invoke-interface {v10, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 389
    const/16 v29, 0x0

    move-object/from16 v31, v11

    move-object/from16 v11, v29

    .local v29, "_tmpId":Ljava/lang/String;
    goto :goto_4

    .line 391
    .end local v29    # "_tmpId":Ljava/lang/String;
    :cond_8
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v31, v11

    move-object/from16 v11, v29

    .line 393
    .local v11, "_tmpId":Ljava/lang/String;
    .local v31, "_tmpKey":Ljava/lang/String;
    :goto_4
    move/from16 v29, v12

    move-object/from16 v12, v30

    .end local v30    # "_item_1":Lorg/catrobat/catroid/retrofit/models/ProjectResponse;
    .local v12, "_item_1":Lorg/catrobat/catroid/retrofit/models/ProjectResponse;
    .local v29, "_cursorIndexOfId":I
    invoke-virtual {v12, v11}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->setId(Ljava/lang/String;)V

    .line 395
    invoke-interface {v10, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_9

    .line 396
    const/16 v30, 0x0

    move-object/from16 v32, v11

    move-object/from16 v11, v30

    .local v30, "_tmpName":Ljava/lang/String;
    goto :goto_5

    .line 398
    .end local v30    # "_tmpName":Ljava/lang/String;
    :cond_9
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v32, v11

    move-object/from16 v11, v30

    .line 400
    .local v11, "_tmpName":Ljava/lang/String;
    .local v32, "_tmpId":Ljava/lang/String;
    :goto_5
    invoke-virtual {v12, v11}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->setName(Ljava/lang/String;)V

    .line 402
    invoke-interface {v10, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 403
    const/16 v30, 0x0

    move-object/from16 v33, v11

    move-object/from16 v11, v30

    .local v30, "_tmpAuthor":Ljava/lang/String;
    goto :goto_6

    .line 405
    .end local v30    # "_tmpAuthor":Ljava/lang/String;
    :cond_a
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v33, v11

    move-object/from16 v11, v30

    .line 407
    .local v11, "_tmpAuthor":Ljava/lang/String;
    .local v33, "_tmpName":Ljava/lang/String;
    :goto_6
    invoke-virtual {v12, v11}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->setAuthor(Ljava/lang/String;)V

    .line 409
    invoke-interface {v10, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 410
    const/16 v30, 0x0

    move-object/from16 v34, v11

    move-object/from16 v11, v30

    .local v30, "_tmpDescription":Ljava/lang/String;
    goto :goto_7

    .line 412
    .end local v30    # "_tmpDescription":Ljava/lang/String;
    :cond_b
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v34, v11

    move-object/from16 v11, v30

    .line 414
    .local v11, "_tmpDescription":Ljava/lang/String;
    .local v34, "_tmpAuthor":Ljava/lang/String;
    :goto_7
    invoke-virtual {v12, v11}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->setDescription(Ljava/lang/String;)V

    .line 416
    invoke-interface {v10, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 417
    const/16 v30, 0x0

    move/from16 v35, v3

    move-object/from16 v3, v30

    .local v30, "_tmpVersion":Ljava/lang/String;
    goto :goto_8

    .line 419
    .end local v30    # "_tmpVersion":Ljava/lang/String;
    :cond_c
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move/from16 v35, v3

    move-object/from16 v3, v30

    .line 421
    .local v3, "_tmpVersion":Ljava/lang/String;
    .local v35, "_cursorIndexOfVersion":I
    :goto_8
    invoke-virtual {v12, v3}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->setVersion(Ljava/lang/String;)V

    .line 423
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v36, v30

    .line 424
    .local v36, "_tmpViews":I
    move-object/from16 v30, v3

    move/from16 v3, v36

    .end local v36    # "_tmpViews":I
    .local v3, "_tmpViews":I
    .restart local v30    # "_tmpVersion":Ljava/lang/String;
    invoke-virtual {v12, v3}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->setViews(I)V

    .line 426
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v37, v36

    .line 427
    .local v37, "_tmpDownload":I
    move/from16 v36, v3

    move/from16 v3, v37

    .end local v37    # "_tmpDownload":I
    .local v3, "_tmpDownload":I
    .restart local v36    # "_tmpViews":I
    invoke-virtual {v12, v3}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->setDownload(I)V

    .line 429
    invoke-interface {v10, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_d

    .line 430
    const/16 v37, 0x0

    move/from16 v38, v3

    move-object/from16 v3, v37

    .local v37, "_tmpFlavor":Ljava/lang/String;
    goto :goto_9

    .line 432
    .end local v37    # "_tmpFlavor":Ljava/lang/String;
    :cond_d
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    move/from16 v38, v3

    move-object/from16 v3, v37

    .line 434
    .local v3, "_tmpFlavor":Ljava/lang/String;
    .local v38, "_tmpDownload":I
    :goto_9
    invoke-virtual {v12, v3}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->setFlavor(Ljava/lang/String;)V

    .line 437
    invoke-interface {v10, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_e

    .line 438
    const/16 v37, 0x0

    move-object/from16 v39, v3

    move-object/from16 v3, v37

    .local v37, "_tmp":Ljava/lang/String;
    goto :goto_a

    .line 440
    .end local v37    # "_tmp":Ljava/lang/String;
    :cond_e
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v39, v3

    move-object/from16 v3, v37

    .line 442
    .local v3, "_tmp":Ljava/lang/String;
    .local v39, "_tmpFlavor":Ljava/lang/String;
    :goto_a
    move/from16 v37, v4

    .end local v4    # "_cursorIndexOfViews":I
    .local v37, "_cursorIndexOfViews":I
    iget-object v4, v1, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__stringListConverter:Lorg/catrobat/catroid/retrofit/converters/StringListConverter;

    invoke-virtual {v4, v3}, Lorg/catrobat/catroid/retrofit/converters/StringListConverter;->stringToStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 443
    .local v4, "_tmpTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v12, v4}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->setTags(Ljava/util/List;)V

    .line 445
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    move-wide/from16 v42, v40

    .line 446
    .local v42, "_tmpUploaded":J
    move-object/from16 v40, v3

    move-object/from16 v41, v4

    move-wide/from16 v3, v42

    .end local v4    # "_tmpTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v42    # "_tmpUploaded":J
    .local v3, "_tmpUploaded":J
    .local v40, "_tmp":Ljava/lang/String;
    .local v41, "_tmpTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v12, v3, v4}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->setUploaded(J)V

    .line 448
    move/from16 v1, v23

    .end local v23    # "_cursorIndexOfUploadedString":I
    .local v1, "_cursorIndexOfUploadedString":I
    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 449
    const/16 v23, 0x0

    move/from16 v42, v1

    move-object/from16 v1, v23

    .local v23, "_tmpUploadedString":Ljava/lang/String;
    goto :goto_b

    .line 451
    .end local v23    # "_tmpUploadedString":Ljava/lang/String;
    :cond_f
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move/from16 v42, v1

    move-object/from16 v1, v23

    .line 453
    .local v1, "_tmpUploadedString":Ljava/lang/String;
    .local v42, "_cursorIndexOfUploadedString":I
    :goto_b
    invoke-virtual {v12, v1}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->setUploadedString(Ljava/lang/String;)V

    .line 455
    move-object/from16 v23, v1

    move/from16 v1, v24

    .end local v24    # "_cursorIndexOfScreenshotLarge":I
    .local v1, "_cursorIndexOfScreenshotLarge":I
    .restart local v23    # "_tmpUploadedString":Ljava/lang/String;
    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_10

    .line 456
    const/16 v24, 0x0

    move/from16 v43, v1

    move-object/from16 v1, v24

    .local v24, "_tmpScreenshotLarge":Ljava/lang/String;
    goto :goto_c

    .line 458
    .end local v24    # "_tmpScreenshotLarge":Ljava/lang/String;
    :cond_10
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move/from16 v43, v1

    move-object/from16 v1, v24

    .line 460
    .local v1, "_tmpScreenshotLarge":Ljava/lang/String;
    .local v43, "_cursorIndexOfScreenshotLarge":I
    :goto_c
    invoke-virtual {v12, v1}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->setScreenshotLarge(Ljava/lang/String;)V

    .line 462
    move-object/from16 v24, v1

    move/from16 v1, v25

    .end local v25    # "_cursorIndexOfScreenshotSmall":I
    .local v1, "_cursorIndexOfScreenshotSmall":I
    .restart local v24    # "_tmpScreenshotLarge":Ljava/lang/String;
    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 463
    const/16 v25, 0x0

    move/from16 v44, v1

    move-object/from16 v1, v25

    .local v25, "_tmpScreenshotSmall":Ljava/lang/String;
    goto :goto_d

    .line 465
    .end local v25    # "_tmpScreenshotSmall":Ljava/lang/String;
    :cond_11
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move/from16 v44, v1

    move-object/from16 v1, v25

    .line 467
    .local v1, "_tmpScreenshotSmall":Ljava/lang/String;
    .local v44, "_cursorIndexOfScreenshotSmall":I
    :goto_d
    invoke-virtual {v12, v1}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->setScreenshotSmall(Ljava/lang/String;)V

    .line 469
    move-object/from16 v25, v1

    move/from16 v1, v26

    .end local v26    # "_cursorIndexOfProjectUrl":I
    .local v1, "_cursorIndexOfProjectUrl":I
    .restart local v25    # "_tmpScreenshotSmall":Ljava/lang/String;
    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 470
    const/16 v26, 0x0

    move/from16 v45, v1

    move-object/from16 v1, v26

    .local v26, "_tmpProjectUrl":Ljava/lang/String;
    goto :goto_e

    .line 472
    .end local v26    # "_tmpProjectUrl":Ljava/lang/String;
    :cond_12
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v45, v1

    move-object/from16 v1, v26

    .line 474
    .local v1, "_tmpProjectUrl":Ljava/lang/String;
    .local v45, "_cursorIndexOfProjectUrl":I
    :goto_e
    invoke-virtual {v12, v1}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->setProjectUrl(Ljava/lang/String;)V

    .line 476
    move-object/from16 v26, v1

    move/from16 v1, v27

    .end local v27    # "_cursorIndexOfDownloadUrl":I
    .local v1, "_cursorIndexOfDownloadUrl":I
    .restart local v26    # "_tmpProjectUrl":Ljava/lang/String;
    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_13

    .line 477
    const/16 v27, 0x0

    move/from16 v46, v1

    move-object/from16 v1, v27

    .local v27, "_tmpDownloadUrl":Ljava/lang/String;
    goto :goto_f

    .line 479
    .end local v27    # "_tmpDownloadUrl":Ljava/lang/String;
    :cond_13
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move/from16 v46, v1

    move-object/from16 v1, v27

    .line 481
    .local v1, "_tmpDownloadUrl":Ljava/lang/String;
    .local v46, "_cursorIndexOfDownloadUrl":I
    :goto_f
    invoke-virtual {v12, v1}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->setDownloadUrl(Ljava/lang/String;)V

    .line 483
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v47

    move-wide/from16 v49, v47

    .line 484
    .local v49, "_tmpFileSize":D
    move-wide/from16 v47, v3

    move-wide/from16 v3, v49

    .end local v49    # "_tmpFileSize":D
    .local v3, "_tmpFileSize":D
    .local v47, "_tmpUploaded":J
    invoke-virtual {v12, v3, v4}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->setFileSize(D)V

    .line 486
    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_14

    .line 487
    const/16 v27, 0x0

    move/from16 v49, v0

    move-object/from16 v0, v27

    .local v27, "_tmpCategoryType":Ljava/lang/String;
    goto :goto_10

    .line 489
    .end local v27    # "_tmpCategoryType":Ljava/lang/String;
    :cond_14
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move/from16 v49, v0

    move-object/from16 v0, v27

    .line 491
    .local v0, "_tmpCategoryType":Ljava/lang/String;
    .local v49, "_cursorIndexOfCategoryType":I
    :goto_10
    invoke-virtual {v12, v0}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->setCategoryType(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_11

    .line 384
    .end local v1    # "_tmpDownloadUrl":Ljava/lang/String;
    .end local v29    # "_cursorIndexOfId":I
    .end local v30    # "_tmpVersion":Ljava/lang/String;
    .end local v31    # "_tmpKey":Ljava/lang/String;
    .end local v32    # "_tmpId":Ljava/lang/String;
    .end local v33    # "_tmpName":Ljava/lang/String;
    .end local v34    # "_tmpAuthor":Ljava/lang/String;
    .end local v35    # "_cursorIndexOfVersion":I
    .end local v36    # "_tmpViews":I
    .end local v37    # "_cursorIndexOfViews":I
    .end local v38    # "_tmpDownload":I
    .end local v39    # "_tmpFlavor":Ljava/lang/String;
    .end local v40    # "_tmp":Ljava/lang/String;
    .end local v41    # "_tmpTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v42    # "_cursorIndexOfUploadedString":I
    .end local v43    # "_cursorIndexOfScreenshotLarge":I
    .end local v44    # "_cursorIndexOfScreenshotSmall":I
    .end local v45    # "_cursorIndexOfProjectUrl":I
    .end local v46    # "_cursorIndexOfDownloadUrl":I
    .end local v47    # "_tmpUploaded":J
    .end local v49    # "_cursorIndexOfCategoryType":I
    .local v0, "_cursorIndexOfCategoryType":I
    .local v3, "_cursorIndexOfVersion":I
    .local v4, "_cursorIndexOfViews":I
    .local v11, "_tmpKey":Ljava/lang/String;
    .local v12, "_cursorIndexOfId":I
    .local v23, "_cursorIndexOfUploadedString":I
    .local v24, "_cursorIndexOfScreenshotLarge":I
    .local v25, "_cursorIndexOfScreenshotSmall":I
    .local v26, "_cursorIndexOfProjectUrl":I
    .local v27, "_cursorIndexOfDownloadUrl":I
    :cond_15
    move/from16 v49, v0

    move/from16 v35, v3

    move/from16 v37, v4

    move-object/from16 v31, v11

    move/from16 v29, v12

    move/from16 v42, v23

    move/from16 v43, v24

    move/from16 v44, v25

    move/from16 v45, v26

    move/from16 v46, v27

    .line 494
    .end local v0    # "_cursorIndexOfCategoryType":I
    .end local v2    # "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/retrofit/models/ProjectResponse;>;"
    .end local v3    # "_cursorIndexOfVersion":I
    .end local v4    # "_cursorIndexOfViews":I
    .end local v11    # "_tmpKey":Ljava/lang/String;
    .end local v12    # "_cursorIndexOfId":I
    .end local v23    # "_cursorIndexOfUploadedString":I
    .end local v24    # "_cursorIndexOfScreenshotLarge":I
    .end local v25    # "_cursorIndexOfScreenshotSmall":I
    .end local v26    # "_cursorIndexOfProjectUrl":I
    .end local v27    # "_cursorIndexOfDownloadUrl":I
    .restart local v29    # "_cursorIndexOfId":I
    .restart local v35    # "_cursorIndexOfVersion":I
    .restart local v37    # "_cursorIndexOfViews":I
    .restart local v42    # "_cursorIndexOfUploadedString":I
    .restart local v43    # "_cursorIndexOfScreenshotLarge":I
    .restart local v44    # "_cursorIndexOfScreenshotSmall":I
    .restart local v45    # "_cursorIndexOfProjectUrl":I
    .restart local v46    # "_cursorIndexOfDownloadUrl":I
    .restart local v49    # "_cursorIndexOfCategoryType":I
    :goto_11
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, v28

    move/from16 v12, v29

    move/from16 v3, v35

    move/from16 v4, v37

    move/from16 v23, v42

    move/from16 v24, v43

    move/from16 v25, v44

    move/from16 v26, v45

    move/from16 v27, v46

    move/from16 v0, v49

    goto/16 :goto_3

    .line 381
    .end local v28    # "_itemKeyIndex":I
    .end local v29    # "_cursorIndexOfId":I
    .end local v35    # "_cursorIndexOfVersion":I
    .end local v37    # "_cursorIndexOfViews":I
    .end local v42    # "_cursorIndexOfUploadedString":I
    .end local v43    # "_cursorIndexOfScreenshotLarge":I
    .end local v44    # "_cursorIndexOfScreenshotSmall":I
    .end local v45    # "_cursorIndexOfProjectUrl":I
    .end local v46    # "_cursorIndexOfDownloadUrl":I
    .end local v49    # "_cursorIndexOfCategoryType":I
    .restart local v0    # "_cursorIndexOfCategoryType":I
    .restart local v3    # "_cursorIndexOfVersion":I
    .restart local v4    # "_cursorIndexOfViews":I
    .local v11, "_itemKeyIndex":I
    .restart local v12    # "_cursorIndexOfId":I
    .restart local v23    # "_cursorIndexOfUploadedString":I
    .restart local v24    # "_cursorIndexOfScreenshotLarge":I
    .restart local v25    # "_cursorIndexOfScreenshotSmall":I
    .restart local v26    # "_cursorIndexOfProjectUrl":I
    .restart local v27    # "_cursorIndexOfDownloadUrl":I
    :cond_16
    move/from16 v49, v0

    move/from16 v35, v3

    move/from16 v37, v4

    move/from16 v28, v11

    move/from16 v29, v12

    move/from16 v42, v23

    move/from16 v43, v24

    move/from16 v44, v25

    move/from16 v45, v26

    move/from16 v46, v27

    .line 496
    .end local v0    # "_cursorIndexOfCategoryType":I
    .end local v3    # "_cursorIndexOfVersion":I
    .end local v4    # "_cursorIndexOfViews":I
    .end local v5    # "_cursorIndexOfDownload":I
    .end local v6    # "_cursorIndexOfFlavor":I
    .end local v7    # "_cursorIndexOfTags":I
    .end local v8    # "_cursorIndexOfUploaded":I
    .end local v9    # "_cursorIndexOfFileSize":I
    .end local v11    # "_itemKeyIndex":I
    .end local v12    # "_cursorIndexOfId":I
    .end local v13    # "_cursorIndexOfName":I
    .end local v14    # "_cursorIndexOfAuthor":I
    .end local v15    # "_cursorIndexOfDescription":I
    .end local v23    # "_cursorIndexOfUploadedString":I
    .end local v24    # "_cursorIndexOfScreenshotLarge":I
    .end local v25    # "_cursorIndexOfScreenshotSmall":I
    .end local v26    # "_cursorIndexOfProjectUrl":I
    .end local v27    # "_cursorIndexOfDownloadUrl":I
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 497
    nop

    .line 498
    return-void

    .line 496
    :catchall_0
    move-exception v0

    goto :goto_12

    .end local v22    # "_argIndex":I
    .local v9, "_argIndex":I
    :catchall_1
    move-exception v0

    move/from16 v22, v9

    .end local v9    # "_argIndex":I
    .restart local v22    # "_argIndex":I
    goto :goto_12

    .end local v21    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .end local v22    # "_argIndex":I
    .local v8, "_stmt":Landroidx/room/RoomSQLiteQuery;
    .restart local v9    # "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v21, v8

    move/from16 v22, v9

    .end local v8    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .end local v9    # "_argIndex":I
    .restart local v21    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .restart local v22    # "_argIndex":I
    goto :goto_12

    .end local v20    # "_argCount":I
    .end local v21    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .end local v22    # "_argIndex":I
    .local v7, "_argCount":I
    .restart local v8    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .restart local v9    # "_argIndex":I
    :catchall_3
    move-exception v0

    move/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v9

    .end local v7    # "_argCount":I
    .end local v8    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .end local v9    # "_argIndex":I
    .restart local v20    # "_argCount":I
    .restart local v21    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .restart local v22    # "_argIndex":I
    goto :goto_12

    .end local v19    # "_sql":Ljava/lang/String;
    .end local v20    # "_argCount":I
    .end local v21    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .end local v22    # "_argIndex":I
    .local v6, "_sql":Ljava/lang/String;
    .restart local v7    # "_argCount":I
    .restart local v8    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .restart local v9    # "_argIndex":I
    :catchall_4
    move-exception v0

    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v9

    .end local v6    # "_sql":Ljava/lang/String;
    .end local v7    # "_argCount":I
    .end local v8    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .end local v9    # "_argIndex":I
    .restart local v19    # "_sql":Ljava/lang/String;
    .restart local v20    # "_argCount":I
    .restart local v21    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .restart local v22    # "_argIndex":I
    goto :goto_12

    .end local v18    # "_inputSize":I
    .end local v19    # "_sql":Ljava/lang/String;
    .end local v20    # "_argCount":I
    .end local v21    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .end local v22    # "_argIndex":I
    .local v5, "_inputSize":I
    .restart local v6    # "_sql":Ljava/lang/String;
    .restart local v7    # "_argCount":I
    .restart local v8    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .restart local v9    # "_argIndex":I
    :catchall_5
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v9

    .end local v5    # "_inputSize":I
    .end local v6    # "_sql":Ljava/lang/String;
    .end local v7    # "_argCount":I
    .end local v8    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .end local v9    # "_argIndex":I
    .restart local v18    # "_inputSize":I
    .restart local v19    # "_sql":Ljava/lang/String;
    .restart local v20    # "_argCount":I
    .restart local v21    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .restart local v22    # "_argIndex":I
    goto :goto_12

    .end local v17    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v18    # "_inputSize":I
    .end local v19    # "_sql":Ljava/lang/String;
    .end local v20    # "_argCount":I
    .end local v21    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .end local v22    # "_argIndex":I
    .local v4, "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "_inputSize":I
    .restart local v6    # "_sql":Ljava/lang/String;
    .restart local v7    # "_argCount":I
    .restart local v8    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .restart local v9    # "_argIndex":I
    :catchall_6
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v9

    .end local v4    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "_inputSize":I
    .end local v6    # "_sql":Ljava/lang/String;
    .end local v7    # "_argCount":I
    .end local v8    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .end local v9    # "_argIndex":I
    .restart local v17    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v18    # "_inputSize":I
    .restart local v19    # "_sql":Ljava/lang/String;
    .restart local v20    # "_argCount":I
    .restart local v21    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .restart local v22    # "_argIndex":I
    goto :goto_12

    .end local v16    # "__mapKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v18    # "_inputSize":I
    .end local v19    # "_sql":Ljava/lang/String;
    .end local v20    # "_argCount":I
    .end local v21    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .end local v22    # "_argIndex":I
    .local v3, "__mapKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "_inputSize":I
    .restart local v6    # "_sql":Ljava/lang/String;
    .restart local v7    # "_argCount":I
    .restart local v8    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .restart local v9    # "_argIndex":I
    :catchall_7
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v9

    .end local v3    # "__mapKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "_inputSize":I
    .end local v6    # "_sql":Ljava/lang/String;
    .end local v7    # "_argCount":I
    .end local v8    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .end local v9    # "_argIndex":I
    .restart local v16    # "__mapKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v18    # "_inputSize":I
    .restart local v19    # "_sql":Ljava/lang/String;
    .restart local v20    # "_argCount":I
    .restart local v21    # "_stmt":Landroidx/room/RoomSQLiteQuery;
    .restart local v22    # "_argIndex":I
    :goto_12
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 497
    throw v0
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;)Lorg/catrobat/catroid/retrofit/converters/StringListConverter;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;

    .line 32
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__stringListConverter:Lorg/catrobat/catroid/retrofit/converters/StringListConverter;

    return-object v0
.end method

.method static synthetic access$101(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;
    .param p1, "x1"    # Ljava/util/List;

    .line 32
    invoke-super {p0, p1}, Lorg/catrobat/catroid/db/ProjectsCategoryDao;->insertProjectCategoriesWithResponses(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$201(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;

    .line 32
    invoke-super {p0}, Lorg/catrobat/catroid/db/ProjectsCategoryDao;->nukeAll()V

    return-void
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;

    .line 32
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object v0
.end method

.method static synthetic access$400(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;Landroidx/collection/ArrayMap;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;
    .param p1, "x1"    # Landroidx/collection/ArrayMap;

    .line 32
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__fetchRelationshipprojectResponseAsorgCatrobatCatroidRetrofitModelsProjectResponse(Landroidx/collection/ArrayMap;)V

    return-void
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

    .line 311
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected deleteAllProjectResponse()V
    .locals 3

    .line 227
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 228
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__preparedStmtOfDeleteAllProjectResponse:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 229
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    iget-object v1, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 231
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 232
    iget-object v1, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iget-object v1, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 235
    iget-object v1, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__preparedStmtOfDeleteAllProjectResponse:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 236
    nop

    .line 237
    return-void

    .line 234
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 235
    iget-object v2, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__preparedStmtOfDeleteAllProjectResponse:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 236
    throw v1
.end method

.method protected deleteAllProjectsCategory()V
    .locals 3

    .line 213
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 214
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__preparedStmtOfDeleteAllProjectsCategory:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 215
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    iget-object v1, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 217
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 218
    iget-object v1, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object v1, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 221
    iget-object v1, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__preparedStmtOfDeleteAllProjectsCategory:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 222
    nop

    .line 223
    return-void

    .line 220
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 221
    iget-object v2, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__preparedStmtOfDeleteAllProjectsCategory:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 222
    throw v1
.end method

.method public getProjectsCategories()Lkotlinx/coroutines/flow/Flow;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
            ">;>;"
        }
    .end annotation

    .line 241
    const-string v0, "SELECT * FROM project_category"

    .line 242
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM project_category"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 243
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v2, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v3, "project_response"

    const-string v4, "project_category"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$5;

    invoke-direct {v4, p0, v1}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$5;-><init>(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v5, 0x1

    invoke-static {v2, v5, v3, v4}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    return-object v2
.end method

.method public insertProjectCategoriesWithResponses(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p1, "projectCategoryWithResponses":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 193
    :try_start_0
    invoke-static {p0, p1}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->access$101(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;Ljava/util/List;)V

    .line 194
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 197
    nop

    .line 198
    return-void

    .line 196
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 197
    throw v0
.end method

.method protected insertProjectCategory(Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;)V
    .locals 2
    .param p1, "projectsCategory"    # Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;

    .line 166
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 167
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 169
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__insertionAdapterOfProjectsCategory:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 173
    nop

    .line 174
    return-void

    .line 172
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 173
    throw v0
.end method

.method protected insertProjectResponses(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;",
            ">;)V"
        }
    .end annotation

    .line 178
    .local p1, "projectResponseList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/retrofit/models/ProjectResponse;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 179
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 181
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__insertionAdapterOfProjectResponse:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 182
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 185
    nop

    .line 186
    return-void

    .line 184
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 185
    throw v0
.end method

.method public nukeAll()V
    .locals 2

    .line 202
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 204
    :try_start_0
    invoke-static {p0}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->access$201(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;)V

    .line 205
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 208
    nop

    .line 209
    return-void

    .line 207
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 208
    throw v0
.end method
