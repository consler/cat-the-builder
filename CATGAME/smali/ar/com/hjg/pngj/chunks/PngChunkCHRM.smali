.class public Lar/com/hjg/pngj/chunks/PngChunkCHRM;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "PngChunkCHRM.java"


# static fields
.field public static final ID:Ljava/lang/String; = "cHRM"


# instance fields
.field private bluex:D

.field private bluey:D

.field private greenx:D

.field private greeny:D

.field private redx:D

.field private redy:D

.field private whitex:D

.field private whitey:D


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    const-string v0, "cHRM"

    .line 22
    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 4

    const/16 v0, 0x20

    const/4 v1, 0x1

    .line 33
    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 34
    iget-wide v1, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->whitex:D

    invoke-static {v1, v2}, Lar/com/hjg/pngj/PngHelperInternal;->doubleToInt100000(D)I

    move-result v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 35
    iget-wide v1, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->whitey:D

    invoke-static {v1, v2}, Lar/com/hjg/pngj/PngHelperInternal;->doubleToInt100000(D)I

    move-result v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 36
    iget-wide v1, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->redx:D

    invoke-static {v1, v2}, Lar/com/hjg/pngj/PngHelperInternal;->doubleToInt100000(D)I

    move-result v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 37
    iget-wide v1, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->redy:D

    invoke-static {v1, v2}, Lar/com/hjg/pngj/PngHelperInternal;->doubleToInt100000(D)I

    move-result v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/16 v3, 0xc

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 38
    iget-wide v1, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->greenx:D

    invoke-static {v1, v2}, Lar/com/hjg/pngj/PngHelperInternal;->doubleToInt100000(D)I

    move-result v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 39
    iget-wide v1, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->greeny:D

    invoke-static {v1, v2}, Lar/com/hjg/pngj/PngHelperInternal;->doubleToInt100000(D)I

    move-result v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/16 v3, 0x14

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 40
    iget-wide v1, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->bluex:D

    invoke-static {v1, v2}, Lar/com/hjg/pngj/PngHelperInternal;->doubleToInt100000(D)I

    move-result v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/16 v3, 0x18

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 41
    iget-wide v1, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->bluey:D

    invoke-static {v1, v2}, Lar/com/hjg/pngj/PngHelperInternal;->doubleToInt100000(D)I

    move-result v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/16 v3, 0x1c

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    return-object v0
.end method

.method public getChromaticities()[D
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 72
    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->whitex:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->whitey:D

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->redx:D

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->redy:D

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->greenx:D

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->greeny:D

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->bluex:D

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->bluey:D

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 27
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 3

    .line 47
    iget v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 49
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4fromBytes([BI)I

    move-result v0

    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->intToDouble100000(I)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->whitex:D

    .line 50
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4fromBytes([BI)I

    move-result v0

    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->intToDouble100000(I)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->whitey:D

    .line 51
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4fromBytes([BI)I

    move-result v0

    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->intToDouble100000(I)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->redx:D

    .line 52
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4fromBytes([BI)I

    move-result v0

    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->intToDouble100000(I)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->redy:D

    .line 53
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4fromBytes([BI)I

    move-result v0

    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->intToDouble100000(I)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->greenx:D

    .line 54
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4fromBytes([BI)I

    move-result v0

    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->intToDouble100000(I)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->greeny:D

    .line 55
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4fromBytes([BI)I

    move-result v0

    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->intToDouble100000(I)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->bluex:D

    .line 56
    iget-object p1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4fromBytes([BI)I

    move-result p1

    invoke-static {p1}, Lar/com/hjg/pngj/PngHelperInternal;->intToDouble100000(I)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->bluey:D

    return-void

    .line 48
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad chunk "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChromaticities(DDDDDDDD)V
    .locals 3

    move-object v0, p0

    move-wide v1, p1

    .line 61
    iput-wide v1, v0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->whitex:D

    move-wide v1, p5

    .line 62
    iput-wide v1, v0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->redx:D

    move-wide v1, p9

    .line 63
    iput-wide v1, v0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->greenx:D

    move-wide/from16 v1, p13

    .line 64
    iput-wide v1, v0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->bluex:D

    move-wide v1, p3

    .line 65
    iput-wide v1, v0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->whitey:D

    move-wide v1, p7

    .line 66
    iput-wide v1, v0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->redy:D

    move-wide v1, p11

    .line 67
    iput-wide v1, v0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->greeny:D

    move-wide/from16 v1, p15

    .line 68
    iput-wide v1, v0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;->bluey:D

    return-void
.end method
