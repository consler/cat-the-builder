.class public abstract Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;
.super Ljava/lang/Object;
.source "RequiresPermissionTask.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final permissionRequestId:I

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rationaleString:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(ILjava/util/List;I)V
    .locals 0
    .param p1, "permissionRequestId"    # I
    .param p3, "rationaleString"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 45
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->permissionRequestId:I

    .line 47
    iput-object p2, p0, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->permissions:Ljava/util/List;

    .line 48
    iput p3, p0, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->rationaleString:I

    .line 49
    return-void
.end method

.method public static checkPermission(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 81
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move v2, v4

    .line 83
    .local v2, "granted":Z
    :goto_1
    if-nez v2, :cond_1

    .line 84
    return v4

    .line 86
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "granted":Z
    :cond_1
    goto :goto_0

    .line 87
    :cond_2
    return v2
.end method


# virtual methods
.method public execute(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 68
    iget-object v0, p0, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->permissions:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->checkPermission(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->task()V

    goto :goto_1

    .line 71
    :cond_0
    instance-of v0, p1, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionHandlingActivity;

    if-eqz v0, :cond_1

    .line 72
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionHandlingActivity;

    invoke-interface {v0, p0}, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionHandlingActivity;->addToRequiresPermissionTaskList(Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;)V

    goto :goto_0

    .line 74
    :cond_1
    sget-object v0, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->TAG:Ljava/lang/String;

    const-string v1, "This has to be called from a PermissionHandlingActivity to have your task be executed on premissionResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->permissions:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget v1, p0, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->permissionRequestId:I

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 78
    :goto_1
    return-void
.end method

.method public getPermissionRequestId()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->permissionRequestId:I

    return v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getRationaleString()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->rationaleString:I

    return v0
.end method

.method public setPermissions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->permissions:Ljava/util/List;

    .line 65
    return-void
.end method

.method public abstract task()V
.end method
