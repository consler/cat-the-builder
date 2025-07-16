.class public final Landroidx/mediarouter/media/MediaRouter$ProviderInfo;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderInfo"
.end annotation


# instance fields
.field private mDescriptor:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

.field private final mMetadata:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

.field final mProviderInstance:Landroidx/mediarouter/media/MediaRouteProvider;

.field private mResources:Landroid/content/res/Resources;

.field private mResourcesNotAvailable:Z

.field final mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRouteProvider;)V
    .locals 1

    .line 1835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    .line 1836
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroidx/mediarouter/media/MediaRouteProvider;

    .line 1837
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteProvider;->getMetadata()Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mMetadata:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    return-void
.end method


# virtual methods
.method findRouteByDescriptorId(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 3

    .line 1904
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1906
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1907
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method findRouteIndexByDescriptorId(Ljava/lang/String;)I
    .locals 3

    .line 1894
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1896
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 1859
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mMetadata:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1852
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mMetadata:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;
    .locals 1

    .line 1844
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1845
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroidx/mediarouter/media/MediaRouteProvider;

    return-object v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 3

    .line 1871
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mResourcesNotAvailable:Z

    if-nez v0, :cond_1

    .line 1872
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1873
    sget-object v1, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getProviderContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1875
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mResources:Landroid/content/res/Resources;

    goto :goto_0

    .line 1877
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to obtain resources for route provider package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1879
    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mResourcesNotAvailable:Z

    .line 1882
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mResources:Landroid/content/res/Resources;

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

    .line 1866
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1867
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method supportsDynamicGroup()Z
    .locals 1

    .line 1914
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mDescriptor:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->supportsDynamicGroupRoute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1919
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaRouter.RouteProviderInfo{ packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDescriptor(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)Z
    .locals 1

    .line 1886
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mDescriptor:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    if-eq v0, p1, :cond_0

    .line 1887
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mDescriptor:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
