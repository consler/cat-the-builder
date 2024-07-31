.class Lcom/koushikdutta/async/AsyncServer$12;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->openDatagram(Ljava/net/SocketAddress;Z)Lcom/koushikdutta/async/AsyncDatagramSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/AsyncServer;

.field final synthetic val$address:Ljava/net/SocketAddress;

.field final synthetic val$handler:Lcom/koushikdutta/async/AsyncDatagramSocket;

.field final synthetic val$reuseAddress:Z

.field final synthetic val$socket:Ljava/nio/channels/DatagramChannel;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;ZLjava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;Lcom/koushikdutta/async/AsyncDatagramSocket;)V
    .locals 0
    .param p1, "this$0"    # Lcom/koushikdutta/async/AsyncServer;

    .line 517
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$12;->this$0:Lcom/koushikdutta/async/AsyncServer;

    iput-boolean p2, p0, Lcom/koushikdutta/async/AsyncServer$12;->val$reuseAddress:Z

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$12;->val$socket:Ljava/nio/channels/DatagramChannel;

    iput-object p4, p0, Lcom/koushikdutta/async/AsyncServer$12;->val$address:Ljava/net/SocketAddress;

    iput-object p5, p0, Lcom/koushikdutta/async/AsyncServer$12;->val$handler:Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 521
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncServer$12;->val$reuseAddress:Z

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$12;->val$socket:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    iget-boolean v1, p0, Lcom/koushikdutta/async/AsyncServer$12;->val$reuseAddress:Z

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$12;->val$socket:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$12;->val$address:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 524
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$12;->this$0:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$12;->val$handler:Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->access$700(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncNetworkSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    goto :goto_0

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "NIO"

    const-string v2, "Datagram error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer$12;->val$socket:Ljava/nio/channels/DatagramChannel;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 530
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
