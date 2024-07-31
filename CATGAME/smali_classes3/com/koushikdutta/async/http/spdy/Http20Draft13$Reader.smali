.class final Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;
.super Ljava/lang/Object;
.source "Http20Draft13.java"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/Http20Draft13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field continuingStreamId:I

.field private final emitter:Lcom/koushikdutta/async/DataEmitter;

.field flags:B

.field private final handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

.field final hpackReader:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

.field length:S

.field private final onFrame:Lcom/koushikdutta/async/callback/DataCallback;

.field private final onFullFrame:Lcom/koushikdutta/async/callback/DataCallback;

.field pendingHeaderType:B

.field promisedStreamId:I

.field private final reader:Lcom/koushikdutta/async/DataEmitterReader;

.field streamId:I

.field type:B

.field w1:I

.field w2:I


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;IZ)V
    .locals 1
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "handler"    # Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;
    .param p3, "headerTableSize"    # I
    .param p4, "client"    # Z

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;-><init>(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->onFrame:Lcom/koushikdutta/async/callback/DataCallback;

    .line 144
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;-><init>(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->onFullFrame:Lcom/koushikdutta/async/callback/DataCallback;

    .line 104
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->emitter:Lcom/koushikdutta/async/DataEmitter;

    .line 105
    iput-boolean p4, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->client:Z

    .line 106
    new-instance v0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-direct {v0, p3}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;-><init>(I)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->hpackReader:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    .line 107
    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    .line 108
    new-instance v0, Lcom/koushikdutta/async/DataEmitterReader;

    invoke-direct {v0}, Lcom/koushikdutta/async/DataEmitterReader;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->reader:Lcom/koushikdutta/async/DataEmitterReader;

    .line 110
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->parseFrameHeader()V

    .line 111
    return-void
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    .line 94
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->onFullFrame:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;
    .param p1, "x1"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "x2"    # S
    .param p3, "x3"    # B
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readGoAway(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;
    .param p1, "x1"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "x2"    # S
    .param p3, "x3"    # B
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readWindowUpdate(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method static synthetic access$1200(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;
    .param p1, "x1"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "x2"    # S
    .param p3, "x3"    # B
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readContinuation(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method static synthetic access$1300(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    .line 94
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->parseFrameHeader()V

    return-void
.end method

.method static synthetic access$1400(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    .line 94
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)Lcom/koushikdutta/async/DataEmitterReader;
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    .line 94
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->reader:Lcom/koushikdutta/async/DataEmitterReader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;
    .param p1, "x1"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "x2"    # S
    .param p3, "x3"    # B
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readData(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method static synthetic access$400(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;
    .param p1, "x1"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "x2"    # S
    .param p3, "x3"    # B
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readHeaders(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method static synthetic access$500(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;
    .param p1, "x1"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "x2"    # S
    .param p3, "x3"    # B
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readPriority(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method static synthetic access$600(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;
    .param p1, "x1"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "x2"    # S
    .param p3, "x3"    # B
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readRstStream(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method static synthetic access$700(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;
    .param p1, "x1"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "x2"    # S
    .param p3, "x3"    # B
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readSettings(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method static synthetic access$800(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;
    .param p1, "x1"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "x2"    # S
    .param p3, "x3"    # B
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readPushPromise(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method static synthetic access$900(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;
    .param p1, "x1"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "x2"    # S
    .param p3, "x3"    # B
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readPing(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method private parseFrameHeader()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->emitter:Lcom/koushikdutta/async/DataEmitter;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->reader:Lcom/koushikdutta/async/DataEmitterReader;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 115
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->reader:Lcom/koushikdutta/async/DataEmitterReader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->onFrame:Lcom/koushikdutta/async/callback/DataCallback;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/DataEmitterReader;->read(ILcom/koushikdutta/async/callback/DataCallback;)V

    .line 116
    return-void
.end method

.method private readContinuation(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 7
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->continuingStreamId:I

    if-ne p4, v0, :cond_0

    .line 239
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readHeaderBlock(Lcom/koushikdutta/async/ByteBufferList;SSBI)V

    .line 240
    return-void

    .line 238
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "continuation stream id mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readData(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 4
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 272
    .local v0, "inFinished":Z
    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 273
    .local v1, "gzipped":Z
    :goto_1
    if-nez v1, :cond_3

    .line 277
    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    .line 278
    .local v2, "padding":S
    :cond_2
    invoke-static {p2, p3, v2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1600(SBS)S

    move-result p2

    .line 280
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v3, v0, p4, p1}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->data(ZILcom/koushikdutta/async/ByteBufferList;)V

    .line 281
    invoke-virtual {p1, v2}, Lcom/koushikdutta/async/ByteBufferList;->skip(I)Lcom/koushikdutta/async/ByteBufferList;

    .line 282
    return-void

    .line 274
    .end local v2    # "padding":S
    :cond_3
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-static {v3, v2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method private readGoAway(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 7
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lt p2, v1, :cond_3

    .line 383
    if-nez p4, :cond_2

    .line 384
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v1

    .line 385
    .local v1, "lastStreamId":I
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v3

    .line 386
    .local v3, "errorCodeInt":I
    add-int/lit8 v4, p2, -0x8

    .line 387
    .local v4, "opaqueDataLength":I
    invoke-static {v3}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->fromHttp2(I)Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-result-object v5

    .line 388
    .local v5, "errorCode":Lcom/koushikdutta/async/http/spdy/ErrorCode;
    if-eqz v5, :cond_1

    .line 391
    sget-object v0, Lcom/koushikdutta/async/http/spdy/ByteString;->EMPTY:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 392
    .local v0, "debugData":Lcom/koushikdutta/async/http/spdy/ByteString;
    if-lez v4, :cond_0

    .line 393
    invoke-virtual {p1, v4}, Lcom/koushikdutta/async/ByteBufferList;->getBytes(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/koushikdutta/async/http/spdy/ByteString;->of([B)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v2, v1, v5, v0}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->goAway(ILcom/koushikdutta/async/http/spdy/ErrorCode;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    .line 396
    return-void

    .line 389
    .end local v0    # "debugData":Lcom/koushikdutta/async/http/spdy/ByteString;
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    const-string v2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v2, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 383
    .end local v1    # "lastStreamId":I
    .end local v3    # "errorCodeInt":I
    .end local v4    # "opaqueDataLength":I
    .end local v5    # "errorCode":Lcom/koushikdutta/async/http/spdy/ErrorCode;
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "TYPE_GOAWAY streamId != 0"

    invoke-static {v1, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 382
    :cond_3
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "TYPE_GOAWAY length < 8: %s"

    invoke-static {v1, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readHeaderBlock(Lcom/koushikdutta/async/ByteBufferList;SSBI)V
    .locals 9
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "length"    # S
    .param p3, "padding"    # S
    .param p4, "flags"    # B
    .param p5, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/ByteBufferList;->skip(I)Lcom/koushikdutta/async/ByteBufferList;

    .line 246
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->hpackReader:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->refill(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 247
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->hpackReader:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readHeaders()V

    .line 248
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->hpackReader:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emitReferenceSet()V

    .line 251
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_3

    .line 252
    iget-byte v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->pendingHeaderType:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 253
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v4, v1

    .line 254
    .local v4, "endStream":Z
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    const/4 v3, 0x0

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->hpackReader:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->getAndReset()Ljava/util/List;

    move-result-object v7

    sget-object v8, Lcom/koushikdutta/async/http/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    move v5, p5

    invoke-interface/range {v2 .. v8}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    .line 255
    .end local v4    # "endStream":Z
    goto :goto_1

    .line 256
    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 257
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    iget v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->promisedStreamId:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->hpackReader:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->getAndReset()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p5, v1, v2}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    goto :goto_1

    .line 260
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unknown header type"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 264
    :cond_3
    iput p5, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->continuingStreamId:I

    .line 266
    :goto_1
    return-void
.end method

.method private readHeaders(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 7
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 220
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 222
    .local v0, "padding":S
    :cond_0
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_1

    .line 223
    invoke-direct {p0, p1, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readPriority(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 224
    add-int/lit8 v1, p2, -0x5

    int-to-short p2, v1

    .line 227
    :cond_1
    invoke-static {p2, p3, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1600(SBS)S

    move-result p2

    .line 229
    iget-byte v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->type:B

    iput-byte v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->pendingHeaderType:B

    .line 230
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v0

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readHeaderBlock(Lcom/koushikdutta/async/ByteBufferList;SSBI)V

    .line 233
    return-void

    .line 217
    .end local v0    # "padding":S
    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-static {v1, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readPing(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 5
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p2, v2, :cond_2

    .line 373
    if-nez p4, :cond_1

    .line 374
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v2

    .line 375
    .local v2, "payload1":I
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v3

    .line 376
    .local v3, "payload2":I
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_0

    move v0, v1

    .line 377
    .local v0, "ack":Z
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v1, v0, v2, v3}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->ping(ZII)V

    .line 378
    return-void

    .line 373
    .end local v0    # "ack":Z
    .end local v2    # "payload1":I
    .end local v3    # "payload2":I
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_PING streamId != 0"

    invoke-static {v1, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 372
    :cond_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_PING length != 8: %s"

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readPriority(Lcom/koushikdutta/async/ByteBufferList;I)V
    .locals 5
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v0

    .line 293
    .local v0, "w1":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 294
    .local v1, "exclusive":Z
    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    .line 295
    .local v3, "streamDependency":I
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v2

    .line 296
    .local v4, "weight":I
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v2, p2, v3, v4, v1}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->priority(IIIZ)V

    .line 297
    return-void
.end method

.method private readPriority(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 3
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 287
    if-eqz p4, :cond_0

    .line 288
    invoke-direct {p0, p1, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readPriority(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 289
    return-void

    .line 287
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_PRIORITY streamId == 0"

    invoke-static {v1, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 286
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_PRIORITY length: %d != 5"

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readPushPromise(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 7
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 362
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 363
    .local v0, "padding":S
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->promisedStreamId:I

    .line 364
    add-int/lit8 v1, p2, -0x4

    int-to-short p2, v1

    .line 365
    invoke-static {p2, p3, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1600(SBS)S

    move-result p2

    .line 366
    const/4 v1, 0x5

    iput-byte v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->pendingHeaderType:B

    .line 367
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v0

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readHeaderBlock(Lcom/koushikdutta/async/ByteBufferList;SSBI)V

    .line 368
    return-void

    .line 360
    .end local v0    # "padding":S
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-static {v1, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readRstStream(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 5
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    .line 302
    if-eqz p4, :cond_1

    .line 303
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v2

    .line 304
    .local v2, "errorCodeInt":I
    invoke-static {v2}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->fromHttp2(I)Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-result-object v3

    .line 305
    .local v3, "errorCode":Lcom/koushikdutta/async/http/spdy/ErrorCode;
    if-eqz v3, :cond_0

    .line 308
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v0, p4, v3}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->rstStream(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V

    .line 309
    return-void

    .line 306
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {v1, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 302
    .end local v2    # "errorCodeInt":I
    .end local v3    # "errorCode":Lcom/koushikdutta/async/http/spdy/ErrorCode;
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "TYPE_RST_STREAM streamId == 0"

    invoke-static {v1, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 301
    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {v1, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readSettings(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 7
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    if-nez p4, :cond_d

    .line 314
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_1

    .line 315
    if-nez p2, :cond_0

    .line 316
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->ackSettings()V

    .line 317
    return-void

    .line 315
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-static {v1, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 320
    :cond_1
    rem-int/lit8 v1, p2, 0x6

    const/4 v2, 0x1

    if-nez v1, :cond_c

    .line 321
    new-instance v1, Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/spdy/Settings;-><init>()V

    .line 322
    .local v1, "settings":Lcom/koushikdutta/async/http/spdy/Settings;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_a

    .line 323
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v4

    .line 324
    .local v4, "id":S
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v5

    .line 326
    .local v5, "value":I
    if-eq v4, v2, :cond_8

    const/4 v6, 0x2

    if-eq v4, v6, :cond_6

    const/4 v6, 0x3

    if-eq v4, v6, :cond_5

    const/4 v6, 0x4

    if-eq v4, v6, :cond_3

    const/4 v6, 0x5

    if-ne v4, v6, :cond_2

    .line 344
    goto :goto_1

    .line 346
    :cond_2
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v2, v0

    const-string v0, "PROTOCOL_ERROR invalid settings id: %s"

    invoke-static {v0, v2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 338
    :cond_3
    const/4 v4, 0x7

    .line 339
    if-ltz v5, :cond_4

    goto :goto_1

    .line 340
    :cond_4
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-static {v2, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 335
    :cond_5
    const/4 v4, 0x4

    .line 336
    goto :goto_1

    .line 330
    :cond_6
    if-eqz v5, :cond_9

    if-ne v5, v2, :cond_7

    goto :goto_1

    .line 331
    :cond_7
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-static {v2, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 328
    :cond_8
    nop

    .line 348
    :cond_9
    :goto_1
    invoke-virtual {v1, v4, v0, v5}, Lcom/koushikdutta/async/http/spdy/Settings;->set(III)Lcom/koushikdutta/async/http/spdy/Settings;

    .line 322
    .end local v4    # "id":S
    .end local v5    # "value":I
    add-int/lit8 v3, v3, 0x6

    goto :goto_0

    .line 350
    .end local v3    # "i":I
    :cond_a
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v2, v0, v1}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->settings(ZLcom/koushikdutta/async/http/spdy/Settings;)V

    .line 351
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/spdy/Settings;->getHeaderTableSize()I

    move-result v0

    if-ltz v0, :cond_b

    .line 352
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->hpackReader:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/spdy/Settings;->getHeaderTableSize()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->maxHeaderTableByteCountSetting(I)V

    .line 354
    :cond_b
    return-void

    .line 320
    .end local v1    # "settings":Lcom/koushikdutta/async/http/spdy/Settings;
    :cond_c
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 313
    :cond_d
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_SETTINGS streamId != 0"

    invoke-static {v1, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readWindowUpdate(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 6
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    .line 401
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    .line 402
    .local v2, "increment":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 403
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v0, p4, v2, v3}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->windowUpdate(IJ)V

    .line 404
    return-void

    .line 402
    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v0, "windowSizeIncrement was 0"

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 400
    .end local v2    # "increment":J
    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
