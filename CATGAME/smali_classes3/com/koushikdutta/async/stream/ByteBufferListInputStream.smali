.class public Lcom/koushikdutta/async/stream/ByteBufferListInputStream;
.super Ljava/io/InputStream;
.source "ByteBufferListInputStream.java"


# instance fields
.field bb:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->bb:Lcom/koushikdutta/async/ByteBufferList;

    .line 15
    return-void
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    .line 20
    const/4 v0, -0x1

    return v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    .line 32
    const/4 v0, -0x1

    return v0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 34
    .local v0, "toRead":I
    iget-object v1, p0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1, p1, p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->get([BII)V

    .line 35
    return v0
.end method
