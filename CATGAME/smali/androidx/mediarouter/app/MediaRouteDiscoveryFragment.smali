.class public Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;
.super Landroidx/fragment/app/Fragment;
.source "MediaRouteDiscoveryFragment.java"


# static fields
.field private static final ARGUMENT_SELECTOR:Ljava/lang/String; = "selector"


# instance fields
.field private mCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

.field private mRouter:Landroidx/mediarouter/media/MediaRouter;

.field private mSelector:Landroidx/mediarouter/media/MediaRouteSelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private ensureRouteSelector()V
    .locals 2

    .line 105
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-nez v0, :cond_1

    .line 106
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "selector"

    .line 108
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 110
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-nez v0, :cond_1

    .line 111
    sget-object v0, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    :cond_1
    return-void
.end method

.method private ensureRouter()V
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    :cond_0
    return-void
.end method


# virtual methods
.method public getMediaRouter()Landroidx/mediarouter/media/MediaRouter;
    .locals 1

    .line 55
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->ensureRouter()V

    .line 56
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    return-object v0
.end method

.method public getRouteSelector()Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 1

    .line 71
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->ensureRouteSelector()V

    .line 72
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    return-object v0
.end method

.method public onCreateCallback()Landroidx/mediarouter/media/MediaRouter$Callback;
    .locals 1

    .line 127
    new-instance v0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment$1;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment$1;-><init>(Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;)V

    return-object v0
.end method

.method public onPrepareCallbackFlags()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public onStart()V
    .locals 4

    .line 145
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 147
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->ensureRouteSelector()V

    .line 148
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->ensureRouter()V

    .line 149
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->onCreateCallback()Landroidx/mediarouter/media/MediaRouter$Callback;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->onPrepareCallbackFlags()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 157
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    .line 162
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 86
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->ensureRouteSelector()V

    .line 87
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 90
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "selector"

    .line 94
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->asBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 97
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    if-eqz p1, :cond_1

    .line 98
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 99
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->onPrepareCallbackFlags()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    :cond_1
    return-void

    .line 83
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
