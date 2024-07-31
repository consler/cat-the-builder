.class public final Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;
.super Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;
.source "TouchAndSlideBrick.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \'2\u00020\u0001:\u0001\'B/\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tB9\u0008\u0016\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u0010B\u0005\u00a2\u0006\u0002\u0010\u0011J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u0003H\u0016J\n\u0010!\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010\"\u001a\u00020\u0003H\u0016J\n\u0010#\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010$\u001a\u00020\u0003H\u0016J\u0012\u0010%\u001a\u00020\u00152\u0008\u0010&\u001a\u0004\u0018\u00010\u001dH\u0016R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;",
        "Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;",
        "xPositionValue",
        "",
        "yPositionValue",
        "xChangeValue",
        "yChangeValue",
        "durationInSecondsValue",
        "",
        "(IIIID)V",
        "xPosition",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "yPosition",
        "xChange",
        "yChange",
        "durationInSeconds",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "()V",
        "startCoordinates",
        "",
        "addActionToSequence",
        "",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "sequence",
        "Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;",
        "getDefaultBrickField",
        "Lorg/catrobat/catroid/content/bricks/Brick$BrickField;",
        "getView",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "getViewResource",
        "getXBrickField",
        "getXEditTextId",
        "getYBrickField",
        "getYEditTextId",
        "showFormulaEditorToEditFormula",
        "view",
        "Companion",
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
.field public static final Companion:Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick$Companion;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private startCoordinates:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->Companion:Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;-><init>()V

    .line 34
    nop

    .line 35
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    const v1, 0x7f0a028f

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 36
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    const v1, 0x7f0a0290

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 37
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    const v1, 0x7f0a0291

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 38
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    const v1, 0x7f0a0292

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 39
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    const v1, 0x7f0a0287

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 40
    nop

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->startCoordinates:Z

    return-void
.end method

.method public constructor <init>(IIIID)V
    .locals 6
    .param p1, "xPositionValue"    # I
    .param p2, "yPositionValue"    # I
    .param p3, "xChangeValue"    # I
    .param p4, "yChangeValue"    # I
    .param p5, "durationInSecondsValue"    # D

    .line 42
    nop

    .line 49
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    .line 50
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    .line 51
    new-instance v3, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    .line 52
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    .line 53
    new-instance v5, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    .line 48
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "xPosition"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "yPosition"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p3, "xChange"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "yChange"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "durationInSeconds"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 56
    nop

    .line 62
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;-><init>()V

    .line 63
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 64
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 65
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0, p3}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 66
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0, p4}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 67
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0, p5}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 9
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sequence"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    nop

    .line 87
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v1

    .line 88
    move-object v3, p2

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 89
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    .line 90
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v5

    .line 91
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v6

    .line 92
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v7

    .line 93
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v8

    .line 87
    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lorg/catrobat/catroid/content/ActionFactory;->createTouchAndSlideAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 86
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 96
    return-void
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 72
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public bridge synthetic getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 78
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->view:Landroid/view/View;

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->setSecondsLabel(Landroid/view/View;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    .line 79
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->view:Landroid/view/View;

    const-string v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 74
    const v0, 0x7f0d00f8

    return v0
.end method

.method public getXBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 105
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->startCoordinates:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    :goto_0
    return-object v0
.end method

.method public getXEditTextId()I
    .locals 1

    .line 111
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->startCoordinates:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a028f

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0291

    :goto_0
    return v0
.end method

.method public getYBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 108
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->startCoordinates:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    :goto_0
    return-object v0
.end method

.method public getYEditTextId()I
    .locals 1

    .line 114
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->startCoordinates:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0290

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0292

    :goto_0
    return v0
.end method

.method public showFormulaEditorToEditFormula(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 99
    nop

    .line 100
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a028f

    if-eq v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0290

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;->startCoordinates:Z

    .line 101
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->showFormulaEditorToEditFormula(Landroid/view/View;)V

    .line 102
    return-void
.end method
