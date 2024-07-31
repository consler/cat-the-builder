.class public final Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;
.super Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;
.source "ParameterizedBrick.kt"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/CompositeBrick;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParameterizedBrick.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParameterizedBrick.kt\norg/catrobat/catroid/content/bricks/ParameterizedBrick\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,200:1\n787#2:201\n815#2,2:202\n1819#2,2:204\n1819#2:206\n2438#2,3:207\n2438#2,3:210\n1820#2:213\n1819#2,2:214\n*E\n*S KotlinDebug\n*F\n+ 1 ParameterizedBrick.kt\norg/catrobat/catroid/content/bricks/ParameterizedBrick\n*L\n138#1:201\n138#1,2:202\n138#1,2:204\n172#1:206\n173#1,3:207\n174#1,3:210\n172#1:213\n190#1,2:214\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0008J\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0016\u0010\u001f\u001a\u00020\u00142\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0016J\u0008\u0010!\u001a\u00020\u0008H\u0016J\u0008\u0010\"\u001a\u00020\u001aH\u0016J\u001a\u0010#\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\'0%0$H\u0002J\u0008\u0010(\u001a\u00020\u0014H\u0002J\u000e\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00080$H\u0016J\u000e\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00080$H\u0016J\u000e\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00080$H\u0016J\u0010\u0010,\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010$H\u0016J\u0008\u0010-\u001a\u00020\u0010H\u0016J\u0008\u0010.\u001a\u00020\u001aH\u0016J\u0016\u0010/\u001a\u00020\u00142\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020&0$H\u0016J\u0010\u00101\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0008H\u0016J\u0010\u00102\u001a\u00020\u00142\u0006\u00103\u001a\u00020\u001aH\u0016J\u0010\u00104\u001a\u00020\u00142\u0006\u00105\u001a\u00020\u0008H\u0016J\u0008\u00106\u001a\u00020\u0014H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u00067"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;",
        "Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;",
        "Lorg/catrobat/catroid/content/bricks/CompositeBrick;",
        "()V",
        "endBrick",
        "Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;",
        "loopBricks",
        "",
        "Lorg/catrobat/catroid/content/bricks/Brick;",
        "parameterizedData",
        "Lorg/catrobat/catroid/common/ParameterizedData;",
        "getParameterizedData",
        "()Lorg/catrobat/catroid/common/ParameterizedData;",
        "setParameterizedData",
        "(Lorg/catrobat/catroid/common/ParameterizedData;)V",
        "selectorId",
        "",
        "getSelectorId",
        "()I",
        "addActionToSequence",
        "",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "sequence",
        "Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;",
        "addBrick",
        "",
        "brick",
        "addRequiredResources",
        "requiredResourcesSet",
        "Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;",
        "addToFlatList",
        "bricks",
        "clone",
        "consistsOfMultipleParts",
        "createLinkedPair",
        "",
        "Lkotlin/Pair;",
        "Lorg/catrobat/catroid/formulaeditor/UserList;",
        "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        "createLinkedVariables",
        "getAllParts",
        "getDragAndDropTargetList",
        "getNestedBricks",
        "getSecondaryNestedBricks",
        "getViewResource",
        "hasSecondaryList",
        "onUserListSelected",
        "userLists",
        "removeChild",
        "setCommentedOut",
        "commentedOut",
        "setParent",
        "parent",
        "updateSelectorText",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private endBrick:Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;

.field private loopBricks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation
.end field

