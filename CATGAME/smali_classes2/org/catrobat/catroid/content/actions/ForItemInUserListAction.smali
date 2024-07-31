.class public Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;
.super Lorg/catrobat/catroid/content/actions/LoopAction;
.source "ForItemInUserListAction.java"


# instance fields
.field private currentItemVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

.field private index:I

.field private isCurrentLoopInitialized:Z

.field private userList:Lorg/catrobat/catroid/formulaeditor/UserList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/LoopAction;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->isCurrentLoopInitialized:Z

    .line 36
    iput v0, p0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->index:I

    return-void
.end method

.method private setCurrentItemVariable(Ljava/lang/Object;)V
    .locals 1
    .param p1, "listItem"    # Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->currentItemVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setValue(Ljava/lang/Object;)V

    .line 82
    return-void
.end method


# virtual methods
.method public delegate(F)Z
    .locals 4
    .param p1, "delta"    # F

    .line 40
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->isCurrentLoopInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->setCurrentTime(F)V

    .line 42
    iput-boolean v1, p0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->isCurrentLoopInitialized:Z

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    if-nez v0, :cond_1

    .line 46
    return v1

    .line 48
    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v0

    .line 49
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v0, :cond_4

    iget v2, p0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->index:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto :goto_0

    .line 53
    :cond_2
    iget v2, p0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->index:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->setCurrentItemVariable(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->getCurrentTime()F

    move-result v2

    add-float/2addr v2, p1

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->setCurrentTime(F)V

    .line 56
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->isLoopDelayNeeded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 57
    iget v2, p0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->index:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->index:I

    .line 59
    iput-boolean v3, p0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->isCurrentLoopInitialized:Z

    .line 60
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 62
    :cond_3
    return v3

    .line 50
    :cond_4
    :goto_0
    return v1
.end method

.method public restart()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->isCurrentLoopInitialized:Z

    .line 68
    iput v0, p0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->index:I

    .line 69
    invoke-super {p0}, Lorg/catrobat/catroid/content/actions/LoopAction;->restart()V

    .line 70
    return-void
.end method

.method public setCurrentItemVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0
    .param p1, "variable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 77
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->currentItemVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 78
    return-void
.end method

.method public setUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V
    .locals 0
    .param p1, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 73
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 74
    return-void
.end method
