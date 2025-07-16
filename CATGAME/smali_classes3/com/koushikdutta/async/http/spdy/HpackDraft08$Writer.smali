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

    return-void
.end method


# virtual methods
.method writeByteString(Ljava/nio/ByteBuffer;Lcom/koushikdutta/async/http/spdy/ByteString;)V
    .locals 3
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

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method writeHeaders(Ljava/util/List;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 7
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
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    const/16 v1, 0x2000

    .line 442
    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 443
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 444
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_0

    .line 445
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 446
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 447
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 449
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/koushikdutta/async/http/spdy/Header;

    iget-object v5, v5, Lcom/koushikdutta/async/http/spdy/Header;->name:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/spdy/ByteString;->toAsciiLowercase()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v5

    .line 450
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/HpackDraft08;->access$200()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 453
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0xf

    invoke-virtual {p0, v1, v5, v6, v3}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;->writeInt(Ljava/nio/ByteBuffer;III)V

    .line 454
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/koushikdutta/async/http/spdy/Header;

    iget-object v5, v5, Lcom/koushikdutta/async/http/spdy/Header;->value:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {p0, v1, v5}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;->writeByteString(Ljava/nio/ByteBuffer;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    goto :goto_1

    .line 456
    :cond_1
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 457
    invoke-virtual {p0, v1, v5}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;->writeByteString(Ljava/nio/ByteBuffer;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    .line 458
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/koushikdutta/async/http/spdy/Header;

    iget-object v5, v5, Lcom/koushikdutta/async/http/spdy/Header;->value:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {p0, v1, v5}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;->writeByteString(Ljava/nio/ByteBuffer;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 462
    :cond_2
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    return-object v0
.end method

.method writeInt(Ljava/nio/ByteBuffer;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ge p2, p3, :cond_0

    or-int/2addr p2, p4

    int-to-byte p2, p2

    .line 470
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    or-int/2addr p4, p3

    int-to-byte p4, p4

    .line 475
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    sub-int/2addr p2, p3

    :goto_0
    const/16 p3, 0x80

    if-lt p2, p3, :cond_1

    and-int/lit8 p4, p2, 0x7f

    or-int/2addr p3, p4

    int-to-byte p3, p3

    .line 481
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 p2, p2, 0x7

    goto :goto_0

    :cond_1
    int-to-byte p2, p2

    .line 484
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method
