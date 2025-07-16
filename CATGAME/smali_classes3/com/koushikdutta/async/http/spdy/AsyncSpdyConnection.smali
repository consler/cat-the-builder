.class public Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;
.super Ljava/lang/Object;
.source "AsyncSpdyConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    }
.end annotation


# static fields
.field private static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000


# instance fields
.field bufferedSocket:Lcom/koushikdutta/async/BufferedDataSink;

.field bytesLeftInWriteWindow:J

.field client:Z

.field private lastGoodStreamId:I

.field private nextPingId:I

.field private nextStreamId:I

.field final okHttpSettings:Lcom/koushikdutta/async/http/spdy/Settings;

.field peerSettings:Lcom/koushikdutta/async/http/spdy/Settings;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/koushikdutta/async/http/spdy/Ping;",
            ">;"
        }
    .end annotation
.end field

.field protocol:Lcom/koushikdutta/async/http/Protocol;

.field reader:Lcom/koushikdutta/async/http/spdy/FrameReader;

.field private receivedInitialPeerSettings:Z

.field shutdown:Z

.field socket:Lcom/koushikdutta/async/AsyncSocket;

.field sockets:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;",
            ">;"
        }
    .end annotation
.end field

.field totalWindowRead:I

.field variant:Lcom/koushikdutta/async/http/spdy/Variant;

