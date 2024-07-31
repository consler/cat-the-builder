.class public Lar/com/hjg/pngj/DeflatedChunksSet;
.super Ljava/lang/Object;
.source "DeflatedChunksSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/DeflatedChunksSet$State;
    }
.end annotation


# instance fields
.field private callbackMode:Z

.field public final chunkid:Ljava/lang/String;

.field private curChunk:Lar/com/hjg/pngj/DeflatedChunkReader;

.field private inf:Ljava/util/zip/Inflater;

.field private final infOwn:Z

.field private nBytesIn:J

.field private nBytesOut:J

.field protected row:[B

.field private rowfilled:I

.field private rowlen:I

.field private rown:I

.field state:Lar/com/hjg/pngj/DeflatedChunksSet$State;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .param p1, "chunkid"    # Ljava/lang/String;
    .param p2, "initialRowLen"    # I
    .param p3, "maxRowLen"    # I

    .line 112
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/DeflatedChunksSet;-><init>(Ljava/lang/String;IILjava/util/zip/Inflater;[B)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/util/zip/Inflater;[B)V
    .locals 3
    .param p1, "chunkid"    # Ljava/lang/String;
    .param p2, "initialRowLen"    # I
    .param p3, "maxRowLen"    # I
    .param p4, "inflater"    # Ljava/util/zip/Inflater;
    .param p5, "buffer"    # [B

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;->WAITING_FOR_INPUT:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    iput-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->state:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->callbackMode:Z

    .line 73
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->nBytesIn:J

    .line 74
    iput-wide v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->nBytesOut:J

    .line 89
    iput-object p1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->chunkid:Ljava/lang/String;

    .line 90
    iput p2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowlen:I

    .line 91
    if-lt p2, v0, :cond_2

    if-lt p3, p2, :cond_2

    .line 93
    if-eqz p4, :cond_0

    .line 94
    iput-object p4, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->inf:Ljava/util/zip/Inflater;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->infOwn:Z

    goto :goto_0

    .line 97
    :cond_0
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->inf:Ljava/util/zip/Inflater;

    .line 98
    iput-boolean v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->infOwn:Z

    .line 100
    :goto_0
    if-eqz p5, :cond_1

    array-length v0, p5

    if-lt v0, p2, :cond_1

    move-object v0, p5

    goto :goto_1

    :cond_1
    new-array v0, p3, [B

    :goto_1
    iput-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->row:[B

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rown:I

    .line 102
    sget-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;->WAITING_FOR_INPUT:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    iput-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->state:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    .line 104
    :try_start_0
    invoke-virtual {p0, p2}, Lar/com/hjg/pngj/DeflatedChunksSet;->prepareForNextRow(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    nop

    .line 109
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->close()V

    .line 107
    throw v0

    .line 92
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad inital row len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private inflateData()Z
    .locals 7

    .line 165
    :try_start_0
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->state:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    sget-object v1, Lar/com/hjg/pngj/DeflatedChunksSet$State;->ROW_READY:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    if-eq v0, v1, :cond_8

    .line 167
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->state:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    invoke-virtual {v0}, Lar/com/hjg/pngj/DeflatedChunksSet$State;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 168
    return v1

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 170
    .local v0, "ninflated":I
    iget-object v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->row:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->row:[B

    array-length v2, v2

    iget v3, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowlen:I

    if-ge v2, v3, :cond_2

    .line 171
    :cond_1
    iget v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowlen:I

    new-array v2, v2, [B

    iput-object v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->row:[B

    .line 172
    :cond_2
    iget v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowfilled:I

    iget v3, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowlen:I

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_3

    .line 174
    :try_start_1
    iget-object v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->inf:Ljava/util/zip/Inflater;

    iget-object v3, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->row:[B

    iget v4, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowfilled:I

    iget v5, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowlen:I

    iget v6, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowfilled:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    .line 177
    nop

    .line 178
    :try_start_2
    iget v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowfilled:I

    add-int/2addr v2, v0

    iput v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowfilled:I

    .line 179
    iget-wide v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->nBytesOut:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->nBytesOut:J

    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/util/zip/DataFormatException;
    new-instance v2, Lar/com/hjg/pngj/PngjInputException;

    const-string v3, "error decompressing zlib stream "

    invoke-direct {v2, v3, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 181
    .end local v1    # "e":Ljava/util/zip/DataFormatException;
    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 182
    .local v2, "nextstate":Lar/com/hjg/pngj/DeflatedChunksSet$State;
    iget v3, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowfilled:I

    iget v4, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowlen:I

    if-ne v3, v4, :cond_4

    .line 183
    sget-object v3, Lar/com/hjg/pngj/DeflatedChunksSet$State;->ROW_READY:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    move-object v2, v3

    goto :goto_1

    .line 184
    :cond_4
    iget-object v3, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 185
    sget-object v3, Lar/com/hjg/pngj/DeflatedChunksSet$State;->WAITING_FOR_INPUT:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    move-object v2, v3

    goto :goto_1

    .line 186
    :cond_5
    iget v3, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowfilled:I

    if-lez v3, :cond_6

    .line 187
    sget-object v3, Lar/com/hjg/pngj/DeflatedChunksSet$State;->ROW_READY:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    move-object v2, v3

    goto :goto_1

    .line 189
    :cond_6
    sget-object v3, Lar/com/hjg/pngj/DeflatedChunksSet$State;->WORK_DONE:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    move-object v2, v3

    .line 191
    :goto_1
    iput-object v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->state:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    .line 192
    sget-object v3, Lar/com/hjg/pngj/DeflatedChunksSet$State;->ROW_READY:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    if-ne v2, v3, :cond_7

    .line 193
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->preProcessRow()V

    .line 194
    const/4 v1, 0x1

    return v1

    .line 199
    .end local v0    # "ninflated":I
    .end local v2    # "nextstate":Lar/com/hjg/pngj/DeflatedChunksSet$State;
    :cond_7
    nop

    .line 200
    return v1

    .line 166
    :cond_8
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "invalid state"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 196
    :catch_1
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->close()V

    .line 198
    throw v0
.end method


# virtual methods
.method public ackNextChunkId(Ljava/lang/String;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->state:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    invoke-virtual {v0}, Lar/com/hjg/pngj/DeflatedChunksSet$State;->isTerminated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 302
    return v1

    .line 303
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->chunkid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 304
    return v2

    .line 306
    :cond_1
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/DeflatedChunksSet;->allowOtherChunksInBetween(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 307
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->state:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    invoke-virtual {v0}, Lar/com/hjg/pngj/DeflatedChunksSet$State;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 309
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->terminate()V

    .line 310
    :cond_2
    return v1

    .line 312
    :cond_3
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected chunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->chunkid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " set is not done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_4
    return v2
.end method

.method public allowOtherChunksInBetween(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method protected appendNewChunk(Lar/com/hjg/pngj/DeflatedChunkReader;)V
    .locals 3
    .param p1, "cr"    # Lar/com/hjg/pngj/DeflatedChunkReader;

    .line 117
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->chunkid:Ljava/lang/String;

    invoke-virtual {p1}, Lar/com/hjg/pngj/DeflatedChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iput-object p1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->curChunk:Lar/com/hjg/pngj/DeflatedChunkReader;

    .line 121
    return-void

    .line 118
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad chunk inside IdatSet, id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lar/com/hjg/pngj/DeflatedChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v2

    iget-object v2, v2, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->chunkid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 330
    :try_start_0
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->state:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    invoke-virtual {v0}, Lar/com/hjg/pngj/DeflatedChunksSet$State;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    sget-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;->TERMINATED:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    iput-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->state:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    .line 333
    :cond_0
    iget-boolean v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->infOwn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->inf:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->inf:Ljava/util/zip/Inflater;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :cond_1
    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 339
    :goto_0
    return-void
.end method

.method public done()V
    .locals 1

    .line 346
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    sget-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;->WORK_DONE:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    iput-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->state:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    .line 348
    :cond_0
    return-void
.end method

.method public getBytesIn()J
    .locals 2

    .line 399
    iget-wide v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->nBytesIn:J

    return-wide v0
.end method

.method public getBytesOut()J
    .locals 2

    .line 404
    iget-wide v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->nBytesOut:J

    return-wide v0
.end method

.method public getInflatedRow()[B
    .locals 1

    .line 235
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->row:[B

    return-object v0
.end method

.method public getRowFilled()I
    .locals 1

    .line 360
    iget v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowfilled:I

    return v0
.end method

.method public getRowLen()I
    .locals 1

    .line 355
    iget v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowlen:I

    return v0
.end method

.method public getRown()I
    .locals 1

    .line 371
    iget v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rown:I

    return v0
.end method

.method public isCallbackMode()Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->callbackMode:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 288
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->state:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    invoke-virtual {v0}, Lar/com/hjg/pngj/DeflatedChunksSet$State;->isDone()Z

    move-result v0

    return v0
.end method

.method public isRowReady()Z
    .locals 2

    .line 279
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->state:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    sget-object v1, Lar/com/hjg/pngj/DeflatedChunksSet$State;->ROW_READY:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 292
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->state:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    invoke-virtual {v0}, Lar/com/hjg/pngj/DeflatedChunksSet$State;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public isWaitingForMoreInput()Z
    .locals 2

    .line 270
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->state:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    sget-object v1, Lar/com/hjg/pngj/DeflatedChunksSet$State;->WAITING_FOR_INPUT:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected preProcessRow()V
    .locals 0

    .line 208
    return-void
.end method

.method public prepareForNextRow(I)V
    .locals 3
    .param p1, "len"    # I

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowfilled:I

    .line 249
    iget v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rown:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rown:I

    .line 250
    if-ge p1, v2, :cond_0

    .line 251
    iput v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowlen:I

    .line 252
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->done()V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    iput v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowlen:I

    .line 255
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->done()V

    goto :goto_0

    .line 257
    :cond_1
    sget-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;->WAITING_FOR_INPUT:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    iput-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->state:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    .line 258
    iput p1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rowlen:I

    .line 259
    iget-boolean v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->callbackMode:Z

    if-nez v0, :cond_2

    .line 260
    invoke-direct {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->inflateData()Z

    .line 262
    :cond_2
    :goto_0
    return-void
.end method

.method protected processBytes([BII)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 134
    iget-wide v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->nBytesIn:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->nBytesIn:J

    .line 136
    const/4 v0, 0x1

    if-lt p3, v0, :cond_6

    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->state:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    invoke-virtual {v0}, Lar/com/hjg/pngj/DeflatedChunksSet$State;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->state:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    sget-object v1, Lar/com/hjg/pngj/DeflatedChunksSet$State;->ROW_READY:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    if-eq v0, v1, :cond_5

    .line 140
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 145
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->isCallbackMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    :goto_0
    invoke-direct {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->inflateData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->processRowCallback()I

    move-result v0

    .line 148
    .local v0, "nextRowLen":I
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/DeflatedChunksSet;->prepareForNextRow(I)V

    .line 149
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->processDoneCallback()V

    .line 151
    .end local v0    # "nextRowLen":I
    :cond_1
    goto :goto_0

    .line 153
    :cond_2
    invoke-direct {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->inflateData()Z

    .line 154
    :cond_3
    return-void

    .line 141
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should not happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_5
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "this should only be called if waitingForMoreInput"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_6
    :goto_1
    return-void
.end method

.method protected processDoneCallback()V
    .locals 0

    .line 227
    return-void
.end method

.method protected processRowCallback()I
    .locals 2

    .line 218
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCallbackMode(Z)V
    .locals 0
    .param p1, "callbackMode"    # Z

    .line 394
    iput-boolean p1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->callbackMode:Z

    .line 395
    return-void
.end method

.method protected terminate()V
    .locals 0

    .line 321
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->close()V

    .line 322
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idatSet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->curChunk:Lar/com/hjg/pngj/DeflatedChunkReader;

    invoke-virtual {v2}, Lar/com/hjg/pngj/DeflatedChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v2

    iget-object v2, v2, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->state:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " rows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->rown:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->nBytesIn:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->nBytesOut:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
