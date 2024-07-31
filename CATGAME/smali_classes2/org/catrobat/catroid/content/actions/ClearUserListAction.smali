.class public Lorg/catrobat/catroid/content/actions/ClearUserListAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "ClearUserListAction.java"


# instance fields
.field private userList:Lorg/catrobat/catroid/formulaeditor/UserList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V
    .locals 0
    .param p1, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 44
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ClearUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 45
    return-void
.end method

.method protected update(F)V
    .locals 1
    .param p1, "percent"    # F

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ClearUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    if-nez v0, :cond_0

    .line 37
    return-void

    .line 40
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserList;->reset()V

    .line 41
    return-void
.end method
