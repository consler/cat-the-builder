.class public Lorg/catrobat/catroid/content/bricks/WriteListOnDeviceBrick;
.super Lorg/catrobat/catroid/content/bricks/UserListBrick;
.source "WriteListOnDeviceBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/UserListBrick;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WriteListOnDeviceBrick;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WriteListOnDeviceBrick;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/WriteListOnDeviceBrick;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createWriteListOnDeviceAction(Lorg/catrobat/catroid/formulaeditor/UserList;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 51
    return-void

    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method protected getSpinnerId()I
    .locals 1

    .line 42
    const v0, 0x7f0a0648

    return v0
.end method

.method public getViewResource()I
    .locals 1

    .line 38
    const v0, 0x7f0d010d

    return v0
.end method
