.class final Lorg/catrobat/catroid/stage/StageLifeCycleController$1;
.super Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;
.source "StageLifeCycleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/stage/StageLifeCycleController;->stageCreate(Lorg/catrobat/catroid/stage/StageActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$stageActivity:Lorg/catrobat/catroid/stage/StageActivity;


# direct methods
.method constructor <init>(ILjava/util/List;ILorg/catrobat/catroid/stage/StageActivity;)V
    .locals 0
    .param p1, "permissionRequestId"    # I
    .param p3, "rationaleString"    # I

    .line 123
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p4, p0, Lorg/catrobat/catroid/stage/StageLifeCycleController$1;->val$stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-direct {p0, p1, p2, p3}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;-><init>(ILjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public task()V
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageLifeCycleController$1;->val$stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageActivity;->stageResourceHolder:Lorg/catrobat/catroid/stage/StageResourceHolder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->initResources()V

    .line 126
    return-void
.end method
