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
    .param p1, "info"    # Lar/com/hjg/pngj/ImageInfo;

    .line 23
    const-string v0, "iTXt"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkTextVar;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->compressed:Z

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->langTag:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->translatedTag:Ljava/lang/String;

    .line 24
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
    .local v0, "ba":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->key:Ljava/lang/String;

    invoke-static {v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 33
    const/4 v1, 0x0

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
    .local v2, "textbytes":[B
    iget-boolean v4, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->compressed:Z

    if-eqz v4, :cond_1

    .line 42
    invoke-static {v2, v3}, Lar/com/hjg/pngj/chunks/ChunkHelper;->compressBytes([BZ)[B

    move-result-object v3

    move-object v2, v3

    .line 44
    :cond_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 45
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 46
    .local v3, "b":[B
    array-length v4, v3

    invoke-virtual {p0, v4, v1}, Lar/com/hjg/pngj/chunks/PngChunkITXT;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    .line 47
    .local v1, "chunk":Lar/com/hjg/pngj/chunks/ChunkRaw;
    iput-object v3, v1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-object v1

    .line 49
    .end local v0    # "ba":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "chunk":Lar/com/hjg/pngj/chunks/ChunkRaw;
    .end local v2    # "textbytes":[B
    .end local v3    # "b":[B
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 29
    .end local v0    # "e":Ljava/io/IOException;
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
    .locals 10
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "nullsFound":I
    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 58
    .local v2, "nullsIdx":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_3

    .line 59
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte v4, v4, v3

    if-eqz v4, :cond_0

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    aput v3, v2, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    if-ne v0, v5, :cond_1

    .line 64
    add-int/lit8 v3, v3, 0x2

    .line 65
    :cond_1
    if-ne v0, v1, :cond_2

    .line 66
    goto :goto_2

    .line 58
    :cond_2
    :goto_1
    add-int/2addr v3, v5

    goto :goto_0

    .line 68
    .end local v3    # "i":I
    :cond_3
    :goto_2
    if-ne v0, v1, :cond_8

    .line 70
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v3, 0x0

    aget v4, v2, v3

    invoke-static {v1, v3, v4}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->key:Ljava/lang/String;

    .line 71
    aget v1, v2, v3

    add-int/2addr v1, v5

    .line 72
    .local v1, "i":I
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte v4, v4, v1

    if-nez v4, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->compressed:Z

    .line 73
    add-int/2addr v1, v5

    .line 74
    if-eqz v4, :cond_6

    iget-object v4, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte v4, v4, v1

    if-nez v4, :cond_5

    goto :goto_4

    .line 75
    :cond_5
    new-instance v3, Lar/com/hjg/pngj/PngjException;

    const-string v4, "Bad formed PngChunkITXT chunk - bad compression method "

    invoke-direct {v3, v4}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :cond_6
    :goto_4
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget v6, v2, v5

    sub-int/2addr v6, v1

    invoke-static {v4, v1, v6}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->langTag:Ljava/lang/String;

    .line 77
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget v6, v2, v5

    add-int/2addr v6, v5

    const/4 v7, 0x2

    aget v8, v2, v7

    aget v9, v2, v5

    sub-int/2addr v8, v9

    sub-int/2addr v8, v5

    invoke-static {v4, v6, v8}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toStringUTF8([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->translatedTag:Ljava/lang/String;

    .line 79
    aget v4, v2, v7

    add-int/2addr v4, v5

    .line 80
    .end local v1    # "i":I
    .local v4, "i":I
    iget-boolean v1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->compressed:Z

    if-eqz v1, :cond_7

    .line 81
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget-object v5, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v5, v5

    sub-int/2addr v5, v4

    invoke-static {v1, v4, v5, v3}, Lar/com/hjg/pngj/chunks/ChunkHelper;->compressBytes([BIIZ)[B

    move-result-object v1

    .line 82
    .local v1, "bytes":[B
    invoke-static {v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toStringUTF8([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->val:Ljava/lang/String;

    .line 83
    .end local v1    # "bytes":[B
    goto :goto_5

    .line 84
    :cond_7
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget-object v3, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v3, v3

    sub-int/2addr v3, v4

    invoke-static {v1, v4, v3}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toStringUTF8([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->val:Ljava/lang/String;

    .line 86
    :goto_5
    return-void

    .line 69
    .end local v4    # "i":I
    :cond_8
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    const-string v3, "Bad formed PngChunkITXT chunk"

    invoke-direct {v1, v3}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCompressed(Z)V
    .locals 0
    .param p1, "compressed"    # Z

    .line 93
    iput-boolean p1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->compressed:Z

    .line 94
    return-void
.end method

.method public setLangtag(Ljava/lang/String;)V
    .locals 0
    .param p1, "langtag"    # Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->langTag:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setTranslatedTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "translatedTag"    # Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->translatedTag:Ljava/lang/String;

    .line 110
    return-void
.end method
