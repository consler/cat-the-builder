.class public Lar/com/hjg/pngj/PngIDatChunkOutputStream;
.super Lar/com/hjg/pngj/ProgressiveOutputStream;
.source "PngIDatChunkOutputStream.java"


# static fields
.field private static final SIZE_DEFAULT:I = 0x8000


# instance fields
.field private final outputStream:Ljava/io/OutputStream;

.field private prefix:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lar/com/hjg/pngj/PngIDatChunkOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x8000

    .line 23
    :goto_0
    invoke-direct {p0, p2}, Lar/com/hjg/pngj/ProgressiveOutputStream;-><init>(I)V

    const/4 p2, 0x0

    .line 16
    iput-object p2, p0, Lar/com/hjg/pngj/PngIDatChunkOutputStream;->prefix:[B

    .line 24
    iput-object p1, p0, Lar/com/hjg/pngj/PngIDatChunkOutputStream;->outputStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method protected final flushBuffer([BI)V
    .locals 4

    .line 29
    iget-object v0, p0, Lar/com/hjg/pngj/PngIDatChunkOutputStream;->prefix:[B

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    array-length v0, v0

    add-int/2addr v0, p2

    .line 30
    :goto_0
    new-instance v1, Lar/com/hjg/pngj/chunks/ChunkRaw;

    sget-object v2, Lar/com/hjg/pngj/chunks/ChunkHelper;->b_IDAT:[B

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lar/com/hjg/pngj/chunks/ChunkRaw;-><init>(I[BZ)V

    if-ne p2, v0, :cond_1

    .line 32
    iput-object p1, v1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    .line 36
    :cond_1
    iget-object p1, p0, Lar/com/hjg/pngj/PngIDatChunkOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lar/com/hjg/pngj/chunks/ChunkRaw;->writeChunk(Ljava/io/OutputStream;)V

    return-void
.end method

.method public bridge synthetic getCountFlushed()J
    .locals 2

    .line 11
    invoke-super {p0}, Lar/com/hjg/pngj/ProgressiveOutputStream;->getCountFlushed()J

    move-result-wide v0

    return-wide v0
.end method

.method setPrefix([B)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lar/com/hjg/pngj/PngIDatChunkOutputStream;->prefix:[B

    goto :goto_0

    .line 43
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/PngIDatChunkOutputStream;->prefix:[B

    .line 44
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public bridge synthetic setSize(I)V
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lar/com/hjg/pngj/ProgressiveOutputStream;->setSize(I)V

    return-void
.end method
