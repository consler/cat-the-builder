.class final Landroidx/mediarouter/media/MediaRouteProviderService$ProviderCallback;
.super Landroidx/mediarouter/media/MediaRouteProvider$Callback;
.source "MediaRouteProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/MediaRouteProviderService;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRouteProviderService;)V
    .locals 0

    .line 637
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProviderService$ProviderCallback;->this$0:Landroidx/mediarouter/media/MediaRouteProviderService;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouteProvider$Callback;-><init>()V

    .line 638
    return-void
.end method


# virtual methods
.method public onDescriptorChanged(Landroidx/mediarouter/media/MediaRouteProvider;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V
    .locals 1
    .param p1, "provider"    # Landroidx/mediarouter/media/MediaRouteProvider;
    .param p2, "descriptor"    # Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 643
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$ProviderCallback;->this$0:Landroidx/mediarouter/media/MediaRouteProviderService;

    invoke-virtual {v0, p2}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendDescriptorChanged(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 644
    return-void
.end method
