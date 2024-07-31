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

    .line 30
    return-void
.end method

.method private static readByteString(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/http/spdy/ByteString;
    .locals 2
    .param p0, "source"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 63
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v0

    .line 64
    .local v0, "length":I
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->getBytes(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/ByteString;->of([B)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public readHeader(Lcom/koushikdutta/async/ByteBufferList;I)Ljava/util/List;
    .locals 9
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "length"    # I
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
    new-array v0, p2, [B

    .line 34
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 36
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HeaderReader;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1, v0}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 38
    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/ByteBufferList;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v1

    .line 39
    .local v1, "source":Lcom/koushikdutta/async/ByteBufferList;
    :goto_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HeaderReader;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    const/16 v2, 0x2000

    invoke-static {v2}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 42
    .local v2, "b":Ljava/nio/ByteBuffer;
    :try_start_0
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/HeaderReader;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v3

    .line 43
    .local v3, "read":I
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 44
    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    nop

    .line 49
    .end local v2    # "b":Ljava/nio/ByteBuffer;
    .end local v3    # "read":I
    goto :goto_0

    .line 46
    .restart local v2    # "b":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v3

    .line 47
    .local v3, "e":Ljava/util/zip/DataFormatException;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 51
    .end local v2    # "b":Ljava/nio/ByteBuffer;
    .end local v3    # "e":Ljava/util/zip/DataFormatException;
    :cond_0
    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v2

    .line 52
    .local v2, "numberOfPairs":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 54
    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/HeaderReader;->readByteString(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/spdy/ByteString;->toAsciiLowercase()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v5

    .line 55
    .local v5, "name":Lcom/koushikdutta/async/http/spdy/ByteString;
    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/HeaderReader;->readByteString(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v6

    .line 56
    .local v6, "values":Lcom/koushikdutta/async/http/spdy/ByteString;
    invoke-virtual {v5}, Lcom/koushikdutta/async/http/spdy/ByteString;->size()I

    move-result v7

    if-eqz v7, :cond_1

    .line 57
    new-instance v7, Lcom/koushikdutta/async/http/spdy/Header;

    invoke-direct {v7, v5, v6}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v5    # "name":Lcom/koushikdutta/async/http/spdy/ByteString;
    .end local v6    # "values":Lcom/koushikdutta/async/http/spdy/ByteString;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 56
    .restart local v5    # "name":Lcom/koushikdutta/async/http/spdy/ByteString;
    .restart local v6    # "values":Lcom/koushikdutta/async/http/spdy/ByteString;
    :cond_1
    new-instance v7, Ljava/io/IOException;

    const-string v8, "name.size == 0"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 59
    .end local v4    # "i":I
    .end local v5    # "name":Lcom/koushikdutta/async/http/spdy/ByteString;
    .end local v6    # "values":Lcom/koushikdutta/async/http/spdy/ByteString;
    :cond_2
    return-object v3
.end method
