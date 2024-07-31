.class abstract Landroidx/mediarouter/media/SystemMediaRouteProvider;
.super Landroidx/mediarouter/media/MediaRouteProvider;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/SystemMediaRouteProvider$Api24Impl;,
        Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr2Impl;,
        Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;,
        Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;,
        Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl;,
        Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_ROUTE_ID:Ljava/lang/String; = "DEFAULT_ROUTE"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "SystemMediaRouteProvider"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    new-instance v0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/mediarouter/media/SystemMediaRouteProvider;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;-><init>(Landroid/content/ComponentName;)V

    .line 49
    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/media/MediaRouteProvider;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;)V

    .line 51
    return-void
.end method

.method public static obtain(Landroid/content/Context;Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;)Landroidx/mediarouter/media/SystemMediaRouteProvider;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncCallback"    # Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 55
    new-instance v0, Landroidx/mediarouter/media/SystemMediaRouteProvider$Api24Impl;

    invoke-direct {v0, p0, p1}, Landroidx/mediarouter/media/SystemMediaRouteProvider$Api24Impl;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;)V

    return-object v0

    .line 57
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 58
    new-instance v0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr2Impl;

    invoke-direct {v0, p0, p1}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr2Impl;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;)V

    return-object v0

    .line 60
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    .line 61
    new-instance v0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;

    invoke-direct {v0, p0, p1}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;)V

    return-object v0

    .line 63
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 64
    new-instance v0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;

    invoke-direct {v0, p0, p1}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;)V

    return-object v0

    .line 66
    :cond_3
    new-instance v0, Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method protected getDefaultRoute()Ljava/lang/Object;
    .locals 1

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSystemRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "route"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSyncRouteAdded(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "route"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 74
    return-void
.end method

.method public onSyncRouteChanged(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "route"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 88
    return-void
.end method

.method public onSyncRouteRemoved(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "route"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 81
    return-void
.end method

.method public onSyncRouteSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "route"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 95
    return-void
.end method
