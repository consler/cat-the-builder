.class public final Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;
.super Lorg/catrobat/catroid/content/bricks/UserListBrick;
.source "ParameterizedEndBrick.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0015H\u0014J\u0008\u0010\u0017\u001a\u00020\u0015H\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;",
        "Lorg/catrobat/catroid/content/bricks/UserListBrick;",
        "parent",
        "Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;",
        "(Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;)V",
        "()V",
        "addActionToSequence",
        "",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "sequence",
        "Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;",
        "consistsOfMultipleParts",
        "",
        "getAllParts",
        "",
        "Lorg/catrobat/catroid/content/bricks/Brick;",
        "getBrickID",
        "Ljava/util/UUID;",
        "getDragAndDropTargetList",
        "getPositionInDragAndDropTargetList",
        "",
        "getSpinnerId",
        "getViewResource",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/UserListBrick;-><init>()V

    .line 32
    nop

    .line 33
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ASSERT_LOOP_ACTUAL:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    const v1, 0x7f0a0182

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;)V
    .locals 1
    .param p1, "parent"    # Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;-><init>()V

    .line 37
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick;

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 8
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sequence"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    nop

    .line 52
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v1

    .line 53
    move-object v3, p2

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ASSERT_LOOP_ACTUAL:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    .line 54
    iget-object v5, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 55
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    if-eqz v0, :cond_0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;->getParameterizedData()Lorg/catrobat/catroid/common/ParameterizedData;

    move-result-object v6

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;->getPositionInformation()Ljava/lang/String;

    move-result-object v7

    .line 52
    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/catrobat/catroid/content/ActionFactory;->createParameterizedAssertAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserList;Lorg/catrobat/catroid/common/ParameterizedData;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 51
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 58
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.catroid.content.bricks.ParameterizedBrick"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public consistsOfMultipleParts()Z
    .locals 1

    .line 40
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

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    const-string v1, "parent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getAllParts()Ljava/util/List;

    move-result-object v0

    const-string v1, "parent.allParts"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getBrickID()Ljava/util/UUID;
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    const-string v1, "parent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getBrickID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "parent.brickID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDragAndDropTargetList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    const-string v1, "parent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getParent()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    const-string v1, "parent.parent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getDragAndDropTargetList()Ljava/util/List;

    move-result-object v0

    const-string v1, "parent.parent.dragAndDropTargetList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPositionInDragAndDropTargetList()I
    .locals 2

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    const-string v1, "parent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getParent()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    const-string v1, "parent.parent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getDragAndDropTargetList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected getSpinnerId()I
    .locals 1

    .line 62
    const v0, 0x7f0a0183

    return v0
.end method

.method public getViewResource()I
    .locals 1

    .line 48
    const v0, 0x7f0d00a2

    return v0
.end method
