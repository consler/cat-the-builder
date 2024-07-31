.class public Lar/com/hjg/pngj/chunks/ChunkRaw;
.super Ljava/lang/Object;
.source "ChunkRaw.java"


# instance fields
.field private crcengine:Ljava/util/zip/CRC32;

.field public crcval:[B

.field public data:[B

.field public final id:Ljava/lang/String;

.field public final idbytes:[B

.field public final len:I

.field private offset:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 5
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "alloc"    # Z

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->offset:J

    .line 47
    const/4 v0, 0x4

    new-array v1, v0, [B

    iput-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcval:[B

    .line 52
    iput p1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    .line 53
    iput-object p2, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    .line 54
    invoke-static {p2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->idbytes:[B

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 56
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->idbytes:[B

    aget-byte v3, v2, v1

    const/16 v4, 0x41

    if-lt v3, v4, :cond_1

    aget-byte v3, v2, v1

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_1

    aget-byte v3, v2, v1

    const/16 v4, 0x5a

    if-le v3, v4, :cond_0

    aget-byte v2, v2, v1

    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    .line 55
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad id chunk: must be ascii letters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    .end local v1    # "i":I
    :cond_2
    if-eqz p3, :cond_3

    .line 60
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/ChunkRaw;->allocData()V

    .line 61
    :cond_3
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 1
    .param p1, "len"    # I
    .param p2, "idbytes"    # [B
    .param p3, "alloc"    # Z

    .line 64
    invoke-static {p2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lar/com/hjg/pngj/chunks/ChunkRaw;-><init>(ILjava/lang/String;Z)V

    .line 65
    return-void
.end method

.method private computeCrcForWriting()V
    .locals 4

    .line 76
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcengine:Ljava/util/zip/CRC32;

    .line 77
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->idbytes:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 78
    iget v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    if-lez v0, :cond_0

    .line 79
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcengine:Ljava/util/zip/CRC32;

    iget-object v3, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-virtual {v1, v3, v2, v0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 80
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcengine:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcval:[B

    invoke-static {v0, v1, v2}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 81
    return-void
.end method


# virtual methods
.method public allocData()V
    .locals 2

    .line 68
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    if-ge v0, v1, :cond_1

    .line 69
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    .line 70
    :cond_1
    return-void
.end method

.method public checkCrc()V
    .locals 5

    .line 111
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcengine:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    .line 112
    .local v0, "crcComputed":I
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcval:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4fromBytes([BI)I

    move-result v1

    .line 113
    .local v1, "crcExpected":I
    if-ne v0, v1, :cond_0

    .line 116
    return-void

    .line 114
    :cond_0
    new-instance v2, Lar/com/hjg/pngj/PngjBadCrcException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chunk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/ChunkRaw;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " expected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " read="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/PngjBadCrcException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 154
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 155
    return v0

    .line 156
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 157
    return v1

    .line 158
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 159
    return v1

    .line 160
    :cond_2
    move-object v2, p1

    check-cast v2, Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 161
    .local v2, "other":Lar/com/hjg/pngj/chunks/ChunkRaw;
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 162
    iget-object v3, v2, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 163
    return v1

    .line 164
    :cond_3
    iget-object v4, v2, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 165
    return v1

    .line 166
    :cond_4
    iget-wide v3, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->offset:J

    iget-wide v5, v2, Lar/com/hjg/pngj/chunks/ChunkRaw;->offset:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 167
    return v1

    .line 168
    :cond_5
    return v0
.end method

.method getAsByteStream()Ljava/io/ByteArrayInputStream;
    .locals 2

    .line 125
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getOffset()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->offset:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 145
    const/16 v0, 0x1f

    .line 146
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 147
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 148
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-wide v3, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->offset:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v1, v3

    .line 149
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public setOffset(J)V
    .locals 0
    .param p1, "offset"    # J

    .line 136
    iput-wide p1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->offset:J

    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chunkid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->idbytes:[B

    invoke-static {v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCrc([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 119
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcengine:Ljava/util/zip/CRC32;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcengine:Ljava/util/zip/CRC32;

    .line 121
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcengine:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 122
    return-void
.end method

.method public writeChunk(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 89
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/chunks/ChunkRaw;->writeChunkHeader(Ljava/io/OutputStream;)V

    .line 90
    iget v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    if-lez v0, :cond_1

    .line 91
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    if-eqz v1, :cond_0

    .line 93
    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lar/com/hjg/pngj/PngHelperInternal;->writeBytes(Ljava/io/OutputStream;[BII)V

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot write chunk, raw chunk data is null ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    :goto_0
    invoke-direct {p0}, Lar/com/hjg/pngj/chunks/ChunkRaw;->computeCrcForWriting()V

    .line 96
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/chunks/ChunkRaw;->writeChunkCrc(Ljava/io/OutputStream;)V

    .line 97
    return-void
.end method

.method public writeChunkCrc(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 107
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcval:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2}, Lar/com/hjg/pngj/PngHelperInternal;->writeBytes(Ljava/io/OutputStream;[BII)V

    .line 108
    return-void
.end method

.method public writeChunkHeader(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 100
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->idbytes:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 102
    iget v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    invoke-static {p1, v0}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4(Ljava/io/OutputStream;I)V

    .line 103
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->idbytes:[B

    invoke-static {p1, v0}, Lar/com/hjg/pngj/PngHelperInternal;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 104
    return-void

    .line 101
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad chunkid ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
