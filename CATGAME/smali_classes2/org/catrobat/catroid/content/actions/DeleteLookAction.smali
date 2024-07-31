.class public final Lorg/catrobat/catroid/content/actions/DeleteLookAction;
.super Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;
.source "DeleteLookAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/DeleteLookAction;",
        "Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;",
        "()V",
        "lookController",
        "Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;",
        "xstreamSerializer",
        "Lorg/catrobat/catroid/io/XstreamSerializer;",
        "getEventId",
        "Lorg/catrobat/catroid/content/eventids/EventId;",
        "setLookController",
        "",
        "setNewLookData",
        "indexOfLookData",
        "",
        "setXStreamSerializer",
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
.field private lookController:Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;

.field private xstreamSerializer:Lorg/catrobat/catroid/io/XstreamSerializer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;-><init>()V

    .line 35
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/DeleteLookAction;->lookController:Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;

    .line 36
    invoke-static {}, Lorg/catrobat/catroid/io/XstreamSerializer;->getInstance()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v0

    const-string v1, "XstreamSerializer.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/DeleteLookAction;->xstreamSerializer:Lorg/catrobat/catroid/io/XstreamSerializer;

    return-void
.end method

.method private final setNewLookData(I)V
    .locals 7
    .param p1, "indexOfLookData"    # I

    .line 61
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/DeleteLookAction;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    if-eqz v0, :cond_7

    .local v0, "$this$apply":Lorg/catrobat/catroid/content/Sprite;
    const/4 v1, 0x0

    .line 62
    .local v1, "$i$a$-apply-DeleteLookAction$setNewLookData$1":I
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    const/4 v4, 0x0

    const-string v5, "look"

    if-eqz v2, :cond_2

    .line 63
    iget-object v2, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v2, v4}, Lorg/catrobat/catroid/content/Look;->setLookData(Lorg/catrobat/catroid/common/LookData;)V

    .line 64
    return-void

    .line 66
    :cond_2
    iget-object v2, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 67
    iget-object v2, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v2

    const-string v6, "look.lookData"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/LookData;->getIsWebRequest()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    iget-object v2, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/Look;->setLookData(Lorg/catrobat/catroid/common/LookData;)V

    goto :goto_2

    .line 69
    :cond_3
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_5

    .line 70
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v2

    const-string v3, "lookList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/common/LookData;

    iget-object v4, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    iget-object v2, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/Look;->setLookData(Lorg/catrobat/catroid/common/LookData;)V

    goto :goto_2

    .line 73
    :cond_4
    iget-object v2, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/Look;->setLookData(Lorg/catrobat/catroid/common/LookData;)V

    .line 74
    goto :goto_2

    .line 76
    :cond_5
    iget-object v2, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v2, v4}, Lorg/catrobat/catroid/content/Look;->setLookData(Lorg/catrobat/catroid/common/LookData;)V

    .line 77
    :goto_2
    nop

    .line 78
    nop

    .line 61
    .end local v0    # "$this$apply":Lorg/catrobat/catroid/content/Sprite;
    .end local v1    # "$i$a$-apply-DeleteLookAction$setNewLookData$1":I
    goto :goto_3

    .line 66
    .restart local v0    # "$this$apply":Lorg/catrobat/catroid/content/Sprite;
    .restart local v1    # "$i$a$-apply-DeleteLookAction$setNewLookData$1":I
    :cond_6
    return-void

    .line 79
    .end local v0    # "$this$apply":Lorg/catrobat/catroid/content/Sprite;
    .end local v1    # "$i$a$-apply-DeleteLookAction$setNewLookData$1":I
    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public getEventId()Lorg/catrobat/catroid/content/eventids/EventId;
    .locals 8

    .line 39
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/DeleteLookAction;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .local v0, "$this$apply":Lorg/catrobat/catroid/content/Sprite;
    const/4 v2, 0x0

    .line 40
    .local v2, "$i$a$-apply-DeleteLookAction$getEventId$1":I
    iget-object v3, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 41
    .local v3, "lookData":Lorg/catrobat/catroid/common/LookData;
    invoke-virtual {v3}, Lorg/catrobat/catroid/common/LookData;->getIsWebRequest()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 42
    invoke-direct {p0, v5}, Lorg/catrobat/catroid/content/actions/DeleteLookAction;->setNewLookData(I)V

    .line 43
    new-instance v4, Lorg/catrobat/catroid/content/eventids/SetLookEventId;

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/DeleteLookAction;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v5

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/DeleteLookAction;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, v6, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v1

    :cond_0
    invoke-direct {v4, v5, v1}, Lorg/catrobat/catroid/content/eventids/SetLookEventId;-><init>(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/common/LookData;)V

    check-cast v4, Lorg/catrobat/catroid/content/eventids/EventId;

    return-object v4

    .line 45
    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v5, 0x1

    :cond_3
    if-eqz v5, :cond_4

    .line 46
    return-object v1

    .line 48
    :cond_4
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 49
    .local v4, "indexOfLookData":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 50
    return-object v1

    .line 52
    :cond_5
    add-int/lit8 v5, v4, 0x1

    invoke-direct {p0, v5}, Lorg/catrobat/catroid/content/actions/DeleteLookAction;->setNewLookData(I)V

    .line 53
    invoke-virtual {v3}, Lorg/catrobat/catroid/common/LookData;->invalidate()V

    .line 54
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 55
    iget-object v5, p0, Lorg/catrobat/catroid/content/actions/DeleteLookAction;->xstreamSerializer:Lorg/catrobat/catroid/io/XstreamSerializer;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v6

    const-string v7, "ProjectManager.getInstance()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/io/XstreamSerializer;->saveProject(Lorg/catrobat/catroid/content/Project;)Z

    .line 56
    .end local v3    # "lookData":Lorg/catrobat/catroid/common/LookData;
    .end local v4    # "indexOfLookData":I
    nop

    .line 39
    .end local v0    # "$this$apply":Lorg/catrobat/catroid/content/Sprite;
    .end local v2    # "$i$a$-apply-DeleteLookAction$getEventId$1":I
    goto :goto_0

    .line 40
    .restart local v0    # "$this$apply":Lorg/catrobat/catroid/content/Sprite;
    .restart local v2    # "$i$a$-apply-DeleteLookAction$getEventId$1":I
    :cond_6
    return-object v1

    .line 57
    .end local v0    # "$this$apply":Lorg/catrobat/catroid/content/Sprite;
    .end local v2    # "$i$a$-apply-DeleteLookAction$getEventId$1":I
    :cond_7
    :goto_0
    new-instance v0, Lorg/catrobat/catroid/content/eventids/SetLookEventId;

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/DeleteLookAction;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/DeleteLookAction;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v1

    :cond_8
    invoke-direct {v0, v2, v1}, Lorg/catrobat/catroid/content/eventids/SetLookEventId;-><init>(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/common/LookData;)V

    check-cast v0, Lorg/catrobat/catroid/content/eventids/EventId;

    return-object v0
.end method

.method public final setLookController(Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;)V
    .locals 1
    .param p1, "lookController"    # Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;

    const-string v0, "lookController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/DeleteLookAction;->lookController:Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;

    .line 84
    return-void
.end method

.method public final setXStreamSerializer(Lorg/catrobat/catroid/io/XstreamSerializer;)V
    .locals 1
    .param p1, "xstreamSerializer"    # Lorg/catrobat/catroid/io/XstreamSerializer;

    const-string v0, "xstreamSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/DeleteLookAction;->xstreamSerializer:Lorg/catrobat/catroid/io/XstreamSerializer;

    .line 89
    return-void
.end method
