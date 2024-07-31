.class public abstract Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
.super Ljava/lang/Object;
.source "MediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RouteController"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlRequest(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    .line 452
    const/4 v0, 0x0

    return v0
.end method

.method public onRelease()V
    .locals 0

    .line 389
    return-void
.end method

.method public onSelect()V
    .locals 0

    .line 395
    return-void
.end method

.method public onSetVolume(I)V
    .locals 0
    .param p1, "volume"    # I

    .line 428
    return-void
.end method

.method public onUnselect()V
    .locals 0

    .line 401
    return-void
.end method

.method public onUnselect(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 418
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect()V

    .line 419
    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 0
    .param p1, "delta"    # I

    .line 436
    return-void
.end method