.field writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/Protocol;)V
    .locals 4

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->client:Z

    .line 266
    new-instance v1, Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/spdy/Settings;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->okHttpSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    .line 423
    new-instance v2, Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-direct {v2}, Lcom/koushikdutta/async/http/spdy/Settings;-><init>()V

    iput-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->peerSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    const/4 v2, 0x0

    .line 424
    iput-boolean v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->receivedInitialPeerSettings:Z

    .line 271
    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->protocol:Lcom/koushikdutta/async/http/Protocol;

    .line 272
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->socket:Lcom/koushikdutta/async/AsyncSocket;

    .line 273
    new-instance v3, Lcom/koushikdutta/async/BufferedDataSink;

    invoke-direct {v3, p1}, Lcom/koushikdutta/async/BufferedDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    iput-object v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->bufferedSocket:Lcom/koushikdutta/async/BufferedDataSink;

    .line 275
    sget-object v3, Lcom/koushikdutta/async/http/Protocol;->SPDY_3:Lcom/koushikdutta/async/http/Protocol;

    if-ne p2, v3, :cond_0

    .line 276
    new-instance v3, Lcom/koushikdutta/async/http/spdy/Spdy3;

    invoke-direct {v3}, Lcom/koushikdutta/async/http/spdy/Spdy3;-><init>()V

    iput-object v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->variant:Lcom/koushikdutta/async/http/spdy/Variant;

    goto :goto_0

    .line 278
    :cond_0
    sget-object v3, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    if-ne p2, v3, :cond_1

    .line 279
    new-instance v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13;

    invoke-direct {v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;-><init>()V

    iput-object v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->variant:Lcom/koushikdutta/async/http/spdy/Variant;

    .line 281
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->variant:Lcom/koushikdutta/async/http/spdy/Variant;

    invoke-interface {v3, p1, p0, v0}, Lcom/koushikdutta/async/http/spdy/Variant;->newReader(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;Z)Lcom/koushikdutta/async/http/spdy/FrameReader;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->reader:Lcom/koushikdutta/async/http/spdy/FrameReader;

    .line 282
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->variant:Lcom/koushikdutta/async/http/spdy/Variant;

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->bufferedSocket:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-interface {p1, v3, v0}, Lcom/koushikdutta/async/http/spdy/Variant;->newWriter(Lcom/koushikdutta/async/BufferedDataSink;Z)Lcom/koushikdutta/async/http/spdy/FrameWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    .line 285
    iput v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    .line 286
    sget-object p1, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    if-ne p2, p1, :cond_2

    .line 287
    iget p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    .line 289
    :cond_2
    iput v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextPingId:I

    const/4 p1, 0x7

    const/high16 p2, 0x1000000

    .line 295
    invoke-virtual {v1, p1, v2, p2}, Lcom/koushikdutta/async/http/spdy/Settings;->set(III)Lcom/koushikdutta/async/http/spdy/Settings;

    return-void
.end method

.method private newStream(ILjava/util/List;ZZ)Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;ZZ)",
            "Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;"
        }
    .end annotation

    xor-int/lit8 p3, p3, 0x1

    xor-int/lit8 p4, p4, 0x1

    .line 54
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->shutdown:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_0
    iget v6, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    add-int/lit8 v0, v6, 0x2

    .line 59
    iput v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    .line 60
    new-instance v7, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    move-object v0, v7

    move-object v1, p0

    move v2, v6

    move v3, p3

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;-><init>(Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;IZZLjava/util/List;)V

    .line 61
    invoke-virtual {v7}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez p1, :cond_2

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    move v1, p3

    move v2, p4

    move v3, v6

    move v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->synStream(ZZIILjava/util/List;)V

    goto :goto_0

    .line 69
    :cond_2
    iget-boolean p3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->client:Z

    if-nez p3, :cond_3

    .line 72
    iget-object p3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    invoke-interface {p3, p1, v6, p2}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->pushPromise(IILjava/util/List;)V

    :goto_0
    return-object v7

    .line 70
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 78
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private pushedStream(I)Z
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->protocol:Lcom/koushikdutta/async/http/Protocol;

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized removePing(I)Lcom/koushikdutta/async/http/spdy/Ping;
    .locals 1

    monitor-enter p0

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/http/spdy/Ping;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private writePing(ZIILcom/koushikdutta/async/http/spdy/Ping;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 469
    invoke-virtual {p4}, Lcom/koushikdutta/async/http/spdy/Ping;->send()V

    .line 470
    :cond_0
    iget-object p4, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    invoke-interface {p4, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->ping(ZII)V

    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 2

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->ackSettings()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 463
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method addBytesToWriteWindow(J)V
    .locals 2

    .line 451
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->bytesLeftInWriteWindow:J

    .line 452
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 453
    invoke-static {p2}, Lcom/koushikdutta/async/Util;->writable(Lcom/koushikdutta/async/DataSink;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lcom/koushikdutta/async/http/spdy/ByteString;Ljava/lang/String;IJ)V
    .locals 0

    return-void
.end method

.method public data(ZILcom/koushikdutta/async/ByteBufferList;)V
    .locals 3

    .line 319
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->pushedStream(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    if-nez v0, :cond_0

    .line 327
    :try_start_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    sget-object v0, Lcom/koushikdutta/async/http/spdy/ErrorCode;->INVALID_STREAM:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-interface {p1, p2, v0}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->rstStream(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    invoke-virtual {p3}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    return-void

    :catch_0
    move-exception p1

    .line 330
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 335
    :cond_0
    invoke-virtual {p3}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    .line 336
    iget-object v2, v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p3, v2}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 337
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->updateWindowRead(I)V

    .line 338
    iget-object p3, v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {v0, p3}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    if-eqz p1, :cond_1

    .line 340
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->close()V

    const/4 p1, 0x0

    .line 342
    invoke-static {v0, p1}, Lcom/koushikdutta/async/Util;->end(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    :cond_1
    return-void

    .line 320
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "push"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public error(Ljava/lang/Exception;)V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    .line 539
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 541
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/DataEmitter;

    invoke-static {v1, p1}, Lcom/koushikdutta/async/Util;->end(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    .line 542
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public goAway(ILcom/koushikdutta/async/http/spdy/ErrorCode;Lcom/koushikdutta/async/http/spdy/ByteString;)V
    .locals 2

    const/4 p2, 0x1

    .line 498
    iput-boolean p2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->shutdown:Z

    .line 501
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-virtual {p2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 502
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 503
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 504
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 505
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/koushikdutta/async/DataEmitter;

    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lcom/koushikdutta/async/http/spdy/ErrorCode;->REFUSED_STREAM:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v0}, Lcom/koushikdutta/async/Util;->end(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    .line 507
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public headers(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;",
            "Lcom/koushikdutta/async/http/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    .line 350
    invoke-direct {p0, p3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->pushedStream(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 357
    iget-boolean p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->shutdown:Z

    if-eqz p1, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    if-nez p1, :cond_4

    .line 363
    invoke-virtual {p6}, Lcom/koushikdutta/async/http/spdy/HeadersMode;->failIfStreamAbsent()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 365
    :try_start_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    sget-object p2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->INVALID_STREAM:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-interface {p1, p3, p2}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->rstStream(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 369
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 374
    :cond_1
    iget p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->lastGoodStreamId:I

    if-gt p3, p1, :cond_2

    return-void

    .line 377
    :cond_2
    rem-int/lit8 p3, p3, 0x2

    iget p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    rem-int/lit8 p1, p1, 0x2

    if-ne p3, p1, :cond_3

    return-void

    .line 379
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "unexpected receive stream"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 390
    :cond_4
    invoke-virtual {p6}, Lcom/koushikdutta/async/http/spdy/HeadersMode;->failIfStreamPresent()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 392
    :try_start_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    sget-object p2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->INVALID_STREAM:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-interface {p1, p3, p2}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->rstStream(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 397
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_1
    move-exception p1

    .line 395
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 402
    :cond_5
    invoke-virtual {p1, p5, p6}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->receiveHeaders(Ljava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    if-eqz p2, :cond_6

    .line 404
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 405
    invoke-static {p1, p2}, Lcom/koushikdutta/async/Util;->end(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    :cond_6
    return-void

    .line 351
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "push"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public newStream(Ljava/util/List;ZZ)Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;ZZ)",
            "Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->newStream(ILjava/util/List;ZZ)Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    move-result-object p1

    return-object p1
.end method

.method public ping(ZII)V
    .locals 1

    if-eqz p1, :cond_0

    .line 480
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->removePing(I)Lcom/koushikdutta/async/http/spdy/Ping;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 482
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/Ping;->receive()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 487
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writePing(ZIILcom/koushikdutta/async/http/spdy/Ping;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 490
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public priority(IIIZ)V
    .locals 0

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .line 529
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "pushPromise"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public rstStream(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    .locals 1

    .line 411
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->pushedStream(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    if-eqz p1, :cond_0

    .line 418
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/koushikdutta/async/Util;->end(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    :cond_0
    return-void

    .line 412
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "push"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public sendConnectionPreface()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->connectionPreface()V

    .line 305
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->okHttpSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->settings(Lcom/koushikdutta/async/http/spdy/Settings;)V

    .line 306
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->okHttpSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/Settings;->getInitialWindowSize(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 308
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    sub-int/2addr v0, v1

    int-to-long v0, v0

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0, v1}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->windowUpdate(IJ)V

    :cond_0
    return-void
.end method

.method public settings(ZLcom/koushikdutta/async/http/spdy/Settings;)V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->peerSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/Settings;->getInitialWindowSize(I)I

    move-result v0

    if-eqz p1, :cond_0

    .line 430
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->peerSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/Settings;->clear()V

    .line 431
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->peerSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/spdy/Settings;->merge(Lcom/koushikdutta/async/http/spdy/Settings;)V

    .line 433
    :try_start_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->ackSettings()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->peerSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/spdy/Settings;->getInitialWindowSize(I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    if-eq p1, v0, :cond_1

    sub-int/2addr p1, v0

    int-to-long p1, p1

    .line 440
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->receivedInitialPeerSettings:Z

    if-nez v0, :cond_2

    .line 441
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->addBytesToWriteWindow(J)V

    const/4 v0, 0x1

    .line 442
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->receivedInitialPeerSettings:Z

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    .line 445
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 446
    invoke-virtual {v1, p1, p2}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->addBytesToWriteWindow(J)V

    goto :goto_1

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 435
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method updateWindowRead(I)V
    .locals 3

    .line 84
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->totalWindowRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->totalWindowRead:I

    .line 85
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->okHttpSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/spdy/Settings;->getInitialWindowSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    if-lt v0, p1, :cond_0

    .line 87
    :try_start_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    iget v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->totalWindowRead:I

    int-to-long v0, v0

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->windowUpdate(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    iput v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->totalWindowRead:I

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 1

    if-nez p1, :cond_0

    .line 515
    invoke-virtual {p0, p2, p3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->addBytesToWriteWindow(J)V

    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    if-eqz p1, :cond_1

    .line 520
    invoke-virtual {p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->addBytesToWriteWindow(J)V

    :cond_1
    return-void
.end method
