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
    .locals 5
    .param p1, "socket"    # Lcom/koushikdutta/async/AsyncSocket;
    .param p2, "protocol"    # Lcom/koushikdutta/async/http/Protocol;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->client:Z

    .line 266
    new-instance v1, Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/spdy/Settings;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->okHttpSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    .line 423
    new-instance v1, Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/spdy/Settings;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->peerSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    .line 424
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->receivedInitialPeerSettings:Z

    .line 271
    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->protocol:Lcom/koushikdutta/async/http/Protocol;

    .line 272
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->socket:Lcom/koushikdutta/async/AsyncSocket;

    .line 273
    new-instance v2, Lcom/koushikdutta/async/BufferedDataSink;

    invoke-direct {v2, p1}, Lcom/koushikdutta/async/BufferedDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    iput-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->bufferedSocket:Lcom/koushikdutta/async/BufferedDataSink;

    .line 275
    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->SPDY_3:Lcom/koushikdutta/async/http/Protocol;

    if-ne p2, v2, :cond_0

    .line 276
    new-instance v2, Lcom/koushikdutta/async/http/spdy/Spdy3;

    invoke-direct {v2}, Lcom/koushikdutta/async/http/spdy/Spdy3;-><init>()V

    iput-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->variant:Lcom/koushikdutta/async/http/spdy/Variant;

    goto :goto_0

    .line 278
    :cond_0
    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    if-ne p2, v2, :cond_1

    .line 279
    new-instance v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13;

    invoke-direct {v2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;-><init>()V

    iput-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->variant:Lcom/koushikdutta/async/http/spdy/Variant;

    .line 281
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->variant:Lcom/koushikdutta/async/http/spdy/Variant;

    invoke-interface {v2, p1, p0, v0}, Lcom/koushikdutta/async/http/spdy/Variant;->newReader(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;Z)Lcom/koushikdutta/async/http/spdy/FrameReader;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->reader:Lcom/koushikdutta/async/http/spdy/FrameReader;

    .line 282
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->variant:Lcom/koushikdutta/async/http/spdy/Variant;

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->bufferedSocket:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-interface {v2, v3, v0}, Lcom/koushikdutta/async/http/spdy/Variant;->newWriter(Lcom/koushikdutta/async/BufferedDataSink;Z)Lcom/koushikdutta/async/http/spdy/FrameWriter;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    .line 284
    const/4 v2, 0x1

    .line 285
    .local v2, "client":Z
    const/4 v3, 0x2

    if-eqz v2, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    iput v4, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    .line 286
    if-eqz v2, :cond_3

    sget-object v4, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    if-ne p2, v4, :cond_3

    .line 287
    iget v4, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    .line 289
    :cond_3
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    iput v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextPingId:I

    .line 294
    if-eqz v2, :cond_5

    .line 295
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->okHttpSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    const/4 v3, 0x7

    const/high16 v4, 0x1000000

    invoke-virtual {v0, v3, v1, v4}, Lcom/koushikdutta/async/http/spdy/Settings;->set(III)Lcom/koushikdutta/async/http/spdy/Settings;

    .line 297
    :cond_5
    return-void
.end method

.method private newStream(ILjava/util/List;ZZ)Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    .locals 16
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .param p4, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;ZZ)",
            "Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;"
        }
    .end annotation

    .line 49
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    move-object/from16 v7, p0

    move/from16 v14, p1

    xor-int/lit8 v4, p3, 0x1

    .line 50
    .local v4, "outFinished":Z
    xor-int/lit8 v5, p4, 0x1

    .line 54
    .local v5, "inFinished":Z
    iget-boolean v0, v7, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->shutdown:Z

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_0
    iget v15, v7, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    .line 59
    .local v15, "streamId":I
    iget v0, v7, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v7, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    .line 60
    new-instance v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    move-object v1, v0

    move-object/from16 v2, p0

    move v3, v15

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;-><init>(Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;IZZLjava/util/List;)V

    .line 61
    .local v1, "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, v7, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_1
    if-nez v14, :cond_2

    .line 67
    :try_start_0
    iget-object v8, v7, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    move v9, v4

    move v10, v5

    move v11, v15

    move/from16 v12, p1

    move-object/from16 v13, p2

    invoke-interface/range {v8 .. v13}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->synStream(ZZIILjava/util/List;)V

    move-object/from16 v2, p2

    goto :goto_0

    .line 69
    :cond_2
    iget-boolean v0, v7, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->client:Z

    if-nez v0, :cond_3

    .line 72
    iget-object v0, v7, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v2, p2

    :try_start_1
    invoke-interface {v0, v14, v15, v2}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->pushPromise(IILjava/util/List;)V

    .line 75
    :goto_0
    return-object v1

    .line 70
    :cond_3
    move-object/from16 v2, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    .end local v4    # "outFinished":Z
    .end local v5    # "inFinished":Z
    .end local v15    # "streamId":I
    .end local p1    # "associatedStreamId":I
    .end local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    .end local p3    # "out":Z
    .end local p4    # "in":Z
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    .restart local v1    # "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    .restart local v4    # "outFinished":Z
    .restart local v5    # "inFinished":Z
    .restart local v15    # "streamId":I
    .restart local p1    # "associatedStreamId":I
    .restart local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    .restart local p3    # "out":Z
    .restart local p4    # "in":Z
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v2, p2

    .line 78
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private pushedStream(I)Z
    .locals 2
    .param p1, "streamId"    # I

    .line 314
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->protocol:Lcom/koushikdutta/async/http/Protocol;

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized removePing(I)Lcom/koushikdutta/async/http/spdy/Ping;
    .locals 2
    .param p1, "id"    # I

    monitor-enter p0

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/Ping;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local p0    # "this":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 474
    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private writePing(ZIILcom/koushikdutta/async/http/spdy/Ping;)V
    .locals 1
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/koushikdutta/async/http/spdy/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/koushikdutta/async/http/spdy/Ping;->send()V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->ping(ZII)V

    .line 471
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

    .line 464
    nop

    .line 465
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method addBytesToWriteWindow(J)V
    .locals 2
    .param p1, "delta"    # J

    .line 451
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->bytesLeftInWriteWindow:J

    .line 452
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 453
    .local v1, "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    invoke-static {v1}, Lcom/koushikdutta/async/Util;->writable(Lcom/koushikdutta/async/DataSink;)V

    .line 454
    .end local v1    # "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    goto :goto_0

    .line 455
    :cond_0
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lcom/koushikdutta/async/http/spdy/ByteString;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "protocol"    # Lcom/koushikdutta/async/http/spdy/ByteString;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    .line 534
    return-void
