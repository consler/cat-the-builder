.class public Lcom/koushikdutta/async/AsyncNetworkSocket;
.super Ljava/lang/Object;
.source "AsyncNetworkSocket.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSocket;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field allocator:Lcom/koushikdutta/async/util/Allocator;

.field closeReported:Z

.field private mChannel:Lcom/koushikdutta/async/ChannelWrapper;

.field mClosedHander:Lcom/koushikdutta/async/callback/CompletedCallback;

.field private mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field mDataHandler:Lcom/koushikdutta/async/callback/DataCallback;

.field mEndReported:Z

.field private mKey:Ljava/nio/channels/SelectionKey;

.field mPaused:Z

.field mPendingEndException:Ljava/lang/Exception;

.field private mServer:Lcom/koushikdutta/async/AsyncServer;

.field mWriteableHandler:Lcom/koushikdutta/async/callback/WritableCallback;

.field private pending:Lcom/koushikdutta/async/ByteBufferList;

.field socketAddress:Ljava/net/InetSocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    return-void
.end method

.method private handleRemaining(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :goto_0
    return-void

    .line 101
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/nio/channels/CancelledKeyException;

    invoke-direct {v0}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private spitPending()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    :cond_0
    return-void
.end method


# virtual methods
.method attach(Ljava/nio/channels/DatagramChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/koushikdutta/async/DatagramChannelWrapper;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/DatagramChannelWrapper;-><init>(Ljava/nio/channels/DatagramChannel;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    .line 42
    new-instance p1, Lcom/koushikdutta/async/util/Allocator;

    const/16 v0, 0x2000

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/util/Allocator;-><init>(I)V

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->allocator:Lcom/koushikdutta/async/util/Allocator;

    return-void
.end method

.method attach(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->socketAddress:Ljava/net/InetSocketAddress;

    .line 34
    new-instance p2, Lcom/koushikdutta/async/util/Allocator;

    invoke-direct {p2}, Lcom/koushikdutta/async/util/Allocator;-><init>()V

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->allocator:Lcom/koushikdutta/async/util/Allocator;

    .line 35
    new-instance p2, Lcom/koushikdutta/async/SocketChannelWrapper;

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/SocketChannelWrapper;-><init>(Ljava/nio/channels/SocketChannel;)V

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    return-void
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeInternal()V

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportClose(Ljava/lang/Exception;)V

    return-void
.end method

.method public closeInternal()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public end()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->shutdownOutput()V

    return-void
.end method

.method getChannel()Lcom/koushikdutta/async/ChannelWrapper;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    return-object v0
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mClosedHander:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mDataHandler:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->socketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public getSocket()Ljava/lang/Object;
    .locals 1

    .line 342
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->getChannel()Lcom/koushikdutta/async/ChannelWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->getSocket()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mWriteableHandler:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    return v0
.end method

.method public onDataWritable()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->isChunked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mWriteableHandler:Lcom/koushikdutta/async/callback/WritableCallback;

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {v0}, Lcom/koushikdutta/async/callback/WritableCallback;->onWriteable()V

    :cond_1
    return-void
.end method

.method onReadable()I
    .locals 8

    .line 119
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->spitPending()V

    .line 123
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 130
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->allocator:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/Allocator;->allocate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 134
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ChannelWrapper;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeInternal()V

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    int-to-long v5, v1

    add-long/2addr v5, v2

    long-to-int v5, v5

    move v7, v5

    move v5, v1

    move v1, v7

    :goto_0
    if-lez v4, :cond_2

    .line 143
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->allocator:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v4, v2, v3}, Lcom/koushikdutta/async/util/Allocator;->track(J)V

    .line 144
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 151
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 152
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_1

    .line 155
    :cond_2
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    :goto_1
    if-eqz v5, :cond_3

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportEndPending(Ljava/lang/Exception;)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportClose(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeInternal()V

    .line 165
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportEndPending(Ljava/lang/Exception;)V

    .line 166
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportClose(Ljava/lang/Exception;)V

    :cond_3
    :goto_2
    return v1
.end method

.method public pause()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lcom/koushikdutta/async/AsyncNetworkSocket$2;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/AsyncNetworkSocket$2;-><init>(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    return-void

    .line 280
    :cond_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected reportClose(Ljava/lang/Exception;)V
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeReported:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeReported:Z

    .line 177
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mClosedHander:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_1

    .line 178
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    .line 179
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mClosedHander:Lcom/koushikdutta/async/callback/CompletedCallback;

    :cond_1
    return-void
.end method

.method reportEnd(Ljava/lang/Exception;)V
    .locals 2

    .line 232
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mEndReported:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mEndReported:Z

    .line 235
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_1

    .line 236
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "NIO"

    const-string v1, "Unhandled exception"

    .line 238
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method reportEndPending(Ljava/lang/Exception;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPendingEndException:Ljava/lang/Exception;

    return-void

    .line 248
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportEnd(Ljava/lang/Exception;)V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lcom/koushikdutta/async/AsyncNetworkSocket$3;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/AsyncNetworkSocket$3;-><init>(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    return-void

    .line 309
    :cond_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :catch_0
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->spitPending()V

    .line 318
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPendingEndException:Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportEndPending(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mClosedHander:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mDataHandler:Lcom/koushikdutta/async/callback/DataCallback;

    return-void
.end method

.method public setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mWriteableHandler:Lcom/koushikdutta/async/callback/WritableCallback;

    return-void
.end method

.method setup(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    .line 65
    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    return-void
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lcom/koushikdutta/async/AsyncNetworkSocket$1;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/AsyncNetworkSocket$1;-><init>(Lcom/koushikdutta/async/AsyncNetworkSocket;Lcom/koushikdutta/async/ByteBufferList;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 85
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    .line 86
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getAllArray()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/ChannelWrapper;->write([Ljava/nio/ByteBuffer;)I

    .line 88
    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/ByteBufferList;->addAll([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 89
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->handleRemaining(I)V

    .line 90
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/AsyncServer;->onDataSent(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeInternal()V

    .line 94
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportEndPending(Ljava/lang/Exception;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportClose(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
