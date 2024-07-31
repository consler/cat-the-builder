.class public final Lorg/catrobat/catroid/content/bricks/WriteVariableToFileBrick;
.super Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithFormula;
.source "WriteVariableToFileBrick.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u0005\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0014J\u0008\u0010\u0014\u001a\u00020\u0013H\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/bricks/WriteVariableToFileBrick;",
        "Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithFormula;",
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
        "getSpinnerId",
        "",
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
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithFormula;-><init>()V

    .line 39
    nop

    .line 40
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->WRITE_FILENAME:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    const v1, 0x7f0a02ca

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/WriteVariableToFileBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

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

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/WriteVariableToFileBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    const-string v0, "formula"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/WriteVariableToFileBrick;-><init>()V

    .line 36
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->WRITE_FILENAME:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/WriteVariableToFileBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 6
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sequence"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WriteVariableToFileBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 49
    .local v1, "$i$a$-let-WriteVariableToFileBrick$addActionToSequence$1":I
    nop

    .line 50
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v2

    .line 51
    move-object v3, p2

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    sget-object v4, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->WRITE_FILENAME:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v4, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/content/bricks/WriteVariableToFileBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/content/bricks/WriteVariableToFileBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 50
    invoke-virtual {v2, p1, v3, v4, v5}, Lorg/catrobat/catroid/content/ActionFactory;->createWriteVariableToFileAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserVariable;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v2

    .line 49
    invoke-virtual {p2, v2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 52
    nop

    .line 48
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-WriteVariableToFileBrick$addActionToSequence$1":I
    :cond_0
    nop

    .line 53
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 3
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const-string v0, "requiredResourcesSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->addAll(Ljava/util/Collection;)Z

    .line 57
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithFormula;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 58
    return-void
.end method

.method protected getSpinnerId()I
    .locals 1

    .line 45
    const v0, 0x7f0a02cc

    return v0
.end method

.method public getViewResource()I
    .locals 1

    .line 43
    const v0, 0x7f0d010f

    return v0
.end method
