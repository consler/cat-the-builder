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

    const-string v0, "iCCP"

    .line 19
    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

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
    .locals 4

    .line 40
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->posNullByte([B)I

    move-result v0

    .line 41
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

    if-nez v1, :cond_0

    .line 45
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v1, v1

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 46
    new-array v3, v1, [B

    iput-object v3, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->compressedProfile:[B

    .line 47
    iget-object p1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget-object v3, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->compressedProfile:[B

    invoke-static {p1, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 44
    :cond_0
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string v0, "bad compression for ChunkTypeICCP"

    invoke-direct {p1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProfileNameAndContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-static {p2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkICCP;->setProfileNameAndContent(Ljava/lang/String;[B)V

    return-void
.end method

.method public setProfileNameAndContent(Ljava/lang/String;[B)V
    .locals 0

    .line 54
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->profileName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 55
    invoke-static {p2, p1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->compressBytes([BZ)[B

    move-result-object p1

    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkICCP;->compressedProfile:[B

    return-void
.end method
