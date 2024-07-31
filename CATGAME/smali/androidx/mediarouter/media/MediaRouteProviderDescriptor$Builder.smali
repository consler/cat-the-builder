.class public final Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;
.super Ljava/lang/Object;
.source "MediaRouteProviderDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProviderDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouteDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportsDynamicGroupRoute:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mSupportsDynamicGroupRoute:Z

    .line 157
    return-void
.end method

.method public constructor <init>(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V
    .locals 2
    .param p1, "descriptor"    # Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mSupportsDynamicGroupRoute:Z

    .line 164
    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/List;

    .line 168
    iget-boolean v0, p1, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->mSupportsDynamicGroupRoute:Z

    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mSupportsDynamicGroupRoute:Z

    .line 169
    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "descriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addRoute(Landroidx/mediarouter/media/MediaRouteDescriptor;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;
    .locals 2
    .param p1, "route"    # Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 175
    if-eqz p1, :cond_2

    .line 179
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/List;

    goto :goto_0

    .line 181
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-object p0

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "route descriptor already added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "route must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRoutes(Ljava/util/Collection;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/mediarouter/media/MediaRouteDescriptor;",
            ">;)",
            "Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;"
        }
    .end annotation

    .line 192
    .local p1, "routes":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/mediarouter/media/MediaRouteDescriptor;>;"
    if-eqz p1, :cond_1

    .line 196
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 198
    .local v1, "route":Landroidx/mediarouter/media/MediaRouteDescriptor;
    invoke-virtual {p0, v1}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->addRoute(Landroidx/mediarouter/media/MediaRouteDescriptor;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;

    .line 199
    .end local v1    # "route":Landroidx/mediarouter/media/MediaRouteDescriptor;
    goto :goto_0

    .line 201
    :cond_0
    return-object p0

    .line 193
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routes must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;
    .locals 3

    .line 229
    new-instance v0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/List;

    iget-boolean v2, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mSupportsDynamicGroupRoute:Z

    invoke-direct {v0, v1, v2}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method setRoutes(Ljava/util/Collection;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/mediarouter/media/MediaRouteDescriptor;",
            ">;)",
            "Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;"
        }
    .end annotation

    .line 208
    .local p1, "routes":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/mediarouter/media/MediaRouteDescriptor;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/List;

    goto :goto_1

    .line 209
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/List;

    .line 213
    :goto_1
    return-object p0
.end method

.method public setSupportsDynamicGroupRoute(Z)Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 220
    iput-boolean p1, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mSupportsDynamicGroupRoute:Z

    .line 221
    return-object p0
.end method
