.class Lcom/koushikdutta/async/AsyncServer$6;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->connectResolvedInetSocketAddress(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/AsyncServer;

.field final synthetic val$address:Ljava/net/InetSocketAddress;

.field final synthetic val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

.field final synthetic val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncServer$ConnectFuture;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/net/InetSocketAddress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/koushikdutta/async/AsyncServer;

    .line 366
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$6;->this$0:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-object p4, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$address:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 369
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-object v1, v0, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "ckey":Ljava/nio/channels/SelectionKey;
    const/4 v1, 0x0

    .line 376
    .local v1, "socket":Ljava/nio/channels/SocketChannel;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v4

    iput-object v4, v3, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->socket:Ljava/nio/channels/SocketChannel;

    move-object v1, v4

    .line 377
    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 378
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer$6;->this$0:Lcom/koushikdutta/async/AsyncServer;

    invoke-static {v3}, Lcom/koushikdutta/async/AsyncServer;->access$300(Lcom/koushikdutta/async/AsyncServer;)Lcom/koushikdutta/async/SelectorWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/koushikdutta/async/SelectorWrapper;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    move-object v0, v3

    .line 379
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    invoke-virtual {v0, v3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$address:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v3}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    goto :goto_0

    .line 382
    :catchall_0
    move-exception v3

    .line 383
    .local v3, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 385
    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v1, v4, v2

    invoke-static {v4}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 386
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->setComplete(Ljava/lang/Exception;)Z

    .line 388
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
