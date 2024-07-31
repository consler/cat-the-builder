.class public Lar/com/hjg/pngj/chunks/PngChunkICCP;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "PngChunkICCP.java"


# static fields
.field public static final ID:Ljava/lang/String; = "iCCP"


# instance fields
.field private compressedProfile:[B

.field private profileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/ImageInfo;

    .line 19
    const-string v0, "iCCP"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 20
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 6

    .line 29
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->profileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->compressedProfile:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkICCP;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 30
    .local v0, "c":Lar/com/hjg/pngj/chunks/ChunkRaw;
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->profileName:Ljava/lang/String;

    invoke-static {v2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget-object v4, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->profileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget-object v3, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->profileName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    aput-byte v5, v2, v3

    .line 32
    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget-object v3, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->profileName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    aput-byte v5, v2, v3

    .line 33
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->compressedProfile:[B

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget-object v3, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->profileName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->compressedProfile:[B

    array-length v4, v4

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    return-object v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 24
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_PLTE_AND_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public getProfile()[B
    .locals 2

    .line 70
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->compressedProfile:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->compressBytes([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public getProfileAsString()Ljava/lang/String;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkICCP;->getProfile()[B

    move-result-object v0

    invoke-static {v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->profileName:Ljava/lang/String;

    return-object v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 7
    .param p1, "chunk"    # Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 40
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->posNullByte([B)I

    move-result v0

    .line 41
    .local v0, "pos0":I
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->profileName:Ljava/lang/String;

    .line 42
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 43
    .local v1, "comp":I
    if-nez v1, :cond_0

    .line 45
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v3, v3

    add-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    .line 46
    .local v3, "compdatasize":I
    new-array v4, v3, [B

    iput-object v4, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->compressedProfile:[B

    .line 47
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v5, v0, 0x2

    iget-object v6, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->compressedProfile:[B

    invoke-static {v4, v5, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    return-void

    .line 44
    .end local v3    # "compdatasize":I
    :cond_0
    new-instance v2, Lar/com/hjg/pngj/PngjException;

    const-string v3, "bad compression for ChunkTypeICCP"

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setProfileNameAndContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;

    .line 59
    invoke-static {p2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/chunks/PngChunkICCP;->setProfileNameAndContent(Ljava/lang/String;[B)V

    .line 60
    return-void
.end method

.method public setProfileNameAndContent(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "profile"    # [B

    .line 54
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->profileName:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->compressBytes([BZ)[B

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->compressedProfile:[B

    .line 56
    return-void
.end method
