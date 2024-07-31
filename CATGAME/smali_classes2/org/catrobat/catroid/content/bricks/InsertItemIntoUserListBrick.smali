.class public Lorg/catrobat/catroid/content/bricks/InsertItemIntoUserListBrick;
.super Lorg/catrobat/catroid/content/bricks/UserListBrick;
.source "InsertItemIntoUserListBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/UserListBrick;-><init>()V

    .line 36
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->INSERT_ITEM_INTO_USERLIST_VALUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0144

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/InsertItemIntoUserListBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 38
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->INSERT_ITEM_INTO_USERLIST_INDEX:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0142

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/InsertItemIntoUserListBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(DLjava/lang/Integer;)V
    .locals 2
    .param p1, "value"    # D
    .param p3, "indexToInsert"    # Ljava/lang/Integer;

    .line 48
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {v1, p3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/InsertItemIntoUserListBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "userListFormulaValueToInsert"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "userListFormulaIndexToInsert"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 52
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/InsertItemIntoUserListBrick;-><init>()V

    .line 53
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->INSERT_ITEM_INTO_USERLIST_VALUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/InsertItemIntoUserListBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 54
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->INSERT_ITEM_INTO_USERLIST_INDEX:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/InsertItemIntoUserListBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserList;)V
    .locals 0
    .param p1, "userListFormulaValueToInsert"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "userListFormulaIndexToInsert"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p3, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/InsertItemIntoUserListBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 44
    iput-object p3, p0, Lorg/catrobat/catroid/content/bricks/InsertItemIntoUserListBrick;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 45
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 6
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 74
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->INSERT_ITEM_INTO_USERLIST_INDEX:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 75
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/InsertItemIntoUserListBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v3

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->INSERT_ITEM_INTO_USERLIST_VALUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 76
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/InsertItemIntoUserListBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/content/bricks/InsertItemIntoUserListBrick;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 74
    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/catrobat/catroid/content/ActionFactory;->createInsertItemIntoUserListAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserList;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 77
    return-void
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 59
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->INSERT_ITEM_INTO_USERLIST_VALUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public bridge synthetic getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/InsertItemIntoUserListBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    return-object v0
.end method

.method protected getSpinnerId()I
    .locals 1

    .line 69
    const v0, 0x7f0a03f1

    return v0
.end method

.method public getViewResource()I
    .locals 1

    .line 64
    const v0, 0x7f0d008b

    return v0
.end method
