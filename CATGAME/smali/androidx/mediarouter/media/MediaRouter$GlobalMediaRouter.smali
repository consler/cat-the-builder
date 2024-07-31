.class final Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;
.implements Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GlobalMediaRouter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;,
        Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;,
        Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;,
        Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$ProviderCallback;
    }
.end annotation


# instance fields
.field final mApplicationContext:Landroid/content/Context;

.field private mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field final mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

.field private mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field private mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

.field private final mDisplayManager:Landroidx/core/hardware/display/DisplayManagerCompat;

.field mDynamicRoutesListener:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;

.field private final mLowRam:Z

.field private mMediaSession:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

.field final mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

.field private final mProviderCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/MediaRouter$ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mRegisteredProviderWatcher:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

.field private final mRemoteControlClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRouteControllerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/mediarouter/media/MediaRouteProvider$RouteController;",
            ">;"
        }
    .end annotation
.end field

.field final mRouters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/mediarouter/media/MediaRouter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

.field private mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

.field final mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

.field private final mUniqueIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 2153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    .line 2113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    .line 2114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    .line 2115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    .line 2116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    .line 2118
    new-instance v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    invoke-direct {v0}, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    .line 2120
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$ProviderCallback;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviderCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

    .line 2121
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    .line 2133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    .line 2138
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

    .line 2857
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDynamicRoutesListener:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;

    .line 2154
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 2155
    invoke-static {p1}, Landroidx/core/hardware/display/DisplayManagerCompat;->getInstance(Landroid/content/Context;)Landroidx/core/hardware/display/DisplayManagerCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDisplayManager:Landroidx/core/hardware/display/DisplayManagerCompat;

    .line 2156
    nop

    .line 2157
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2156
    invoke-static {v0}, Landroidx/core/app/ActivityManagerCompat;->isLowRamDevice(Landroid/app/ActivityManager;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    .line 2163
    invoke-static {p1, p0}, Landroidx/mediarouter/media/SystemMediaRouteProvider;->obtain(Landroid/content/Context;Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;)Landroidx/mediarouter/media/SystemMediaRouteProvider;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    .line 2164
    return-void
.end method

.method private findProviderInfo(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;
    .locals 3
    .param p1, "providerInstance"    # Landroidx/mediarouter/media/MediaRouteProvider;

    .line 2476
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2477
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2478
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroidx/mediarouter/media/MediaRouteProvider;

    if-ne v2, p1, :cond_0

    .line 2479
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    return-object v2

    .line 2477
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2482
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private findRemoteControlClientRecord(Ljava/lang/Object;)I
    .locals 4
    .param p1, "rcc"    # Ljava/lang/Object;

    .line 2941
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2942
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2943
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;

    .line 2944
    .local v2, "record":Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 2945
    return v1

    .line 2942
    .end local v2    # "record":Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2948
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private findRouteByUniqueId(Ljava/lang/String;)I
    .locals 3
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 2655
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2656
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2657
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2658
    return v1

    .line 2656
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2661
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private isSystemDefaultRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 2
    .param p1, "route"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2768
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 2769
    const-string v1, "DEFAULT_ROUTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2768
    :goto_0
    return v0
.end method

.method private isSystemLiveAudioOnlyRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 2
    .param p1, "route"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2762
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    if-ne v0, v1, :cond_0

    .line 2763
    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2764
    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2762
    :goto_0
    return v0
.end method

.method private setMediaSessionRecord(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;)V
    .locals 1
    .param p1, "mediaSessionRecord"    # Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    .line 2922
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    if-eqz v0, :cond_0

    .line 2923
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->clearVolumeHandling()V

    .line 2925
    :cond_0
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    .line 2926
    if-eqz p1, :cond_1

    .line 2927
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    .line 2929
    :cond_1
    return-void
.end method

.method private setSelectedRouteInternal(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V
    .locals 6
    .param p1, "route"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .param p2, "unselectReason"    # I

    .line 2775
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    const-string v1, "MediaRouter"

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2776
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2777
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2779
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x3

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 2780
    aget-object v4, v0, v3

    .line 2781
    .local v4, "caller":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2782
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2783
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2784
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2785
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2786
    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2779
    .end local v4    # "caller":Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2788
    .end local v3    # "i":I
    :cond_1
    sget-object v3, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    const-string v4, ", callers="

    if-nez v3, :cond_2

    .line 2789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSelectedRouteInternal is called while sGlobal is null: pkgName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 2790
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2789
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2792
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default route is selected while a BT route is available: pkgName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 2793
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2792
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    .end local v0    # "callStack":[Ljava/lang/StackTraceElement;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eq v0, p1, :cond_c

    .line 2798
    if-eqz v0, :cond_7

    .line 2799
    sget-boolean v0, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 2800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route unselected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    :cond_4
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v2, 0x107

    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v2, v3, p2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;I)V

    .line 2805
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_5

    .line 2806
    invoke-virtual {v0, p2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 2807
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 2808
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 2810
    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2811
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 2812
    .local v2, "controller":Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    invoke-virtual {v2, p2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 2813
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 2814
    .end local v2    # "controller":Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    goto :goto_2

    .line 2815
    :cond_6
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2819
    :cond_7
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProvider()Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->supportsDynamicGroup()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2821
    nop

    .line 2822
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    iget-object v2, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/mediarouter/media/MediaRouteProvider;->onCreateDynamicGroupRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    move-result-object v0

    .line 2824
    .local v0, "controller":Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 2825
    invoke-static {v2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDynamicRoutesListener:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;

    .line 2824
    invoke-virtual {v0, v2, v3}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->setOnDynamicRoutesChangedListener(Ljava/util/concurrent/Executor;Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;)V

    .line 2827
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 2828
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2829
    .end local v0    # "controller":Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
    goto :goto_3

    .line 2830
    :cond_8
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    iget-object v2, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/mediarouter/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 2832
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2834
    :goto_3
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_9

    .line 2835
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 2837
    :cond_9
    sget-boolean v0, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 2838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route selected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    :cond_a
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v1, 0x106

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1, v2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2842
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2843
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    move-result-object v0

    .line 2844
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroidx/mediarouter/media/MediaRouter$RouteInfo;>;"
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2845
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2846
    .local v2, "r":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    nop

    .line 2847
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v3

    iget-object v4, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v5, v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroidx/mediarouter/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object v3

    .line 2849
    .local v3, "controller":Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 2850
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    iget-object v5, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2851
    .end local v2    # "r":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .end local v3    # "controller":Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    goto :goto_4

    .line 2853
    .end local v0    # "routes":Ljava/util/List;, "Ljava/util/List<Landroidx/mediarouter/media/MediaRouter$RouteInfo;>;"
    :cond_b
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    .line 2855
    :cond_c
    return-void
.end method

.method private updatePlaybackInfoFromSelectedRoute()V
    .locals 5

    .line 2952
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_5

    .line 2953
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    iput v0, v1, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volume:I

    .line 2954
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    iput v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeMax:I

    .line 2955
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v1

    iput v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    .line 2956
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getPlaybackStream()I

    move-result v1

    iput v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->playbackStream:I

    .line 2957
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v1

    iput v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->playbackType:I

    .line 2959
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2960
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2961
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;

    .line 2962
    .local v2, "record":Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->updatePlaybackInfo()V

    .line 2960
    .end local v2    # "record":Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2964
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    if-eqz v1, :cond_4

    .line 2965
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2966
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getBluetoothRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v2

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 2970
    :cond_1
    const/4 v1, 0x0

    .line 2972
    .local v1, "controlType":I
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget v2, v2, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2974
    const/4 v1, 0x2

    .line 2976
    :cond_2
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget v3, v3, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeMax:I

    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget v4, v4, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volume:I

    invoke-virtual {v2, v1, v3, v4}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->configureVolume(III)V

    goto :goto_2

    .line 2968
    .end local v1    # "controlType":I
    :cond_3
    :goto_1
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->clearVolumeHandling()V

    .line 2980
    .end local v0    # "count":I
    :cond_4
    :goto_2
    goto :goto_3

    .line 2981
    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    if-eqz v0, :cond_6

    .line 2982
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->clearVolumeHandling()V

    .line 2985
    :cond_6
    :goto_3
    return-void
.end method

.method private updateProviderContents(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V
    .locals 18
    .param p1, "provider"    # Landroidx/mediarouter/media/MediaRouter$ProviderInfo;
    .param p2, "providerDescriptor"    # Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 2487
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p2}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->updateDescriptor(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2489
    return-void

    .line 2493
    :cond_0
    const/4 v3, 0x0

    .line 2494
    .local v3, "targetIndex":I
    const/4 v4, 0x0

    .line 2495
    .local v4, "selectedRouteDescriptorChanged":Z
    const-string v5, "MediaRouter"

    if-eqz v2, :cond_f

    invoke-virtual/range {p2 .. p2}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->isValid()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    .line 2496
    invoke-virtual {v6}, Landroidx/mediarouter/media/SystemMediaRouteProvider;->getDescriptor()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v6

    if-ne v2, v6, :cond_f

    .line 2497
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v6

    .line 2500
    .local v6, "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroidx/mediarouter/media/MediaRouteDescriptor;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2501
    .local v7, "addedGroups":Ljava/util/List;, "Ljava/util/List<Landroidx/core/util/Pair<Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;>;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2502
    .local v8, "updatedGroups":Ljava/util/List;, "Ljava/util/List<Landroidx/core/util/Pair<Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;>;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "Route added: "

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 2504
    .local v10, "routeDescriptor":Landroidx/mediarouter/media/MediaRouteDescriptor;
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroidx/mediarouter/media/MediaRouteDescriptor;->isValid()Z

    move-result v13

    if-nez v13, :cond_2

    move/from16 v16, v4

    goto/16 :goto_4

    .line 2509
    :cond_2
    invoke-virtual {v10}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v13

    .line 2510
    .local v13, "id":Ljava/lang/String;
    invoke-virtual {v1, v13}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->findRouteIndexByDescriptorId(Ljava/lang/String;)I

    move-result v14

    .line 2512
    .local v14, "sourceIndex":I
    if-gez v14, :cond_5

    .line 2514
    invoke-virtual {v0, v1, v13}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->assignRouteUniqueId(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2515
    .local v15, "uniqueId":Ljava/lang/String;
    new-instance v12, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-direct {v12, v1, v13, v15}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;-><init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 2517
    .local v12, "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    move/from16 v16, v4

    .end local v4    # "selectedRouteDescriptorChanged":Z
    .local v16, "selectedRouteDescriptorChanged":Z
    iget-object v4, v1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    add-int/lit8 v17, v3, 0x1

    .end local v3    # "targetIndex":I
    .local v17, "targetIndex":I
    invoke-interface {v4, v3, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2518
    iget-object v3, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2520
    invoke-virtual {v10}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getGroupMemberIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 2521
    new-instance v3, Landroidx/core/util/Pair;

    invoke-direct {v3, v12, v10}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2523
    :cond_3
    invoke-virtual {v12, v10}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 2525
    sget-boolean v3, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 2526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    :cond_4
    iget-object v3, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v4, 0x101

    invoke-virtual {v3, v4, v12}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2530
    .end local v12    # "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .end local v15    # "uniqueId":Ljava/lang/String;
    :goto_1
    move/from16 v4, v16

    move/from16 v3, v17

    goto :goto_3

    .end local v16    # "selectedRouteDescriptorChanged":Z
    .end local v17    # "targetIndex":I
    .restart local v3    # "targetIndex":I
    .restart local v4    # "selectedRouteDescriptorChanged":Z
    :cond_5
    move/from16 v16, v4

    .end local v4    # "selectedRouteDescriptorChanged":Z
    .restart local v16    # "selectedRouteDescriptorChanged":Z
    if-ge v14, v3, :cond_6

    .line 2531
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring route descriptor with duplicate id: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v4, v16

    goto :goto_3

    .line 2534
    :cond_6
    iget-object v4, v1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2536
    .local v4, "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    iget-object v11, v1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    add-int/lit8 v12, v3, 0x1

    .end local v3    # "targetIndex":I
    .local v12, "targetIndex":I
    invoke-static {v11, v14, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 2538
    invoke-virtual {v10}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getGroupMemberIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 2539
    new-instance v3, Landroidx/core/util/Pair;

    invoke-direct {v3, v4, v10}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2542
    :cond_7
    invoke-direct {v0, v4, v10}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateRouteDescriptorAndNotify(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    move-result v3

    if-eqz v3, :cond_8

    .line 2543
    iget-object v3, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne v4, v3, :cond_8

    .line 2544
    const/4 v3, 0x1

    move v4, v3

    move v3, v12

    .end local v16    # "selectedRouteDescriptorChanged":Z
    .local v3, "selectedRouteDescriptorChanged":Z
    goto :goto_3

    .line 2549
    .end local v3    # "selectedRouteDescriptorChanged":Z
    .end local v4    # "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .end local v10    # "routeDescriptor":Landroidx/mediarouter/media/MediaRouteDescriptor;
    .end local v13    # "id":Ljava/lang/String;
    .end local v14    # "sourceIndex":I
    .restart local v16    # "selectedRouteDescriptorChanged":Z
    :cond_8
    :goto_2
    move v3, v12

    move/from16 v4, v16

    .end local v12    # "targetIndex":I
    .end local v16    # "selectedRouteDescriptorChanged":Z
    .local v3, "targetIndex":I
    .local v4, "selectedRouteDescriptorChanged":Z
    :goto_3
    goto/16 :goto_0

    .line 2504
    .restart local v10    # "routeDescriptor":Landroidx/mediarouter/media/MediaRouteDescriptor;
    :cond_9
    move/from16 v16, v4

    .line 2505
    .end local v4    # "selectedRouteDescriptorChanged":Z
    .restart local v16    # "selectedRouteDescriptorChanged":Z
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring invalid system route descriptor: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    move/from16 v4, v16

    goto/16 :goto_0

    .line 2551
    .end local v10    # "routeDescriptor":Landroidx/mediarouter/media/MediaRouteDescriptor;
    .end local v16    # "selectedRouteDescriptorChanged":Z
    .restart local v4    # "selectedRouteDescriptorChanged":Z
    :cond_a
    move/from16 v16, v4

    .end local v4    # "selectedRouteDescriptorChanged":Z
    .restart local v16    # "selectedRouteDescriptorChanged":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/util/Pair;

    .line 2552
    .local v9, "pair":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;>;"
    iget-object v10, v9, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2553
    .local v10, "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    iget-object v12, v9, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-virtual {v10, v12}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 2554
    sget-boolean v12, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v12, :cond_b

    .line 2555
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    :cond_b
    iget-object v12, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v13, 0x101

    invoke-virtual {v12, v13, v10}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2558
    .end local v9    # "pair":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;>;"
    .end local v10    # "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    goto :goto_5

    .line 2559
    :cond_c
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/util/Pair;

    .line 2560
    .restart local v9    # "pair":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;>;"
    iget-object v10, v9, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2561
    .restart local v10    # "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    iget-object v11, v9, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-direct {v0, v10, v11}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateRouteDescriptorAndNotify(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    move-result v11

    if-eqz v11, :cond_d

    .line 2562
    iget-object v11, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne v10, v11, :cond_d

    .line 2563
    const/16 v16, 0x1

    .line 2566
    .end local v9    # "pair":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;>;"
    .end local v10    # "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    :cond_d
    goto :goto_6

    .line 2567
    .end local v6    # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroidx/mediarouter/media/MediaRouteDescriptor;>;"
    .end local v7    # "addedGroups":Ljava/util/List;, "Ljava/util/List<Landroidx/core/util/Pair<Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;>;>;"
    .end local v8    # "updatedGroups":Ljava/util/List;, "Ljava/util/List<Landroidx/core/util/Pair<Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;>;>;"
    :cond_e
    move/from16 v4, v16

    goto :goto_7

    .line 2568
    .end local v16    # "selectedRouteDescriptorChanged":Z
    .restart local v4    # "selectedRouteDescriptorChanged":Z
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring invalid provider descriptor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    :goto_7
    iget-object v6, v1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_8
    if-lt v6, v3, :cond_10

    .line 2574
    iget-object v7, v1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2575
    .local v7, "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 2577
    iget-object v8, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2572
    .end local v7    # "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    .line 2581
    .end local v6    # "i":I
    :cond_10
    invoke-virtual {v0, v4}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateSelectedRouteIfNeeded(Z)V

    .line 2588
    iget-object v6, v1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .restart local v6    # "i":I
    :goto_9
    if-lt v6, v3, :cond_12

    .line 2589
    iget-object v7, v1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2590
    .restart local v7    # "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    sget-boolean v8, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v8, :cond_11

    .line 2591
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Route removed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    :cond_11
    iget-object v8, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v9, 0x102

    invoke-virtual {v8, v9, v7}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2588
    .end local v7    # "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 2597
    .end local v6    # "i":I
    :cond_12
    sget-boolean v6, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v6, :cond_13

    .line 2598
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Provider changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    :cond_13
    iget-object v5, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v6, 0x203

    invoke-virtual {v5, v6, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2601
    return-void
.end method

.method private updateRouteDescriptorAndNotify(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;)I
    .locals 4
    .param p1, "route"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .param p2, "routeDescriptor"    # Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 2605
    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    move-result v0

    .line 2606
    .local v0, "changes":I
    if-eqz v0, :cond_5

    .line 2607
    and-int/lit8 v1, v0, 0x1

    const-string v2, "MediaRouter"

    if-eqz v1, :cond_1

    .line 2608
    sget-boolean v1, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route changed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v3, 0x103

    invoke-virtual {v1, v3, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2614
    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 2615
    sget-boolean v1, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 2616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route volume changed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    :cond_2
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v3, 0x104

    invoke-virtual {v1, v3, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2621
    :cond_3
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_5

    .line 2622
    sget-boolean v1, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 2623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route presentation display changed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    :cond_4
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v2, 0x105

    invoke-virtual {v1, v2, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2630
    :cond_5
    return v0
.end method


# virtual methods
.method addMemberToDynamicGroup(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "route"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2288
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupState()Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    instance-of v0, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    if-eqz v0, :cond_2

    .line 2293
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupState()Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;

    move-result-object v0

    .line 2294
    .local v0, "state":Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 2295
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->isGroupable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2300
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    check-cast v1, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 2301
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDescriptorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->onAddMemberRoute(Ljava/lang/String;)V

    .line 2302
    return-void

    .line 2296
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring attemp to add a non-groupable route to dynamic group : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaRouter"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    return-void

    .line 2290
    .end local v0    # "state":Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no currently selected dynamic group route."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addProvider(Landroidx/mediarouter/media/MediaRouteProvider;)V
    .locals 3
    .param p1, "providerInstance"    # Landroidx/mediarouter/media/MediaRouteProvider;

    .line 2430
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2432
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    invoke-direct {v0, p1}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;-><init>(Landroidx/mediarouter/media/MediaRouteProvider;)V

    .line 2433
    .local v0, "provider":Landroidx/mediarouter/media/MediaRouter$ProviderInfo;
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2434
    sget-boolean v1, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaRouter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v2, 0x201

    invoke-virtual {v1, v2, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2439
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteProvider;->getDescriptor()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateProviderContents(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 2441
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviderCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

    invoke-virtual {p1, v1}, Landroidx/mediarouter/media/MediaRouteProvider;->setCallback(Landroidx/mediarouter/media/MediaRouteProvider$Callback;)V

    .line 2443
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-virtual {p1, v1}, Landroidx/mediarouter/media/MediaRouteProvider;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    .line 2445
    .end local v0    # "provider":Landroidx/mediarouter/media/MediaRouter$ProviderInfo;
    :cond_1
    return-void
.end method

.method public addRemoteControlClient(Ljava/lang/Object;)V
    .locals 3
    .param p1, "rcc"    # Ljava/lang/Object;

    .line 2883
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->findRemoteControlClientRecord(Ljava/lang/Object;)I

    move-result v0

    .line 2884
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 2885
    new-instance v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;

    invoke-direct {v1, p0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;Ljava/lang/Object;)V

    .line 2886
    .local v1, "record":Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2888
    .end local v1    # "record":Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    :cond_0
    return-void
.end method

.method assignRouteUniqueId(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "provider"    # Landroidx/mediarouter/media/MediaRouter$ProviderInfo;
    .param p2, "routeDescriptorId"    # Ljava/lang/String;

    .line 2637
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 2638
    .local v0, "componentName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2639
    .local v1, "uniqueId":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->findRouteByUniqueId(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    .line 2640
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    new-instance v3, Landroidx/core/util/Pair;

    invoke-direct {v3, v0, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2641
    return-object v1

    .line 2643
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Either "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isn\'t unique in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " or we\'re trying to assign a unique ID for an already added route"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaRouter"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    const/4 v2, 0x2

    .line 2646
    .local v2, "i":I
    :goto_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "%s_%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2647
    .local v3, "newUniqueId":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->findRouteByUniqueId(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    .line 2648
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    new-instance v5, Landroidx/core/util/Pair;

    invoke-direct {v5, v0, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2649
    return-object v3

    .line 2645
    .end local v3    # "newUniqueId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method chooseFallbackRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 3

    .line 2751
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2752
    .local v1, "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eq v1, v2, :cond_0

    .line 2753
    invoke-direct {p0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->isSystemLiveAudioOnlyRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2754
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2755
    return-object v1

    .line 2757
    .end local v1    # "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    :cond_0
    goto :goto_0

    .line 2758
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method getBluetoothRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 1

    .line 2269
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 2192
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 2

    .line 2258
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 2265
    return-object v0

    .line 2262
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no default route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDisplay(I)Landroid/view/Display;
    .locals 1
    .param p1, "displayId"    # I

    .line 2208
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDisplayManager:Landroidx/core/hardware/display/DisplayManagerCompat;

    invoke-virtual {v0, p1}, Landroidx/core/hardware/display/DisplayManagerCompat;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 2932
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    if-eqz v0, :cond_0

    .line 2933
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->getToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0

    .line 2934
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    .line 2935
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0

    .line 2937
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProviderContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2196
    const-string v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2197
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    return-object v0

    .line 2200
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2202
    :catch_0
    move-exception v0

    .line 2203
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method getProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouter$ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 2254
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRoute(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 3
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 2241
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2242
    .local v1, "info":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    iget-object v2, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2243
    return-object v1

    .line 2245
    .end local v1    # "info":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    :cond_0
    goto :goto_0

    .line 2246
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRouter(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 2178
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 2179
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter;

    .line 2180
    .local v1, "router":Landroidx/mediarouter/media/MediaRouter;
    if-nez v1, :cond_1

    .line 2181
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2182
    :cond_1
    iget-object v2, v1, Landroidx/mediarouter/media/MediaRouter;->mContext:Landroid/content/Context;

    if-ne v2, p1, :cond_0

    .line 2183
    return-object v1

    .line 2186
    .end local v0    # "i":I
    .end local v1    # "router":Landroidx/mediarouter/media/MediaRouter;
    :cond_2
    new-instance v0, Landroidx/mediarouter/media/MediaRouter;

    invoke-direct {v0, p1}, Landroidx/mediarouter/media/MediaRouter;-><init>(Landroid/content/Context;)V

    .line 2187
    .local v0, "router":Landroidx/mediarouter/media/MediaRouter;
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2188
    return-object v0
.end method

.method public getRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .line 2250
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 2

    .line 2273
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 2280
    return-object v0

    .line 2277
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no currently selected route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getUniqueId(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "provider"    # Landroidx/mediarouter/media/MediaRouter$ProviderInfo;
    .param p2, "routeDescriptorId"    # Ljava/lang/String;

    .line 2665
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 2666
    .local v0, "componentName":Ljava/lang/String;
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    new-instance v2, Landroidx/core/util/Pair;

    invoke-direct {v2, v0, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public isRouteAvailable(Landroidx/mediarouter/media/MediaRouteSelector;I)Z
    .locals 6
    .param p1, "selector"    # Landroidx/mediarouter/media/MediaRouteSelector;
    .param p2, "flags"    # I

    .line 2338
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2339
    return v1

    .line 2343
    :cond_0
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    if-eqz v0, :cond_1

    .line 2344
    return v2

    .line 2348
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2349
    .local v0, "routeCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 2350
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2351
    .local v4, "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_2

    .line 2352
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2353
    goto :goto_1

    .line 2355
    :cond_2
    invoke-virtual {v4, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2356
    return v2

    .line 2349
    .end local v4    # "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2361
    .end local v3    # "i":I
    :cond_4
    return v1
.end method

.method public onSystemRouteSelectedByDescriptorId(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 2872
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v1, 0x106

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->removeMessages(I)V

    .line 2873
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    invoke-direct {p0, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v0

    .line 2874
    .local v0, "provider":Landroidx/mediarouter/media/MediaRouter$ProviderInfo;
    if-eqz v0, :cond_0

    .line 2875
    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->findRouteByDescriptorId(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v1

    .line 2876
    .local v1, "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    if-eqz v1, :cond_0

    .line 2877
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->select()V

    .line 2880
    .end local v1    # "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    :cond_0
    return-void
.end method

.method removeMemberFromDynamicGroup(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p1, "route"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2305
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupState()Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    instance-of v0, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    if-eqz v0, :cond_3

    .line 2310
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupState()Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;

    move-result-object v0

    .line 2311
    .local v0, "state":Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MediaRouter"

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 2312
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->isUnselectable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2317
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1

    .line 2318
    const-string v1, "Ignoring attempt to remove the last member route."

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    return-void

    .line 2321
    :cond_1
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    check-cast v1, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 2322
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDescriptorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->onRemoveMemberRoute(Ljava/lang/String;)V

    .line 2323
    return-void

    .line 2313
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring attempt to remove a non-unselectable member route : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    return-void

    .line 2307
    .end local v0    # "state":Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no currently selected dynamic group route."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeProvider(Landroidx/mediarouter/media/MediaRouteProvider;)V
    .locals 3
    .param p1, "providerInstance"    # Landroidx/mediarouter/media/MediaRouteProvider;

    .line 2449
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v0

    .line 2450
    .local v0, "provider":Landroidx/mediarouter/media/MediaRouter$ProviderInfo;
    if-eqz v0, :cond_1

    .line 2452
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/mediarouter/media/MediaRouteProvider;->setCallback(Landroidx/mediarouter/media/MediaRouteProvider$Callback;)V

    .line 2454
    invoke-virtual {p1, v1}, Landroidx/mediarouter/media/MediaRouteProvider;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    .line 2456
    invoke-direct {p0, v0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateProviderContents(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 2458
    sget-boolean v1, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaRouter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v2, 0x202

    invoke-virtual {v1, v2, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2462
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2464
    :cond_1
    return-void
.end method

.method public removeRemoteControlClient(Ljava/lang/Object;)V
    .locals 2
    .param p1, "rcc"    # Ljava/lang/Object;

    .line 2891
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->findRemoteControlClientRecord(Ljava/lang/Object;)I

    move-result v0

    .line 2892
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 2893
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;

    .line 2894
    .local v1, "record":Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->disconnect()V

    .line 2896
    .end local v1    # "record":Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    :cond_0
    return-void
.end method

.method public requestSetVolume(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V
    .locals 2
    .param p1, "route"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .param p2, "volume"    # I

    .line 2224
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_0

    .line 2225
    invoke-virtual {v0, p2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    goto :goto_0

    .line 2226
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2227
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    iget-object v1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 2228
    .local v0, "controller":Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    if-eqz v0, :cond_1

    .line 2229
    invoke-virtual {v0, p2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    .line 2232
    .end local v0    # "controller":Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    :cond_1
    :goto_0
    return-void
.end method

.method public requestUpdateVolume(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V
    .locals 1
    .param p1, "route"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .param p2, "delta"    # I

    .line 2235
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_0

    .line 2236
    invoke-virtual {v0, p2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUpdateVolume(I)V

    .line 2238
    :cond_0
    return-void
.end method

.method selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "route"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2284
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    .line 2285
    return-void
.end method

.method selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V
    .locals 3
    .param p1, "route"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .param p2, "unselectReason"    # I

    .line 2326
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MediaRouter"

    if-nez v0, :cond_0

    .line 2327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring attempt to select removed route: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    return-void

    .line 2330
    :cond_0
    iget-boolean v0, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    if-nez v0, :cond_1

    .line 2331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring attempt to select disabled route: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    return-void

    .line 2334
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->setSelectedRouteInternal(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    .line 2335
    return-void
.end method

.method public sendControlRequest(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V
    .locals 1
    .param p1, "route"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callback"    # Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    .line 2213
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_0

    .line 2214
    invoke-virtual {v0, p2, p3}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onControlRequest(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2215
    return-void

    .line 2218
    :cond_0
    if-eqz p3, :cond_1

    .line 2219
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2221
    :cond_1
    return-void
.end method

.method public setMediaSession(Ljava/lang/Object;)V
    .locals 1
    .param p1, "session"    # Ljava/lang/Object;

    .line 2899
    if-eqz p1, :cond_0

    new-instance v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    invoke-direct {v0, p0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->setMediaSessionRecord(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;)V

    .line 2900
    return-void
.end method

.method public setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 2
    .param p1, "session"    # Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2903
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2904
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 2905
    if-eqz p1, :cond_0

    new-instance v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    invoke-direct {v0, p0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;Landroid/support/v4/media/session/MediaSessionCompat;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->setMediaSessionRecord(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;)V

    goto :goto_1

    .line 2906
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 2907
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_2

    .line 2908
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->removeRemoteControlClient(Ljava/lang/Object;)V

    .line 2909
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->removeOnActiveChangeListener(Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;)V

    .line 2911
    :cond_2
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2912
    if-eqz p1, :cond_3

    .line 2913
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->addOnActiveChangeListener(Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;)V

    .line 2914
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2915
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->addRemoteControlClient(Ljava/lang/Object;)V

    .line 2919
    :cond_3
    :goto_1
    return-void
.end method

.method public start()V
    .locals 2

    .line 2167
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->addProvider(Landroidx/mediarouter/media/MediaRouteProvider;)V

    .line 2171
    new-instance v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRegisteredProviderWatcher:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    .line 2173
    invoke-virtual {v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->start()V

    .line 2174
    return-void
.end method

.method public updateDiscoveryRequest()V
    .locals 9

    .line 2366
    const/4 v0, 0x0

    .line 2367
    .local v0, "discover":Z
    const/4 v1, 0x0

    .line 2368
    .local v1, "activeScan":Z
    new-instance v2, Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    invoke-direct {v2}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;-><init>()V

    .line 2369
    .local v2, "builder":Landroidx/mediarouter/media/MediaRouteSelector$Builder;
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_5

    .line 2370
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/MediaRouter;

    .line 2371
    .local v4, "router":Landroidx/mediarouter/media/MediaRouter;
    if-nez v4, :cond_0

    .line 2372
    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 2374
    :cond_0
    iget-object v5, v4, Landroidx/mediarouter/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2375
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_4

    .line 2376
    iget-object v7, v4, Landroidx/mediarouter/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;

    .line 2377
    .local v7, "callback":Landroidx/mediarouter/media/MediaRouter$CallbackRecord;
    iget-object v8, v7, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v2, v8}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->addSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    .line 2378
    iget v8, v7, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mFlags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 2379
    const/4 v1, 0x1

    .line 2380
    const/4 v0, 0x1

    .line 2382
    :cond_1
    iget v8, v7, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mFlags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_2

    .line 2383
    iget-boolean v8, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    if-nez v8, :cond_2

    .line 2384
    const/4 v0, 0x1

    .line 2387
    :cond_2
    iget v8, v7, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3

    .line 2388
    const/4 v0, 0x1

    .line 2375
    .end local v7    # "callback":Landroidx/mediarouter/media/MediaRouter$CallbackRecord;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2392
    .end local v4    # "router":Landroidx/mediarouter/media/MediaRouter;
    .end local v5    # "count":I
    .end local v6    # "j":I
    :cond_4
    :goto_2
    goto :goto_0

    .line 2393
    .end local v3    # "i":I
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->build()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v3

    goto :goto_3

    :cond_6
    sget-object v3, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 2396
    .local v3, "selector":Landroidx/mediarouter/media/MediaRouteSelector;
    :goto_3
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    if-eqz v4, :cond_7

    .line 2397
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 2398
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v4

    if-ne v4, v1, :cond_7

    .line 2399
    return-void

    .line 2401
    :cond_7
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v1, :cond_9

    .line 2403
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    if-nez v4, :cond_8

    .line 2404
    return-void

    .line 2406
    :cond_8
    const/4 v4, 0x0

    iput-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    goto :goto_4

    .line 2409
    :cond_9
    new-instance v4, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-direct {v4, v3, v1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;-><init>(Landroidx/mediarouter/media/MediaRouteSelector;Z)V

    iput-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 2411
    :goto_4
    sget-boolean v4, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    const-string v5, "MediaRouter"

    if-eqz v4, :cond_a

    .line 2412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updated discovery request: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    :cond_a
    if-eqz v0, :cond_b

    if-nez v1, :cond_b

    iget-boolean v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    if-eqz v4, :cond_b

    .line 2415
    const-string v4, "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY."

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    :cond_b
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2423
    .local v4, "providerCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v4, :cond_c

    .line 2424
    iget-object v6, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    iget-object v6, v6, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroidx/mediarouter/media/MediaRouteProvider;

    iget-object v7, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v6, v7}, Landroidx/mediarouter/media/MediaRouteProvider;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    .line 2423
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 2426
    .end local v5    # "i":I
    :cond_c
    return-void
.end method

.method updateProviderDescriptor(Landroidx/mediarouter/media/MediaRouteProvider;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V
    .locals 1
    .param p1, "providerInstance"    # Landroidx/mediarouter/media/MediaRouteProvider;
    .param p2, "descriptor"    # Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 2468
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v0

    .line 2469
    .local v0, "provider":Landroidx/mediarouter/media/MediaRouter$ProviderInfo;
    if-eqz v0, :cond_0

    .line 2471
    invoke-direct {p0, v0, p2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateProviderContents(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 2473
    :cond_0
    return-void
.end method

.method updateSelectedRouteIfNeeded(Z)V
    .locals 8
    .param p1, "selectedRouteDescriptorChanged"    # Z

    .line 2671
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    const/4 v1, 0x0

    const-string v2, "MediaRouter"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing the default route because it is no longer selectable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2676
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2677
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2678
    .local v3, "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    invoke-direct {p0, v3}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->isSystemDefaultRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2679
    iput-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found default route: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    goto :goto_1

    .line 2683
    .end local v3    # "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    :cond_1
    goto :goto_0

    .line 2687
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing the bluetooth route because it is no longer selectable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2692
    :cond_3
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2693
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2694
    .local v1, "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    invoke-direct {p0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->isSystemLiveAudioOnlyRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2695
    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found bluetooth route: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    goto :goto_3

    .line 2699
    .end local v1    # "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    :cond_4
    goto :goto_2

    .line 2703
    :cond_5
    :goto_3
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_7

    .line 2708
    :cond_6
    if-eqz p1, :cond_d

    .line 2711
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2712
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    move-result-object v0

    .line 2714
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroidx/mediarouter/media/MediaRouter$RouteInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2715
    .local v1, "idSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2716
    .restart local v3    # "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    iget-object v4, v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2717
    .end local v3    # "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    goto :goto_4

    .line 2719
    :cond_7
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    .line 2720
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2721
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;>;>;"
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2722
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2723
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2724
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 2725
    .local v4, "controller":Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect()V

    .line 2726
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 2727
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2729
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;>;"
    .end local v4    # "controller":Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    :cond_8
    goto :goto_5

    .line 2731
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2732
    .local v4, "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    iget-object v6, v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2733
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v5

    iget-object v6, v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    iget-object v7, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v7, v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 2734
    invoke-virtual {v5, v6, v7}, Landroidx/mediarouter/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object v5

    .line 2736
    .local v5, "controller":Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    invoke-virtual {v5}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 2737
    iget-object v6, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    iget-object v7, v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2739
    .end local v4    # "route":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .end local v5    # "controller":Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    :cond_a
    goto :goto_6

    .line 2742
    .end local v0    # "routes":Ljava/util/List;, "Ljava/util/List<Landroidx/mediarouter/media/MediaRouter$RouteInfo;>;"
    .end local v1    # "idSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;>;>;"
    :cond_b
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    goto :goto_8

    .line 2704
    :cond_c
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unselecting the current route because it is no longer selectable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->chooseFallbackRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->setSelectedRouteInternal(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    .line 2744
    :cond_d
    :goto_8
    return-void
.end method
