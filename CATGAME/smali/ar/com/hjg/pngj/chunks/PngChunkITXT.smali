.class public Lar/com/hjg/pngj/chunks/PngChunkITXT;
.super Lar/com/hjg/pngj/chunks/PngChunkTextVar;
.source "PngChunkITXT.java"


# static fields
.field public static final ID:Ljava/lang/String; = "iTXt"


# instance fields
.field private compressed:Z

.field private langTag:Ljava/lang/String;

.field private translatedTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    const-string v0, "iTXt"

    .line 23
    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkTextVar;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->compressed:Z

    const-string p1, ""

    .line 18
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->langTag:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->translatedTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 5

    .line 28
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->key:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->key:Ljava/lang/String;

    invoke-static {v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 34
    iget-boolean v2, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->compressed:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 35
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 36
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->langTag:Ljava/lang/String;

    invoke-static {v2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 37
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 38
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->translatedTag:Ljava/lang/String;

    invoke-static {v2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytesUTF8(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 39
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 40
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->val:Ljava/lang/String;

    invoke-static {v2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytesUTF8(Ljava/lang/String;)[B

    move-result-object v2

    .line 41
    iget-boolean v4, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->compressed:Z

    if-eqz v4, :cond_1

    .line 42
    invoke-static {v2, v3}, Lar/com/hjg/pngj/chunks/ChunkHelper;->compressBytes([BZ)[B

    move-result-object v2

    .line 44
    :cond_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 45
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 46
    array-length v2, v0

    invoke-virtual {p0, v2, v1}, Lar/com/hjg/pngj/chunks/PngChunkITXT;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    .line 47
    iput-object v0, v1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 29
    :cond_2
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "Text chunk key must be non empty"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLangtag()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->langTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedTag()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->translatedTag:Ljava/lang/String;

    return-object v0
.end method

.method public isCompressed()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->compressed:Z

    return v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 58
    :goto_0
    iget-object v5, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v5, v5

    const/4 v6, 0x1

    if-ge v3, v5, :cond_3

    .line 59
    iget-object v5, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte v5, v5, v3

    if-eqz v5, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    aput v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_1

    add-int/lit8 v3, v3, 0x2

    :cond_1
    if-ne v4, v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/2addr v3, v6

    goto :goto_0

    :cond_3
    :goto_2
    if-ne v4, v0, :cond_8

    .line 70
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget v3, v1, v2

    invoke-static {v0, v2, v3}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->key:Ljava/lang/String;

    aget v0, v1, v2

    add-int/2addr v0, v6

    .line 72
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte v3, v3, v0

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v6

    :goto_3
    iput-boolean v3, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->compressed:Z

    add-int/2addr v0, v6

    if-eqz v3, :cond_6

    .line 74
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte v3, v3, v0

    if-nez v3, :cond_5

    goto :goto_4

    .line 75
    :cond_5
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string v0, "Bad formed PngChunkITXT chunk - bad compression method "

    invoke-direct {p1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_6
    :goto_4
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget v4, v1, v6

    sub-int/2addr v4, v0

    invoke-static {v3, v0, v4}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->langTag:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget v3, v1, v6

    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x2

    aget v7, v1, v5

    sub-int/2addr v7, v3

    sub-int/2addr v7, v6

    invoke-static {v0, v4, v7}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toStringUTF8([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->translatedTag:Ljava/lang/String;

    aget v0, v1, v5

    add-int/2addr v0, v6

    .line 80
    iget-boolean v1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->compressed:Z

    if-eqz v1, :cond_7

    .line 81
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget-object p1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length p1, p1

    sub-int/2addr p1, v0

    invoke-static {v1, v0, p1, v2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->compressBytes([BIIZ)[B

    move-result-object p1

    .line 82
    invoke-static {p1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toStringUTF8([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->val:Ljava/lang/String;

    goto :goto_5

    .line 84
    :cond_7
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget-object p1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length p1, p1

    sub-int/2addr p1, v0

    invoke-static {v1, v0, p1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toStringUTF8([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->val:Ljava/lang/String;

    :goto_5
    return-void

    .line 69
    :cond_8
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string v0, "Bad formed PngChunkITXT chunk"

    invoke-direct {p1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompressed(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->compressed:Z

    return-void
.end method

.method public setLangtag(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->langTag:Ljava/lang/String;

    return-void
.end method

.method public setTranslatedTag(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->translatedTag:Ljava/lang/String;

    return-void
.end method
