.class public final Lorg/catrobat/catroid/content/actions/DeleteItemOfUserListAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "DeleteItemOfUserListAction.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeleteItemOfUserListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteItemOfUserListAction.kt\norg/catrobat/catroid/content/actions/DeleteItemOfUserListAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,52:1\n1#2:53\n*E\n"
.end annotation

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
        "Lorg/catrobat/catroid/content/actions/DeleteItemOfUserListAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;",
        "()V",
        "formulaIndexToDelete",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getFormulaIndexToDelete",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setFormulaIndexToDelete",
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
.field private formulaIndexToDelete:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private userList:Lorg/catrobat/catroid/formulaeditor/UserList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFormulaIndexToDelete()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/DeleteItemOfUserListAction;->formulaIndexToDelete:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/DeleteItemOfUserListAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public final getUserList()Lorg/catrobat/catroid/formulaeditor/UserList;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/DeleteItemOfUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    return-object v0
.end method

.method public final setFormulaIndexToDelete(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/DeleteItemOfUserListAction;->formulaIndexToDelete:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/DeleteItemOfUserListAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method

.method public final setUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/DeleteItemOfUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    return-void
.end method

.method protected update(F)V
    .locals 7
    .param p1, "percent"    # F

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/DeleteItemOfUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    move-object v2, v0

    .line 53
    .local v2, "it":Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 38
    .local v3, "$i$a$-takeUnless-DeleteItemOfUserListAction$update$listSize$1":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v5

    .end local v2    # "it":Ljava/lang/Integer;
    .end local v3    # "$i$a$-takeUnless-DeleteItemOfUserListAction$update$listSize$1":I
    :goto_2
    if-nez v2, :cond_3

    move-object v1, v0

    :cond_3
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 40
    .local v0, "listSize":I
    nop

    .line 41
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/DeleteItemOfUserListAction;->formulaIndexToDelete:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/DeleteItemOfUserListAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v1, -0x1

    goto :goto_3

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "exception":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Interpreting formula as integer failed"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    const/4 v5, -0x1

    .line 40
    .end local v1    # "exception":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :cond_4
    :goto_3
    move v1, v5

    .line 47
    .local v1, "indexToDelete":I
    if-gez v1, :cond_5

    goto :goto_4

    :cond_5
    if-le v0, v1, :cond_6

    .line 48
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/DeleteItemOfUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 50
    :cond_6
    :goto_4
    return-void

    .line 38
    .end local v0    # "listSize":I
    .end local v1    # "indexToDelete":I
    :cond_7
    return-void
.end method
