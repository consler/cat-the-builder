.class public final Lorg/catrobat/catroid/utils/UserDataUtil;
.super Ljava/lang/Object;
.source "UserDataUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserDataUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserDataUtil.kt\norg/catrobat/catroid/utils/UserDataUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,65:1\n1711#2,2:66\n1711#2,2:68\n1711#2,2:70\n768#2,11:72\n1711#2,2:83\n1711#2,3:85\n1713#2:88\n1713#2:89\n1713#2:90\n1713#2:91\n1819#2,2:92\n1819#2,2:94\n1819#2,2:96\n1819#2,2:98\n*E\n*S KotlinDebug\n*F\n+ 1 UserDataUtil.kt\norg/catrobat/catroid/utils/UserDataUtil\n*L\n34#1,2:66\n35#1,2:68\n36#1,2:70\n39#1,11:72\n39#1,2:83\n40#1,3:85\n39#1:88\n36#1:89\n35#1:90\n34#1:91\n56#1,2:92\n57#1,2:94\n58#1,2:96\n59#1,2:98\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u001c\u0010\u0007\u001a\u00020\u00082\n\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\n2\u0006\u0010\u000b\u001a\u00020\u0006H\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/catrobat/catroid/utils/UserDataUtil;",
        "",
        "()V",
        "containedInListSelector",
        "",
        "dateName",
        "",
        "renameUserData",
        "",
        "item",
        "Lorg/catrobat/catroid/formulaeditor/UserData;",
        "name",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/catrobat/catroid/utils/UserDataUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/catrobat/catroid/utils/UserDataUtil;

    invoke-direct {v0}, Lorg/catrobat/catroid/utils/UserDataUtil;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/utils/UserDataUtil;->INSTANCE:Lorg/catrobat/catroid/utils/UserDataUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final containedInListSelector(Ljava/lang/String;)Z
    .locals 33
    .param p0, "dateName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "dateName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    const-string v2, "ProjectManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    const-string v2, "ProjectManager.getInstance().currentProject"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v1

    const-string v2, "ProjectManager.getInstan\u2026.currentProject.sceneList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 66
    .local v2, "$i$f$any":I
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_a

    .line 67
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lorg/catrobat/catroid/content/Scene;

    .local v7, "scene":Lorg/catrobat/catroid/content/Scene;
    const/4 v8, 0x0

    .line 35
    .local v8, "$i$a$-any-UserDataUtil$containedInListSelector$1":I
    const-string v9, "scene"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v9

    const-string v10, "scene.spriteList"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 68
    .local v10, "$i$f$any":I
    instance-of v11, v9, Ljava/util/Collection;

    if-eqz v11, :cond_1

    move-object v11, v9

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v17, v1

    move/from16 v20, v2

    move-object/from16 v27, v3

    const/4 v5, 0x0

    goto/16 :goto_9

    .line 69
    :cond_1
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Lorg/catrobat/catroid/content/Sprite;

    .local v13, "sprite":Lorg/catrobat/catroid/content/Sprite;
    const/4 v14, 0x0

    .line 36
    .local v14, "$i$a$-any-UserDataUtil$containedInListSelector$1$1":I
    const-string v15, "sprite"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v15

    const-string v4, "sprite.scriptList"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v15

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 70
    .local v15, "$i$f$any":I
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v17, v1

    move/from16 v20, v2

    move-object/from16 v27, v3

    const/4 v1, 0x0

    goto/16 :goto_8

    .line 71
    :cond_2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v1

    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .local v16, "element$iv":Ljava/lang/Object;
    .local v17, "$this$any$iv":Ljava/lang/Iterable;
    move-object/from16 v1, v16

    check-cast v1, Lorg/catrobat/catroid/content/Script;

    .local v1, "script":Lorg/catrobat/catroid/content/Script;
    const/16 v18, 0x0

    .line 37
    .local v18, "$i$a$-any-UserDataUtil$containedInListSelector$1$1$1":I
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move/from16 v20, v2

    .end local v2    # "$i$f$any":I
    .local v20, "$i$f$any":I
    move-object/from16 v2, v19

    check-cast v2, Ljava/util/List;

    .line 38
    .local v2, "flatList":Ljava/util/List;
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/Script;->addToFlatList(Ljava/util/List;)V

    .line 39
    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/Iterable;

    .local v19, "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    const/16 v21, 0x0

    .line 72
    .local v21, "$i$f$filterIsInstance":I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v23, v1

    .end local v1    # "script":Lorg/catrobat/catroid/content/Script;
    .local v23, "script":Lorg/catrobat/catroid/content/Script;
    move-object/from16 v1, v22

    check-cast v1, Ljava/util/Collection;

    .local v1, "destination$iv$iv":Ljava/util/Collection;
    move-object/from16 v22, v19

    .local v22, "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    const/16 v24, 0x0

    .line 81
    .local v24, "$i$f$filterIsInstanceTo":I
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4

    move-object/from16 v26, v2

    .end local v2    # "flatList":Ljava/util/List;
    .local v26, "flatList":Ljava/util/List;
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v27, v3

    .local v2, "element$iv$iv":Ljava/lang/Object;
    instance-of v3, v2, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;

    if-eqz v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v2, v26

    move-object/from16 v3, v27

    goto :goto_3

    .line 82
    .end local v26    # "flatList":Ljava/util/List;
    .local v2, "flatList":Ljava/util/List;
    :cond_4
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    .end local v1    # "destination$iv$iv":Ljava/util/Collection;
    .end local v2    # "flatList":Ljava/util/List;
    .end local v22    # "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    .end local v24    # "$i$f$filterIsInstanceTo":I
    .restart local v26    # "flatList":Ljava/util/List;
    check-cast v1, Ljava/util/List;

    .line 72
    nop

    .end local v19    # "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    .end local v21    # "$i$f$filterIsInstance":I
    check-cast v1, Ljava/lang/Iterable;

    .line 39
    nop

    .local v1, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 83
    .local v2, "$i$f$any":I
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_5

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v1, 0x0

    goto/16 :goto_7

    .line 84
    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .local v19, "element$iv":Ljava/lang/Object;
    move-object/from16 v21, v19

    check-cast v21, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;

    .local v21, "brick":Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;
    const/16 v22, 0x0

    .line 40
    .local v22, "$i$a$-any-UserDataUtil$containedInListSelector$1$1$1$1":I
    invoke-virtual/range {v21 .. v21}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->getUserLists()Ljava/util/List;

    move-result-object v24

    move-object/from16 v25, v1

    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .local v25, "$this$any$iv":Ljava/lang/Iterable;
    move-object/from16 v1, v24

    check-cast v1, Ljava/lang/Iterable;

    .restart local v1    # "$this$any$iv":Ljava/lang/Iterable;
    const/16 v24, 0x0

    .line 85
    .local v24, "$i$f$any":I
    move/from16 v28, v2

    .end local v2    # "$i$f$any":I
    .local v28, "$i$f$any":I
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    .line 86
    :cond_6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    .local v29, "element$iv":Ljava/lang/Object;
    move-object/from16 v30, v29

    check-cast v30, Lorg/catrobat/catroid/formulaeditor/UserList;

    .local v30, "it":Lorg/catrobat/catroid/formulaeditor/UserList;
    const/16 v31, 0x0

    .line 40
    .local v31, "$i$a$-any-UserDataUtil$containedInListSelector$1$1$1$1$1":I
    move-object/from16 v32, v1

    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .local v32, "$this$any$iv":Ljava/lang/Iterable;
    invoke-virtual/range {v30 .. v30}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .end local v30    # "it":Lorg/catrobat/catroid/formulaeditor/UserList;
    .end local v31    # "$i$a$-any-UserDataUtil$containedInListSelector$1$1$1$1$1":I
    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v1, v32

    goto :goto_5

    .line 87
    .end local v29    # "element$iv":Ljava/lang/Object;
    .end local v32    # "$this$any$iv":Ljava/lang/Iterable;
    .restart local v1    # "$this$any$iv":Ljava/lang/Iterable;
    :cond_8
    move-object/from16 v32, v1

    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .restart local v32    # "$this$any$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .end local v21    # "brick":Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;
    .end local v22    # "$i$a$-any-UserDataUtil$containedInListSelector$1$1$1$1":I
    .end local v24    # "$i$f$any":I
    .end local v32    # "$this$any$iv":Ljava/lang/Iterable;
    :goto_6
    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_7

    :cond_9
    move-object/from16 v1, v25

    move/from16 v2, v28

    goto :goto_4

    .line 88
    .end local v19    # "element$iv":Ljava/lang/Object;
    .end local v25    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v28    # "$i$f$any":I
    .restart local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .restart local v2    # "$i$f$any":I
    :cond_a
    move-object/from16 v25, v1

    move/from16 v28, v2

    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    .restart local v25    # "$this$any$iv":Ljava/lang/Iterable;
    .restart local v28    # "$i$f$any":I
    const/4 v1, 0x0

    .end local v18    # "$i$a$-any-UserDataUtil$containedInListSelector$1$1$1":I
    .end local v23    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v25    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v26    # "flatList":Ljava/util/List;
    .end local v28    # "$i$f$any":I
    :goto_7
    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    move-object/from16 v1, v17

    move/from16 v2, v20

    move-object/from16 v3, v27

    goto/16 :goto_2

    .line 89
    .end local v16    # "element$iv":Ljava/lang/Object;
    .end local v17    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v20    # "$i$f$any":I
    .restart local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .restart local v2    # "$i$f$any":I
    :cond_c
    move-object/from16 v17, v1

    move/from16 v20, v2

    move-object/from16 v27, v3

    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    .restart local v17    # "$this$any$iv":Ljava/lang/Iterable;
    .restart local v20    # "$i$f$any":I
    const/4 v1, 0x0

    .end local v4    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v13    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    .end local v14    # "$i$a$-any-UserDataUtil$containedInListSelector$1$1":I
    .end local v15    # "$i$f$any":I
    :goto_8
    if-eqz v1, :cond_d

    const/4 v5, 0x1

    goto :goto_9

    :cond_d
    move-object/from16 v1, v17

    move/from16 v2, v20

    move-object/from16 v3, v27

    goto/16 :goto_1

    .line 90
    .end local v12    # "element$iv":Ljava/lang/Object;
    .end local v17    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v20    # "$i$f$any":I
    .restart local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .restart local v2    # "$i$f$any":I
    :cond_e
    move-object/from16 v17, v1

    move/from16 v20, v2

    move-object/from16 v27, v3

    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    .restart local v17    # "$this$any$iv":Ljava/lang/Iterable;
    .restart local v20    # "$i$f$any":I
    const/4 v5, 0x0

    .end local v7    # "scene":Lorg/catrobat/catroid/content/Scene;
    .end local v8    # "$i$a$-any-UserDataUtil$containedInListSelector$1":I
    .end local v9    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$any":I
    :goto_9
    if-eqz v5, :cond_f

    const/4 v4, 0x1

    goto :goto_a

    :cond_f
    move-object/from16 v1, v17

    move/from16 v2, v20

    move-object/from16 v3, v27

    goto/16 :goto_0

    .line 91
    .end local v6    # "element$iv":Ljava/lang/Object;
    .end local v17    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v20    # "$i$f$any":I
    .restart local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .restart local v2    # "$i$f$any":I
    :cond_10
    move-object/from16 v17, v1

    move/from16 v20, v2

    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    .restart local v17    # "$this$any$iv":Ljava/lang/Iterable;
    .restart local v20    # "$i$f$any":I
    const/4 v4, 0x0

    .line 34
    .end local v17    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v20    # "$i$f$any":I
    :goto_a
    return v4
