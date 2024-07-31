.class final Lcom/koushikdutta/async/http/spdy/Http20Draft13;
.super Ljava/lang/Object;
.source "Http20Draft13.java"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/Variant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;,
        Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;,
        Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;
    }
.end annotation


# static fields
.field private static final CONNECTION_PREFACE:Lcom/koushikdutta/async/http/spdy/ByteString;

.field static final FLAG_ACK:B = 0x1t

.field static final FLAG_COMPRESSED:B = 0x20t

.field static final FLAG_END_HEADERS:B = 0x4t

.field static final FLAG_END_PUSH_PROMISE:B = 0x4t

.field static final FLAG_END_SEGMENT:B = 0x2t

.field static final FLAG_END_STREAM:B = 0x1t

.field static final FLAG_NONE:B = 0x0t

.field static final FLAG_PADDED:B = 0x8t

.field static final FLAG_PRIORITY:B = 0x20t

.field static final MAX_FRAME_SIZE:I = 0x3fff

.field static final TYPE_CONTINUATION:B = 0x9t

.field static final TYPE_DATA:B = 0x0t

.field static final TYPE_GOAWAY:B = 0x7t

.field static final TYPE_HEADERS:B = 0x1t

.field static final TYPE_PING:B = 0x6t

.field static final TYPE_PRIORITY:B = 0x2t

.field static final TYPE_PUSH_PROMISE:B = 0x5t

.field static final TYPE_RST_STREAM:B = 0x3t

.field static final TYPE_SETTINGS:B = 0x4t

.field static final TYPE_WINDOW_UPDATE:B = 0x8t

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->logger:Ljava/util/logging/Logger;

    .line 49
    nop

    .line 50
    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->CONNECTION_PREFACE:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 49
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 41
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$1500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(SBS)S
    .locals 1
    .param p0, "x0"    # S
    .param p1, "x1"    # B
    .param p2, "x2"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->lengthWithoutPadding(SBS)S

    move-result v0

    return v0
.end method

.method static synthetic access$1700()Lcom/koushikdutta/async/http/spdy/ByteString;
    .locals 1

    .line 41
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->CONNECTION_PREFACE:Lcom/koushikdutta/async/http/spdy/ByteString;

    return-object v0
.end method

.method static synthetic access$1800(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .line 41
    invoke-static {p0, p1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method private static varargs illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 636
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 640
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static lengthWithoutPadding(SBS)S
    .locals 3
    .param p0, "length"    # S
    .param p1, "flags"    # B
    .param p2, "padding"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    add-int/lit8 v0, p0, -0x1

    int-to-short p0, v0

    .line 646
    :cond_0
    if-gt p2, p0, :cond_1

    .line 649
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0

    .line 647
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {v1, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public getProtocol()Lcom/koushikdutta/async/http/Protocol;
    .locals 1

    .line 46
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    return-object v0
.end method

.method public maxFrameSize()I
    .locals 1

    .line 91
    const/16 v0, 0x3fff

    return v0
.end method

.method public newReader(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;Z)Lcom/koushikdutta/async/http/spdy/FrameReader;
    .locals 2
    .param p1, "source"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "handler"    # Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;
    .param p3, "client"    # Z

    .line 81
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;-><init>(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;IZ)V

    return-object v0
.end method

.method public newWriter(Lcom/koushikdutta/async/BufferedDataSink;Z)Lcom/koushikdutta/async/http/spdy/FrameWriter;
    .locals 1
    .param p1, "sink"    # Lcom/koushikdutta/async/BufferedDataSink;
    .param p2, "client"    # Z

    .line 86
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;-><init>(Lcom/koushikdutta/async/BufferedDataSink;Z)V

    return-object v0
.end method
