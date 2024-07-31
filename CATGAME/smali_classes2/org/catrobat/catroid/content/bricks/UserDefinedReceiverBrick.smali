.class public Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;
.super Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;
.source "UserDefinedReceiverBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public spinnerSelection:I

.field private userBrickSpace:Landroid/widget/LinearLayout;

.field private userDefinedBrick:Lorg/catrobat/catroid/content/bricks/Brick;

.field private userDefinedScript:Lorg/catrobat/catroid/content/UserDefinedScript;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;-><init>()V

    .line 71
    new-instance v0, Lorg/catrobat/catroid/content/UserDefinedScript;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/UserDefinedScript;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->userDefinedScript:Lorg/catrobat/catroid/content/UserDefinedScript;

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/UserDefinedScript;)V
    .locals 1
    .param p1, "userDefinedScript"    # Lorg/catrobat/catroid/content/UserDefinedScript;

    .line 57
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;-><init>()V

    .line 58
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/UserDefinedScript;->getScreenRefresh()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->spinnerSelection:I

    .line 60
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->userDefinedScript:Lorg/catrobat/catroid/content/UserDefinedScript;

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)V
    .locals 2
    .param p1, "userDefinedBrick"    # Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    .line 63
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;-><init>()V

    .line 64
    new-instance v0, Lorg/catrobat/catroid/content/UserDefinedScript;

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->getUserDefinedBrickID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/UserDefinedScript;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->userDefinedScript:Lorg/catrobat/catroid/content/UserDefinedScript;

    .line 65
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/content/UserDefinedScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 66
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->userDefinedBrick:Lorg/catrobat/catroid/content/bricks/Brick;

    .line 67
    return-void
.end method

.method private setUpSpinner(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    const v2, 0x7f120179

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    const v2, 0x7f12017a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 115
    const v2, 0x7f0a0234

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->view:Landroid/view/View;

    const v4, 0x7f0d01e6

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;ILjava/util/List;)V

    .line 116
    .local v1, "spinner":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;>;"
    const v2, 0x7f06005d

    invoke-virtual {v1, p1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSpinnerFontColor(Landroid/content/Context;I)V

    .line 117
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setOnItemSelectedListener(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;)V

    .line 119
    iget v2, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->spinnerSelection:I

    if-nez v2, :cond_0

    .line 120
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(I)V

    .line 123
    :cond_0
    iget v2, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->spinnerSelection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 124
    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(I)V

    .line 126
    :cond_1
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 135
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

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

    .line 85
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;

    .line 86
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->userDefinedScript:Lorg/catrobat/catroid/content/UserDefinedScript;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/UserDefinedScript;->clone()Lorg/catrobat/catroid/content/Script;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/UserDefinedScript;

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->userDefinedScript:Lorg/catrobat/catroid/content/UserDefinedScript;

    .line 87
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/UserDefinedScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 88
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->userDefinedBrick:Lorg/catrobat/catroid/content/bricks/Brick;

    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v1}, Lorg/catrobat/catroid/content/bricks/Brick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v1

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->userDefinedBrick:Lorg/catrobat/catroid/content/bricks/Brick;

    .line 91
    :cond_0
    return-object v0
.end method

.method public getScript()Lorg/catrobat/catroid/content/Script;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->userDefinedScript:Lorg/catrobat/catroid/content/UserDefinedScript;

    return-object v0
.end method

.method public getUserDefinedBrick()Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->userDefinedBrick:Lorg/catrobat/catroid/content/bricks/Brick;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 97
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->view:Landroid/view/View;

    const v1, 0x7f0a062c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->userBrickSpace:Landroid/widget/LinearLayout;

    .line 98
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->userDefinedBrick:Lorg/catrobat/catroid/content/bricks/Brick;

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    .line 100
    .local v0, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->userDefinedScript:Lorg/catrobat/catroid/content/UserDefinedScript;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/UserDefinedScript;->getUserDefinedBrickID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Sprite;->getUserDefinedBrickByID(Ljava/util/UUID;)Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->userDefinedBrick:Lorg/catrobat/catroid/content/bricks/Brick;

    .line 102
    .end local v0    # "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->userDefinedBrick:Lorg/catrobat/catroid/content/bricks/Brick;

    if-eqz v0, :cond_1

    .line 103
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->userBrickSpace:Landroid/widget/LinearLayout;

    invoke-interface {v0, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    :cond_1
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->setUpSpinner(Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->view:Landroid/view/View;

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 130
    const v0, 0x7f0d00fd

    return v0
.end method

.method public onEditOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 143
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;)V

    return-void
.end method

.method public onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "item"    # Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    .line 160
    return-void
.end method

.method public onNewOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 139
    return-void
.end method

.method public onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 5
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "string"    # Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f120179

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 150
    iput v2, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->spinnerSelection:I

    .line 152
    :cond_0
    const v1, 0x7f12017a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 153
    iput v3, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->spinnerSelection:I

    .line 155
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->userDefinedScript:Lorg/catrobat/catroid/content/UserDefinedScript;

    iget v4, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->spinnerSelection:I

    if-nez v4, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/UserDefinedScript;->setScreenRefresh(Ljava/lang/Boolean;)V

    .line 156
    return-void
.end method
