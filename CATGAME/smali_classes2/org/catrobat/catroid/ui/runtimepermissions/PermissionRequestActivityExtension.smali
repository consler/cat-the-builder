.class public Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;
.super Ljava/lang/Object;
.source "PermissionRequestActivityExtension.java"


# instance fields
.field private final waitingForResponsePermissionTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;->waitingForResponsePermissionTaskList:Ljava/util/List;

    .line 46
    return-void
.end method

.method static synthetic lambda$showPermissionRationale$0(Landroid/app/Activity;Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "task"    # Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "whichButton"    # I

    .line 93
    move-object v0, p0

    check-cast v0, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionHandlingActivity;

    invoke-interface {v0, p1}, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionHandlingActivity;->addToRequiresPermissionTaskList(Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;)V

    .line 94
    invoke-virtual {p1}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->getPermissions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->getPermissionRequestId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 95
    return-void
.end method

.method static synthetic lambda$showPermissionRationale$1(Landroid/app/Activity;Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "task"    # Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "whichButton"    # I

    .line 99
    move-object v0, p0

    check-cast v0, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionAdaptingActivity;

    invoke-virtual {p1}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionAdaptingActivity;->adaptToDeniedPermissions(Ljava/util/List;)V

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 101
    return-void
.end method

.method private popAllWithSameIdRequiredPermissionTask(I)Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;
    .locals 4
    .param p1, "requestCode"    # I

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "matchedTask":Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;->waitingForResponsePermissionTaskList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;

    .line 79
    .local v2, "task":Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;
    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->getPermissionRequestId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 80
    move-object v0, v2

    .line 81
    iget-object v3, p0, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;->waitingForResponsePermissionTaskList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 83
    .end local v2    # "task":Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;
    :cond_0
    goto :goto_0

    .line 84
    :cond_1
    return-object v0
.end method

.method private showAlertOKCancel(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "okListener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f13023d

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 111
    const v1, 0x7f1205ff

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 112
    const v1, 0x7f1201b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 114
    return-void
.end method

.method private showAlertOKIgnoreCancel(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "okListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "ignoreListener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 117
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f13023d

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 119
    const v1, 0x7f1205ff

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 120
    const v1, 0x7f120506

    invoke-virtual {v0, v1, p4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 121
    const v1, 0x7f1201b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 123
    return-void
.end method

.method private showPermissionRationale(Landroid/app/Activity;Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "task"    # Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p2}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->getPermissions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->getRationaleString()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lorg/catrobat/catroid/ui/runtimepermissions/-$$Lambda$PermissionRequestActivityExtension$oI1VBHftsm9BODMg5LjIbk-IDYs;

    .local v1, "okListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v1, p1, p2}, Lorg/catrobat/catroid/ui/runtimepermissions/-$$Lambda$PermissionRequestActivityExtension$oI1VBHftsm9BODMg5LjIbk-IDYs;-><init>(Landroid/app/Activity;Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;)V

    .line 97
    instance-of v2, p1, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionAdaptingActivity;

    if-eqz v2, :cond_0

    .line 98
    new-instance v2, Lorg/catrobat/catroid/ui/runtimepermissions/-$$Lambda$PermissionRequestActivityExtension$USV3cnHOOO0E4amAEb-rU_2XBKg;

    invoke-direct {v2, p1, p2}, Lorg/catrobat/catroid/ui/runtimepermissions/-$$Lambda$PermissionRequestActivityExtension$USV3cnHOOO0E4amAEb-rU_2XBKg;-><init>(Landroid/app/Activity;Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;->showAlertOKIgnoreCancel(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;->showAlertOKCancel(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 106
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "okListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addToRequiresPermissionTaskList(Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;)V
    .locals 1
    .param p1, "task"    # Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;->waitingForResponsePermissionTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;
    .param p4, "grantResults"    # [I

    .line 53
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;->popAllWithSameIdRequiredPermissionTask(I)Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;

    move-result-object v0

    .line 55
    .local v0, "task":Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;
    array-length v1, p3

    if-nez v1, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "resultIndex":I
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_2

    .line 61
    aget v3, p4, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 62
    aget-object v3, p3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v2    # "resultIndex":I
    :cond_2
    if-eqz v0, :cond_4

    .line 67
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->execute(Landroid/app/Activity;)V

    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->setPermissions(Ljava/util/List;)V

    .line 71
    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;->showPermissionRationale(Landroid/app/Activity;Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;)V

    .line 74
    :cond_4
    :goto_1
    return-void
.end method
