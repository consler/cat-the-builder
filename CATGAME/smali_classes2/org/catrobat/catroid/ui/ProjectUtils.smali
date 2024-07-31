.class public final Lorg/catrobat/catroid/ui/ProjectUtils;
.super Ljava/lang/Object;
.source "ProjectUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProjectUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProjectUtils.kt\norg/catrobat/catroid/ui/ProjectUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n1711#2,3:166\n1711#2,3:169\n1819#2,2:172\n1819#2:174\n1819#2,2:175\n1820#2:177\n*E\n*S KotlinDebug\n*F\n+ 1 ProjectUtils.kt\norg/catrobat/catroid/ui/ProjectUtils\n*L\n61#1,3:166\n64#1,3:169\n76#1,2:172\n119#1:174\n121#1,2:175\n119#1:177\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0012\u0010\u0004\u001a\u00020\u0005*\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002\u001a\u0010\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006*\u00020\t\u001a\u000c\u0010\n\u001a\u00020\u0005*\u00020\u000bH\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "showWarningForSuspiciousBricksOnce",
        "",
        "context",
        "Landroid/content/Context;",
        "containsSuspiciousBricks",
        "",
        "",
        "Lorg/catrobat/catroid/content/bricks/Brick;",
        "getListAllBricks",
        "Lorg/catrobat/catroid/content/Sprite;",
        "shouldDisplaySuspiciousBricksWarning",
        "Lorg/catrobat/catroid/content/Project;",
        "catroid_catroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private static final containsSuspiciousBricks(Ljava/util/List;)Z
    .locals 10
    .param p0, "$this$containsSuspiciousBricks"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)Z"
        }
    .end annotation

    .line 61
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 166
    .local v1, "$i$f$any":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v4

    goto :goto_0

    .line 167
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lorg/catrobat/catroid/content/bricks/Brick;

    .local v6, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    const/4 v7, 0x0

    .line 62
    .local v7, "$i$a$-any-ProjectUtils$containsSuspiciousBricks$startListeningBrickExists$1":I
    instance-of v6, v6, Lorg/catrobat/catroid/content/bricks/StartListeningBrick;

    .end local v6    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v7    # "$i$a$-any-ProjectUtils$containsSuspiciousBricks$startListeningBrickExists$1":I
    if-eqz v6, :cond_1

    move v0, v3

    goto :goto_0

    .line 168
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_2
    move v0, v4

    .line 61
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$any":I
    :goto_0
    nop

    .line 64
    .local v0, "startListeningBrickExists":Z
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 169
    .local v2, "$i$f$any":I
    instance-of v5, v1, Ljava/util/Collection;

    if-eqz v5, :cond_3

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    goto :goto_3

    .line 170
    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lorg/catrobat/catroid/content/bricks/Brick;

    .local v7, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    const/4 v8, 0x0

    .line 65
    .local v8, "$i$a$-any-ProjectUtils$containsSuspiciousBricks$backgroundRequestOrWebRequestBrickExists$1":I
    instance-of v9, v7, Lorg/catrobat/catroid/content/bricks/WebRequestBrick;

    if-nez v9, :cond_6

    instance-of v9, v7, Lorg/catrobat/catroid/content/bricks/BackgroundRequestBrick;

    if-nez v9, :cond_6

    instance-of v9, v7, Lorg/catrobat/catroid/content/bricks/LookRequestBrick;

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_5
    move v7, v4

    goto :goto_2

    :cond_6
    :goto_1
    move v7, v3

    .end local v7    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v8    # "$i$a$-any-ProjectUtils$containsSuspiciousBricks$backgroundRequestOrWebRequestBrickExists$1":I
    :goto_2
    if-eqz v7, :cond_4

    goto :goto_3

    .line 171
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_7
    move v3, v4

    .line 64
    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    :goto_3
    move v1, v3

    .line 67
    .local v1, "backgroundRequestOrWebRequestBrickExists":Z
    and-int v2, v0, v1

    return v2
.end method

