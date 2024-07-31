.class final Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "MediaRouteChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteChooserDialog;)V
    .locals 0

    .line 360
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$Callback;-><init>()V

    .line 361
    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroidx/mediarouter/media/MediaRouter;
    .param p2, "info"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 365
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 366
    return-void
.end method

.method public onRouteChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroidx/mediarouter/media/MediaRouter;
    .param p2, "info"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 375
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 376
    return-void
.end method

.method public onRouteRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroidx/mediarouter/media/MediaRouter;
    .param p2, "info"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 370
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 371
    return-void
.end method

.method public onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroidx/mediarouter/media/MediaRouter;
    .param p2, "route"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 380
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->dismiss()V

    .line 381
    return-void
.end method
