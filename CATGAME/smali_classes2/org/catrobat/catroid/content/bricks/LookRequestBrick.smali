.class public final Lorg/catrobat/catroid/content/bricks/LookRequestBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "LookRequestBrick.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u0005\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/bricks/LookRequestBrick;",
        "Lorg/catrobat/catroid/content/bricks/FormulaBrick;",
        "value",
        "",
        "(Ljava/lang/String;)V",
        "formula",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "()V",
        "addActionToSequence",
        "",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "sequence",
        "Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;",
        "addRequiredResources",
        "requiredResourcesSet",
        "Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;",
        "getViewResource",
        "",
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

    .line 39
    nop

    .line 40
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->LOOK_REQUEST:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    const v1, 0x7f0a016a

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/LookRequestBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/LookRequestBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    const-string v0, "formula"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/LookRequestBrick;-><init>()V

    .line 36
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->LOOK_REQUEST:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/LookRequestBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sequence"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    .line 47
    move-object v1, p2

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 48
    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->LOOK_REQUEST:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/bricks/LookRequestBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v2

    .line 46
    invoke-virtual {v0, p1, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createLookRequestAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 51
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const-string v0, "requiredResourcesSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 55
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 56
    return-void
.end method

.method public getViewResource()I
    .locals 1

    .line 43
    const v0, 0x7f0d0097

    return v0
.end method
