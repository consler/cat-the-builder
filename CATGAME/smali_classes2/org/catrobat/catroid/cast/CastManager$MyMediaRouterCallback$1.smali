.class Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback$1;
.super Ljava/lang/Object;
.source "CastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;)V
    .locals 0
    .param p1, "this$1"    # Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;

    .line 405
    iput-object p1, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback$1;->this$1:Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 408
    monitor-enter p0

    .line 409
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback$1;->this$1:Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;

    iget-object v0, v0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/cast/CastManager;->currentlyConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback$1;->this$1:Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;

    iget-object v0, v0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v0}, Lorg/catrobat/catroid/cast/CastManager;->access$1000(Lorg/catrobat/catroid/cast/CastManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->stopService()V

    .line 411
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback$1;->this$1:Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;

    iget-object v0, v0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v0}, Lorg/catrobat/catroid/cast/CastManager;->access$900(Lorg/catrobat/catroid/cast/CastManager;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback$1;->this$1:Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;

    iget-object v1, v1, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    .line 412
    invoke-static {v1}, Lorg/catrobat/catroid/cast/CastManager;->access$900(Lorg/catrobat/catroid/cast/CastManager;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    const v2, 0x7f1201bd

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 414
    :cond_0
    monitor-exit p0

    .line 415
    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
