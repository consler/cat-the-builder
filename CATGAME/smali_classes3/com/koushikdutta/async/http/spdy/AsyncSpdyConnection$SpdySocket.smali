.class public Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
.super Ljava/lang/Object;
.source "AsyncSpdyConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSocket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpdySocket"
.end annotation


# instance fields
.field bytesLeftInWriteWindow:J

.field closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field dataCallback:Lcom/koushikdutta/async/callback/DataCallback;

.field endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field headers:Lcom/koushikdutta/async/future/SimpleFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/SimpleFuture<",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;>;"
        }
    .end annotation
.end field

.field final id:I

.field isOpen:Z

.field paused:Z

.field pending:Lcom/koushikdutta/async/ByteBufferList;

.field final synthetic this$0:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

.field totalWindowRead:I

.field writable:Lcom/koushikdutta/async/callback/WritableCallback;

.field writing:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;IZZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->this$0:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->peerSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    const/high16 p3, 0x10000

    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/http/spdy/Settings;->getInitialWindowSize(I)I

    move-result p1

    int-to-long p3, p1

    iput-wide p3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->bytesLeftInWriteWindow:J

    .line 103
    new-instance p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    .line 104
    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->headers:Lcom/koushikdutta/async/future/SimpleFuture;

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->isOpen:Z

    .line 202
    new-instance p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->writing:Lcom/koushikdutta/async/ByteBufferList;

    .line 131
    iput p2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->id:I

    return-void
.end method


# virtual methods
.method public addBytesToWriteWindow(J)V
    .locals 4

    .line 140
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->bytesLeftInWriteWindow:J

    add-long/2addr p1, v0

    .line 141
    iput-wide p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->bytesLeftInWriteWindow:J

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-lez p1, :cond_0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->writable:Lcom/koushikdutta/async/callback/WritableCallback;

    invoke-static {p1}, Lcom/koushikdutta/async/Util;->writable(Lcom/koushikdutta/async/callback/WritableCallback;)V

    :cond_0
    return-void
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->isOpen:Z

    return-void
.end method

.method public end()V
    .locals 4

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->this$0:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    iget v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->id:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->writing:Lcom/koushikdutta/async/ByteBufferList;

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->data(ZILcom/koushikdutta/async/ByteBufferList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 247
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getConnection()Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->this$0:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    return-object v0
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->dataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->this$0:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->writable:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public headers()Lcom/koushikdutta/async/future/SimpleFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/SimpleFuture<",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;>;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->headers:Lcom/koushikdutta/async/future/SimpleFuture;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLocallyInitiated()Z
    .locals 4

    .line 135
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->id:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 136
    :goto_0
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->this$0:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    iget-boolean v3, v3, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->client:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public isOpen()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->isOpen:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->paused:Z

    return v0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->paused:Z

    return-void
.end method

.method public receiveHeaders(Ljava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;",
            "Lcom/koushikdutta/async/http/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    .line 262
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->headers:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->paused:Z

    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->dataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    return-void
.end method

.method public setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->writable:Lcom/koushikdutta/async/callback/WritableCallback;

    return-void
.end method

.method updateWindowRead(I)V
    .locals 4

    .line 117
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->totalWindowRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->totalWindowRead:I

    .line 118
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->this$0:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    iget-object v1, v1, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->okHttpSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/spdy/Settings;->getInitialWindowSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->this$0:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    iget v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->id:I

    iget v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->totalWindowRead:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->windowUpdate(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->totalWindowRead:I

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 127
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->this$0:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->updateWindowRead(I)V

    return-void
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 5

    .line 205
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->bytesLeftInWriteWindow:J

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->this$0:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    iget-wide v2, v2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->bytesLeftInWriteWindow:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 206
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 211
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->writing:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->writing:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1, v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 214
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->writing:Lcom/koushikdutta/async/ByteBufferList;

    goto :goto_0

    .line 212
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "wtf"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 218
    :cond_2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->this$0:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    iget-object v1, v1, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    iget v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->id:I

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2, p1}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->data(ZILcom/koushikdutta/async/ByteBufferList;)V

    .line 219
    iget-wide v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->bytesLeftInWriteWindow:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->bytesLeftInWriteWindow:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 222
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
