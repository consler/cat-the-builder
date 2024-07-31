.class public Lorg/catrobat/catroid/content/bricks/ClearUserListBrick;
.super Lorg/catrobat/catroid/content/bricks/UserListBrick;
.source "ClearUserListBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/UserListBrick;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 49
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/ClearUserListBrick;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createClearUserListAction(Lorg/catrobat/catroid/formulaeditor/UserList;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 50
    return-void
.end method

.method protected getSpinnerId()I
    .locals 1

    .line 44
    const v0, 0x7f0a02fc

    return v0
.end method

.method public getViewResource()I
    .locals 1

    .line 39
    const v0, 0x7f0d005f

    return v0
.end method
