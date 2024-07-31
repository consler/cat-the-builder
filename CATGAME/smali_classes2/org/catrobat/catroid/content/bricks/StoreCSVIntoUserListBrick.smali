.class public Lorg/catrobat/catroid/content/bricks/StoreCSVIntoUserListBrick;
.super Lorg/catrobat/catroid/content/bricks/UserListBrick;
.source "StoreCSVIntoUserListBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/UserListBrick;-><init>()V

    .line 36
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STORE_CSV_INTO_USERLIST_COLUMN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0280

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/StoreCSVIntoUserListBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 38
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STORE_CSV_INTO_USERLIST_CSV:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0281

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/StoreCSVIntoUserListBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2
    .param p1, "column"    # Ljava/lang/Integer;
    .param p2, "csv"    # Ljava/lang/String;

    .line 49
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {v1, p2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/StoreCSVIntoUserListBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "userListFormulaColumnToInsert"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "userListFormulaCSVToInsert"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 54
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/StoreCSVIntoUserListBrick;-><init>()V

    .line 55
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STORE_CSV_INTO_USERLIST_COLUMN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/StoreCSVIntoUserListBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 57
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STORE_CSV_INTO_USERLIST_CSV:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/StoreCSVIntoUserListBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserList;)V
    .locals 0
    .param p1, "userListFormulaColumnToInsert"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "userListFormulaCSVToInsert"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p3, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/StoreCSVIntoUserListBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 45
    iput-object p3, p0, Lorg/catrobat/catroid/content/bricks/StoreCSVIntoUserListBrick;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 46
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 6
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 78
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STORE_CSV_INTO_USERLIST_COLUMN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 79
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/StoreCSVIntoUserListBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v3

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STORE_CSV_INTO_USERLIST_CSV:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 80
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/StoreCSVIntoUserListBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/content/bricks/StoreCSVIntoUserListBrick;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 78
    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/catrobat/catroid/content/ActionFactory;->createStoreCSVIntoUserListAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserList;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 81
    return-void
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 63
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STORE_CSV_INTO_USERLIST_COLUMN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public bridge synthetic getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/StoreCSVIntoUserListBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    return-object v0
.end method

.method protected getSpinnerId()I
    .locals 1

    .line 73
    const v0, 0x7f0a0283

    return v0
.end method

.method public getViewResource()I
    .locals 1

    .line 68
    const v0, 0x7f0d00f3

    return v0
.end method
