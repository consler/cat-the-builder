.class Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl$3;
.super Ljava/lang/Object;
.source "FeaturedProjectDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->getFeaturedProjects()Lkotlinx/coroutines/flow/Flow;
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
        "Lorg/catrobat/catroid/retrofit/models/FeaturedProject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;

    .line 113
    iput-object p1, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl$3;->this$0:Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;

    iput-object p2, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl$3;->val$_statement:Landroidx/room/RoomSQLiteQuery;

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

    .line 113
    invoke-virtual {p0}, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl$3;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/FeaturedProject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl$3;->this$0:Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;

    invoke-static {v0}, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;->access$000(Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl$3;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 118
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 119
    .local v0, "_cursorIndexOfId":I
    const-string v3, "project_id"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 120
    .local v3, "_cursorIndexOfProjectId":I
    const-string v4, "project_url"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 121
    .local v4, "_cursorIndexOfProjectUrl":I
    const-string v5, "name"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 122
    .local v5, "_cursorIndexOfName":I
    const-string v6, "author"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 123
    .local v6, "_cursorIndexOfAuthor":I
    const-string v7, "featured_image"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 124
    .local v7, "_cursorIndexOfFeaturedImage":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/retrofit/models/FeaturedProject;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 128
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 129
    const/4 v9, 0x0

    .local v9, "_tmpId":Ljava/lang/String;
    goto :goto_1

    .line 131
    .end local v9    # "_tmpId":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 134
    .restart local v9    # "_tmpId":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 135
    const/4 v10, 0x0

    move-object/from16 v17, v10

    .local v10, "_tmpProject_id":Ljava/lang/String;
    goto :goto_2

    .line 137
    .end local v10    # "_tmpProject_id":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v10

    .line 140
    .local v17, "_tmpProject_id":Ljava/lang/String;
    :goto_2
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 141
    const/4 v10, 0x0

    move-object/from16 v18, v10

    .local v10, "_tmpProject_url":Ljava/lang/String;
    goto :goto_3

    .line 143
    .end local v10    # "_tmpProject_url":Ljava/lang/String;
    :cond_2
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v18, v10

    .line 146
    .local v18, "_tmpProject_url":Ljava/lang/String;
    :goto_3
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 147
    const/4 v10, 0x0

    move-object/from16 v19, v10

    .local v10, "_tmpName":Ljava/lang/String;
    goto :goto_4

    .line 149
    .end local v10    # "_tmpName":Ljava/lang/String;
    :cond_3
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v19, v10

    .line 152
    .local v19, "_tmpName":Ljava/lang/String;
    :goto_4
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 153
    const/4 v10, 0x0

    move-object/from16 v20, v10

    .local v10, "_tmpAuthor":Ljava/lang/String;
    goto :goto_5

    .line 155
    .end local v10    # "_tmpAuthor":Ljava/lang/String;
    :cond_4
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v20, v10

    .line 158
    .local v20, "_tmpAuthor":Ljava/lang/String;
    :goto_5
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 159
    const/4 v10, 0x0

    move-object/from16 v21, v10

    .local v10, "_tmpFeatured_image":Ljava/lang/String;
    goto :goto_6

    .line 161
    .end local v10    # "_tmpFeatured_image":Ljava/lang/String;
    :cond_5
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v21, v10

    .line 163
    .local v21, "_tmpFeatured_image":Ljava/lang/String;
    :goto_6
    new-instance v22, Lorg/catrobat/catroid/retrofit/models/FeaturedProject;

    move-object/from16 v10, v22

    move-object v11, v9

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    move-object/from16 v16, v21

    invoke-direct/range {v10 .. v16}, Lorg/catrobat/catroid/retrofit/models/FeaturedProject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, v22

    .line 164
    .local v10, "_item":Lorg/catrobat/catroid/retrofit/models/FeaturedProject;
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    nop

    .end local v9    # "_tmpId":Ljava/lang/String;
    .end local v10    # "_item":Lorg/catrobat/catroid/retrofit/models/FeaturedProject;
    .end local v17    # "_tmpProject_id":Ljava/lang/String;
    .end local v18    # "_tmpProject_url":Ljava/lang/String;
    .end local v19    # "_tmpName":Ljava/lang/String;
    .end local v20    # "_tmpAuthor":Ljava/lang/String;
    .end local v21    # "_tmpFeatured_image":Ljava/lang/String;
    goto :goto_0

    .line 166
    :cond_6
    nop

    .line 168
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 166
    return-object v8

    .line 168
    .end local v0    # "_cursorIndexOfId":I
    .end local v3    # "_cursorIndexOfProjectId":I
    .end local v4    # "_cursorIndexOfProjectUrl":I
    .end local v5    # "_cursorIndexOfName":I
    .end local v6    # "_cursorIndexOfAuthor":I
    .end local v7    # "_cursorIndexOfFeaturedImage":I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/retrofit/models/FeaturedProject;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 169
    throw v0
.end method

.method protected finalize()V
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl$3;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 175
    return-void
.end method
