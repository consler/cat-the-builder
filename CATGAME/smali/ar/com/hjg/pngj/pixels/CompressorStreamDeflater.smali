.class public Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;
.super Lar/com/hjg/pngj/pixels/CompressorStream;
.source "CompressorStreamDeflater.java"


# instance fields
.field protected buf:[B

.field protected deflater:Ljava/util/zip/Deflater;

.field protected deflaterIsOwn:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;IJ)V
    .locals 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "maxBlockLen"    # I
    .param p3, "totalLen"    # J

    .line 23
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;-><init>(Ljava/io/OutputStream;IJLjava/util/zip/Deflater;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IJII)V
    .locals 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "maxBlockLen"    # I
    .param p3, "totalLen"    # J
    .param p5, "deflaterCompLevel"    # I
    .param p6, "deflaterStrategy"    # I

    .line 35
    new-instance v5, Ljava/util/zip/Deflater;

    invoke-direct {v5, p5}, Ljava/util/zip/Deflater;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;-><init>(Ljava/io/OutputStream;IJLjava/util/zip/Deflater;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflaterIsOwn:Z

    .line 37
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p6}, Ljava/util/zip/Deflater;->setStrategy(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IJLjava/util/zip/Deflater;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "maxBlockLen"    # I
    .param p3, "totalLen"    # J
    .param p5, "def"    # Ljava/util/zip/Deflater;

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lar/com/hjg/pngj/pixels/CompressorStream;-><init>(Ljava/io/OutputStream;IJ)V

    .line 19
    const/16 v0, 0xffc

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->buf:[B

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflaterIsOwn:Z

    .line 29
    if-nez p5, :cond_0

    new-instance v1, Ljava/util/zip/Deflater;

    invoke-direct {v1}, Ljava/util/zip/Deflater;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, p5

    :goto_0
    iput-object v1, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    .line 30
    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflaterIsOwn:Z

    .line 31
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->done()V

    .line 80
    :try_start_0
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflaterIsOwn:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    :goto_0
    invoke-super {p0}, Lar/com/hjg/pngj/pixels/CompressorStream;->close()V

    .line 86
    return-void
.end method

.method protected deflate()V
    .locals 6

    .line 51
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 52
    .local v0, "len":I
    if-lez v0, :cond_1

    .line 53
    iget-wide v1, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->bytesOut:J

    int-to-long v4, v0

    add-long/2addr v1, v4

    iput-wide v1, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->bytesOut:J

    .line 55
    :try_start_0
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->os:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->os:Ljava/io/OutputStream;

    iget-object v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->buf:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lar/com/hjg/pngj/PngjOutputException;

    invoke-direct {v2, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 61
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-void
.end method

.method public done()V
    .locals 1

    .line 66
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->done:Z

    if-eqz v0, :cond_0

    .line 67
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 70
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflate()V

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->done:Z

    .line 74
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->flush()V

    .line 75
    return-void
.end method

.method public mywrite([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 42
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->done:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->closed:Z

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 45
    iget-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->bytesIn:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->bytesIn:J

    .line 46
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflate()V

    goto :goto_0

    .line 48
    :cond_0
    return-void

    .line 43
    :cond_1
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string/jumbo v1, "write beyond end of stream"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 90
    invoke-super {p0}, Lar/com/hjg/pngj/pixels/CompressorStream;->reset()V

    .line 91
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 92
    return-void
.end method
