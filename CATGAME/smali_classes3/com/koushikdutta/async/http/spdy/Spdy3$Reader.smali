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
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "handler"    # Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;
    .param p3, "client"    # Z

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
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$1;-><init>(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 145
    new-instance v0, Lcom/koushikdutta/async/DataEmitterReader;

    invoke-direct {v0}, Lcom/koushikdutta/async/DataEmitterReader;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->reader:Lcom/koushikdutta/async/DataEmitterReader;

    .line 146
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->parseFrameHeader()V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    .line 126
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->onDataFrame:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    .line 126
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->emptyList:Lcom/koushikdutta/async/ByteBufferList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;
    .param p1, "x1"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
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
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;
    .param p1, "x1"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
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
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;
    .param p1, "x1"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
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
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;
    .param p1, "x1"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
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
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    .line 126
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->onFullFrame:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/DataEmitterReader;
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    .line 126
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->reader:Lcom/koushikdutta/async/DataEmitterReader;

    return-object v0
.end method

.method static synthetic access$400(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    .line 126
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    .line 126
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->parseFrameHeader()V

    return-void
.end method

.method static synthetic access$600(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;
    .param p1, "x1"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
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
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;
    .param p1, "x1"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
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
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;
    .param p1, "x1"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
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
    .param p0, "x0"    # Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;
    .param p1, "x1"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
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
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->onFrame:Lcom/koushikdutta/async/callback/DataCallback;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/DataEmitterReader;->read(ILcom/koushikdutta/async/callback/DataCallback;)V

    .line 152
    return-void
.end method

.method private readGoAway(Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 6
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p3, v2, :cond_1

    .line 331
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    .line 332
    .local v2, "lastGoodStreamId":I
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v3

    .line 333
    .local v3, "errorCodeInt":I
    invoke-static {v3}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->fromSpdyGoAway(I)Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-result-object v4

    .line 334
    .local v4, "errorCode":Lcom/koushikdutta/async/http/spdy/ErrorCode;
    if-eqz v4, :cond_0

    .line 337
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    sget-object v1, Lcom/koushikdutta/async/http/spdy/ByteString;->EMPTY:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-interface {v0, v2, v4, v1}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->goAway(ILcom/koushikdutta/async/http/spdy/ErrorCode;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    .line 338
    return-void

    .line 335
    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 330
    .end local v2    # "lastGoodStreamId":I
    .end local v3    # "errorCodeInt":I
    .end local v4    # "errorCode":Lcom/koushikdutta/async/http/spdy/ErrorCode;
    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_GOAWAY length: %d != 8"

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readHeaders(Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 10
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v0

    .line 307
    .local v0, "w1":I
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 308
    .local v1, "streamId":I
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->headerReader:Lcom/koushikdutta/async/http/spdy/HeaderReader;

    add-int/lit8 v3, p3, -0x4

    invoke-virtual {v2, p1, v3}, Lcom/koushikdutta/async/http/spdy/HeaderReader;->readHeader(Lcom/koushikdutta/async/ByteBufferList;I)Ljava/util/List;

    move-result-object v9

    .line 309
    .local v9, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    sget-object v8, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_HEADERS:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    move v5, v1

    move-object v7, v9

    invoke-interface/range {v2 .. v8}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    .line 310
    return-void
.end method

.method private readPing(Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 5
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p3, v2, :cond_2

    .line 324
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v2

    .line 325
    .local v2, "id":I
    iget-boolean v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->client:Z

    and-int/lit8 v4, v2, 0x1

    if-ne v4, v1, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 326
    .local v1, "ack":Z
    :goto_1
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v3, v1, v2, v0}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->ping(ZII)V

    .line 327
    return-void

    .line 323
    .end local v1    # "ack":Z
    .end local v2    # "id":I
    :cond_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_PING length: %d != 4"

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readRstStream(Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 6
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p3, v2, :cond_1

    .line 296
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    .line 297
    .local v2, "streamId":I
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v3

    .line 298
    .local v3, "errorCodeInt":I
    invoke-static {v3}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->fromSpdy3Rst(I)Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-result-object v4

    .line 299
    .local v4, "errorCode":Lcom/koushikdutta/async/http/spdy/ErrorCode;
    if-eqz v4, :cond_0

    .line 302
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v0, v2, v4}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->rstStream(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V

    .line 303
    return-void

    .line 300
    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 295
    .end local v2    # "streamId":I
    .end local v3    # "errorCodeInt":I
    .end local v4    # "errorCode":Lcom/koushikdutta/async/http/spdy/ErrorCode;
    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_RST_STREAM length: %d != 8"

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readSettings(Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 9
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v0

    .line 342
    .local v0, "numberOfEntries":I
    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v1, :cond_2

    .line 345
    new-instance v1, Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/spdy/Settings;-><init>()V

    .line 346
    .local v1, "settings":Lcom/koushikdutta/async/http/spdy/Settings;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 347
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v5

    .line 348
    .local v5, "w1":I
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v6

    .line 349
    .local v6, "value":I
    const/high16 v7, -0x1000000

    and-int/2addr v7, v5

    ushr-int/lit8 v7, v7, 0x18

    .line 350
    .local v7, "idFlags":I
    const v8, 0xffffff

    and-int/2addr v8, v5

    .line 351
    .local v8, "id":I
    invoke-virtual {v1, v8, v7, v6}, Lcom/koushikdutta/async/http/spdy/Settings;->set(III)Lcom/koushikdutta/async/http/spdy/Settings;

    .line 346
    .end local v5    # "w1":I
    .end local v6    # "value":I
    .end local v7    # "idFlags":I
    .end local v8    # "id":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 353
    .end local v4    # "i":I
    :cond_0
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_1

    move v2, v3

    .line 354
    .local v2, "clearPrevious":Z
    :cond_1
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v3, v2, v1}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->settings(ZLcom/koushikdutta/async/http/spdy/Settings;)V

    .line 355
    return-void

    .line 343
    .end local v1    # "settings":Lcom/koushikdutta/async/http/spdy/Settings;
    .end local v2    # "clearPrevious":Z
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    invoke-static {v2, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private readSynReply(Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 10
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v0

    .line 288
    .local v0, "w1":I
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 289
    .local v1, "streamId":I
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->headerReader:Lcom/koushikdutta/async/http/spdy/HeaderReader;

    add-int/lit8 v3, p3, -0x4

    invoke-virtual {v2, p1, v3}, Lcom/koushikdutta/async/http/spdy/HeaderReader;->readHeader(Lcom/koushikdutta/async/ByteBufferList;I)Ljava/util/List;

    move-result-object v9

    .line 290
    .local v9, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v4, v2

    .line 291
    .local v4, "inFinished":Z
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    const/4 v3, 0x0

    const/4 v6, -0x1

    sget-object v8, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_REPLY:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    move v5, v1

    move-object v7, v9

    invoke-interface/range {v2 .. v8}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    .line 292
    return-void
.end method

.method private readSynStream(Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 12
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v0

    .line 274
    .local v0, "w1":I
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v1

    .line 275
    .local v1, "w2":I
    const v2, 0x7fffffff

    and-int v10, v0, v2

    .line 276
    .local v10, "streamId":I
    and-int/2addr v2, v1

    .line 277
    .local v2, "associatedStreamId":I
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    .line 278
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->headerReader:Lcom/koushikdutta/async/http/spdy/HeaderReader;

    add-int/lit8 v4, p3, -0xa

    invoke-virtual {v3, p1, v4}, Lcom/koushikdutta/async/http/spdy/HeaderReader;->readHeader(Lcom/koushikdutta/async/ByteBufferList;I)Ljava/util/List;

    move-result-object v11

    .line 280
    .local v11, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    and-int/lit8 v3, p2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v4

    .line 281
    .local v5, "inFinished":Z
    :goto_0
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_1

    move v4, v6

    .line 282
    .local v4, "outFinished":Z
    :cond_1
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    sget-object v9, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    move v6, v10

    move v7, v2

    move-object v8, v11

    invoke-interface/range {v3 .. v9}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    .line 284
    return-void
.end method

.method private readWindowUpdate(Lcom/koushikdutta/async/ByteBufferList;II)V
    .locals 10
    .param p1, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p3, v2, :cond_1

    .line 314
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v2

    .line 315
    .local v2, "w1":I
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v3

    .line 316
    .local v3, "w2":I
    const v4, 0x7fffffff

    and-int v5, v2, v4

    .line 317
    .local v5, "streamId":I
    and-int/2addr v4, v3

    int-to-long v6, v4

    .line 318
    .local v6, "increment":J
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    .line 319
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v0, v5, v6, v7}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->windowUpdate(IJ)V

    .line 320
    return-void

    .line 318
    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v0, "windowSizeIncrement was 0"

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 313
    .end local v2    # "w1":I
    .end local v3    # "w2":I
    .end local v5    # "streamId":I
    .end local v6    # "increment":J
    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_WINDOW_UPDATE length: %d != 8"

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
