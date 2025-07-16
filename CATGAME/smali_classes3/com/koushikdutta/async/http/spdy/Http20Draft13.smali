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

    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 50
    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->CONNECTION_PREFACE:Lcom/koushikdutta/async/http/spdy/ByteString;

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(SBS)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->lengthWithoutPadding(SBS)S

    move-result p0

    return p0
.end method

.method static synthetic access$1700()Lcom/koushikdutta/async/http/spdy/ByteString;
    .locals 1

    .line 41
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->CONNECTION_PREFACE:Lcom/koushikdutta/async/http/spdy/ByteString;

    return-object v0
.end method

.method static synthetic access$1800(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    return-object p0
.end method

.method private static varargs illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 636
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static lengthWithoutPadding(SBS)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    int-to-short p0, p0

    :cond_0
    if-gt p2, p0, :cond_1

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 647
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, p1, p2

    const-string p0, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p0, p1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
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

    const/16 v0, 0x3fff

    return v0
.end method

.method public newReader(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;Z)Lcom/koushikdutta/async/http/spdy/FrameReader;
    .locals 2

    .line 81
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;-><init>(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;IZ)V

    return-object v0
.end method

.method public newWriter(Lcom/koushikdutta/async/BufferedDataSink;Z)Lcom/koushikdutta/async/http/spdy/FrameWriter;
    .locals 1

    .line 86
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;-><init>(Lcom/koushikdutta/async/BufferedDataSink;Z)V

    return-object v0
.end method
