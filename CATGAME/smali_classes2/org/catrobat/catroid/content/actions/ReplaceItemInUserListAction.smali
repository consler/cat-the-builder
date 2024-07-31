.class public Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "ReplaceItemInUserListAction.java"


# instance fields
.field private formulaIndexToReplace:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private formulaItemToInsert:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private userList:Lorg/catrobat/catroid/formulaeditor/UserList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setFormulaIndexToReplace(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "formulaIndexToReplace"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 73
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;->formulaIndexToReplace:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 74
    return-void
.end method

.method public setFormulaItemToInsert(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "formulaItemToInsert"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 77
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;->formulaItemToInsert:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 78
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 81
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 82
    return-void
.end method

.method public setUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V
    .locals 0
    .param p1, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 69
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 70
    return-void
.end method

.method protected update(F)V
    .locals 3
    .param p1, "percent"    # F

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    if-nez v0, :cond_0

    .line 45
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;->formulaItemToInsert:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 49
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretObject(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    nop

    .line 53
    .local v0, "value":Ljava/lang/Object;
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;->formulaIndexToReplace:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;->formulaIndexToReplace:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 54
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    nop

    .line 57
    .local v1, "indexToReplace":I
    goto :goto_2

    .line 55
    .end local v1    # "indexToReplace":I
    :catch_0
    move-exception v1

    .line 56
    .local v1, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v2, 0x1

    move v1, v2

    .line 59
    .local v1, "indexToReplace":I
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 61
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-gez v1, :cond_3

    goto :goto_3

    .line 65
    :cond_3
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void

    .line 62
    :cond_4
    :goto_3
    return-void
.end method
