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
    new-instance p1, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-direct {p1, p3}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;-><init>(I)V

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->hpackReader:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    .line 107
    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    .line 108
    new-instance p1, Lcom/koushikdutta/async/DataEmitterReader;

    invoke-direct {p1}, Lcom/koushikdutta/async/DataEmitterReader;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->reader:Lcom/koushikdutta/async/DataEmitterReader;

    .line 110
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->parseFrameHeader()V

    return-void
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)Lcom/koushikdutta/async/callback/DataCallback;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->onFullFrame:Lcom/koushikdutta/async/callback/DataCallback;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 0
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

    .line 94
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->parseFrameHeader()V

    return-void
.end method

.method static synthetic access$1400(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)Lcom/koushikdutta/async/DataEmitterReader;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->reader:Lcom/koushikdutta/async/DataEmitterReader;

    return-object p0
.end method

.method static synthetic access$300(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 0
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

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->onFrame:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/DataEmitterReader;->read(ILcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method private readContinuation(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->continuingStreamId:I

    if-ne p4, v0, :cond_0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    .line 239
    invoke-direct/range {v1 .. v6}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readHeaderBlock(Lcom/koushikdutta/async/ByteBufferList;SSBI)V

    return-void

    .line 238
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "continuation stream id mismatch"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readData(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-nez v2, :cond_3

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_2

    .line 277
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    .line 278
    :cond_2
    invoke-static {p2, p3, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1600(SBS)S

    .line 280
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {p2, v0, p4, p1}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->data(ZILcom/koushikdutta/async/ByteBufferList;)V

    .line 281
    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/ByteBufferList;->skip(I)Lcom/koushikdutta/async/ByteBufferList;

    return-void

    :cond_3
    const-string p1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array p2, v1, [Ljava/lang/Object;

    .line 274
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readGoAway(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-lt p2, v1, :cond_3

    if-nez p4, :cond_2

    .line 384
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result p4

    .line 385
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v2

    sub-int/2addr p2, v1

    .line 387
    invoke-static {v2}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->fromHttp2(I)Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 391
    sget-object p3, Lcom/koushikdutta/async/http/spdy/ByteString;->EMPTY:Lcom/koushikdutta/async/http/spdy/ByteString;

    if-lez p2, :cond_0

    .line 393
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/ByteBufferList;->getBytes(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/ByteString;->of([B)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object p3

    .line 395
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {p1, p4, v1, p3}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->goAway(ILcom/koushikdutta/async/http/spdy/ErrorCode;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    return-void

    :cond_1
    new-array p1, p3, [Ljava/lang/Object;

    .line 389
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    const-string p1, "TYPE_GOAWAY streamId != 0"

    new-array p2, v0, [Ljava/lang/Object;

    .line 383
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    .line 382
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_GOAWAY length < 8: %s"

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readHeaderBlock(Lcom/koushikdutta/async/ByteBufferList;SSBI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/ByteBufferList;->skip(I)Lcom/koushikdutta/async/ByteBufferList;

    .line 246
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->hpackReader:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->refill(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 247
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->hpackReader:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readHeaders()V

    .line 248
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->hpackReader:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emitReferenceSet()V

    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_3

    .line 252
    iget-byte p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->pendingHeaderType:B

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move v2, p2

    .line 254
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    const/4 v1, 0x0

    const/4 v4, -0x1

    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->hpackReader:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->getAndReset()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/koushikdutta/async/http/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    move v3, p5

    invoke-interface/range {v0 .. v6}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    .line 257
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    iget p2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->promisedStreamId:I

    iget-object p3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->hpackReader:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->getAndReset()Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p5, p2, p3}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    goto :goto_1

    .line 260
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "unknown header type"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 264
    :cond_3
    iput p5, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->continuingStreamId:I

    :goto_1
    return-void
.end method

.method private readHeaders(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_0
    move v4, v0

    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_1

    .line 223
    invoke-direct {p0, p1, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readPriority(Lcom/koushikdutta/async/ByteBufferList;I)V

    add-int/lit8 p2, p2, -0x5

    int-to-short p2, p2

    .line 227
    :cond_1
    invoke-static {p2, p3, v4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1600(SBS)S

    move-result v3

    .line 229
    iget-byte p2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->type:B

    iput-byte p2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->pendingHeaderType:B

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move v6, p4

    .line 230
    invoke-direct/range {v1 .. v6}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readHeaderBlock(Lcom/koushikdutta/async/ByteBufferList;SSBI)V

    return-void

    :cond_2
    const-string p1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    .line 217
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readPing(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_2

    if-nez p4, :cond_1

    .line 374
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result p2

    .line 375
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result p1

    and-int/2addr p3, v2

    if-eqz p3, :cond_0

    move v1, v2

    .line 377
    :cond_0
    iget-object p3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {p3, v1, p2, p1}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->ping(ZII)V

    return-void

    :cond_1
    const-string p1, "TYPE_PING streamId != 0"

    new-array p2, v1, [Ljava/lang/Object;

    .line 373
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    .line 372
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_PING length != 8: %s"

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readPriority(Lcom/koushikdutta/async/ByteBufferList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    .line 295
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p1, v2

    .line 296
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v2, p2, v0, p1, v1}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->priority(IIIZ)V

    return-void
.end method

.method private readPriority(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x5

    const/4 v0, 0x0

    if-ne p2, p3, :cond_1

    if-eqz p4, :cond_0

    .line 288
    invoke-direct {p0, p1, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readPriority(Lcom/koushikdutta/async/ByteBufferList;I)V

    return-void

    :cond_0
    const-string p1, "TYPE_PRIORITY streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    .line 287
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 286
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readPushPromise(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_0
    move v4, v0

    .line 363
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->promisedStreamId:I

    add-int/lit8 p2, p2, -0x4

    int-to-short p2, p2

    .line 365
    invoke-static {p2, p3, v4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1600(SBS)S

    move-result v3

    const/4 p2, 0x5

    .line 366
    iput-byte p2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->pendingHeaderType:B

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move v6, p4

    .line 367
    invoke-direct/range {v1 .. v6}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->readHeaderBlock(Lcom/koushikdutta/async/ByteBufferList;SSBI)V

    return-void

    :cond_1
    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    .line 360
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readRstStream(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p3, :cond_2

    if-eqz p4, :cond_1

    .line 303
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result p1

    .line 304
    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->fromHttp2(I)Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 308
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {p1, p4, p2}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->rstStream(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V

    return-void

    :cond_0
    new-array p2, v0, [Ljava/lang/Object;

    .line 306
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p1, "TYPE_RST_STREAM streamId == 0"

    new-array p2, v1, [Ljava/lang/Object;

    .line 302
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    .line 301
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readSettings(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_c

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    .line 316
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->ackSettings()V

    return-void

    :cond_0
    const-string p1, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array p2, v0, [Ljava/lang/Object;

    .line 315
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 320
    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_b

    .line 321
    new-instance p3, Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-direct {p3}, Lcom/koushikdutta/async/http/spdy/Settings;-><init>()V

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_9

    .line 323
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v2

    .line 324
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v3

    if-eq v2, p4, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-eq v2, v4, :cond_5

    if-eq v2, v5, :cond_3

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    new-array p1, p4, [Ljava/lang/Object;

    .line 346
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "PROTOCOL_ERROR invalid settings id: %s"

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_3
    if-ltz v3, :cond_4

    const/4 v2, 0x7

    goto :goto_1

    :cond_4
    const-string p1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array p2, v0, [Ljava/lang/Object;

    .line 340
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_5
    move v2, v5

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_8

    if-ne v3, p4, :cond_7

    goto :goto_1

    :cond_7
    const-string p1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array p2, v0, [Ljava/lang/Object;

    .line 331
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 348
    :cond_8
    :goto_1
    invoke-virtual {p3, v2, v0, v3}, Lcom/koushikdutta/async/http/spdy/Settings;->set(III)Lcom/koushikdutta/async/http/spdy/Settings;

    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 350
    :cond_9
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {p1, v0, p3}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->settings(ZLcom/koushikdutta/async/http/spdy/Settings;)V

    .line 351
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/spdy/Settings;->getHeaderTableSize()I

    move-result p1

    if-ltz p1, :cond_a

    .line 352
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->hpackReader:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/spdy/Settings;->getHeaderTableSize()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->maxHeaderTableByteCountSetting(I)V

    :cond_a
    return-void

    :cond_b
    new-array p1, p4, [Ljava/lang/Object;

    .line 320
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_c
    const-string p1, "TYPE_SETTINGS streamId != 0"

    new-array p2, v0, [Ljava/lang/Object;

    .line 313
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readWindowUpdate(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, p3, :cond_1

    .line 401
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result p1

    int-to-long p1, p1

    const-wide/32 v2, 0x7fffffff

    and-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-eqz p3, :cond_0

    .line 403
    iget-object p3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {p3, p4, p1, p2}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->windowUpdate(IJ)V

    return-void

    :cond_0
    new-array p3, v1, [Ljava/lang/Object;

    .line 402
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "windowSizeIncrement was 0"

    invoke-static {p1, p3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 400
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method
