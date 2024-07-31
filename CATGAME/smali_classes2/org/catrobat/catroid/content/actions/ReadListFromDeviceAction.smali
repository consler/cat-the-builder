.class public Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction;
.super Lorg/catrobat/catroid/content/actions/AsynchronousAction;
.source "ReadListFromDeviceAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction$ReadTask;
    }
.end annotation


# instance fields
.field private readActionFinished:Z

.field private userList:Lorg/catrobat/catroid/formulaeditor/UserList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/AsynchronousAction;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction;->readActionFinished:Z

    return p1
.end method


# virtual methods
.method public act(F)Z
    .locals 1
    .param p1, "delta"    # F

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_0
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/actions/AsynchronousAction;->act(F)Z

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 4

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction;->readActionFinished:Z

    .line 50
    new-instance v1, Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction$ReadTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction$ReadTask;-><init>(Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction;Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/catrobat/catroid/formulaeditor/UserList;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction$ReadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction;->readActionFinished:Z

    return v0
.end method

.method public setUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V
    .locals 0
    .param p1, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 59
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 60
    return-void
.end method
