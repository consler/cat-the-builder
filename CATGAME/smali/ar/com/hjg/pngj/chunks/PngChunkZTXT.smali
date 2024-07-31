.class public Lar/com/hjg/pngj/chunks/PngChunkZTXT;
.super Lar/com/hjg/pngj/chunks/PngChunkTextVar;
.source "PngChunkZTXT.java"


# static fields
.field public static final ID:Ljava/lang/String; = "zTXt"


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/ImageInfo;

    .line 19
    const-string/jumbo v0, "zTXt"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkTextVar;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 20
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 5

    .line 24
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkZTXT;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkZTXT;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    .local v0, "ba":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkZTXT;->key:Ljava/lang/String;

    invoke-static {v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 29
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 30
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 31
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkZTXT;->val:Ljava/lang/String;

    invoke-static {v2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lar/com/hjg/pngj/chunks/ChunkHelper;->compressBytes([BZ)[B

    move-result-object v2

    .line 32
    .local v2, "textbytes":[B
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 34
    .local v3, "b":[B
    array-length v4, v3

    invoke-virtual {p0, v4, v1}, Lar/com/hjg/pngj/chunks/PngChunkZTXT;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    .line 35
    .local v1, "chunk":Lar/com/hjg/pngj/chunks/ChunkRaw;
    iput-object v3, v1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object v1

    .line 37
    .end local v0    # "ba":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "chunk":Lar/com/hjg/pngj/chunks/ChunkRaw;
    .end local v2    # "textbytes":[B
    .end local v3    # "b":[B
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 25
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "Text chunk key must be non empty"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 6
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 44
    const/4 v0, -0x1

    .line 45
    .local v0, "nullsep":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 46
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte v2, v2, v1

    if-eqz v2, :cond_0

    .line 47
    nop

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    move v0, v1

    .line 51
    .end local v1    # "i":I
    :cond_1
    if-ltz v0, :cond_3

    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    if-gt v0, v1, :cond_3

    .line 53
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkZTXT;->key:Ljava/lang/String;

    .line 54
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v1, v1, v3

    .line 55
    .local v1, "compmet":I
    if-nez v1, :cond_2

    .line 57
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v4, v0, 0x2

    iget-object v5, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v5, v5

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x2

    invoke-static {v3, v4, v5, v2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->compressBytes([BIIZ)[B

    move-result-object v2

    .line 59
    .local v2, "uncomp":[B
    invoke-static {v2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lar/com/hjg/pngj/chunks/PngChunkZTXT;->val:Ljava/lang/String;

    .line 60
    return-void

    .line 56
    .end local v2    # "uncomp":[B
    :cond_2
    new-instance v2, Lar/com/hjg/pngj/PngjException;

    const-string v3, "bad zTXt chunk: unknown compression method"

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    .end local v1    # "compmet":I
    :cond_3
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    const-string v2, "bad zTXt chunk: no separator found"

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
