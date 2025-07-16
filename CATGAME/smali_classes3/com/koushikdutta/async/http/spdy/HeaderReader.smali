.class Lcom/koushikdutta/async/http/spdy/HeaderReader;
.super Ljava/lang/Object;
.source "HeaderReader.java"


# instance fields
.field inflater:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/koushikdutta/async/http/spdy/HeaderReader$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/HeaderReader$1;-><init>(Lcom/koushikdutta/async/http/spdy/HeaderReader;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/HeaderReader;->inflater:Ljava/util/zip/Inflater;

    return-void
.end method

.method private static readByteString(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/http/spdy/ByteString;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->getBytes(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/koushikdutta/async/http/spdy/ByteString;->of([B)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public readHeader(Lcom/koushikdutta/async/ByteBufferList;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/ByteBufferList;",
            "I)",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    new-array p2, p2, [B

    .line 34
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 36
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/HeaderReader;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {p1, p2}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 38
    new-instance p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/ByteBufferList;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object p1

    .line 39
    :goto_0
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/HeaderReader;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x2000

    .line 40
    invoke-static {p2}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HeaderReader;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    .line 43
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 44
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result p2

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    .line 54
    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/HeaderReader;->readByteString(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/ByteString;->toAsciiLowercase()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v2

    .line 55
    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/HeaderReader;->readByteString(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v3

    .line 56
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/ByteString;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    new-instance v4, Lcom/koushikdutta/async/http/spdy/Header;

    invoke-direct {v4, v2, v3}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "name.size == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v0
.end method
