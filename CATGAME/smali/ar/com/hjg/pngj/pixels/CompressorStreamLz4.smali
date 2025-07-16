.class public Lar/com/hjg/pngj/pixels/CompressorStreamLz4;
.super Lar/com/hjg/pngj/pixels/CompressorStream;
.source "CompressorStreamLz4.java"


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0x3e80


# instance fields
.field private buf:[B

.field private final buffer_size:I

.field private inbuf:I

.field private final lz4:Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;IJ)V
    .locals 1

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lar/com/hjg/pngj/pixels/CompressorStream;-><init>(Ljava/io/OutputStream;IJ)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->inbuf:I

    .line 26
    new-instance p1, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;

    invoke-direct {p1}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;-><init>()V

    iput-object p1, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->lz4:Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;

    const-wide/16 p1, 0x3e80

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    move-wide p3, p1

    :cond_0
    long-to-int p1, p3

    .line 27
    iput p1, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->buffer_size:I

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IJII)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;-><init>(Ljava/io/OutputStream;IJ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IJLjava/util/zip/Deflater;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;-><init>(Ljava/io/OutputStream;IJ)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->done()V

    .line 85
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->closed:Z

    if-nez v0, :cond_0

    .line 86
    invoke-super {p0}, Lar/com/hjg/pngj/pixels/CompressorStream;->close()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->buf:[B

    :cond_0
    return-void
.end method

.method compressFromBuffer()V
    .locals 6

    .line 67
    iget v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->inbuf:I

    if-lez v0, :cond_0

    .line 68
    iget-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->bytesOut:J

    iget-object v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->lz4:Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;

    iget-object v3, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->buf:[B

    iget v4, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->inbuf:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->compressEstim([BII)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->bytesOut:J

    .line 69
    iput v5, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->inbuf:I

    :cond_0
    return-void
.end method

.method public done()V
    .locals 1

    .line 75
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->done:Z

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->compressFromBuffer()V

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->done:Z

    .line 78
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->flush()V

    :cond_0
    return-void
.end method

.method public mywrite([BII)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    .line 43
    :cond_0
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->done:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->closed:Z

    if-nez v0, :cond_8

    .line 45
    iget-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->bytesIn:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->bytesIn:J

    :cond_1
    :goto_0
    if-lez p3, :cond_7

    .line 47
    iget v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->inbuf:I

    if-nez v0, :cond_3

    const/16 v0, 0x3e80

    if-ge p3, v0, :cond_2

    iget-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->bytesIn:J

    iget-wide v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->totalbytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 49
    :cond_2
    iget-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->bytesOut:J

    iget-object v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->lz4:Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;

    invoke-virtual {v2, p1, p2, p3}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->compressEstim([BII)I

    move-result p3

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->bytesOut:J

    const/4 p3, 0x0

    goto :goto_0

    .line 52
    :cond_3
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->buf:[B

    if-nez v0, :cond_4

    .line 53
    iget v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->buffer_size:I

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->buf:[B

    .line 54
    :cond_4
    iget v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->inbuf:I

    add-int v1, v0, p3

    iget v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->buffer_size:I

    if-gt v1, v2, :cond_5

    move v2, p3

    goto :goto_1

    :cond_5
    sub-int/2addr v2, v0

    :goto_1
    if-lez v2, :cond_6

    .line 56
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->buf:[B

    invoke-static {p1, p2, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    :cond_6
    iget v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->inbuf:I

    add-int/2addr v0, v2

    iput v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->inbuf:I

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    .line 60
    iget v1, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->buffer_size:I

    if-ne v0, v1, :cond_1

    .line 61
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->compressFromBuffer()V

    goto :goto_0

    :cond_7
    return-void

    .line 44
    :cond_8
    new-instance p1, Lar/com/hjg/pngj/PngjOutputException;

    const-string p2, "write beyond end of stream"

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 0

    .line 93
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->done()V

    .line 94
    invoke-super {p0}, Lar/com/hjg/pngj/pixels/CompressorStream;->reset()V

    return-void
.end method
