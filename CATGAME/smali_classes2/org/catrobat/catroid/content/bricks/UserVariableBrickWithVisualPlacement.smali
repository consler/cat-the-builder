.class public abstract Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;
.super Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;
.source "UserVariableBrickWithVisualPlacement.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/UserVariableBrickInterface;


# instance fields
.field private transient spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation
.end field

.field protected userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 79
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;

    .line 80
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 81
    return-object v0
.end method

.method public generateIntentForVisualPlacement(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)Landroid/content/Intent;
    .locals 5
    .param p1, "brickFieldX"    # Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .param p2, "brickFieldY"    # Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 143
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->generateIntentForVisualPlacement(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)Landroid/content/Intent;

    move-result-object v0

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 146
    .local v1, "variableValue":Ljava/lang/Object;
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 150
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Lorg/catrobat/catroid/utils/ShowTextUtils;->isNumberAndInteger(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    invoke-static {v2}, Lorg/catrobat/catroid/utils/ShowTextUtils;->getStringAsInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    :cond_1
    const-string v3, "TEXT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const/high16 v3, -0x1000000

    invoke-static {v3}, Lorg/catrobat/catroid/utils/ShowTextUtils;->convertColorToString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TEXT_COLOR"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "TEXT_SIZE"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 158
    const/4 v3, 0x1

    const-string v4, "TEXT_ALIGNMENT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    return-object v0
.end method

.method protected abstract getSpinnerId()I
.end method

.method public getUserVariable()Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 88
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    .line 90
    .local v0, "sprite":Lorg/catrobat/catroid/content/Sprite;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    new-instance v2, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;

    const v3, 0x7f1205aa

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getUserVariables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getUserVariables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getMultiplayerVariables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    new-instance v2, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->getSpinnerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->view:Landroid/view/View;

    invoke-direct {v2, v3, v4, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;Ljava/util/List;)V

    iput-object v2, p0, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 97
    invoke-virtual {v2, p0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setOnItemSelectedListener(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;)V

    .line 98
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    .line 99
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->view:Landroid/view/View;

    return-object v2
.end method

.method public getXBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 133
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public getYBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 138
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public onEditOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 120
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p2, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    return-void
.end method

.method public onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "item"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 128
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 129
    return-void
.end method

.method public onNewOptionSelected(Ljava/lang/Integer;)V
    .locals 10
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 104
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->view:Landroid/view/View;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 105
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    if-nez v0, :cond_0

    .line 106
    return-void

    .line 109
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v7

    .line 110
    .local v7, "currentProject":Lorg/catrobat/catroid/content/Project;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v8

    .line 112
    .local v8, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    new-instance v9, Lorg/catrobat/catroid/content/bricks/brickspinner/UserVariableBrickTextInputDialogBuilder;

    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    iget-object v6, p0, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    move-object v1, v9

    move-object v2, v7

    move-object v3, v8

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/content/bricks/brickspinner/UserVariableBrickTextInputDialogBuilder;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/formulaeditor/UserVariable;Landroidx/appcompat/app/AppCompatActivity;Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;)V

    .line 115
    .local v1, "builder":Lorg/catrobat/catroid/content/bricks/brickspinner/UserVariableBrickTextInputDialogBuilder;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/UserVariableBrickTextInputDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 116
    return-void
.end method

.method public onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "string"    # Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0
    .param p1, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 71
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 72
    return-void
.end method
