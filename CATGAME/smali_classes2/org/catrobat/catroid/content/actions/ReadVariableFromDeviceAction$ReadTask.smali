.class Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction$ReadTask;
.super Landroid/os/AsyncTask;
.source "ReadVariableFromDeviceAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;


# direct methods
.method private constructor <init>(Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction$ReadTask;->this$0:Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;
    .param p2, "x1"    # Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction$1;

    .line 61
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction$ReadTask;-><init>(Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, [Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction$ReadTask;->doInBackground([Lorg/catrobat/catroid/formulaeditor/UserVariable;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected doInBackground([Lorg/catrobat/catroid/formulaeditor/UserVariable;)Ljava/lang/Void;
    .locals 5
    .param p1, "userVariables"    # [Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 65
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v0

    .line 66
    .local v0, "projectDirectory":Ljava/io/File;
    new-instance v1, Lorg/catrobat/catroid/io/DeviceVariableAccessor;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/io/DeviceVariableAccessor;-><init>(Ljava/io/File;)V

    .line 68
    .local v1, "accessor":Lorg/catrobat/catroid/io/DeviceVariableAccessor;
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 69
    .local v4, "variable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v1, v4}, Lorg/catrobat/catroid/io/DeviceVariableAccessor;->readUserData(Lorg/catrobat/catroid/formulaeditor/UserData;)Z

    .line 68
    .end local v4    # "variable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction$ReadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Void;

    .line 75
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction$ReadTask;->this$0:Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;->access$102(Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;Z)Z

    .line 76
    return-void
.end method
