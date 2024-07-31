.class final Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;
.super Ljava/lang/Object;
.source "HpackDraft08.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/HpackDraft08;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    return-void
.end method


# virtual methods
.method writeByteString(Ljava/nio/ByteBuffer;Lcom/koushikdutta/async/http/spdy/ByteString;)V
    .locals 3
    .param p1, "out"    # Ljava/nio/ByteBuffer;
    .param p2, "data"    # Lcom/koushikdutta/async/http/spdy/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/spdy/ByteString;->size()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;->writeInt(Ljava/nio/ByteBuffer;III)V

    .line 489
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/spdy/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 490
    return-void
.end method

.method writeHeaders(Ljava/util/List;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)",
            "Lcom/koushikdutta/async/ByteBufferList;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 442
    .local v0, "out":Lcom/koushikdutta/async/ByteBufferList;
    const/16 v1, 0x2000

    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 443
    .local v1, "current":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 444
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_0

    .line 445
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 446
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 447
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 449
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/koushikdutta/async/http/spdy/Header;

    iget-object v4, v4, Lcom/koushikdutta/async/http/spdy/Header;->name:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/spdy/ByteString;->toAsciiLowercase()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v4

    .line 450
    .local v4, "name":Lcom/koushikdutta/async/http/spdy/ByteString;
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/HpackDraft08;->access$200()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 451
    .local v5, "staticIndex":Ljava/lang/Integer;
    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 453
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0xf

    invoke-virtual {p0, v1, v7, v8, v6}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;->writeInt(Ljava/nio/ByteBuffer;III)V

    .line 454
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/koushikdutta/async/http/spdy/Header;

    iget-object v6, v6, Lcom/koushikdutta/async/http/spdy/Header;->value:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {p0, v1, v6}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;->writeByteString(Ljava/nio/ByteBuffer;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    goto :goto_1

    .line 456
    :cond_1
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 457
    invoke-virtual {p0, v1, v4}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;->writeByteString(Ljava/nio/ByteBuffer;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    .line 458
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/koushikdutta/async/http/spdy/Header;

    iget-object v6, v6, Lcom/koushikdutta/async/http/spdy/Header;->value:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {p0, v1, v6}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;->writeByteString(Ljava/nio/ByteBuffer;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    .line 443
    .end local v4    # "name":Lcom/koushikdutta/async/http/spdy/ByteString;
    .end local v5    # "staticIndex":Ljava/lang/Integer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 463
    return-object v0
.end method

.method writeInt(Ljava/nio/ByteBuffer;III)V
    .locals 2
    .param p1, "out"    # Ljava/nio/ByteBuffer;
    .param p2, "value"    # I
    .param p3, "prefixMask"    # I
    .param p4, "bits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    if-ge p2, p3, :cond_0

    .line 470
    or-int v0, p4, p2

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 471
    return-void

    .line 475
    :cond_0
    or-int v0, p4, p3

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 476
    sub-int/2addr p2, p3

    .line 479
    :goto_0
    const/16 v0, 0x80

    if-lt p2, v0, :cond_1

    .line 480
    and-int/lit8 v0, p2, 0x7f

    .line 481
    .local v0, "b":I
    or-int/lit16 v1, v0, 0x80

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 482
    ushr-int/lit8 p2, p2, 0x7

    .line 483
    .end local v0    # "b":I
    goto :goto_0

    .line 484
    :cond_1
    int-to-byte v0, p2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 485
    return-void
.end method
