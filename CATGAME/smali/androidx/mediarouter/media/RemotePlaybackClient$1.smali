.class Landroidx/mediarouter/media/RemotePlaybackClient$1;
.super Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;
.source "RemotePlaybackClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/media/RemotePlaybackClient;->performItemAction(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/RemotePlaybackClient;

.field final synthetic val$callback:Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$sessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/RemotePlaybackClient;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/mediarouter/media/RemotePlaybackClient;

    .line 666
    iput-object p1, p0, Landroidx/mediarouter/media/RemotePlaybackClient$1;->this$0:Landroidx/mediarouter/media/RemotePlaybackClient;

    iput-object p2, p0, Landroidx/mediarouter/media/RemotePlaybackClient$1;->val$sessionId:Ljava/lang/String;

    iput-object p3, p0, Landroidx/mediarouter/media/RemotePlaybackClient$1;->val$itemId:Ljava/lang/String;

    iput-object p4, p0, Landroidx/mediarouter/media/RemotePlaybackClient$1;->val$intent:Landroid/content/Intent;

    iput-object p5, p0, Landroidx/mediarouter/media/RemotePlaybackClient$1;->val$callback:Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 698
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient$1;->this$0:Landroidx/mediarouter/media/RemotePlaybackClient;

    iget-object v1, p0, Landroidx/mediarouter/media/RemotePlaybackClient$1;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Landroidx/mediarouter/media/RemotePlaybackClient$1;->val$callback:Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/mediarouter/media/RemotePlaybackClient;->handleError(Landroid/content/Intent;Landroidx/mediarouter/media/RemotePlaybackClient$ActionCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 699
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "data"    # Landroid/os/Bundle;

    .line 669
    if-eqz p1, :cond_1

    .line 670
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient$1;->val$sessionId:Ljava/lang/String;

    .line 671
    const-string v1, "android.media.intent.extra.SESSION_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 670
    invoke-static {v0, v1}, Landroidx/mediarouter/media/RemotePlaybackClient;->inferMissingResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "sessionIdResult":Ljava/lang/String;
    nop

    .line 673
    const-string v1, "android.media.intent.extra.SESSION_STATUS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 672
    invoke-static {v1}, Landroidx/mediarouter/media/MediaSessionStatus;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaSessionStatus;

    move-result-object v1

    .line 674
    .local v1, "sessionStatus":Landroidx/mediarouter/media/MediaSessionStatus;
    iget-object v2, p0, Landroidx/mediarouter/media/RemotePlaybackClient$1;->val$itemId:Ljava/lang/String;

    .line 675
    const-string v3, "android.media.intent.extra.ITEM_ID"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 674
    invoke-static {v2, v3}, Landroidx/mediarouter/media/RemotePlaybackClient;->inferMissingResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 676
    .local v8, "itemIdResult":Ljava/lang/String;
    nop

    .line 677
    const-string v2, "android.media.intent.extra.ITEM_STATUS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 676
    invoke-static {v2}, Landroidx/mediarouter/media/MediaItemStatus;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object v9

    .line 678
    .local v9, "itemStatus":Landroidx/mediarouter/media/MediaItemStatus;
    iget-object v2, p0, Landroidx/mediarouter/media/RemotePlaybackClient$1;->this$0:Landroidx/mediarouter/media/RemotePlaybackClient;

    invoke-virtual {v2, v0}, Landroidx/mediarouter/media/RemotePlaybackClient;->adoptSession(Ljava/lang/String;)V

    .line 679
    if-eqz v0, :cond_1

    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    .line 680
    sget-boolean v2, Landroidx/mediarouter/media/RemotePlaybackClient;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received result from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/mediarouter/media/RemotePlaybackClient$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-static {p1}, Landroidx/mediarouter/media/RemotePlaybackClient;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", sessionStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", itemId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", itemStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 681
    const-string v3, "RemotePlaybackClient"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_0
    iget-object v2, p0, Landroidx/mediarouter/media/RemotePlaybackClient$1;->val$callback:Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;

    move-object v3, p1

    move-object v4, v0

    move-object v5, v1

    move-object v6, v8

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;->onResult(Landroid/os/Bundle;Ljava/lang/String;Landroidx/mediarouter/media/MediaSessionStatus;Ljava/lang/String;Landroidx/mediarouter/media/MediaItemStatus;)V

    .line 690
    return-void

    .line 693
    .end local v0    # "sessionIdResult":Ljava/lang/String;
    .end local v1    # "sessionStatus":Landroidx/mediarouter/media/MediaSessionStatus;
    .end local v8    # "itemIdResult":Ljava/lang/String;
    .end local v9    # "itemStatus":Landroidx/mediarouter/media/MediaItemStatus;
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient$1;->this$0:Landroidx/mediarouter/media/RemotePlaybackClient;

    iget-object v1, p0, Landroidx/mediarouter/media/RemotePlaybackClient$1;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Landroidx/mediarouter/media/RemotePlaybackClient$1;->val$callback:Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/mediarouter/media/RemotePlaybackClient;->handleInvalidResult(Landroid/content/Intent;Landroidx/mediarouter/media/RemotePlaybackClient$ActionCallback;Landroid/os/Bundle;)V

    .line 694
    return-void
.end method
