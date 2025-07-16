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

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 99
    invoke-direct/range {v0 .. v6}, Lar/com/hjg/pngj/ImageInfo;-><init>(IIIZZZ)V

    return-void
.end method

.method public constructor <init>(IIIZZZ)V
    .locals 7

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 91
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

    if-eqz p5, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string p2, "palette and greyscale are mutually exclusive"

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1

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

    move p4, v0

    goto :goto_2

    :cond_3
    const/4 p4, 0x3

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz p4, :cond_5

    move p4, v1

    goto :goto_2

    :cond_5
    move p4, v2

    .line 121
    :goto_2
    iput p4, p0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    .line 123
    iput p3, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v3, 0x8

    if-ge p3, v3, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    .line 124
    :goto_3
    iput-boolean v4, p0, Lar/com/hjg/pngj/ImageInfo;->packed:Z

    mul-int v5, p4, p3

    .line 125
    iput v5, p0, Lar/com/hjg/pngj/ImageInfo;->bitspPixel:I

    add-int/lit8 v6, v5, 0x7

    .line 126
    div-int/2addr v6, v3

    iput v6, p0, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    mul-int/2addr v5, p1

    add-int/lit8 v5, v5, 0x7

    .line 127
    div-int/2addr v5, v3

    iput v5, p0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    mul-int/2addr p4, p1

    .line 128
    iput p4, p0, Lar/com/hjg/pngj/ImageInfo;->samplesPerRow:I

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v5, p4

    .line 129
    :goto_4
    iput v5, p0, Lar/com/hjg/pngj/ImageInfo;->samplesPerRowPacked:I

    if-eq p3, v2, :cond_a

    if-eq p3, v1, :cond_a

    if-eq p3, v0, :cond_a

    if-eq p3, v3, :cond_c

    const/16 p5, 0x10

    if-ne p3, p5, :cond_9

    if-nez p6, :cond_8

    goto :goto_5

    .line 142
    :cond_8
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "indexed can\'t have bitdepth="

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_9
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "invalid bitdepth="

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    if-nez p6, :cond_c

    if-eqz p5, :cond_b

    goto :goto_5

    .line 136
    :cond_b
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "only indexed or grayscale can have bitdepth="

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_5
    const-string p3, " ???"

    if-lt p1, v2, :cond_f

    const/high16 p5, 0x1000000

    if-gt p1, p5, :cond_f

    if-lt p2, v2, :cond_e

    if-gt p2, p5, :cond_e

    if-lt p4, v2, :cond_d

    return-void

    .line 152
    :cond_d
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string p2, "invalid image parameters (overflow?)"

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_e
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "invalid rows="

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_f
    new-instance p2, Lar/com/hjg/pngj/PngjException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "invalid cols="

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 212
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 214
    :cond_2
    check-cast p1, Lar/com/hjg/pngj/ImageInfo;

    .line 215
    iget-boolean v2, p0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    iget-boolean v3, p1, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 217
    :cond_3
    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    iget v3, p1, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    if-eq v2, v3, :cond_4

    return v1

    .line 219
    :cond_4
    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    iget v3, p1, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-eq v2, v3, :cond_5

    return v1

    .line 221
    :cond_5
    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    iget v3, p1, Lar/com/hjg/pngj/ImageInfo;->cols:I

    if-eq v2, v3, :cond_6

    return v1

    .line 223
    :cond_6
    iget-boolean v2, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    iget-boolean v3, p1, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 225
    :cond_7
    iget-boolean v2, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    iget-boolean v3, p1, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 227
    :cond_8
    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    iget p1, p1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-eq v2, p1, :cond_9

    return v1

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
    .locals 5

    .line 196
    iget-boolean v0, p0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    const/16 v1, 0x4cf

    const/16 v2, 0x4d5

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v3, 0x1f

    add-int/2addr v0, v3

    mul-int/2addr v0, v3

    .line 197
    iget v4, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    add-int/2addr v0, v4

    mul-int/2addr v0, v3

    .line 198
    iget v4, p0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    add-int/2addr v0, v4

    mul-int/2addr v0, v3

    .line 199
    iget v4, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    add-int/2addr v0, v4

    mul-int/2addr v0, v3

    .line 200
    iget-boolean v4, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    add-int/2addr v0, v4

    mul-int/2addr v0, v3

    .line 201
    iget-boolean v4, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    .line 202
    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageInfo [cols="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", greyscale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", indexed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v2, 0x8

    const-string v3, ""

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "d"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v1, :cond_1

    const-string v1, "a"

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v1, :cond_2

    const-string v1, "p"

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v1, :cond_3

    const-string v3, "g"

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringDetail()Ljava/lang/String;
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageInfo [cols="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitspPixel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->bitspPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytesPixel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytesPerRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", samplesPerRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->samplesPerRow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", samplesPerRowP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->samplesPerRowPacked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", greyscale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", indexed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->packed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
