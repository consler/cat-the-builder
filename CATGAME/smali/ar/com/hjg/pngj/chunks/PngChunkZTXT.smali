.class public Lar/com/hjg/pngj/chunks/PngChunkZTXT;
.super Lar/com/hjg/pngj/chunks/PngChunkTextVar;
.source "PngChunkZTXT.java"


# static fields
.field public static final ID:Ljava/lang/String; = "zTXt"


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    const-string v0, "zTXt"

    .line 19
    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkTextVar;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 4

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
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkZTXT;->key:Ljava/lang/String;

    invoke-static {v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x0

    .line 29
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
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 34
    array-length v2, v0

    invoke-virtual {p0, v2, v1}, Lar/com/hjg/pngj/chunks/PngChunkZTXT;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    .line 35
    iput-object v0, v1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 25
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "Text chunk key must be non empty"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 45
    :goto_0
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 46
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte v2, v2, v1

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :cond_1
    if-ltz v1, :cond_3

    .line 51
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-gt v1, v2, :cond_3

    .line 53
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v2, v0, v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkZTXT;->key:Ljava/lang/String;

    .line 54
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v2, v2, v3

    if-nez v2, :cond_2

    .line 57
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v3, v1, 0x2

    iget-object p1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length p1, p1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x2

    invoke-static {v2, v3, p1, v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->compressBytes([BIIZ)[B

    move-result-object p1

    .line 59
    invoke-static {p1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkZTXT;->val:Ljava/lang/String;

    return-void

    .line 56
    :cond_2
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string v0, "bad zTXt chunk: unknown compression method"

    invoke-direct {p1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_3
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string v0, "bad zTXt chunk: no separator found"

    invoke-direct {p1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
