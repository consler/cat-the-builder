.class public Lar/com/hjg/pngj/chunks/PngChunkTIME;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "PngChunkTIME.java"


# static fields
.field public static final ID:Ljava/lang/String; = "tIME"


# instance fields
.field private day:I

.field private hour:I

.field private min:I

.field private mon:I

.field private sec:I

.field private year:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/ImageInfo;

    .line 21
    const-string v0, "tIME"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 22
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 4

    .line 31
    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkTIME;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 32
    .local v0, "c":Lar/com/hjg/pngj/chunks/ChunkRaw;
    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->year:I

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2tobytes(I[BI)V

    .line 33
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->mon:I

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    .line 34
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->day:I

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    .line 35
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->hour:I

    int-to-byte v2, v2

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    .line 36
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->min:I

    int-to-byte v2, v2

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    .line 37
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->sec:I

    int-to-byte v2, v2

    const/4 v3, 0x6

    aput-byte v2, v1, v3

    .line 38
    return-object v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 3

    .line 79
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->year:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->mon:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->day:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->min:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->sec:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "%04d/%02d/%02d %02d:%02d:%02d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 26
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NONE:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public getYMDHMS()[I
    .locals 3

    .line 74
    const/4 v0, 0x6

    new-array v0, v0, [I

    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->year:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->mon:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->day:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->hour:I

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->min:I

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->sec:I

    const/4 v2, 0x5

    aput v1, v0, v2

    return-object v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 3
    .param p1, "chunk"    # Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 43
    iget v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->year:I

    .line 46
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->mon:I

    .line 47
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->day:I

    .line 48
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->hour:I

    .line 49
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->min:I

    .line 50
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->sec:I

    .line 51
    return-void

    .line 44
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad chunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNow(I)V
    .locals 7
    .param p1, "secsAgo"    # I

    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 55
    .local v0, "d":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->year:I

    .line 57
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->mon:I

    .line 58
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->day:I

    .line 59
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->hour:I

    .line 60
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->min:I

    .line 61
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->sec:I

    .line 62
    return-void
.end method

.method public setYMDHMS(IIIIII)V
    .locals 0
    .param p1, "yearx"    # I
    .param p2, "monx"    # I
    .param p3, "dayx"    # I
    .param p4, "hourx"    # I
    .param p5, "minx"    # I
    .param p6, "secx"    # I

    .line 65
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->year:I

    .line 66
    iput p2, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->mon:I

    .line 67
    iput p3, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->day:I

    .line 68
    iput p4, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->hour:I

    .line 69
    iput p5, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->min:I

    .line 70
    iput p6, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->sec:I

    .line 71
    return-void
.end method
