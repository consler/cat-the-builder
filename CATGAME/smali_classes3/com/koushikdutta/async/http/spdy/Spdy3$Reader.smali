.class final Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final emitter:Lcom/koushikdutta/async/DataEmitter;

.field private final emptyList:Lcom/koushikdutta/async/ByteBufferList;

.field flags:I

.field private final handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

.field private final headerReader:Lcom/koushikdutta/async/http/spdy/HeaderReader;

.field inFinished:Z

.field length:I

.field private final onDataFrame:Lcom/koushikdutta/async/callback/DataCallback;

.field private final onFrame:Lcom/koushikdutta/async/callback/DataCallback;

.field private final onFullFrame:Lcom/koushikdutta/async/callback/DataCallback;

.field partial:Lcom/koushikdutta/async/ByteBufferList;

.field private final reader:Lcom/koushikdutta/async/DataEmitterReader;

.field streamId:I

.field w1:I

.field w2:I


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;Z)V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Lcom/koushikdutta/async/http/spdy/HeaderReader;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/spdy/HeaderReader;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->headerReader:Lcom/koushikdutta/async/http/spdy/HeaderReader;

    .line 160
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->emptyList:Lcom/koushikdutta/async/ByteBufferList;

    .line 161
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;-><init>(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->onFrame:Lcom/koushikdutta/async/callback/DataCallback;

    .line 189
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->partial:Lcom/koushikdutta/async/ByteBufferList;

    .line 190
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;-><init>(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->onDataFrame:Lcom/koushikdutta/async/callback/DataCallback;

    .line 207
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;-><init>(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->onFullFrame:Lcom/koushikdutta/async/callback/DataCallback;

    .line 134
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->emitter:Lcom/koushikdutta/async/DataEmitter;

    .line 135
    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    .line 136
    iput-boolean p3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->client:Z

    .line 138
    new-instance p2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$1;

    invoke-direct {p2, p0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$1;-><init>(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/DataEmitter;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 145
    new-instance p1, Lcom/koushikdutta/async/DataEmitterReader;

    invoke-direct {p1}, Lcom/koushikdutta/async/DataEmitterReader;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->reader:Lcom/koushikdutta/async/DataEmitterReader;

    .line 146
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->parseFrameHeader()V

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/callback/DataCallback;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->onDataFrame:Lcom/koushikdutta/async/callback/DataCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->emptyList:Lcom/koushikdutta/async/ByteBufferList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->readPing(Lcom/koushikdutta/async/ByteBufferList;II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->readGoAway(Lcom/koushikdutta/async/ByteBufferList;II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->readHeaders(Lcom/koushikdutta/async/ByteBufferList;II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->readWindowUpdate(Lcom/koushikdutta/async/ByteBufferList;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/callback/DataCallback;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->onFullFrame:Lcom/koushikdutta/async/callback/DataCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/DataEmitterReader;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->reader:Lcom/koushikdutta/async/DataEmitterReader;

    return-object p0
.end method

.method static synthetic access$400(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->parseFrameHeader()V

    return-void
.end method

.method static synthetic access$600(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->readSynStream(Lcom/koushikdutta/async/ByteBufferList;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->readSynReply(Lcom/koushikdutta/async/ByteBufferList;II)V

    return-void
.end method

.method static synthetic access$800(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->readRstStream(Lcom/koushikdutta/async/ByteBufferList;II)V

    return-void
.end method

.method static synthetic access$900(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->readSettings(Lcom/koushikdutta/async/ByteBufferList;II)V

    return-void
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseFrameHeader()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->emitter:Lcom/koushikdutta/async/DataEmitter;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->reader:Lcom/koushikdutta/async/DataEmitterReader;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 151
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->reader:Lcom/koushikdutta/async/DataEmitterReader;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->onFrame:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/DataEmitterReader;->read(ILcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method private readGoAway(Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, p2, :cond_1

    .line 331
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result p2

    const p3, 0x7fffffff

    and-int/2addr p2, p3

    .line 332
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result p1

    .line 333
    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->fromSpdyGoAway(I)Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 337
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    sget-object v0, Lcom/koushikdutta/async/http/spdy/ByteString;->EMPTY:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-interface {p1, p2, p3, v0}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->goAway(ILcom/koushikdutta/async/http/spdy/ErrorCode;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    return-void

    :cond_0
    new-array p2, v1, [Ljava/lang/Object;

    .line 335
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 330
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_GOAWAY length: %d != 8"

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readHeaders(Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result p2

    const v0, 0x7fffffff

    and-int v4, p2, v0

    .line 308
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->headerReader:Lcom/koushikdutta/async/http/spdy/HeaderReader;

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {p2, p1, p3}, Lcom/koushikdutta/async/http/spdy/HeaderReader;->readHeader(Lcom/koushikdutta/async/ByteBufferList;I)Ljava/util/List;

    move-result-object v6

    .line 309
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    sget-object v7, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_HEADERS:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    invoke-interface/range {v1 .. v7}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    return-void
.end method

.method private readPing(Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, p2, :cond_2

    .line 324
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result p1

    .line 325
    iget-boolean p2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->client:Z

    and-int/lit8 p3, p1, 0x1

    if-ne p3, v1, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-ne p2, p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 326
    :goto_1
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {p2, v1, p1, v0}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->ping(ZII)V

    return-void

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    .line 323
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_PING length: %d != 4"

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readRstStream(Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, p2, :cond_1

    .line 296
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result p2

    const p3, 0x7fffffff

    and-int/2addr p2, p3

    .line 297
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result p1

    .line 298
    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->fromSpdy3Rst(I)Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 302
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->rstStream(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V

    return-void

    :cond_0
    new-array p2, v1, [Ljava/lang/Object;

    .line 300
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 295
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_RST_STREAM length: %d != 8"

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readSettings(Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v1, :cond_2

    .line 345
    new-instance p3, Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-direct {p3}, Lcom/koushikdutta/async/http/spdy/Settings;-><init>()V

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_0

    .line 347
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v4

    .line 348
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v5

    const/high16 v6, -0x1000000

    and-int/2addr v6, v4

    ushr-int/lit8 v6, v6, 0x18

    const v7, 0xffffff

    and-int/2addr v4, v7

    .line 351
    invoke-virtual {p3, v4, v6, v5}, Lcom/koushikdutta/async/http/spdy/Settings;->set(III)Lcom/koushikdutta/async/http/spdy/Settings;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_1

    move v2, v3

    .line 354
    :cond_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {p1, v2, p3}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->settings(ZLcom/koushikdutta/async/http/spdy/Settings;)V

    return-void

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 343
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readSynReply(Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int v5, v0, v1

    .line 289
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->headerReader:Lcom/koushikdutta/async/http/spdy/HeaderReader;

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {v0, p1, p3}, Lcom/koushikdutta/async/http/spdy/HeaderReader;->readHeader(Lcom/koushikdutta/async/ByteBufferList;I)Ljava/util/List;

    move-result-object v7

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move v4, p1

    .line 291
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    const/4 v3, 0x0

    const/4 v6, -0x1

    sget-object v8, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_REPLY:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    invoke-interface/range {v2 .. v8}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    return-void
.end method

.method private readSynStream(Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v0

    .line 274
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int v6, v0, v2

    and-int v7, v1, v2

    .line 277
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    .line 278
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->headerReader:Lcom/koushikdutta/async/http/spdy/HeaderReader;

    add-int/lit8 p3, p3, -0xa

    invoke-virtual {v0, p1, p3}, Lcom/koushikdutta/async/http/spdy/HeaderReader;->readHeader(Lcom/koushikdutta/async/ByteBufferList;I)Ljava/util/List;

    move-result-object v8

    and-int/lit8 p1, p2, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, p3

    .line 282
    :goto_1
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    sget-object v9, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    invoke-interface/range {v3 .. v9}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    return-void
.end method

.method private readWindowUpdate(Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, p2, :cond_1

    .line 314
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result p2

    .line 315
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result p1

    const p3, 0x7fffffff

    and-int/2addr p2, p3

    and-int/2addr p1, p3

    int-to-long v2, p1

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {p1, p2, v2, v3}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->windowUpdate(IJ)V

    return-void

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 318
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "windowSizeIncrement was 0"

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 313
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_WINDOW_UPDATE length: %d != 8"

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method
