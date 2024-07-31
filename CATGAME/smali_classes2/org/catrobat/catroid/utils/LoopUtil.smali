.class public final Lorg/catrobat/catroid/utils/LoopUtil;
.super Ljava/lang/Object;
.source "LoopUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoopUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoopUtil.kt\norg/catrobat/catroid/utils/LoopUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n734#2:106\n825#2,2:107\n1819#2,2:109\n*E\n*S KotlinDebug\n*F\n+ 1 LoopUtil.kt\norg/catrobat/catroid/utils/LoopUtil\n*L\n85#1:106\n85#1,2:107\n97#1,2:109\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u0008\u0010\r\u001a\u00020\u0008H\u0007R\u001c\u0010\u0003\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/catrobat/catroid/utils/LoopUtil;",
        "",
        "()V",
        "loopDelayBricks",
        "",
        "Lkotlin/reflect/KClass;",
        "Lorg/catrobat/catroid/content/bricks/BrickBaseType;",
        "checkLoopBrickForLoopDelay",
        "",
        "loopBrick",
        "Lorg/catrobat/catroid/content/bricks/CompositeBrick;",
        "script",
        "Lorg/catrobat/catroid/content/Script;",
        "isAnyStitchRunning",
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
.field public static final INSTANCE:Lorg/catrobat/catroid/utils/LoopUtil;

.field private static final loopDelayBricks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lorg/catrobat/catroid/content/bricks/BrickBaseType;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Lorg/catrobat/catroid/utils/LoopUtil;

    invoke-direct {v0}, Lorg/catrobat/catroid/utils/LoopUtil;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/utils/LoopUtil;->INSTANCE:Lorg/catrobat/catroid/utils/LoopUtil;

    .line 65
    const/16 v0, 0x1d

    new-array v0, v0, [Lkotlin/reflect/KClass;

    .line 66
    const-class v1, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetXBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetYBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/ChangeXByNBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 67
    const-class v1, Lorg/catrobat/catroid/content/bricks/ChangeYByNBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/GoToBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/IfOnEdgeBounceBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 68
    const-class v1, Lorg/catrobat/catroid/content/bricks/MoveNStepsBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/TurnLeftBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/TurnRightBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 69
    const-class v1, Lorg/catrobat/catroid/content/bricks/PointInDirectionBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/PointToBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetLookBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 70
    const-class v1, Lorg/catrobat/catroid/content/bricks/SetLookByIndexBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/NextLookBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/PreviousLookBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 71
    const-class v1, Lorg/catrobat/catroid/content/bricks/SetSizeToBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/ChangeSizeByNBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetTransparencyBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 72
    const-class v1, Lorg/catrobat/catroid/content/bricks/ChangeTransparencyByNBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetBrightnessBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 73
    const-class v1, Lorg/catrobat/catroid/content/bricks/ChangeBrightnessByNBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetColorBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/ChangeColorByNBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 74
    const-class v1, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetBackgroundByIndexBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 75
    const-class v1, Lorg/catrobat/catroid/content/bricks/SetVolumeToBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/ChangeVolumeByNBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetTempoBrick;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 65
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/utils/LoopUtil;->loopDelayBricks:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkLoopBrickForLoopDelay(Lorg/catrobat/catroid/content/bricks/CompositeBrick;Lorg/catrobat/catroid/content/Script;)Z
    .locals 13
    .param p0, "loopBrick"    # Lorg/catrobat/catroid/content/bricks/CompositeBrick;
    .param p1, "script"    # Lorg/catrobat/catroid/content/Script;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "loopBrick"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "script"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 80
    .local v0, "allNestedBricks":Ljava/util/List;
    invoke-interface {p0, v0}, Lorg/catrobat/catroid/content/bricks/CompositeBrick;->addToFlatList(Ljava/util/List;)V

    .line 82
    instance-of v1, p1, Lorg/catrobat/catroid/content/UserDefinedScript;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/content/UserDefinedScript;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/UserDefinedScript;->getScreenRefresh()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    return v2

    .line 85
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 106
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 107
    .local v6, "$i$f$filterTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v8

    check-cast v10, Lorg/catrobat/catroid/content/bricks/Brick;

    .local v10, "b":Lorg/catrobat/catroid/content/bricks/Brick;
    const/4 v11, 0x0

    .line 85
    .local v11, "$i$a$-filter-LoopUtil$checkLoopBrickForLoopDelay$1":I
    invoke-interface {v10}, Lorg/catrobat/catroid/content/bricks/Brick;->isCommentedOut()Z

    move-result v12

    .end local v10    # "b":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v11    # "$i$a$-filter-LoopUtil$checkLoopBrickForLoopDelay$1":I
    xor-int/2addr v9, v12

    if-eqz v9, :cond_1

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo":I
    check-cast v4, Ljava/util/List;

    .line 106
    nop

    .end local v1    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 85
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 86
    .local v3, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    sget-object v4, Lorg/catrobat/catroid/utils/LoopUtil;->loopDelayBricks:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    return v9

    .line 85
    .end local v3    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_3
    goto :goto_1

    .line 90
    :cond_4
    return v2
.end method

.method public static final isAnyStitchRunning()Z
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 95
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 96
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    const-string v2, "ProjectManager.getInstance()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 97
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    const-string v2, "ProjectManager.getInstance().currentProject"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getSpriteListWithClones()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 109
    .local v2, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lorg/catrobat/catroid/content/Sprite;

    .local v5, "it":Lorg/catrobat/catroid/content/Sprite;
    const/4 v6, 0x0

    .line 98
    .local v6, "$i$a$-forEach-LoopUtil$isAnyStitchRunning$1":I
    iget-object v7, v5, Lorg/catrobat/catroid/content/Sprite;->runningStitch:Lorg/catrobat/catroid/embroidery/RunningStitch;

    const-string v8, "it.runningStitch"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/catrobat/catroid/embroidery/RunningStitch;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 99
    const/4 v1, 0x1

    return v1

    .line 101
    :cond_0
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Lorg/catrobat/catroid/content/Sprite;
    .end local v6    # "$i$a$-forEach-LoopUtil$isAnyStitchRunning$1":I
    goto :goto_0

    .line 110
    :cond_1
    nop

    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    goto :goto_1

    :cond_2
    nop

    .line 102
    :goto_1
    return v1

    .line 96
    :cond_3
    return v1

    .line 95
    :cond_4
    return v1
.end method
