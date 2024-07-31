.class public Lcom/nostra13/universalimageloader/core/assist/FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source "FlushedInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 14
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 15
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 6
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .local v0, "totalBytesSkipped":J
    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_2

    .line 21
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v3, p1, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 22
    .local v2, "bytesSkipped":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/FlushedInputStream;->read()I

    move-result v4

    .line 24
    .local v4, "by_te":I
    if-gez v4, :cond_0

    .line 25
    goto :goto_1

    .line 27
    :cond_0
    const-wide/16 v2, 0x1

    .line 30
    .end local v4    # "by_te":I
    :cond_1
    add-long/2addr v0, v2

    .line 31
    .end local v2    # "bytesSkipped":J
    goto :goto_0

    .line 32
    :cond_2
    :goto_1
    return-wide v0
.end method
