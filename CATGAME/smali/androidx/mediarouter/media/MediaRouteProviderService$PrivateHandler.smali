.class final Landroidx/mediarouter/media/MediaRouteProviderService$PrivateHandler;
.super Landroid/os/Handler;
.source "MediaRouteProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/MediaRouteProviderService;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRouteProviderService;)V
    .locals 0

    .line 623
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProviderService$PrivateHandler;->this$0:Landroidx/mediarouter/media/MediaRouteProviderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 624
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 628
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 630
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$PrivateHandler;->this$0:Landroidx/mediarouter/media/MediaRouteProviderService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouteProviderService;->onBinderDied(Landroid/os/Messenger;)V

    .line 633
    :goto_0
    return-void
.end method
