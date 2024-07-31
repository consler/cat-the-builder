.class public abstract Lar/com/hjg/pngj/ChunkReader;
.super Ljava/lang/Object;
.source "ChunkReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;
    }
.end annotation


# instance fields
.field private final chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

.field private crcCheck:Z

.field private crcn:I

.field public final mode:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

.field protected read:I


# direct methods
.method public constructor <init>(ILjava/lang/String;JLar/com/hjg/pngj/ChunkReader$ChunkReaderMode;)V
    .locals 4
    .param p1, "clen"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "offsetInPng"    # J
    .param p5, "mode"    # Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lar/com/hjg/pngj/ChunkReader;->read:I

    .line 28
    iput v0, p0, Lar/com/hjg/pngj/ChunkReader;->crcn:I

    .line 57
    if-eqz p5, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    if-ltz p1, :cond_2

    .line 59
    iput-object p5, p0, Lar/com/hjg/pngj/ChunkReader;->mode:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    .line 60
    new-instance v1, Lar/com/hjg/pngj/chunks/ChunkRaw;

    sget-object v2, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    const/4 v3, 0x1

    if-ne p5, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-direct {v1, p1, p2, v2}, Lar/com/hjg/pngj/chunks/ChunkRaw;-><init>(ILjava/lang/String;Z)V

    iput-object v1, p0, Lar/com/hjg/pngj/ChunkReader;->chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 61
    invoke-virtual {v1, p3, p4}, Lar/com/hjg/pngj/chunks/ChunkRaw;->setOffset(J)V

    .line 62
    sget-object v1, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->SKIP:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-ne p5, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lar/com/hjg/pngj/ChunkReader;->crcCheck:Z

    .line 63
    return-void

    .line 58
    :cond_2
    new-instance v0, Lar/com/hjg/pngj/PngjExceptionInternal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad chunk paramenters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract chunkDone()V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 191
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 192
    return v0

    .line 193
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 194
    return v1

    .line 195
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 196
    return v1

    .line 197
    :cond_2
    move-object v2, p1

    check-cast v2, Lar/com/hjg/pngj/ChunkReader;

    .line 198
    .local v2, "other":Lar/com/hjg/pngj/ChunkReader;
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    if-nez v3, :cond_3

    .line 199
    iget-object v3, v2, Lar/com/hjg/pngj/ChunkReader;->chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    if-eqz v3, :cond_4

    .line 200
    return v1

    .line 201
    :cond_3
    iget-object v4, v2, Lar/com/hjg/pngj/ChunkReader;->chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    invoke-virtual {v3, v4}, Lar/com/hjg/pngj/chunks/ChunkRaw;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 202
    return v1

    .line 203
    :cond_4
    return v0
.end method

