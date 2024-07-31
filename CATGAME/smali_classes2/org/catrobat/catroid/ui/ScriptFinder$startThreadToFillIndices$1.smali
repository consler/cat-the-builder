.class final Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;
.super Ljava/lang/Object;
.source "ScriptFinder.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/ScriptFinder;->startThreadToFillIndices(Ljava/lang/String;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $activeScene:Lorg/catrobat/catroid/content/Scene;

.field final synthetic $activeSprite:Lorg/catrobat/catroid/content/Sprite;

.field final synthetic $query:Ljava/lang/String;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/ScriptFinder;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/ScriptFinder;Ljava/lang/String;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->$query:Ljava/lang/String;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->$activeScene:Lorg/catrobat/catroid/content/Scene;

    iput-object p4, p0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->$activeSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/ScriptFinder;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_8

    check-cast v1, Landroid/app/Activity;

    .line 227
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    new-instance v2, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$1;

    invoke-direct {v2, v0}, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$1;-><init>(Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 235
    :cond_0
    iget-object v2, v0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/ScriptFinder;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    const-string v3, "projectManager.currentProject"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v2

    .line 236
    .local v2, "scenes":Ljava/util/List;
    const-string v3, "scenes"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_6

    .line 237
    .local v5, "i":I
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/content/Scene;

    .line 238
    .local v6, "scene":Lorg/catrobat/catroid/content/Scene;
    const-string v7, "scene"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v7

    .line 239
    .local v7, "spriteList":Ljava/util/List;
    const-string v8, "spriteList"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_5

    .line 240
    .local v9, "j":I
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/catrobat/catroid/content/Sprite;

    .line 241
    .local v10, "sprite":Lorg/catrobat/catroid/content/Sprite;
    const-string v11, "sprite"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v11

    .line 242
    .local v11, "scriptList":Ljava/util/List;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/List;

    .line 243
    .local v12, "bricks":Ljava/util/List;
    iget-object v13, v0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v13}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/ScriptFinder;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v13

    .line 244
    invoke-virtual {v6}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v14

    .line 245
    invoke-virtual {v10}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v15

    .line 243
    invoke-virtual {v13, v14, v15}, Lorg/catrobat/catroid/ProjectManager;->setCurrentSceneAndSprite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 247
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/catrobat/catroid/content/Script;

    .line 248
    .local v14, "script":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v14}, Lorg/catrobat/catroid/content/Script;->setParents()V

    .line 249
    invoke-virtual {v14, v12}, Lorg/catrobat/catroid/content/Script;->addToFlatList(Ljava/util/List;)V

    .line 247
    .end local v14    # "script":Lorg/catrobat/catroid/content/Script;
    goto :goto_2

    .line 251
    :cond_1
    move-object v13, v12

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_4

    .line 252
    .local v14, "k":I
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 253
    .local v15, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    sget-object v4, Lorg/catrobat/catroid/ui/ScriptFinder;->Companion:Lorg/catrobat/catroid/ui/ScriptFinder$Companion;

    move-object/from16 v17, v2

    .end local v2    # "scenes":Ljava/util/List;
    .local v17, "scenes":Ljava/util/List;
    iget-object v2, v0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/ScriptFinder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v15, v2}, Lorg/catrobat/catroid/content/bricks/Brick;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    move/from16 v18, v3

    iget-object v3, v0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->$query:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Lorg/catrobat/catroid/ui/ScriptFinder$Companion;->searchBrickViews(Landroid/view/View;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 254
    iget-object v2, v0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$getSearchResults$p(Lorg/catrobat/catroid/ui/ScriptFinder;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, 0x0

    aput-object v4, v3, v16

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v19, 0x1

    aput-object v4, v3, v19

    const/4 v4, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    const/16 v16, 0x0

    goto :goto_4

    .line 253
    :cond_3
    const/16 v16, 0x0

    .line 251
    .end local v15    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :goto_4
    nop

    .end local v14    # "k":I
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v17

    move/from16 v3, v18

    goto :goto_3

    .end local v17    # "scenes":Ljava/util/List;
    .restart local v2    # "scenes":Ljava/util/List;
    :cond_4
    move-object/from16 v17, v2

    move/from16 v18, v3

    const/16 v16, 0x0

    .line 239
    .end local v2    # "scenes":Ljava/util/List;
    .end local v10    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    .end local v11    # "scriptList":Ljava/util/List;
    .end local v12    # "bricks":Ljava/util/List;
    .restart local v17    # "scenes":Ljava/util/List;
    nop

    .end local v9    # "j":I
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .end local v17    # "scenes":Ljava/util/List;
    .restart local v2    # "scenes":Ljava/util/List;
    :cond_5
    move-object/from16 v17, v2

    move/from16 v18, v3

    const/16 v16, 0x0

    .line 236
    .end local v2    # "scenes":Ljava/util/List;
    .end local v6    # "scene":Lorg/catrobat/catroid/content/Scene;
    .end local v7    # "spriteList":Ljava/util/List;
    .restart local v17    # "scenes":Ljava/util/List;
    nop

    .end local v5    # "i":I
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 259
    .end local v17    # "scenes":Ljava/util/List;
    .restart local v2    # "scenes":Ljava/util/List;
    :cond_6
    move-object/from16 v17, v2

    .end local v2    # "scenes":Ljava/util/List;
    .restart local v17    # "scenes":Ljava/util/List;
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_7

    .line 260
    new-instance v2, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$2;

    invoke-direct {v2, v0}, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$2;-><init>(Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 272
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v17    # "scenes":Ljava/util/List;
    :cond_7
    return-void

    .line 226
    :cond_8
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
