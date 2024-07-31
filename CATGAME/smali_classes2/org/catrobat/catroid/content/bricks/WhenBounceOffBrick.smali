.class public Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;
.super Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;
.source "WhenBounceOffBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<",
        "Lorg/catrobat/catroid/content/Sprite;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANYTHING_ESCAPE_CHAR:Ljava/lang/String; = "\u0000"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private script:Lorg/catrobat/catroid/content/WhenBounceOffScript;

.field private transient spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    new-instance v0, Lorg/catrobat/catroid/content/WhenBounceOffScript;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/WhenBounceOffScript;-><init>()V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;-><init>(Lorg/catrobat/catroid/content/WhenBounceOffScript;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/WhenBounceOffScript;)V
    .locals 1
    .param p1, "script"    # Lorg/catrobat/catroid/content/WhenBounceOffScript;

    .line 57
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;-><init>()V

    .line 58
    invoke-virtual {p1, p0}, Lorg/catrobat/catroid/content/WhenBounceOffScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 59
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/WhenBounceOffScript;->isCommentedOut()Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;->commentedOut:Z

    .line 60
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;->script:Lorg/catrobat/catroid/content/WhenBounceOffScript;

    .line 61
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 124
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 119
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 120
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;->clone()Lorg/catrobat/catroid/content/bricks/BrickBaseType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;->clone()Lorg/catrobat/catroid/content/bricks/BrickBaseType;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/content/bricks/BrickBaseType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 65
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;

    .line 67
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;->script:Lorg/catrobat/catroid/content/WhenBounceOffScript;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/WhenBounceOffScript;->clone()Lorg/catrobat/catroid/content/Script;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/WhenBounceOffScript;

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;->script:Lorg/catrobat/catroid/content/WhenBounceOffScript;

    .line 68
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/WhenBounceOffScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 69
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 70
    return-object v0
.end method

.method public getScript()Lorg/catrobat/catroid/content/Script;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;->script:Lorg/catrobat/catroid/content/WhenBounceOffScript;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f1201fa

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    const v2, 0x7f0a02b7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;->view:Landroid/view/View;

    invoke-direct {v1, v2, v3, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;Ljava/util/List;)V

    iput-object v1, p0, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 88
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setOnItemSelectedListener(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;)V

    .line 89
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;->script:Lorg/catrobat/catroid/content/WhenBounceOffScript;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/WhenBounceOffScript;->getSpriteToBounceOffName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;->view:Landroid/view/View;

    return-object v1
.end method

.method public getViewResource()I
    .locals 1

    .line 75
    const v0, 0x7f0d0106

    return v0
.end method

.method public onEditOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 100
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p2, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;->onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/Sprite;)V

    return-void
.end method

.method public onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 2
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "item"    # Lorg/catrobat/catroid/content/Sprite;

    .line 109
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;->script:Lorg/catrobat/catroid/content/WhenBounceOffScript;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/WhenBounceOffScript;->setSpriteToBounceOffName(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onNewOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 96
    return-void
.end method

.method public onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "string"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;->script:Lorg/catrobat/catroid/content/WhenBounceOffScript;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/WhenBounceOffScript;->setSpriteToBounceOffName(Ljava/lang/String;)V

    .line 105
    return-void
.end method
