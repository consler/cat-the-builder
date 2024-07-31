.class public final Lorg/catrobat/catroid/content/bricks/TapForBrick;
.super Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;
.source "TapForBrick.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/TapForBrick$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B%\u0008\u0016\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u000cB\u0005\u00a2\u0006\u0002\u0010\rJ\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0003H\u0016J\n\u0010\u001b\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u001c\u001a\u00020\u0003H\u0016J\n\u0010\u001d\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u001e\u001a\u00020\u0003H\u0016\u00a8\u0006 "
    }
    d2 = {
        "Lorg/catrobat/catroid/content/bricks/TapForBrick;",
        "Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;",
        "xPositionValue",
        "",
        "yPositionValue",
        "durationInSecondsValue",
        "",
        "(IID)V",
        "xPosition",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "yPosition",
        "durationInSeconds",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "()V",
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
.field public static final Companion:Lorg/catrobat/catroid/content/bricks/TapForBrick$Companion;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/content/bricks/TapForBrick$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/bricks/TapForBrick$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/TapForBrick;->Companion:Lorg/catrobat/catroid/content/bricks/TapForBrick$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;-><init>()V

    .line 82
    nop

    .line 83
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    const v1, 0x7f0a0288

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/TapForBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 84
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    const v1, 0x7f0a0289

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/TapForBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 85
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    const v1, 0x7f0a0287

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/TapForBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(IID)V
    .locals 4
    .param p1, "xPositionValue"    # I
    .param p2, "yPositionValue"    # I
    .param p3, "durationInSecondsValue"    # D

    .line 34
    nop

    .line 35
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    .line 36
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    .line 37
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    .line 34
    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/TapForBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "xPosition"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "yPosition"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p3, "durationInSeconds"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 40
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/TapForBrick;-><init>()V

    .line 41
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/TapForBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 42
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/TapForBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 43
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0, p3}, Lorg/catrobat/catroid/content/bricks/TapForBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 7
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sequence"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    nop

    .line 61
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v1

    .line 62
    move-object v3, p2

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 63
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/TapForBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    .line 64
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/TapForBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v5

    .line 65
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/TapForBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v6

    .line 61
    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/catrobat/catroid/content/ActionFactory;->createTapForAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 60
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 68
    return-void
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 46
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public bridge synthetic getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/TapForBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/TapForBrick;->view:Landroid/view/View;

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/TapForBrick;->setSecondsLabel(Landroid/view/View;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/TapForBrick;->view:Landroid/view/View;

    const-string v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 48
    const v0, 0x7f0d00f5

    return v0
.end method

.method public getXBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 70
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public getXEditTextId()I
    .locals 1

    .line 74
    const v0, 0x7f0a0288

    return v0
.end method

.method public getYBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 72
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public getYEditTextId()I
    .locals 1

    .line 76
    const v0, 0x7f0a0289

    return v0
.end method
