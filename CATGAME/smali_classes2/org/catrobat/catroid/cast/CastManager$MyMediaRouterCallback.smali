.class Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "CastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/cast/CastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaRouterCallback"
.end annotation


# instance fields
.field private lastConnectionTry:J

.field final synthetic this$0:Lorg/catrobat/catroid/cast/CastManager;


# direct methods
.method private constructor <init>(Lorg/catrobat/catroid/cast/CastManager;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/catrobat/catroid/cast/CastManager;Lorg/catrobat/catroid/cast/CastManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/catrobat/catroid/cast/CastManager;
    .param p2, "x1"    # Lorg/catrobat/catroid/cast/CastManager$1;

    .line 356
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;-><init>(Lorg/catrobat/catroid/cast/CastManager;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onCastStop()V
    .locals 3

    monitor-enter p0

    .line 427
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v0}, Lorg/catrobat/catroid/cast/CastManager;->access$1100(Lorg/catrobat/catroid/cast/CastManager;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v0}, Lorg/catrobat/catroid/cast/CastManager;->access$100(Lorg/catrobat/catroid/cast/CastManager;)Lorg/catrobat/catroid/stage/StageActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageActivity;->onBackPressed()V

    .line 431
    .end local p0    # "this":Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/catrobat/catroid/cast/CastManager;->access$1102(Lorg/catrobat/catroid/cast/CastManager;Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    .line 432
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/cast/CastManager;->setIsConnected(Z)V

    .line 433
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/cast/CastManager;->access$802(Lorg/catrobat/catroid/cast/CastManager;Lcom/google/android/gms/cast/CastDevice;)Lcom/google/android/gms/cast/CastDevice;

    .line 434
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/cast/CastManager;->access$102(Lorg/catrobat/catroid/cast/CastManager;Lorg/catrobat/catroid/stage/StageActivity;)Lorg/catrobat/catroid/stage/StageActivity;

    .line 435
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/cast/CastManager;->access$1202(Lorg/catrobat/catroid/cast/CastManager;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 436
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/cast/CastManager;->access$1302(Lorg/catrobat/catroid/cast/CastManager;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 437
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v0, v2}, Lorg/catrobat/catroid/cast/CastManager;->access$1402(Lorg/catrobat/catroid/cast/CastManager;Z)Z

    .line 438
    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->stopService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    monitor-exit p0

    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p1, "router"    # Landroidx/mediarouter/media/MediaRouter;
    .param p2, "info"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 363
    monitor-enter p0

    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v1}, Lorg/catrobat/catroid/cast/CastManager;->access$300(Lorg/catrobat/catroid/cast/CastManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 365
    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v1}, Lorg/catrobat/catroid/cast/CastManager;->access$300(Lorg/catrobat/catroid/cast/CastManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 366
    .local v1, "routeInfo":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v2}, Lorg/catrobat/catroid/cast/CastManager;->access$300(Lorg/catrobat/catroid/cast/CastManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 364
    .end local v1    # "routeInfo":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v0}, Lorg/catrobat/catroid/cast/CastManager;->access$300(Lorg/catrobat/catroid/cast/CastManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v0}, Lorg/catrobat/catroid/cast/CastManager;->access$600(Lorg/catrobat/catroid/cast/CastManager;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v1}, Lorg/catrobat/catroid/cast/CastManager;->access$500(Lorg/catrobat/catroid/cast/CastManager;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v2}, Lorg/catrobat/catroid/cast/CastManager;->access$400(Lorg/catrobat/catroid/cast/CastManager;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroidx/mediarouter/media/MediaRouter;->isRouteAvailable(Landroidx/mediarouter/media/MediaRouteSelector;I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 373
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v0}, Lorg/catrobat/catroid/cast/CastManager;->access$700(Lorg/catrobat/catroid/cast/CastManager;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 374
    monitor-exit p0

    .line 375
    return-void

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRouteRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 6
    .param p1, "router"    # Landroidx/mediarouter/media/MediaRouter;
    .param p2, "info"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 380
    monitor-enter p0

    .line 381
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v1}, Lorg/catrobat/catroid/cast/CastManager;->access$300(Lorg/catrobat/catroid/cast/CastManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 382
    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v1}, Lorg/catrobat/catroid/cast/CastManager;->access$300(Lorg/catrobat/catroid/cast/CastManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 383
    .local v1, "routeInfo":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    iget-object v2, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v2}, Lorg/catrobat/catroid/cast/CastManager;->access$300(Lorg/catrobat/catroid/cast/CastManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 385
    iget-object v2, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v2}, Lorg/catrobat/catroid/cast/CastManager;->access$300(Lorg/catrobat/catroid/cast/CastManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 386
    iget-object v2, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v2}, Lorg/catrobat/catroid/cast/CastManager;->access$600(Lorg/catrobat/catroid/cast/CastManager;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v3}, Lorg/catrobat/catroid/cast/CastManager;->access$500(Lorg/catrobat/catroid/cast/CastManager;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v4}, Lorg/catrobat/catroid/cast/CastManager;->access$400(Lorg/catrobat/catroid/cast/CastManager;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroidx/mediarouter/media/MediaRouter;->isRouteAvailable(Landroidx/mediarouter/media/MediaRouteSelector;I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 389
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v2}, Lorg/catrobat/catroid/cast/CastManager;->access$700(Lorg/catrobat/catroid/cast/CastManager;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 381
    .end local v1    # "routeInfo":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    .end local v0    # "i":I
    :cond_2
    monitor-exit p0

    .line 393
    return-void

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 8
    .param p1, "router"    # Landroidx/mediarouter/media/MediaRouter;
    .param p2, "info"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 397
    monitor-enter p0

    .line 398
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/cast/CastManager;->access$802(Lorg/catrobat/catroid/cast/CastManager;Lcom/google/android/gms/cast/CastDevice;)Lcom/google/android/gms/cast/CastDevice;

    .line 399
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v0}, Lorg/catrobat/catroid/cast/CastManager;->access$900(Lorg/catrobat/catroid/cast/CastManager;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->startCastService(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->lastConnectionTry:J

    .line 403
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->getInstance()Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    move-result-object v1

    const-wide/16 v2, 0x1388

    if-eqz v1, :cond_0

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->lastConnectionTry:J

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 403
    :goto_0
    invoke-static {v0, v1}, Lorg/catrobat/catroid/cast/CastManager;->access$1002(Lorg/catrobat/catroid/cast/CastManager;Z)Z

    .line 405
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback$1;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback$1;-><init>(Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 417
    monitor-exit p0

    .line 418
    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRouteUnselected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "router"    # Landroidx/mediarouter/media/MediaRouter;
    .param p2, "info"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 422
    invoke-virtual {p0}, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->onCastStop()V

    .line 423
    return-void
.end method

.method public startCastService(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 9
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 443
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 444
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 445
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 447
    .local v1, "notificationPendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings$Builder;-><init>()V

    .line 449
    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings$Builder;->setNotificationPendingIntent(Landroid/app/PendingIntent;)Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings$Builder;->build()Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    move-result-object v2

    .line 451
    .local v2, "settings":Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;
    new-instance v8, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback$2;

    invoke-direct {v8, p0, p1}, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback$2;-><init>(Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 473
    .local v8, "callbacks":Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;
    const-class v4, Lorg/catrobat/catroid/cast/CastService;

    iget-object v3, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    .line 474
    invoke-static {v3}, Lorg/catrobat/catroid/cast/CastManager;->access$800(Lorg/catrobat/catroid/cast/CastManager;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v6

    .line 473
    const-string v5, "CEBB9229"

    move-object v3, p1

    move-object v7, v2

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->startService(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;)V

    .line 475
    return-void
.end method
