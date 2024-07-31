.class public Lar/com/hjg/pngj/chunks/PngChunkPHYS;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "PngChunkPHYS.java"


# static fields
.field public static final ID:Ljava/lang/String; = "pHYs"


# instance fields
.field private pixelsxUnitX:J

.field private pixelsxUnitY:J

.field private units:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/ImageInfo;

    .line 21
    const-string v0, "pHYs"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 22
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 4

    .line 31
    const/16 v0, 0x9

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 32
    .local v0, "c":Lar/com/hjg/pngj/chunks/ChunkRaw;
    iget-wide v1, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->pixelsxUnitX:J

    long-to-int v1, v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 33
    iget-wide v1, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->pixelsxUnitY:J

    long-to-int v1, v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 34
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->units:I

    int-to-byte v2, v2

    const/16 v3, 0x8

    aput-byte v2, v1, v3

    .line 35
    return-object v0
.end method

.method public getAsDpi()D
    .locals 4

    .line 81
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->units:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->pixelsxUnitX:J

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->pixelsxUnitY:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    long-to-double v0, v0

    const-wide v2, 0x3f9a027525460aa6L    # 0.0254

    mul-double/2addr v0, v2

    return-wide v0

    .line 82
    :cond_1
    :goto_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public getAsDpi2()[D
    .locals 7

    .line 90
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->units:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 91
    new-array v0, v1, [D

    fill-array-data v0, :array_0

    return-object v0

    .line 92
    :cond_0
    new-array v0, v1, [D

    const/4 v1, 0x0

    iget-wide v3, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->pixelsxUnitX:J

    long-to-double v3, v3

    const-wide v5, 0x3f9a027525460aa6L    # 0.0254

    mul-double/2addr v3, v5

    aput-wide v3, v0, v1

    iget-wide v3, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->pixelsxUnitY:J

    long-to-double v3, v3

    mul-double/2addr v3, v5

    aput-wide v3, v0, v2

    return-object v0

    nop

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 26
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public getPixelsxUnitX()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->pixelsxUnitX:J

    return-wide v0
.end method

.method public getPixelsxUnitY()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->pixelsxUnitY:J

    return-wide v0
.end method

.method public getUnits()I
    .locals 1

    .line 68
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->units:I

    return v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 7
    .param p1, "chunk"    # Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 40
    iget v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 42
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4fromBytes([BI)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->pixelsxUnitX:J

    .line 43
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide v5, 0x100000000L

    if-gez v4, :cond_0

    .line 44
    add-long/2addr v0, v5

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->pixelsxUnitX:J

    .line 45
    :cond_0
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4fromBytes([BI)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->pixelsxUnitY:J

    .line 46
    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 47
    add-long/2addr v0, v5

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->pixelsxUnitY:J

    .line 48
    :cond_1
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->units:I

    .line 49
    return-void

    .line 41
    :cond_2
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad chunk length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsDpi(D)V
    .locals 4
    .param p1, "dpi"    # D

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->units:I

    .line 97
    const-wide v0, 0x3f9a027525460aa6L    # 0.0254

    div-double v0, p1, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->pixelsxUnitX:J

    .line 98
    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->pixelsxUnitY:J

    .line 99
    return-void
.end method

.method public setAsDpi2(DD)V
    .locals 6
    .param p1, "dpix"    # D
    .param p3, "dpiy"    # D

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->units:I

    .line 103
    const-wide v0, 0x3f9a027525460aa6L    # 0.0254

    div-double v2, p1, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->pixelsxUnitX:J

    .line 104
    div-double v0, p3, v0

    add-double/2addr v0, v4

    double-to-long v0, v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->pixelsxUnitY:J

    .line 105
    return-void
.end method

.method public setPixelsxUnitX(J)V
    .locals 0
    .param p1, "pixelsxUnitX"    # J

    .line 56
    iput-wide p1, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->pixelsxUnitX:J

    .line 57
    return-void
.end method

.method public setPixelsxUnitY(J)V
    .locals 0
    .param p1, "pixelsxUnitY"    # J

    .line 64
    iput-wide p1, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->pixelsxUnitY:J

    .line 65
    return-void
.end method

.method public setUnits(I)V
    .locals 0
    .param p1, "units"    # I

    .line 72
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->units:I

    .line 73
    return-void
.end method