.field private transient parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamOmitField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 38
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->loopBricks:Ljava/util/List;

    .line 40
    new-instance v0, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;-><init>(Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;

    .line 44
    new-instance v0, Lorg/catrobat/catroid/common/ParameterizedData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/catrobat/catroid/common/ParameterizedData;-><init>(IILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    return-void
.end method

.method private final createLinkedPair()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;>;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 186
    .local v0, "result":Ljava/util/List;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    .line 187
    .local v1, "projectManager":Lorg/catrobat/catroid/ProjectManager;
    const-string v2, "projectManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    .line 188
    .local v2, "currentProject":Lorg/catrobat/catroid/content/Project;
    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    .line 190
    .local v3, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->getUserLists()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 214
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lorg/catrobat/catroid/formulaeditor/UserList;

    .local v8, "currentList":Lorg/catrobat/catroid/formulaeditor/UserList;
    const/4 v9, 0x0

    .line 191
    .local v9, "$i$a$-forEach-ParameterizedBrick$createLinkedPair$1":I
    if-eqz v2, :cond_1

    invoke-virtual {v8}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/catrobat/catroid/content/Project;->getUserVariable(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/UserVariable;

    move-result-object v10

    if-eqz v10, :cond_1

    goto :goto_1

    .line 192
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v8}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/catrobat/catroid/content/Sprite;->getUserVariable(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/UserVariable;

    move-result-object v10

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_0

    .line 191
    nop

    .line 194
    .local v10, "variable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v8, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v10    # "variable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    .end local v8    # "currentList":Lorg/catrobat/catroid/formulaeditor/UserList;
    .end local v9    # "$i$a$-forEach-ParameterizedBrick$createLinkedPair$1":I
    goto :goto_0

    .line 215
    :cond_3
    nop

    .line 197
    .end local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    return-object v0
.end method

.method private final createLinkedVariables()V
    .locals 22

    .line 165
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    .line 166
    .local v0, "projectManager":Lorg/catrobat/catroid/ProjectManager;
    const-string v1, "projectManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    .line 167
    .local v1, "currentProject":Lorg/catrobat/catroid/content/Project;
    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    .line 168
    .local v2, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    const-string v3, "currentProject"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getUserLists()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 169
    .local v3, "globalLists":Ljava/util/List;
    :goto_0
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getUserVariables()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 170
    .local v4, "globalVariables":Ljava/util/List;
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getUserVariables()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 172
    .local v5, "localVariables":Ljava/util/List;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->getUserLists()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 206
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lorg/catrobat/catroid/formulaeditor/UserList;

    .local v10, "currentList":Lorg/catrobat/catroid/formulaeditor/UserList;
    const/4 v11, 0x0

    .line 173
    .local v11, "$i$a$-forEach-ParameterizedBrick$createLinkedVariables$1":I
    nop

    .line 174
    nop

    .line 173
    move-object v12, v4

    check-cast v12, Ljava/lang/Iterable;

    .local v12, "$this$none$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 207
    .local v13, "$i$f$none":I
    instance-of v14, v12, Ljava/util/Collection;

    const-string v15, "it"

    const/16 v16, 0x1

    if-eqz v14, :cond_3

    move-object v14, v12

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v18, v0

    move-object/from16 v20, v4

    move/from16 v0, v16

    goto :goto_5

    .line 208
    :cond_3
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v0

    .end local v0    # "projectManager":Lorg/catrobat/catroid/ProjectManager;
    .local v17, "element$iv":Ljava/lang/Object;
    .local v18, "projectManager":Lorg/catrobat/catroid/ProjectManager;
    move-object/from16 v0, v17

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .local v0, "it":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    const/16 v19, 0x0

    .line 173
    .local v19, "$i$a$-none-ParameterizedBrick$createLinkedVariables$1$1":I
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v4

    .end local v4    # "globalVariables":Ljava/util/List;
    .local v20, "globalVariables":Ljava/util/List;
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v21, v0

    .end local v0    # "it":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .local v21, "it":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v10}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .end local v19    # "$i$a$-none-ParameterizedBrick$createLinkedVariables$1$1":I
    .end local v21    # "it":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    move-object/from16 v0, v18

    move-object/from16 v4, v20

    goto :goto_4

    .line 209
    .end local v17    # "element$iv":Ljava/lang/Object;
    .end local v18    # "projectManager":Lorg/catrobat/catroid/ProjectManager;
    .end local v20    # "globalVariables":Ljava/util/List;
    .local v0, "projectManager":Lorg/catrobat/catroid/ProjectManager;
    .restart local v4    # "globalVariables":Ljava/util/List;
    :cond_5
    move-object/from16 v18, v0

    move-object/from16 v20, v4

    .end local v0    # "projectManager":Lorg/catrobat/catroid/ProjectManager;
    .end local v4    # "globalVariables":Ljava/util/List;
    .restart local v18    # "projectManager":Lorg/catrobat/catroid/ProjectManager;
    .restart local v20    # "globalVariables":Ljava/util/List;
    move/from16 v0, v16

    .line 173
    .end local v12    # "$this$none$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$none":I
    :goto_5
    if-eqz v0, :cond_a

    .line 174
    move-object v0, v5

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$none$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 210
    .local v4, "$i$f$none":I
    instance-of v12, v0, Ljava/util/Collection;

    if-eqz v12, :cond_6

    move-object v12, v0

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    move/from16 v15, v16

    goto :goto_7

    .line 211
    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .local v14, "it":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    const/16 v17, 0x0

    .line 174
    .local v17, "$i$a$-none-ParameterizedBrick$createLinkedVariables$1$2":I
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v0

    .end local v0    # "$this$none$iv":Ljava/lang/Iterable;
    .local v19, "$this$none$iv":Ljava/lang/Iterable;
    invoke-virtual {v14}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v4

    .end local v4    # "$i$f$none":I
    .local v21, "$i$f$none":I
    invoke-virtual {v10}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .end local v14    # "it":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .end local v17    # "$i$a$-none-ParameterizedBrick$createLinkedVariables$1$2":I
    if-eqz v0, :cond_7

    const/4 v15, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v0, v19

    move/from16 v4, v21

    goto :goto_6

    .line 212
    .end local v13    # "element$iv":Ljava/lang/Object;
    .end local v19    # "$this$none$iv":Ljava/lang/Iterable;
    .end local v21    # "$i$f$none":I
    .restart local v0    # "$this$none$iv":Ljava/lang/Iterable;
    .restart local v4    # "$i$f$none":I
    :cond_8
    move-object/from16 v19, v0

    move/from16 v21, v4

    .end local v0    # "$this$none$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$none":I
    .restart local v19    # "$this$none$iv":Ljava/lang/Iterable;
    .restart local v21    # "$i$f$none":I
    move/from16 v15, v16

    .line 174
    .end local v19    # "$this$none$iv":Ljava/lang/Iterable;
    .end local v21    # "$i$f$none":I
    :goto_7
    if-eqz v15, :cond_a

    .line 175
    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 176
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v10}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Project;->addUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Z

    goto :goto_8

    .line 178
    :cond_9
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v10}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/content/Sprite;->addUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Z

    .line 179
    :cond_a
    :goto_8
    nop

    .line 181
    move-object/from16 v0, v18

    move-object/from16 v4, v20

    .end local v9    # "element$iv":Ljava/lang/Object;
    .end local v10    # "currentList":Lorg/catrobat/catroid/formulaeditor/UserList;
    .end local v11    # "$i$a$-forEach-ParameterizedBrick$createLinkedVariables$1":I
    goto/16 :goto_3

    .line 213
    .end local v18    # "projectManager":Lorg/catrobat/catroid/ProjectManager;
    .end local v20    # "globalVariables":Ljava/util/List;
    .local v0, "projectManager":Lorg/catrobat/catroid/ProjectManager;
    .local v4, "globalVariables":Ljava/util/List;
    :cond_b
    nop

    .line 182
    .end local v6    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 11
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sequence"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    nop

    .line 136
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->createScriptSequenceAction(Lorg/catrobat/catroid/content/Script;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 135
    nop

    .line 137
    .local v0, "repeatSequence":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/content/bricks/CompositeBrick;

    invoke-virtual {p2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v2

    const-string v3, "sequence.script"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/LoopUtil;->checkLoopBrickForLoopDelay(Lorg/catrobat/catroid/content/bricks/CompositeBrick;Lorg/catrobat/catroid/content/Script;)Z

    move-result v1

    .line 138
    .local v1, "isLoopDelay":Z
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->loopBricks:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$filterNot$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 201
    .local v3, "$i$f$filterNot":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 202
    .local v6, "$i$f$filterNotTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lorg/catrobat/catroid/content/bricks/Brick;

    .local v9, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    const/4 v10, 0x0

    .line 138
    .local v10, "$i$a$-filterNot-ParameterizedBrick$addActionToSequence$1":I
    invoke-interface {v9}, Lorg/catrobat/catroid/content/bricks/Brick;->isCommentedOut()Z

    move-result v9

    .end local v9    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v10    # "$i$a$-filterNot-ParameterizedBrick$addActionToSequence$1":I
    if-nez v9, :cond_0

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterNotTo":I
    check-cast v4, Ljava/util/List;

    .line 201
    nop

    .end local v2    # "$this$filterNot$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filterNot":I
    check-cast v4, Ljava/lang/Iterable;

    .line 138
    move-object v2, v4

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 204
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lorg/catrobat/catroid/content/bricks/Brick;

    .local v6, "it":Lorg/catrobat/catroid/content/bricks/Brick;
    const/4 v7, 0x0

    .line 139
    .local v7, "$i$a$-forEach-ParameterizedBrick$addActionToSequence$2":I
    invoke-interface {v6, p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick;->addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V

    .line 140
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "it":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v7    # "$i$a$-forEach-ParameterizedBrick$addActionToSequence$2":I
    goto :goto_1

    .line 205
    :cond_2
    nop

    .line 141
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;

    invoke-virtual {v2, p1, v0}, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;->addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V

    .line 142
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/ParameterizedData;->reset()V

    .line 144
    :cond_3
    nop

    .line 145
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v4

    .line 146
    iget-object v6, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    .line 147
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->createLinkedPair()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->getPositionInformation()Ljava/lang/String;

    move-result-object v8

    move-object v9, v0

    check-cast v9, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 145
    move-object v5, p1

    move v10, v1

    invoke-virtual/range {v4 .. v10}, Lorg/catrobat/catroid/content/ActionFactory;->createRepeatParameterizedAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/common/ParameterizedData;Ljava/util/List;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Action;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v2

    .line 144
    invoke-virtual {p2, v2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 150
    return-void

    .line 136
    .end local v0    # "repeatSequence":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    .end local v1    # "isLoopDelay":Z
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.catroid.content.actions.ScriptSequenceAction"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 1
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    const-string v0, "brick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 2
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const-string v0, "requiredResourcesSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 154
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 155
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 154
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method public addToFlatList(Ljava/util/List;)V
    .locals 2
    .param p1, "bricks"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bricks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->addToFlatList(Ljava/util/List;)V

    .line 103
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 104
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addToFlatList(Ljava/util/List;)V

    .line 103
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 82
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;

    .line 83
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;
    new-instance v1, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;-><init>(Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;)V

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->loopBricks:Ljava/util/List;

    .line 85
    new-instance v1, Lorg/catrobat/catroid/common/ParameterizedData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lorg/catrobat/catroid/common/ParameterizedData;-><init>(IILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    .line 86
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 87
    .local v2, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/Brick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v3

    const-string v4, "brick.clone()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 86
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 89
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    return-object v1

    .line 82
    .end local v0    # "clone":Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.catroid.content.bricks.ParameterizedBrick"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public consistsOfMultipleParts()Z
    .locals 1

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public getAllParts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 96
    .local v0, "bricks":Ljava/util/List;
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-object v0
.end method

.method public getDragAndDropTargetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->loopBricks:Ljava/util/List;

    return-object v0
.end method

.method public getNestedBricks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->loopBricks:Ljava/util/List;

    return-object v0
.end method

.method public final getParameterizedData()Lorg/catrobat/catroid/common/ParameterizedData;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    return-object v0
.end method

.method public getSecondaryNestedBricks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSelectorId()I
    .locals 1

    .line 47
    const v0, 0x7f0a0185

    return v0
.end method

.method public getViewResource()I
    .locals 1

    .line 132
    const v0, 0x7f0d00a3

    return v0
.end method

.method public hasSecondaryList()Z
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public onUserListSelected(Ljava/util/List;)V
    .locals 1
    .param p1, "userLists"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;)V"
        }
    .end annotation

    const-string v0, "userLists"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->onUserListSelected(Ljava/util/List;)V

    .line 161
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->createLinkedVariables()V

    .line 162
    return-void
.end method

.method public removeChild(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 4
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    const-string v0, "brick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 121
    return v1

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 125
    .local v2, "childBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->removeChild(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    return v1

    .line 124
    .end local v2    # "childBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_1
    goto :goto_0

    .line 129
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public setCommentedOut(Z)V
    .locals 2
    .param p1, "commentedOut"    # Z

    .line 73
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->setCommentedOut(Z)V

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 75
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->setCommentedOut(Z)V

    .line 74
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;->setCommentedOut(Z)V

    .line 78
    return-void
.end method

.method public final setParameterizedData(Lorg/catrobat/catroid/common/ParameterizedData;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/common/ParameterizedData;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    return-void
.end method

.method public setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 3
    .param p1, "parent"    # Lorg/catrobat/catroid/content/bricks/Brick;

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 111
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 112
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    move-object v2, p0

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick;->setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 111
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;

    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    .line 115
    return-void
.end method

.method protected updateSelectorText()V
    .locals 8

    .line 58
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->updateSelectorText()V

    .line 59
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->getUserLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 60
    .local v0, "listSize":I
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->view:Landroid/view/View;

    const v2, 0x7f0a0184

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 61
    .local v1, "firstLabel":Landroid/widget/TextView;
    const-string v2, "firstLabel"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->view:Landroid/view/View;

    const-string v3, "view"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 62
    nop

    .line 63
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 61
    const v6, 0x7f100002

    invoke-virtual {v2, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->view:Landroid/view/View;

    const v5, 0x7f0a0186

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 66
    .local v2, "secondLabel":Landroid/widget/TextView;
    const-string v5, "secondLabel"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->view:Landroid/view/View;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 67
    nop

    .line 68
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 66
    const v5, 0x7f100003

    invoke-virtual {v3, v5, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method
