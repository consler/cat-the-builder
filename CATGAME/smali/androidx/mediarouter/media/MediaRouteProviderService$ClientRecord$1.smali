.class Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord$1;
.super Ljava/lang/Object;
.source "MediaRouteProviderService.java"

# interfaces
.implements Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    .line 657
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord$1;->this$1:Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoutesChanged(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;Ljava/util/Collection;)V
    .locals 1
    .param p1, "controller"    # Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;",
            "Ljava/util/Collection<",
            "Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 662
    .local p2, "routes":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;>;"
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord$1;->this$1:Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    invoke-virtual {v0, p1, p2}, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->sendDynamicRouteDescriptors(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;Ljava/util/Collection;)V

    .line 663
    return-void
.end method