.method public final feedBytes([BII)I
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 87
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 88
    return v0

    .line 89
    :cond_0
    if-ltz p3, :cond_d

    .line 91
    iget v1, p0, Lar/com/hjg/pngj/ChunkReader;->read:I

    const/4 v2, 0x4

    if-nez v1, :cond_1

    iget v1, p0, Lar/com/hjg/pngj/ChunkReader;->crcn:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lar/com/hjg/pngj/ChunkReader;->crcCheck:Z

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lar/com/hjg/pngj/ChunkReader;->chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget-object v3, v1, Lar/com/hjg/pngj/chunks/ChunkRaw;->idbytes:[B

    invoke-virtual {v1, v3, v0, v2}, Lar/com/hjg/pngj/chunks/ChunkRaw;->updateCrc([BII)V

    .line 93
    :cond_1
    iget-object v1, p0, Lar/com/hjg/pngj/ChunkReader;->chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget v1, v1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    iget v3, p0, Lar/com/hjg/pngj/ChunkReader;->read:I

    sub-int/2addr v1, v3

    .line 94
    .local v1, "bytesForData":I
    if-le v1, p3, :cond_2

    .line 95
    move v1, p3

    .line 97
    :cond_2
    if-gtz v1, :cond_3

    iget v3, p0, Lar/com/hjg/pngj/ChunkReader;->crcn:I

    if-nez v3, :cond_7

    .line 99
    :cond_3
    iget-boolean v3, p0, Lar/com/hjg/pngj/ChunkReader;->crcCheck:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->mode:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    sget-object v4, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-eq v3, v4, :cond_4

    if-lez v1, :cond_4

    .line 100
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    invoke-virtual {v3, p1, p2, v1}, Lar/com/hjg/pngj/chunks/ChunkRaw;->updateCrc([BII)V

    .line 102
    :cond_4
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->mode:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    sget-object v4, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-ne v3, v4, :cond_5

    .line 104
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget-object v3, v3, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    if-eq v3, p1, :cond_6

    if-lez v1, :cond_6

    .line 106
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget-object v3, v3, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v4, p0, Lar/com/hjg/pngj/ChunkReader;->read:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 108
    :cond_5
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->mode:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    sget-object v4, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->PROCESS:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-ne v3, v4, :cond_6

    .line 109
    iget v3, p0, Lar/com/hjg/pngj/ChunkReader;->read:I

    invoke-virtual {p0, v3, p1, p2, v1}, Lar/com/hjg/pngj/ChunkReader;->processData(I[BII)V

    .line 113
    :cond_6
    :goto_0
    iget v3, p0, Lar/com/hjg/pngj/ChunkReader;->read:I

    add-int/2addr v3, v1

    iput v3, p0, Lar/com/hjg/pngj/ChunkReader;->read:I

    .line 114
    add-int/2addr p2, v1

    .line 115
    sub-int/2addr p3, v1

    .line 117
    :cond_7
    const/4 v3, 0x0

    .line 118
    .local v3, "crcRead":I
    iget v4, p0, Lar/com/hjg/pngj/ChunkReader;->read:I

    iget-object v5, p0, Lar/com/hjg/pngj/ChunkReader;->chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget v5, v5, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    if-ne v4, v5, :cond_c

    .line 119
    iget v4, p0, Lar/com/hjg/pngj/ChunkReader;->crcn:I

    rsub-int/lit8 v3, v4, 0x4

    .line 120
    if-le v3, p3, :cond_8

    .line 121
    move v3, p3

    .line 122
    :cond_8
    if-lez v3, :cond_c

    .line 123
    iget-object v4, p0, Lar/com/hjg/pngj/ChunkReader;->chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget-object v4, v4, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcval:[B

    if-eq p1, v4, :cond_9

    .line 124
    iget-object v4, p0, Lar/com/hjg/pngj/ChunkReader;->chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget-object v4, v4, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcval:[B

    iget v5, p0, Lar/com/hjg/pngj/ChunkReader;->crcn:I

    invoke-static {p1, p2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    :cond_9
    iget v4, p0, Lar/com/hjg/pngj/ChunkReader;->crcn:I

    add-int/2addr v4, v3

    iput v4, p0, Lar/com/hjg/pngj/ChunkReader;->crcn:I

    .line 126
    if-ne v4, v2, :cond_c

    .line 127
    iget-boolean v2, p0, Lar/com/hjg/pngj/ChunkReader;->crcCheck:Z

    if-eqz v2, :cond_b

    .line 128
    iget-object v2, p0, Lar/com/hjg/pngj/ChunkReader;->mode:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    sget-object v4, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-ne v2, v4, :cond_a

    .line 129
    iget-object v2, p0, Lar/com/hjg/pngj/ChunkReader;->chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget-object v4, v2, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget-object v5, p0, Lar/com/hjg/pngj/ChunkReader;->chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget v5, v5, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    invoke-virtual {v2, v4, v0, v5}, Lar/com/hjg/pngj/chunks/ChunkRaw;->updateCrc([BII)V

    .line 131
    :cond_a
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/ChunkRaw;->checkCrc()V

    .line 133
    :cond_b
    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkReader;->chunkDone()V

    .line 137
    :cond_c
    add-int v0, v1, v3

    return v0

    .line 90
    .end local v1    # "bytesForData":I
    .end local v3    # "crcRead":I
    :cond_d
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "negative length??"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 1

    .line 71
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 180
    const/16 v0, 0x1f

    .line 181
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 182
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lar/com/hjg/pngj/chunks/ChunkRaw;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 183
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public final isDone()Z
    .locals 2

    .line 146
    iget v0, p0, Lar/com/hjg/pngj/ChunkReader;->crcn:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract processData(I[BII)V
.end method

.method public setCrcCheck(Z)V
    .locals 2
    .param p1, "crcCheck"    # Z

    .line 155
    iget v0, p0, Lar/com/hjg/pngj/ChunkReader;->read:I

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkReader;->crcCheck:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string/jumbo v1, "too late!"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lar/com/hjg/pngj/ChunkReader;->crcCheck:Z

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->chunkRaw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/ChunkRaw;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