.method public static final getListAllBricks(Lorg/catrobat/catroid/content/Sprite;)Ljava/util/List;
    .locals 8
    .param p0, "$this$getListAllBricks"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Sprite;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$getListAllBricks"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "bricks":Ljava/util/ArrayList;
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Sprite;->getAllBricks()Ljava/util/List;

    move-result-object v1

    const-string v2, "allBricks"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 172
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lorg/catrobat/catroid/content/bricks/Brick;

    .local v5, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    const/4 v6, 0x0

    .line 77
    .local v6, "$i$a$-forEach-ProjectUtils$getListAllBricks$1":I
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    nop

    .line 79
    instance-of v7, v5, Lorg/catrobat/catroid/content/bricks/ForeverBrick;

    if-eqz v7, :cond_0

    .line 80
    move-object v7, v5

    check-cast v7, Lorg/catrobat/catroid/content/bricks/ForeverBrick;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;->getNestedBricks()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 82
    :cond_0
    instance-of v7, v5, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;

    if-eqz v7, :cond_1

    .line 83
    move-object v7, v5

    check-cast v7, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->getNestedBricks()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    move-object v7, v5

    check-cast v7, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->getSecondaryNestedBricks()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 86
    :cond_1
    instance-of v7, v5, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;

    if-eqz v7, :cond_2

    .line 87
    move-object v7, v5

    check-cast v7, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->getNestedBricks()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 89
    :cond_2
    instance-of v7, v5, Lorg/catrobat/catroid/content/bricks/RepeatBrick;

    if-eqz v7, :cond_3

    .line 90
    move-object v7, v5

    check-cast v7, Lorg/catrobat/catroid/content/bricks/RepeatBrick;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->getNestedBricks()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 92
    :cond_3
    instance-of v7, v5, Lorg/catrobat/catroid/content/bricks/RepeatUntilBrick;

    if-eqz v7, :cond_4

    .line 93
    move-object v7, v5

    check-cast v7, Lorg/catrobat/catroid/content/bricks/RepeatUntilBrick;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/bricks/RepeatUntilBrick;->getNestedBricks()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 95
    :cond_4
    instance-of v7, v5, Lorg/catrobat/catroid/content/bricks/ForVariableFromToBrick;

    if-eqz v7, :cond_5

    .line 96
    move-object v7, v5

    check-cast v7, Lorg/catrobat/catroid/content/bricks/ForVariableFromToBrick;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/bricks/ForVariableFromToBrick;->getNestedBricks()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 98
    :cond_5
    instance-of v7, v5, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;

    if-eqz v7, :cond_6

    .line 99
    move-object v7, v5

    check-cast v7, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->getNestedBricks()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 101
    :cond_6
    instance-of v7, v5, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;

    if-eqz v7, :cond_7

    .line 102
    move-object v7, v5

    check-cast v7, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->getNestedBricks()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 104
    :cond_7
    instance-of v7, v5, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;

    if-eqz v7, :cond_8

    .line 105
    move-object v7, v5

    check-cast v7, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->getNestedBricks()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    move-object v7, v5

    check-cast v7, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->getSecondaryNestedBricks()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    :cond_8
    :goto_1
    nop

    .line 109
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v6    # "$i$a$-forEach-ProjectUtils$getListAllBricks$1":I
    goto/16 :goto_0

    .line 173
    :cond_9
    nop

    .line 110
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private static final shouldDisplaySuspiciousBricksWarning(Lorg/catrobat/catroid/content/Project;)Z
    .locals 16
    .param p0, "$this$shouldDisplaySuspiciousBricksWarning"    # Lorg/catrobat/catroid/content/Project;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "brickList":Ljava/util/ArrayList;
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v1

    const-string v2, "sceneList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 174
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lorg/catrobat/catroid/content/Scene;

    .local v5, "scene":Lorg/catrobat/catroid/content/Scene;
    const/4 v6, 0x0

    .line 120
    .local v6, "$i$a$-forEach-ProjectUtils$shouldDisplaySuspiciousBricksWarning$1":I
    move-object v7, v0

    .local v7, "$this$run":Ljava/util/ArrayList;
    const/4 v8, 0x0

    .line 121
    .local v8, "$i$a$-run-ProjectUtils$shouldDisplaySuspiciousBricksWarning$1$1":I
    const-string v9, "scene"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v9

    const-string v10, "scene.spriteList"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 175
    .local v10, "$i$f$forEach":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Lorg/catrobat/catroid/content/Sprite;

    .local v13, "sprite":Lorg/catrobat/catroid/content/Sprite;
    const/4 v14, 0x0

    .line 122
    .local v14, "$i$a$-forEach-ProjectUtils$shouldDisplaySuspiciousBricksWarning$1$1$1":I
    const-string v15, "sprite"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Lorg/catrobat/catroid/ui/ProjectUtils;->getListAllBricks(Lorg/catrobat/catroid/content/Sprite;)Ljava/util/List;

    move-result-object v15

    check-cast v15, Ljava/util/Collection;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 123
    nop

    .end local v12    # "element$iv":Ljava/lang/Object;
    .end local v13    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    .end local v14    # "$i$a$-forEach-ProjectUtils$shouldDisplaySuspiciousBricksWarning$1$1$1":I
    goto :goto_1

    .line 176
    :cond_0
    nop

    .line 124
    .end local v9    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$forEach":I
    nop

    .line 120
    .end local v7    # "$this$run":Ljava/util/ArrayList;
    .end local v8    # "$i$a$-run-ProjectUtils$shouldDisplaySuspiciousBricksWarning$1$1":I
    nop

    .line 125
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "scene":Lorg/catrobat/catroid/content/Scene;
    .end local v6    # "$i$a$-forEach-ProjectUtils$shouldDisplaySuspiciousBricksWarning$1":I
    goto :goto_0

    .line 177
    :cond_1
    nop

    .line 126
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/ProjectUtils;->containsSuspiciousBricks(Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method public static final showWarningForSuspiciousBricksOnce(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    nop

    .line 132
    const v0, 0x7f120673

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    nop

    .line 131
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    const-string v3, "ProjectManager.getInstance()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    .line 136
    .local v2, "currentProject":Lorg/catrobat/catroid/content/Project;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/XmlHeader;->getRemixParentsUrlString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 138
    .local v3, "projectUrl":Ljava/lang/String;
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 141
    .local v4, "isDownloadedProject":Z
    const/4 v6, 0x0

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v5, v1

    .line 143
    .local v5, "showForFirstTime":Z
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    invoke-static {v2}, Lorg/catrobat/catroid/ui/ProjectUtils;->shouldDisplaySuspiciousBricksWarning(Lorg/catrobat/catroid/content/Project;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 144
    nop

    .line 155
    nop

    .line 144
    nop

    .line 148
    nop

    .line 144
    nop

    .line 147
    nop

    .line 144
    nop

    .line 146
    nop

    .line 144
    nop

    .line 145
    nop

    .line 144
    new-instance v6, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1207d1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v6

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120725

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v6

    .line 147
    invoke-virtual {v6, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1205ff

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    new-instance v7, Lorg/catrobat/catroid/ui/ProjectUtils$showWarningForSuspiciousBricksOnce$1;

    invoke-direct {v7, v0, v3}, Lorg/catrobat/catroid/ui/ProjectUtils$showWarningForSuspiciousBricksOnce$1;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    check-cast v7, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    .line 156
    :cond_2
    if-eqz v4, :cond_3

    .line 159
    nop

    .line 162
    nop

    .line 159
    nop

    .line 161
    nop

    .line 159
    nop

    .line 160
    nop

    .line 159
    nop

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 161
    invoke-interface {v1, v3, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 162
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    :cond_3
    :goto_1
    nop

    .line 164
    return-void

    .line 136
    .end local v3    # "projectUrl":Ljava/lang/String;
    .end local v4    # "isDownloadedProject":Z
    .end local v5    # "showForFirstTime":Z
    :cond_4
    return-void
.end method
