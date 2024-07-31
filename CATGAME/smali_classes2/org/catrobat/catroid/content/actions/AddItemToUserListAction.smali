.class public final Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "AddItemToUserListAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0014R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;",
        "()V",
        "formulaItemToAdd",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getFormulaItemToAdd",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setFormulaItemToAdd",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "userList",
        "Lorg/catrobat/catroid/formulaeditor/UserList;",
        "getUserList",
        "()Lorg/catrobat/catroid/formulaeditor/UserList;",
        "setUserList",
        "(Lorg/catrobat/catroid/formulaeditor/UserList;)V",
        "update",
        "",
        "percent",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private formulaItemToAdd:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private userList:Lorg/catrobat/catroid/formulaeditor/UserList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFormulaItemToAdd()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;->formulaItemToAdd:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public final getUserList()Lorg/catrobat/catroid/formulaeditor/UserList;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    return-object v0
.end method

.method public final setFormulaItemToAdd(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;->formulaItemToAdd:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method

.method public final setUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    return-void
.end method

.method protected update(F)V
    .locals 7
    .param p1, "percent"    # F

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;->formulaItemToAdd:Lorg/catrobat/catroid/formulaeditor/Formula;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretObject(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 39
    .local v0, "value":Ljava/lang/Object;
    :goto_0
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;->formulaItemToAdd:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v3, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->getRoot()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->isBoolean(Lorg/catrobat/catroid/content/Scope;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 40
    if-eqz v0, :cond_2

    move-object v3, v0

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpg-double v1, v5, v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.Double"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/formulaeditor/UserList;->addListItem(Ljava/lang/Object;)V

    .line 43
    :cond_4
    return-void
.end method
