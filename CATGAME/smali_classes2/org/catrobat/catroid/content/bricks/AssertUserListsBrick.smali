.class public Lorg/catrobat/catroid/content/bricks/AssertUserListsBrick;
.super Lorg/catrobat/catroid/content/bricks/UserDataBrick;
.source "AssertUserListsBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/UserDataBrick;-><init>()V

    .line 34
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->ASSERT_LISTS_ACTUAL:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    const v1, 0x7f0a007d

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/AssertUserListsBrick;->addAllowedBrickData(Lorg/catrobat/catroid/content/bricks/Brick$BrickData;I)V

    .line 35
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->ASSERT_LISTS_EXPECTED:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    const v1, 0x7f0a007e

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/AssertUserListsBrick;->addAllowedBrickData(Lorg/catrobat/catroid/content/bricks/Brick$BrickData;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 6
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 45
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->ASSERT_LISTS_ACTUAL:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    .line 46
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/AssertUserListsBrick;->getUserListWithBrickData(Lorg/catrobat/catroid/content/bricks/Brick$BrickData;)Lorg/catrobat/catroid/formulaeditor/UserList;

    move-result-object v3

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->ASSERT_LISTS_EXPECTED:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    .line 47
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/AssertUserListsBrick;->getUserListWithBrickData(Lorg/catrobat/catroid/content/bricks/Brick$BrickData;)Lorg/catrobat/catroid/formulaeditor/UserList;

    move-result-object v4

    .line 48
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/AssertUserListsBrick;->getPositionInformation()Ljava/lang/String;

    move-result-object v5

    .line 45
    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/catrobat/catroid/content/ActionFactory;->createAssertUserListsAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/UserList;Lorg/catrobat/catroid/formulaeditor/UserList;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 49
    return-void
.end method

.method public getViewResource()I
    .locals 1

    .line 40
    const v0, 0x7f0d003a

    return v0
.end method