.end method

.method public static final renameUserData(Lorg/catrobat/catroid/formulaeditor/UserData;Ljava/lang/String;)V
    .locals 6
    .param p0, "item"    # Lorg/catrobat/catroid/formulaeditor/UserData;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p0}, Lorg/catrobat/catroid/formulaeditor/UserData;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/catrobat/catroid/utils/UserDataUtil;->containedInListSelector(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 50
    invoke-interface {p0}, Lorg/catrobat/catroid/formulaeditor/UserData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .local v0, "previousName":Ljava/lang/String;
    new-instance v1, Lorg/catrobat/catroid/utils/UserDataUtil$renameUserData$rename$1;

    invoke-direct {v1, v0, p1}, Lorg/catrobat/catroid/utils/UserDataUtil$renameUserData$rename$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 56
    .local v1, "rename":Lkotlin/jvm/functions/Function1;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getUserLists()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 92
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    invoke-interface {v1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    goto :goto_1

    :cond_1
    nop

    .line 57
    :goto_1
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getUserLists()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Ljava/lang/Iterable;

    .restart local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 94
    .restart local v3    # "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "element$iv":Ljava/lang/Object;
    invoke-interface {v1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 95
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    goto :goto_3

    :cond_3
    nop

    .line 58
    :goto_3
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getUserVariables()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    check-cast v2, Ljava/lang/Iterable;

    .restart local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 96
    .restart local v3    # "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "element$iv":Ljava/lang/Object;
    invoke-interface {v1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 97
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    goto :goto_5

    :cond_5
    nop

    .line 59
    :goto_5
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getUserVariables()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    check-cast v2, Ljava/lang/Iterable;

    .restart local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 98
    .restart local v3    # "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "element$iv":Ljava/lang/Object;
    invoke-interface {v1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 99
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    goto :goto_7

    :cond_7
    goto :goto_7

    .line 61
    .end local v0    # "previousName":Ljava/lang/String;
    .end local v1    # "rename":Lkotlin/jvm/functions/Function1;
    :cond_8
    invoke-interface {p0, p1}, Lorg/catrobat/catroid/formulaeditor/UserData;->setName(Ljava/lang/String;)V

    .line 62
    :goto_7
    nop

    .line 63
    return-void
.end method
