.class public Lar/com/hjg/pngj/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"


# static fields
.field public static final MAX_COLS_ROW:I = 0x1000000


# instance fields
.field public final alpha:Z

.field public final bitDepth:I

.field public final bitspPixel:I

.field public final bytesPerRow:I

.field public final bytesPixel:I

.field public final channels:I

.field public final cols:I

.field public final greyscale:Z

.field public final indexed:Z

.field public final packed:Z

.field public final rows:I

.field public final samplesPerRow:I

.field public final samplesPerRowPacked:I

.field private totalPixels:J

.field private totalRawBytes:J


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 7
    .param p1, "cols"    # I
    .param p2, "rows"    # I
    .param p3, "bitdepth"    # I
    .param p4, "alpha"    # Z

    .line 99
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lar/com/hjg/pngj/ImageInfo;-><init>(IIIZZZ)V

    .line 100
    return-void
.end method

.method public constructor <init>(IIIZZZ)V
    .locals 8
    .param p1, "cols"    # I
    .param p2, "rows"    # I
    .param p3, "bitdepth"    # I
    .param p4, "alpha"    # Z
    .param p5, "grayscale"    # Z
    .param p6, "indexed"    # Z

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lar/com/hjg/pngj/ImageInfo;->totalPixels:J

    .line 93
    iput-wide v0, p0, Lar/com/hjg/pngj/ImageInfo;->totalRawBytes:J

    .line 114
    iput p1, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    .line 115
    iput p2, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    .line 116
    iput-boolean p4, p0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    .line 117
    iput-boolean p6, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    .line 118
    iput-boolean p5, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    .line 119
    if-eqz p5, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "palette and greyscale are mutually exclusive"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    :goto_0
    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p5, :cond_4

    if-eqz p6, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    const/4 v3, 0x3

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz p4, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    iput v3, p0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    .line 123
    iput p3, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    .line 124
    const/16 v3, 0x8

    if-ge p3, v3, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, p0, Lar/com/hjg/pngj/ImageInfo;->packed:Z

    .line 125
    iget v5, p0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    iget v6, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    mul-int/2addr v6, v5

    iput v6, p0, Lar/com/hjg/pngj/ImageInfo;->bitspPixel:I

    .line 126
    add-int/lit8 v7, v6, 0x7

    div-int/2addr v7, v3

    iput v7, p0, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    .line 127
    mul-int/2addr v6, p1

    add-int/lit8 v6, v6, 0x7

    div-int/2addr v6, v3

    iput v6, p0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    .line 128
    iget v7, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    mul-int/2addr v5, v7

    iput v5, p0, Lar/com/hjg/pngj/ImageInfo;->samplesPerRow:I

    .line 129
    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v6, v5

    :goto_4
    iput v6, p0, Lar/com/hjg/pngj/ImageInfo;->samplesPerRowPacked:I

    .line 131
    iget v4, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    if-eq v4, v2, :cond_b

    if-eq v4, v1, :cond_b

    if-eq v4, v0, :cond_b

    if-eq v4, v3, :cond_a

    const/16 v0, 0x10

    if-ne v4, v0, :cond_9

    .line 141
    iget-boolean v0, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_8

    goto :goto_5

    .line 142
    :cond_8
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "indexed can\'t have bitdepth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_9
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid bitdepth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_a
    goto :goto_5

    .line 135
    :cond_b
    iget-boolean v0, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v0, :cond_c

    goto :goto_5

    .line 136
    :cond_c
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "only indexed or grayscale can have bitdepth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_d
    :goto_5
    const-string v0, " ???"

    if-lt p1, v2, :cond_10

    const/high16 v1, 0x1000000

    if-gt p1, v1, :cond_10

    .line 149
    if-lt p2, v2, :cond_f

    if-gt p2, v1, :cond_f

    .line 151
    iget v0, p0, Lar/com/hjg/pngj/ImageInfo;->samplesPerRow:I

    if-lt v0, v2, :cond_e

    .line 153
    return-void

    .line 152
    :cond_e
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "invalid image parameters (overflow?)"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_f
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid rows="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_10
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid cols="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 208
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 209
    return v0

    .line 210
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 211
    return v1

    .line 212
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 213
    return v1

    .line 214
    :cond_2
    move-object v2, p1

    check-cast v2, Lar/com/hjg/pngj/ImageInfo;

    .line 215
    .local v2, "other":Lar/com/hjg/pngj/ImageInfo;
    iget-boolean v3, p0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    iget-boolean v4, v2, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eq v3, v4, :cond_3

    .line 216
    return v1

    .line 217
    :cond_3
    iget v3, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    iget v4, v2, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    if-eq v3, v4, :cond_4

    .line 218
    return v1

    .line 219
    :cond_4
    iget v3, p0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    iget v4, v2, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-eq v3, v4, :cond_5

    .line 220
    return v1

    .line 221
    :cond_5
    iget v3, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    iget v4, v2, Lar/com/hjg/pngj/ImageInfo;->cols:I

    if-eq v3, v4, :cond_6

    .line 222
    return v1

    .line 223
    :cond_6
    iget-boolean v3, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    iget-boolean v4, v2, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eq v3, v4, :cond_7

    .line 224
    return v1

    .line 225
    :cond_7
    iget-boolean v3, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    iget-boolean v4, v2, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eq v3, v4, :cond_8

    .line 226
    return v1

    .line 227
    :cond_8
    iget v3, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    iget v4, v2, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-eq v3, v4, :cond_9

    .line 228
    return v1

    .line 229
    :cond_9
    return v0
.end method

.method public getTotalPixels()J
    .locals 4

    .line 156
    iget-wide v0, p0, Lar/com/hjg/pngj/ImageInfo;->totalPixels:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 157
    iget v0, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    int-to-long v0, v0

    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/ImageInfo;->totalPixels:J

    .line 158
    :cond_0
    iget-wide v0, p0, Lar/com/hjg/pngj/ImageInfo;->totalPixels:J

    return-wide v0
.end method

.method public getTotalRawBytes()J
    .locals 4

    .line 165
    iget-wide v0, p0, Lar/com/hjg/pngj/ImageInfo;->totalRawBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 166
    iget v0, p0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/ImageInfo;->totalRawBytes:J

    .line 167
    :cond_0
    iget-wide v0, p0, Lar/com/hjg/pngj/ImageInfo;->totalRawBytes:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 194
    const/16 v0, 0x1f

    .line 195
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 196
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    const/16 v4, 0x4cf

    const/16 v5, 0x4d5

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    add-int/2addr v2, v3

    .line 197
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    add-int/2addr v1, v3

    .line 198
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    add-int/2addr v2, v3

    .line 199
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    add-int/2addr v1, v3

    .line 200
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    add-int/2addr v2, v3

    .line 201
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-boolean v3, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    add-int/2addr v1, v4

    .line 202
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    add-int/2addr v2, v3

    .line 203
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageInfo [cols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", greyscale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", indexed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringBrief()Ljava/lang/String;
    .locals 4

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const-string v2, ""

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "d"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v1, :cond_1

    const-string v1, "a"

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v1, :cond_2

    const-string v1, "p"

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v1, :cond_3

    const-string v2, "g"

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringDetail()Ljava/lang/String;
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageInfo [cols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitspPixel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->bitspPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bytesPixel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bytesPerRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", samplesPerRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->samplesPerRow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", samplesPerRowP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->samplesPerRowPacked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", greyscale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", indexed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", packed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->packed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