.end method

.method public data(ZILcom/koushikdutta/async/ByteBufferList;)V
    .locals 4
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lcom/koushikdutta/async/ByteBufferList;

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

    .line 325
    .local v0, "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    if-nez v0, :cond_0

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    sget-object v2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->INVALID_STREAM:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-interface {v1, p2, v2}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->rstStream(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    nop

    .line 332
    invoke-virtual {p3}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    .line 333
    return-void

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 335
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {p3}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    .line 336
    .local v1, "length":I
    iget-object v2, v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p3, v2}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 337
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->updateWindowRead(I)V

    .line 338
    iget-object v2, v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {v0, v2}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 339
    if-eqz p1, :cond_1

    .line 340
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->close()V

    .line 342
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/koushikdutta/async/Util;->end(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    .line 344
    :cond_1
    return-void

    .line 320
    .end local v0    # "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    .end local v1    # "length":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "push"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public error(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 538
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    .line 539
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 541
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/DataEmitter;

    invoke-static {v2, p1}, Lcom/koushikdutta/async/Util;->end(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    .line 542
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 543
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;>;"
    goto :goto_0

    .line 544
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;>;>;"
    :cond_0
    return-void
.end method

.method public goAway(ILcom/koushikdutta/async/http/spdy/ErrorCode;Lcom/koushikdutta/async/http/spdy/ByteString;)V
    .locals 6
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/koushikdutta/async/http/spdy/ErrorCode;
    .param p3, "debugData"    # Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->shutdown:Z

    .line 501
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 502
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 504
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 505
    .local v2, "streamId":I
    if-le v2, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->isLocallyInitiated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/koushikdutta/async/DataEmitter;

    new-instance v4, Ljava/io/IOException;

    sget-object v5, Lcom/koushikdutta/async/http/spdy/ErrorCode;->REFUSED_STREAM:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/koushikdutta/async/Util;->end(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    .line 507
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 509
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;>;"
    .end local v2    # "streamId":I
    :cond_0
    goto :goto_0

    .line 510
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;>;>;"
    :cond_1
    return-void
.end method

.method public headers(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V
    .locals 3
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .param p6, "headersMode"    # Lcom/koushikdutta/async/http/spdy/HeadersMode;
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
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    invoke-direct {p0, p3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->pushedStream(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 357
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->shutdown:Z

    if-eqz v0, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 361
    .local v0, "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    if-nez v0, :cond_4

    .line 363
    invoke-virtual {p6}, Lcom/koushikdutta/async/http/spdy/HeadersMode;->failIfStreamAbsent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    sget-object v2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->INVALID_STREAM:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-interface {v1, p3, v2}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->rstStream(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    return-void

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 374
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->lastGoodStreamId:I

    if-gt p3, v1, :cond_2

    return-void

    .line 377
    :cond_2
    rem-int/lit8 v1, p3, 0x2

    iget v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    rem-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_3

    return-void

    .line 379
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "unexpected receive stream"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 390
    :cond_4
    invoke-virtual {p6}, Lcom/koushikdutta/async/http/spdy/HeadersMode;->failIfStreamPresent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 392
    :try_start_1
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    sget-object v2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->INVALID_STREAM:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-interface {v1, p3, v2}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->rstStream(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 396
    nop

    .line 397
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    return-void

    .line 394
    :catch_1
    move-exception v1

    .line 395
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 402
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    invoke-virtual {v0, p5, p6}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->receiveHeaders(Ljava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    .line 403
    if-eqz p2, :cond_6

    .line 404
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->end(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    .line 407
    :cond_6
    return-void

    .line 351
    .end local v0    # "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "push"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public newStream(Ljava/util/List;ZZ)Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    .locals 1
    .param p2, "out"    # Z
    .param p3, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;ZZ)",
            "Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;"
        }
    .end annotation

    .line 44
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->newStream(ILjava/util/List;ZZ)Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    move-result-object v0

    return-object v0
.end method

.method public ping(ZII)V
    .locals 2
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .line 479
    if-eqz p1, :cond_1

    .line 480
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->removePing(I)Lcom/koushikdutta/async/http/spdy/Ping;

    move-result-object v0

    .line 481
    .local v0, "ping":Lcom/koushikdutta/async/http/spdy/Ping;
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/Ping;->receive()V

    .line 484
    .end local v0    # "ping":Lcom/koushikdutta/async/http/spdy/Ping;
    :cond_0
    goto :goto_0

    .line 487
    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, p2, p3, v1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writePing(ZIILcom/koushikdutta/async/http/spdy/Ping;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    nop

    .line 493
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public priority(IIIZ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .line 525
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .line 529
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "pushPromise"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public rstStream(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    .locals 3
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 411
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->pushedStream(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 417
    .local v0, "rstStream":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    if-eqz v0, :cond_0

    .line 418
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->end(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    .line 420
    :cond_0
    return-void

    .line 412
    .end local v0    # "rstStream":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "push"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public sendConnectionPreface()V
    .locals 6
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

    .line 307
    .local v0, "windowSize":I
    if-eq v0, v1, :cond_0

    .line 308
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    const/4 v3, 0x0

    sub-int v1, v0, v1

    int-to-long v4, v1

    invoke-interface {v2, v3, v4, v5}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->windowUpdate(IJ)V

    .line 310
    :cond_0
    return-void
.end method

.method public settings(ZLcom/koushikdutta/async/http/spdy/Settings;)V
    .locals 6
    .param p1, "clearPrevious"    # Z
    .param p2, "settings"    # Lcom/koushikdutta/async/http/spdy/Settings;

    .line 427
    const-wide/16 v0, 0x0

    .line 428
    .local v0, "delta":J
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->peerSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/spdy/Settings;->getInitialWindowSize(I)I

    move-result v2

    .line 429
    .local v2, "priorWriteWindowSize":I
    if-eqz p1, :cond_0

    .line 430
    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->peerSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/spdy/Settings;->clear()V

    .line 431
    :cond_0
    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->peerSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-virtual {v4, p2}, Lcom/koushikdutta/async/http/spdy/Settings;->merge(Lcom/koushikdutta/async/http/spdy/Settings;)V

    .line 433
    :try_start_0
    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    invoke-interface {v4}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->ackSettings()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    nop

    .line 437
    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->peerSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-virtual {v4, v3}, Lcom/koushikdutta/async/http/spdy/Settings;->getInitialWindowSize(I)I

    move-result v3

    .line 438
    .local v3, "peerInitialWindowSize":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-eq v3, v2, :cond_1

    .line 439
    sub-int v4, v3, v2

    int-to-long v0, v4

    .line 440
    iget-boolean v4, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->receivedInitialPeerSettings:Z

    if-nez v4, :cond_1

    .line 441
    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->addBytesToWriteWindow(J)V

    .line 442
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->receivedInitialPeerSettings:Z

    .line 445
    :cond_1
    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 446
    .local v5, "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    invoke-virtual {v5, v0, v1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->addBytesToWriteWindow(J)V

    .line 447
    .end local v5    # "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    goto :goto_0

    .line 448
    :cond_2
    return-void

    .line 434
    .end local v3    # "peerInitialWindowSize":I
    :catch_0
    move-exception v3

    .line 435
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method updateWindowRead(I)V
    .locals 4
    .param p1, "length"    # I

    .line 84
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->totalWindowRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->totalWindowRead:I

    .line 85
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->okHttpSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/spdy/Settings;->getInitialWindowSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    iget v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->totalWindowRead:I

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->windowUpdate(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    nop

    .line 92
    iput v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->totalWindowRead:I

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 94
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .line 514
    if-nez p1, :cond_0

    .line 515
    invoke-virtual {p0, p2, p3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->addBytesToWriteWindow(J)V

    .line 516
    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 519
    .local v0, "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {v0, p2, p3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->addBytesToWriteWindow(J)V

    .line 521
    :cond_1
    return-void
.end method
