.class public Lar/com/hjg/pngj/chunks/PngChunkSBIT;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "PngChunkSBIT.java"


# static fields
.field public static final ID:Ljava/lang/String; = "sBIT"


# instance fields
.field private alphasb:I

.field private bluesb:I

.field private graysb:I

.field private greensb:I

.field private redsb:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    const-string v0, "sBIT"

    .line 23
    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    return-void
.end method

.method private getCLen()I
    .locals 2

    .line 32
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 33
    :goto_0
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v1, v1, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 5

    .line 58
    invoke-direct {p0}, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->getCLen()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 59
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v2, v2, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 60
    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v4, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->graysb:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 61
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v2, v2, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v3, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->alphasb:I

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    goto :goto_0

    .line 64
    :cond_0
    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v4, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->redsb:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 65
    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v3, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->greensb:I

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 66
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->bluesb:I

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    .line 67
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v1, v1, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->alphasb:I

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getAlphasb()I
    .locals 2

    .line 92
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v0, :cond_0

    .line 94
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->alphasb:I

    return v0

    .line 93
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only images with alpha support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGraysb()I
    .locals 2

    .line 80
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v0, :cond_0

    .line 82
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->graysb:I

    return v0

    .line 81
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only greyscale images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 28
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_PLTE_AND_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public getRGB()[I
    .locals 3

    .line 110
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 112
    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->redsb:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->greensb:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->bluesb:I

    aput v2, v0, v1

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only rgb or rgba images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 3

    .line 40
    iget v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    invoke-direct {p0}, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->getCLen()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 42
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v0, v2}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->graysb:I

    .line 44
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v0, :cond_1

    .line 45
    iget-object p1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {p1, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result p1

    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->alphasb:I

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v0, v2}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->redsb:I

    .line 48
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->greensb:I

    .line 49
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->bluesb:I

    .line 50
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v0, :cond_1

    .line 51
    iget-object p1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result p1

    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->alphasb:I

    :cond_1
    :goto_0
    return-void

    .line 41
    :cond_2
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad chunk length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlphasb(I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v0, :cond_0

    .line 88
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->alphasb:I

    return-void

    .line 87
    :cond_0
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string v0, "only images with alpha support this"

    invoke-direct {p1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGraysb(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v0, :cond_0

    .line 76
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->graysb:I

    return-void

    .line 75
    :cond_0
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string v0, "only greyscale images support this"

    invoke-direct {p1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRGB(III)V
    .locals 1

    .line 102
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_0

    .line 104
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->redsb:I

    .line 105
    iput p2, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->greensb:I

    .line 106
    iput p3, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->bluesb:I

    return-void

    .line 103
    :cond_0
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string p2, "only rgb or rgba images support this"

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
