.class public Lar/com/hjg/pngj/chunks/PngChunkSPLT;
.super Lar/com/hjg/pngj/chunks/PngChunkMultiple;
.source "PngChunkSPLT.java"


# static fields
.field public static final ID:Ljava/lang/String; = "sPLT"


# instance fields
.field private palName:Ljava/lang/String;

.field private palette:[I

.field private sampledepth:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/ImageInfo;

    .line 25
    const-string v0, "sPLT"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkMultiple;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 26
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 7

    .line 36
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    .local v0, "ba":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->palName:Ljava/lang/String;

    invoke-static {v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 38
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 39
    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->sampledepth:I

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 40
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->getNentries()I

    move-result v2

    .line 41
    .local v2, "nentries":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 42
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 43
    iget v5, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->sampledepth:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 44
    iget-object v5, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->palette:[I

    mul-int/lit8 v6, v3, 0x5

    add-int/2addr v6, v4

    aget v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v0, v5}, Lar/com/hjg/pngj/PngHelperInternal;->writeByte(Ljava/io/OutputStream;B)V

    goto :goto_2

    .line 46
    :cond_0
    iget-object v5, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->palette:[I

    mul-int/lit8 v6, v3, 0x5

    add-int/2addr v6, v4

    aget v5, v5, v6

    invoke-static {v0, v5}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2(Ljava/io/OutputStream;I)V

    .line 42
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 48
    .end local v4    # "i":I
    :cond_1
    iget-object v4, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->palette:[I

    mul-int/lit8 v6, v3, 0x5

    add-int/2addr v6, v5

    aget v4, v4, v6

    invoke-static {v0, v4}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2(Ljava/io/OutputStream;I)V

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    .end local v3    # "n":I
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 51
    .local v3, "b":[B
    array-length v4, v3

    invoke-virtual {p0, v4, v1}, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    .line 52
    .local v1, "chunk":Lar/com/hjg/pngj/chunks/ChunkRaw;
    iput-object v3, v1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-object v1

    .line 54
    .end local v0    # "ba":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "chunk":Lar/com/hjg/pngj/chunks/ChunkRaw;
    .end local v2    # "nentries":I
    .end local v3    # "b":[B
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNentries()I
    .locals 1

    .line 104
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->palette:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 30
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public getPalName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->palName:Ljava/lang/String;

    return-object v0
.end method

.method public getPalette()[I
    .locals 1

    .line 124
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->palette:[I

    return-object v0
.end method

.method public getSampledepth()I
    .locals 1

    .line 116
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->sampledepth:I

    return v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 12
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 61
    const/4 v0, -0x1

    .line 62
    .local v0, "t":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 63
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_0

    .line 64
    move v0, v1

    .line 65
    goto :goto_1

    .line 62
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-lez v0, :cond_5

    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    if-gt v0, v1, :cond_5

    .line 70
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->palName:Ljava/lang/String;

    .line 71
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->sampledepth:I

    .line 72
    add-int/lit8 v0, v0, 0x2

    .line 73
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->sampledepth:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    const/4 v2, 0x6

    goto :goto_2

    :cond_2
    const/16 v2, 0xa

    :goto_2
    div-int/2addr v1, v2

    .line 74
    .local v1, "nentries":I
    mul-int/lit8 v2, v1, 0x5

    new-array v2, v2, [I

    iput-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->palette:[I

    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, "ne":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v1, :cond_4

    .line 78
    iget v5, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->sampledepth:I

    if-ne v5, v3, :cond_3

    .line 79
    iget-object v5, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "t":I
    .local v6, "t":I
    invoke-static {v5, v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    .line 80
    .local v0, "r":I
    iget-object v5, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "t":I
    .local v7, "t":I
    invoke-static {v5, v6}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v5

    .line 81
    .local v5, "g":I
    iget-object v6, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "t":I
    .local v8, "t":I
    invoke-static {v6, v7}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v6

    .line 82
    .local v6, "b":I
    iget-object v7, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "t":I
    .local v9, "t":I
    invoke-static {v7, v8}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v7

    .local v7, "a":I
    goto :goto_4

    .line 84
    .end local v5    # "g":I
    .end local v6    # "b":I
    .end local v7    # "a":I
    .end local v9    # "t":I
    .local v0, "t":I
    :cond_3
    iget-object v5, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v5, v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v5

    .line 85
    .local v5, "r":I
    add-int/lit8 v0, v0, 0x2

    .line 86
    iget-object v6, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v6, v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v6

    .line 87
    .local v6, "g":I
    add-int/lit8 v0, v0, 0x2

    .line 88
    iget-object v7, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v7, v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v7

    .line 89
    .local v7, "b":I
    add-int/lit8 v0, v0, 0x2

    .line 90
    iget-object v8, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v8, v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v8

    .line 91
    .local v8, "a":I
    add-int/lit8 v9, v0, 0x2

    move v0, v5

    move v5, v6

    move v6, v7

    move v7, v8

    .line 93
    .end local v8    # "a":I
    .local v0, "r":I
    .local v5, "g":I
    .local v6, "b":I
    .local v7, "a":I
    .restart local v9    # "t":I
    :goto_4
    iget-object v8, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v8, v9}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v8

    .line 94
    .local v8, "f":I
    add-int/lit8 v9, v9, 0x2

    .line 95
    iget-object v10, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->palette:[I

    add-int/lit8 v11, v2, 0x1

    .end local v2    # "ne":I
    .local v11, "ne":I
    aput v0, v10, v2

    .line 96
    add-int/lit8 v2, v11, 0x1

    .end local v11    # "ne":I
    .restart local v2    # "ne":I
    aput v5, v10, v11

    .line 97
    add-int/lit8 v11, v2, 0x1

    .end local v2    # "ne":I
    .restart local v11    # "ne":I
    aput v6, v10, v2

    .line 98
    add-int/lit8 v2, v11, 0x1

    .end local v11    # "ne":I
    .restart local v2    # "ne":I
    aput v7, v10, v11

    .line 99
    add-int/lit8 v11, v2, 0x1

    .end local v2    # "ne":I
    .restart local v11    # "ne":I
    aput v8, v10, v2

    .line 77
    add-int/lit8 v4, v4, 0x1

    move v0, v9

    move v2, v11

    goto :goto_3

    .line 101
    .end local v4    # "i":I
    .end local v5    # "g":I
    .end local v6    # "b":I
    .end local v7    # "a":I
    .end local v8    # "f":I
    .end local v9    # "t":I
    .end local v11    # "ne":I
    .local v0, "t":I
    .restart local v2    # "ne":I
    :cond_4
    return-void

    .line 69
    .end local v1    # "nentries":I
    .end local v2    # "ne":I
    :cond_5
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    const-string v2, "bad sPLT chunk: no separator found"

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPalName(Ljava/lang/String;)V
    .locals 0
    .param p1, "palName"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->palName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setPalette([I)V
    .locals 0
    .param p1, "palette"    # [I

    .line 128
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->palette:[I

    .line 129
    return-void
.end method

.method public setSampledepth(I)V
    .locals 0
    .param p1, "sampledepth"    # I

    .line 120
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->sampledepth:I

    .line 121
    return-void
.end method
