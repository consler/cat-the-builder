.class public final Lorg/catrobat/catroid/content/bricks/SetBackgroundByIndexAndWaitBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "SetBackgroundByIndexAndWaitBrick.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u000f\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0004H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/bricks/SetBackgroundByIndexAndWaitBrick;",
        "Lorg/catrobat/catroid/content/bricks/FormulaBrick;",
        "()V",
        "index",
        "",
        "(I)V",
        "formula",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "addActionToSequence",
        "",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "sequence",
        "Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;",
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

    .line 32
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 38
    nop

    .line 39
    nop

    .line 40
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->BACKGROUND_WAIT_INDEX:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 41
    nop

    .line 39
    const v1, 0x7f0a01ee

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetBackgroundByIndexAndWaitBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "index"    # I

    .line 33
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/SetBackgroundByIndexAndWaitBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 2
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    const-string v0, "formula"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 38
    nop

    .line 39
    nop

    .line 40
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->BACKGROUND_WAIT_INDEX:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 41
    nop

    .line 39
    const v1, 0x7f0a01ee

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetBackgroundByIndexAndWaitBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 43
    nop

    .line 35
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->BACKGROUND_WAIT_INDEX:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/SetBackgroundByIndexAndWaitBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 4
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sequence"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    nop

    .line 49
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    .line 50
    move-object v1, p2

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 51
    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->BACKGROUND_WAIT_INDEX:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/bricks/SetBackgroundByIndexAndWaitBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v2

    .line 52
    nop

    .line 49
    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/catrobat/catroid/content/ActionFactory;->createSetBackgroundByIndexAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 48
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 55
    return-void
.end method

.method public getViewResource()I
    .locals 1

    .line 45
    const v0, 0x7f0d00d0

    return v0
.end method
