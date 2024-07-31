.class public Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;
.super Lorg/catrobat/catroid/content/actions/AsynchronousAction;
.source "ReadVariableFromDeviceAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction$ReadTask;
    }
.end annotation


# instance fields
.field private readActionFinished:Z

.field private userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/AsynchronousAction;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;->readActionFinished:Z

    return p1
.end method


# virtual methods
.method public act(F)Z
    .locals 1
    .param p1, "delta"    # F

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x1

    return v0

    .line 43
    :cond_0
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/actions/AsynchronousAction;->act(F)Z

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 4

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;->readActionFinished:Z

    .line 49
    new-instance v1, Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction$ReadTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction$ReadTask;-><init>(Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/catrobat/catroid/formulaeditor/UserVariable;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction$ReadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;->readActionFinished:Z

    return v0
.end method

.method public setUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0
    .param p1, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 58
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 59
    return-void
.end method
