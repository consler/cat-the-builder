.class public abstract Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "VisualPlacementBrick.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    return-void
.end method

.method private isCorrectTextField(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->getXEditTextId()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->getYEditTextId()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private showDialog(Landroid/view/View;Landroidx/fragment/app/Fragment;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "currentFragment"    # Landroidx/fragment/app/Fragment;

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 78
    const v2, 0x7f1200f0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 79
    const v2, 0x7f120096

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 81
    .local v1, "optionStrings":[Ljava/lang/String;
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lorg/catrobat/catroid/content/bricks/-$$Lambda$VisualPlacementBrick$29fjovOl2RH-sAIaLGlx5ukIRqY;

    invoke-direct {v3, p0, p2, p1}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$VisualPlacementBrick$29fjovOl2RH-sAIaLGlx5ukIRqY;-><init>(Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 93
    return-void
.end method

.method private startVisualPlacementActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->view:Landroid/view/View;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 125
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    instance-of v1, v0, Lorg/catrobat/catroid/ui/SpriteActivity;

    if-nez v1, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    const/16 v1, 0x7e3

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 129
    return-void
.end method


# virtual methods
.method public areAllBrickFieldsNumbers()Z
    .locals 1

    .line 141
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->getXBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->isBrickFieldANumber(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->getYBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->isBrickFieldANumber(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0
.end method

.method public generateIntentForVisualPlacement(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)Landroid/content/Intent;
    .locals 8
    .param p1, "brickFieldX"    # Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .param p2, "brickFieldY"    # Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 101
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v0

    .line 102
    .local v0, "formulax":Lorg/catrobat/catroid/formulaeditor/Formula;
    invoke-virtual {p0, p2}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    .line 103
    .local v1, "formulay":Lorg/catrobat/catroid/formulaeditor/Formula;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const-string v4, "BRICK_HASH"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    :try_start_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v3

    .line 109
    .local v3, "projectManager":Lorg/catrobat/catroid/ProjectManager;
    new-instance v4, Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v3}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v5

    .line 110
    invoke-virtual {v3}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 111
    .local v4, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v4}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 112
    .local v5, "xValue":I
    invoke-virtual {v1, v4}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    .line 116
    .end local v4    # "scope":Lorg/catrobat/catroid/content/Scope;
    .local v3, "yValue":I
    goto :goto_0

    .line 113
    .end local v3    # "yValue":I
    .end local v5    # "xValue":I
    :catch_0
    move-exception v3

    .line 114
    .local v3, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v5, 0x0

    .line 115
    .restart local v5    # "xValue":I
    const/4 v4, 0x0

    move v3, v4

    .line 117
    .local v3, "yValue":I
    :goto_0
    const-string v4, "X"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const-string v4, "Y"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    return-object v2
.end method

.method public abstract getXBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
.end method

.method public abstract getXEditTextId()I
.end method

.method public abstract getYBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
.end method

.method public abstract getYEditTextId()I
.end method

.method public isVisualPlacement(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 137
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->isCorrectTextField(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->areAllBrickFieldsNumbers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$showDialog$0$VisualPlacementBrick(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "currentFragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .line 82
    if-eqz p4, :cond_1

    const/4 v0, 0x1

    if-eq p4, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    instance-of v0, p1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    if-eqz v0, :cond_2

    .line 88
    invoke-super {p0, p2}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->showFormulaEditorToEditFormula(Landroid/view/View;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->getXBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->getYBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->placeVisually(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 85
    nop

    .line 92
    :cond_2
    :goto_0
    return-void
.end method

.method public placeVisually(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V
    .locals 1
    .param p1, "brickFieldX"    # Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .param p2, "brickFieldY"    # Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 96
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->generateIntentForVisualPlacement(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->startVisualPlacementActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public setCoordinates(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 132
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->getXBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 133
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->getYBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 134
    return-void
.end method

.method public showFormulaEditorToEditFormula(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 54
    invoke-static {p1}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 55
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    if-nez v0, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a03b7

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 60
    .local v1, "currentFragment":Landroidx/fragment/app/Fragment;
    instance-of v2, v1, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    if-eqz v2, :cond_1

    .line 61
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->showFormulaEditorToEditFormula(Landroid/view/View;)V

    .line 62
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->isVisualPlacement(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    invoke-direct {p0, p1, v1}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->showDialog(Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 65
    :cond_1
    instance-of v2, v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    if-eqz v2, :cond_3

    .line 66
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->isVisualPlacement(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    invoke-direct {p0, p1, v1}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->showDialog(Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 69
    :cond_2
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->showFormulaEditorToEditFormula(Landroid/view/View;)V

    .line 72
    :cond_3
    :goto_0
    return-void
.end method
