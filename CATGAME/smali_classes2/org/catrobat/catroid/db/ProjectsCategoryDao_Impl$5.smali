.class Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$5;
.super Ljava/lang/Object;
.source "ProjectsCategoryDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->getProjectsCategories()Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;

    .line 243
    iput-object p1, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$5;->this$0:Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;

    iput-object p2, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$5;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$5;->this$0:Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;

    invoke-static {v0}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->access$300(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 248
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$5;->this$0:Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;

    invoke-static {v0}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->access$300(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 250
    .local v0, "_cursor":Landroid/database/Cursor;
    :try_start_1
    const-string v1, "type"

    invoke-static {v0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 251
    .local v1, "_cursorIndexOfType":I
    const-string v2, "name"

    invoke-static {v0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 252
    .local v2, "_cursorIndexOfName":I
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    .line 253
    .local v3, "_collectionProjectsList":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/catrobat/catroid/retrofit/models/ProjectResponse;>;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 256
    .local v5, "_tmpProjectsListCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/retrofit/models/ProjectResponse;>;"
    if-nez v5, :cond_0

    .line 257
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 258
    invoke-virtual {v3, v4, v5}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .end local v4    # "_tmpKey":Ljava/lang/String;
    .end local v5    # "_tmpProjectsListCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/retrofit/models/ProjectResponse;>;"
    :cond_0
    goto :goto_0

    .line 261
    :cond_1
    const/4 v4, -0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 262
    iget-object v4, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$5;->this$0:Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;

    invoke-static {v4, v3}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->access$400(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;Landroidx/collection/ArrayMap;)V

    .line 263
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;>;"
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 267
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 282
    :cond_2
    const/4 v5, 0x0

    .local v5, "_tmpCategory":Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;
    goto :goto_5

    .line 269
    .end local v5    # "_tmpCategory":Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;
    :cond_3
    :goto_2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 270
    const/4 v5, 0x0

    .local v5, "_tmpType":Ljava/lang/String;
    goto :goto_3

    .line 272
    .end local v5    # "_tmpType":Ljava/lang/String;
    :cond_4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 275
    .restart local v5    # "_tmpType":Ljava/lang/String;
    :goto_3
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 276
    const/4 v6, 0x0

    .local v6, "_tmpName":Ljava/lang/String;
    goto :goto_4

    .line 278
    .end local v6    # "_tmpName":Ljava/lang/String;
    :cond_5
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 280
    .restart local v6    # "_tmpName":Ljava/lang/String;
    :goto_4
    new-instance v7, Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;

    invoke-direct {v7, v5, v6}, Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    .line 281
    .end local v6    # "_tmpName":Ljava/lang/String;
    .local v5, "_tmpCategory":Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;
    nop

    .line 284
    :goto_5
    const/4 v6, 0x0

    .line 285
    .local v6, "_tmpProjectsListCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/retrofit/models/ProjectResponse;>;"
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 286
    .local v7, "_tmpKey_1":Ljava/lang/String;
    invoke-virtual {v3, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    move-object v6, v8

    .line 287
    if-nez v6, :cond_6

    .line 288
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v8

    .line 290
    :cond_6
    new-instance v8, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;

    invoke-direct {v8, v5, v6}, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;-><init>(Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;Ljava/util/List;)V

    .line 291
    .local v8, "_item":Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    nop

    .end local v5    # "_tmpCategory":Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;
    .end local v6    # "_tmpProjectsListCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/retrofit/models/ProjectResponse;>;"
    .end local v7    # "_tmpKey_1":Ljava/lang/String;
    .end local v8    # "_item":Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;
    goto :goto_1

    .line 293
    :cond_7
    iget-object v5, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$5;->this$0:Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;

    invoke-static {v5}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->access$300(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    nop

    .line 296
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    iget-object v5, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$5;->this$0:Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;

    invoke-static {v5}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->access$300(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 294
    return-object v4

    .line 296
    .end local v1    # "_cursorIndexOfType":I
    .end local v2    # "_cursorIndexOfName":I
    .end local v3    # "_collectionProjectsList":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/catrobat/catroid/retrofit/models/ProjectResponse;>;>;"
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;>;"
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 297
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 299
    .end local v0    # "_cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$5;->this$0:Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;

    invoke-static {v1}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->access$300(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 300
    throw v0
.end method

.method protected finalize()V
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 306
    return-void
.end method
