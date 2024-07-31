.class public Lorg/catrobat/catroid/content/bricks/SceneStartBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "SceneStartBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/content/bricks/BrickBaseType;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<",
        "Lorg/catrobat/catroid/content/Scene;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private sceneToStart:Ljava/lang/String;

.field private transient spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<",
            "Lorg/catrobat/catroid/content/Scene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->sceneToStart:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneToStart"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->sceneToStart:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 147
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->sceneToStart:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/catrobat/catroid/content/ActionFactory;->createSceneStartAction(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 148
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

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

    .line 75
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;

    .line 76
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/SceneStartBrick;
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 77
    return-object v0
.end method

.method public getSceneToStart()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->sceneToStart:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;

    const v2, 0x7f1205aa

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    const v2, 0x7f0a01e5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->view:Landroid/view/View;

    invoke-direct {v1, v2, v3, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;Ljava/util/List;)V

    iput-object v1, p0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 93
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setOnItemSelectedListener(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;)V

    .line 94
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->sceneToStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->view:Landroid/view/View;

    return-object v1
.end method

.method public getViewResource()I
    .locals 1

    .line 82
    const v0, 0x7f0d00cb

    return v0
.end method

.method public synthetic lambda$onNewOptionSelected$0$SceneStartBrick(Landroidx/appcompat/app/AppCompatActivity;Lorg/catrobat/catroid/content/Project;Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .param p2, "currentProject"    # Lorg/catrobat/catroid/content/Project;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "textInput"    # Ljava/lang/String;

    .line 118
    nop

    .line 119
    const v0, 0x7f120052

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {p4, v0, p2}, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->newSceneWithBackgroundSprite(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/content/Project;)Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    .line 120
    .local v0, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/Project;->addScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 121
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->add(Lorg/catrobat/catroid/common/Nameable;)V

    .line 122
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    .line 123
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->notifyDataSetChanged(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 124
    return-void
.end method

.method public synthetic lambda$onNewOptionSelected$1$SceneStartBrick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 127
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->sceneToStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onNewOptionSelected$2$SceneStartBrick(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 128
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->sceneToStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Ljava/lang/String;)V

    return-void
.end method

.method public onEditOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 134
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p2, Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/Scene;)V

    return-void
.end method

.method public onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/Scene;)V
    .locals 1
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "item"    # Lorg/catrobat/catroid/content/Scene;

    .line 142
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->sceneToStart:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public onNewOptionSelected(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 101
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->view:Landroid/view/View;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 102
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    if-nez v0, :cond_0

    .line 103
    return-void

    .line 106
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    .line 107
    .local v1, "currentProject":Lorg/catrobat/catroid/content/Project;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v2

    .line 109
    .local v2, "currentSceneList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Scene;>;"
    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v3}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    .line 110
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12024f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "defaultSceneName":Ljava/lang/String;
    new-instance v4, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-direct {v4, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    .local v4, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    const v5, 0x7f12071a

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v5

    .line 115
    invoke-virtual {v5, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v5

    new-instance v6, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;

    invoke-direct {v6, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;-><init>(Ljava/util/List;)V

    .line 116
    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v5

    const v6, 0x7f1205ff

    .line 117
    invoke-virtual {v0, v6}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/catrobat/catroid/content/bricks/-$$Lambda$SceneStartBrick$kAYG0H8qhyX8LCos3tuaOkoD6H4;

    invoke-direct {v7, p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$SceneStartBrick$kAYG0H8qhyX8LCos3tuaOkoD6H4;-><init>(Lorg/catrobat/catroid/content/bricks/SceneStartBrick;Landroidx/appcompat/app/AppCompatActivity;Lorg/catrobat/catroid/content/Project;)V

    invoke-virtual {v5, v6, v7}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 126
    const v5, 0x7f1205ad

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f1201b8

    new-instance v7, Lorg/catrobat/catroid/content/bricks/-$$Lambda$SceneStartBrick$OKiegcpZrPm0E1ABtL08Gc0I2MI;

    invoke-direct {v7, p0}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$SceneStartBrick$OKiegcpZrPm0E1ABtL08Gc0I2MI;-><init>(Lorg/catrobat/catroid/content/bricks/SceneStartBrick;)V

    .line 127
    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lorg/catrobat/catroid/content/bricks/-$$Lambda$SceneStartBrick$z4ZImtjM3ic2pjSQ-C7Y88By6HQ;

    invoke-direct {v6, p0}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$SceneStartBrick$z4ZImtjM3ic2pjSQ-C7Y88By6HQ;-><init>(Lorg/catrobat/catroid/content/bricks/SceneStartBrick;)V

    .line 128
    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    .line 129
    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 130
    return-void
.end method

.method public onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "string"    # Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setSceneToStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneToStart"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->sceneToStart:Ljava/lang/String;

    .line 71
    return-void
.end method
