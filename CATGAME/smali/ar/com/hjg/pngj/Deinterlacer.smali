.class public Lar/com/hjg/pngj/Deinterlacer;
.super Ljava/lang/Object;
.source "Deinterlacer.java"


# instance fields
.field private cols:I

.field private currRowReal:I

.field private currRowSeq:I

.field private currRowSubimg:I

.field dX:I

.field dXsamples:I

.field dY:I

.field private ended:Z

.field final imi:Lar/com/hjg/pngj/ImageInfo;

.field oX:I

.field oXsamples:I

.field oY:I

.field private pass:I

.field private rows:I

.field totalRows:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lar/com/hjg/pngj/Deinterlacer;->currRowSubimg:I

    .line 13
    iput v0, p0, Lar/com/hjg/pngj/Deinterlacer;->currRowReal:I

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lar/com/hjg/pngj/Deinterlacer;->totalRows:I

    .line 17
    iput-boolean v0, p0, Lar/com/hjg/pngj/Deinterlacer;->ended:Z

    .line 20
    iput-object p1, p0, Lar/com/hjg/pngj/Deinterlacer;->imi:Lar/com/hjg/pngj/ImageInfo;

    .line 21
    iput v0, p0, Lar/com/hjg/pngj/Deinterlacer;->pass:I

    .line 22
    iput v0, p0, Lar/com/hjg/pngj/Deinterlacer;->currRowSeq:I

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/Deinterlacer;->setPass(I)V

    .line 24
    invoke-direct {p0, v0}, Lar/com/hjg/pngj/Deinterlacer;->setRow(I)V

    return-void
.end method

.method static paramsForPass(I)[B
    .locals 3

    const/4 v0, 0x4

    packed-switch p0, :pswitch_data_0

    .line 93
    new-instance v0, Lar/com/hjg/pngj/PngjExceptionInternal;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad interlace pass"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-array p0, v0, [B

    .line 91
    fill-array-data p0, :array_0

    return-object p0

    :pswitch_1
    new-array p0, v0, [B

    .line 89
    fill-array-data p0, :array_1

    return-object p0

    :pswitch_2
    new-array p0, v0, [B

    .line 87
    fill-array-data p0, :array_2

    return-object p0

    :pswitch_3
    new-array p0, v0, [B

    .line 85
    fill-array-data p0, :array_3

    return-object p0

    :pswitch_4
    new-array p0, v0, [B

    .line 83
    fill-array-data p0, :array_4

    return-object p0

    :pswitch_5
    new-array p0, v0, [B

    .line 81
    fill-array-data p0, :array_5

    return-object p0

    :pswitch_6
    new-array p0, v0, [B

    .line 79
    fill-array-data p0, :array_6

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x2t
        0x2t
        0x1t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x2t
        0x4t
        0x0t
        0x2t
    .end array-data

    :array_3
    .array-data 1
        0x4t
        0x4t
        0x2t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x4t
        0x8t
        0x0t
        0x4t
    .end array-data

    :array_5
    .array-data 1
        0x8t
        0x8t
        0x4t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x8t
        0x8t
        0x0t
        0x0t
    .end array-data
.end method

.method private setRow(I)V
    .locals 1

    .line 29
    iput p1, p0, Lar/com/hjg/pngj/Deinterlacer;->currRowSubimg:I

    .line 30
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->dY:I

    mul-int/2addr p1, v0

    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->oY:I

    add-int/2addr p1, v0

    iput p1, p0, Lar/com/hjg/pngj/Deinterlacer;->currRowReal:I

    if-ltz p1, :cond_0

    .line 31
    iget-object v0, p0, Lar/com/hjg/pngj/Deinterlacer;->imi:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-ge p1, v0, :cond_0

    return-void

    .line 32
    :cond_0
    new-instance p1, Lar/com/hjg/pngj/PngjExceptionInternal;

    const-string v0, "bad row - this should not happen"

    invoke-direct {p1, v0}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBytesToRead()I
    .locals 2

    .line 137
    iget-object v0, p0, Lar/com/hjg/pngj/Deinterlacer;->imi:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitspPixel:I

    invoke-virtual {p0}, Lar/com/hjg/pngj/Deinterlacer;->getPixelsToRead()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method getCols()I
    .locals 1

    .line 129
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->cols:I

    return v0
.end method

.method getCurrRowReal()I
    .locals 1

    .line 108
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->currRowReal:I

    return v0
.end method

.method public getCurrRowSeq()I
    .locals 1

    .line 192
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->currRowSeq:I

    return v0
.end method

.method getCurrRowSubimg()I
    .locals 1

    .line 101
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->currRowSubimg:I

    return v0
.end method

.method getPass()I
    .locals 1

    .line 115
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->pass:I

    return v0
.end method

.method public getPixelsToRead()I
    .locals 1

    .line 133
    invoke-virtual {p0}, Lar/com/hjg/pngj/Deinterlacer;->getCols()I

    move-result v0

    return v0
.end method

.method getRows()I
    .locals 1

    .line 122
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->rows:I

    return v0
.end method

.method public getTotalRawBytes()J
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/4 v4, 0x7

    if-gt v3, v4, :cond_3

    .line 181
    invoke-static {v3}, Lar/com/hjg/pngj/Deinterlacer;->paramsForPass(I)[B

    move-result-object v5

    .line 182
    iget-object v6, p0, Lar/com/hjg/pngj/Deinterlacer;->imi:Lar/com/hjg/pngj/ImageInfo;

    iget v6, v6, Lar/com/hjg/pngj/ImageInfo;->rows:I

    const/4 v7, 0x3

    aget-byte v8, v5, v7

    const/4 v9, 0x0

    if-le v6, v8, :cond_0

    iget-object v6, p0, Lar/com/hjg/pngj/Deinterlacer;->imi:Lar/com/hjg/pngj/ImageInfo;

    iget v6, v6, Lar/com/hjg/pngj/ImageInfo;->rows:I

    aget-byte v8, v5, v2

    add-int/2addr v6, v8

    sub-int/2addr v6, v2

    aget-byte v7, v5, v7

    sub-int/2addr v6, v7

    div-int/2addr v6, v8

    goto :goto_1

    :cond_0
    move v6, v9

    .line 183
    :goto_1
    iget-object v7, p0, Lar/com/hjg/pngj/Deinterlacer;->imi:Lar/com/hjg/pngj/ImageInfo;

    iget v7, v7, Lar/com/hjg/pngj/ImageInfo;->cols:I

    const/4 v8, 0x2

    aget-byte v10, v5, v8

    if-le v7, v10, :cond_1

    iget-object v7, p0, Lar/com/hjg/pngj/Deinterlacer;->imi:Lar/com/hjg/pngj/ImageInfo;

    iget v7, v7, Lar/com/hjg/pngj/ImageInfo;->cols:I

    aget-byte v9, v5, v9

    add-int/2addr v7, v9

    sub-int/2addr v7, v2

    aget-byte v5, v5, v8

    sub-int/2addr v7, v5

    div-int v9, v7, v9

    .line 184
    :cond_1
    iget-object v5, p0, Lar/com/hjg/pngj/Deinterlacer;->imi:Lar/com/hjg/pngj/ImageInfo;

    iget v5, v5, Lar/com/hjg/pngj/ImageInfo;->bitspPixel:I

    mul-int/2addr v5, v9

    add-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x8

    if-lez v6, :cond_2

    if-lez v9, :cond_2

    int-to-long v6, v6

    const-wide/16 v8, 0x1

    int-to-long v4, v5

    add-long/2addr v4, v8

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-wide v0
.end method

.method public getTotalRows()I
    .locals 8

    .line 163
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->totalRows:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-gt v1, v2, :cond_3

    .line 165
    invoke-static {v1}, Lar/com/hjg/pngj/Deinterlacer;->paramsForPass(I)[B

    move-result-object v2

    .line 166
    iget-object v3, p0, Lar/com/hjg/pngj/Deinterlacer;->imi:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->rows:I

    const/4 v4, 0x3

    aget-byte v5, v2, v4

    const/4 v6, 0x0

    if-le v3, v5, :cond_0

    iget-object v3, p0, Lar/com/hjg/pngj/Deinterlacer;->imi:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->rows:I

    aget-byte v5, v2, v0

    add-int/2addr v3, v5

    sub-int/2addr v3, v0

    aget-byte v4, v2, v4

    sub-int/2addr v3, v4

    div-int/2addr v3, v5

    goto :goto_1

    :cond_0
    move v3, v6

    .line 167
    :goto_1
    iget-object v4, p0, Lar/com/hjg/pngj/Deinterlacer;->imi:Lar/com/hjg/pngj/ImageInfo;

    iget v4, v4, Lar/com/hjg/pngj/ImageInfo;->cols:I

    const/4 v5, 0x2

    aget-byte v7, v2, v5

    if-le v4, v7, :cond_1

    iget-object v4, p0, Lar/com/hjg/pngj/Deinterlacer;->imi:Lar/com/hjg/pngj/ImageInfo;

    iget v4, v4, Lar/com/hjg/pngj/ImageInfo;->cols:I

    aget-byte v6, v2, v6

    add-int/2addr v4, v6

    sub-int/2addr v4, v0

    aget-byte v2, v2, v5

    sub-int/2addr v4, v2

    div-int v6, v4, v6

    :cond_1
    if-lez v3, :cond_2

    if-lez v6, :cond_2

    .line 169
    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->totalRows:I

    add-int/2addr v2, v3

    iput v2, p0, Lar/com/hjg/pngj/Deinterlacer;->totalRows:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_3
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->totalRows:I

    return v0
.end method

.method public getdX()I
    .locals 1

    .line 148
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->dX:I

    return v0
.end method

.method public getdY()I
    .locals 1

    .line 141
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->dY:I

    return v0
.end method

.method public getoX()I
    .locals 1

    .line 159
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->oX:I

    return v0
.end method

.method public getoY()I
    .locals 1

    .line 152
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->oY:I

    return v0
.end method

.method isEnded()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lar/com/hjg/pngj/Deinterlacer;->ended:Z

    return v0
.end method

.method nextRow()Z
    .locals 4

    .line 37
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->currRowSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lar/com/hjg/pngj/Deinterlacer;->currRowSeq:I

    .line 38
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->rows:I

    if-eqz v0, :cond_1

    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->currRowSubimg:I

    sub-int/2addr v0, v1

    if-lt v2, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v2, v1

    .line 50
    invoke-direct {p0, v2}, Lar/com/hjg/pngj/Deinterlacer;->setRow(I)V

    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->pass:I

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 40
    iput-boolean v1, p0, Lar/com/hjg/pngj/Deinterlacer;->ended:Z

    return v3

    :cond_2
    add-int/2addr v0, v1

    .line 43
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/Deinterlacer;->setPass(I)V

    .line 44
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->rows:I

    if-nez v0, :cond_3

    .line 45
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->currRowSeq:I

    sub-int/2addr v0, v1

    iput v0, p0, Lar/com/hjg/pngj/Deinterlacer;->currRowSeq:I

    .line 46
    invoke-virtual {p0}, Lar/com/hjg/pngj/Deinterlacer;->nextRow()Z

    move-result v0

    return v0

    .line 48
    :cond_3
    invoke-direct {p0, v3}, Lar/com/hjg/pngj/Deinterlacer;->setRow(I)V

    :goto_1
    return v1
.end method

.method setPass(I)V
    .locals 4

    .line 60
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->pass:I

    if-ne v0, p1, :cond_0

    return-void

    .line 62
    :cond_0
    iput p1, p0, Lar/com/hjg/pngj/Deinterlacer;->pass:I

    .line 63
    invoke-static {p1}, Lar/com/hjg/pngj/Deinterlacer;->paramsForPass(I)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 64
    aget-byte v1, p1, v0

    iput v1, p0, Lar/com/hjg/pngj/Deinterlacer;->dX:I

    const/4 v1, 0x1

    .line 65
    aget-byte v2, p1, v1

    iput v2, p0, Lar/com/hjg/pngj/Deinterlacer;->dY:I

    const/4 v2, 0x2

    .line 66
    aget-byte v2, p1, v2

    iput v2, p0, Lar/com/hjg/pngj/Deinterlacer;->oX:I

    const/4 v2, 0x3

    .line 67
    aget-byte p1, p1, v2

    iput p1, p0, Lar/com/hjg/pngj/Deinterlacer;->oY:I

    .line 68
    iget-object p1, p0, Lar/com/hjg/pngj/Deinterlacer;->imi:Lar/com/hjg/pngj/ImageInfo;

    iget p1, p1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->oY:I

    if-le p1, v2, :cond_1

    iget-object p1, p0, Lar/com/hjg/pngj/Deinterlacer;->imi:Lar/com/hjg/pngj/ImageInfo;

    iget p1, p1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->dY:I

    add-int/2addr p1, v2

    sub-int/2addr p1, v1

    iget v3, p0, Lar/com/hjg/pngj/Deinterlacer;->oY:I

    sub-int/2addr p1, v3

    div-int/2addr p1, v2

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput p1, p0, Lar/com/hjg/pngj/Deinterlacer;->rows:I

    .line 69
    iget-object p1, p0, Lar/com/hjg/pngj/Deinterlacer;->imi:Lar/com/hjg/pngj/ImageInfo;

    iget p1, p1, Lar/com/hjg/pngj/ImageInfo;->cols:I

    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->oX:I

    if-le p1, v2, :cond_2

    iget-object p1, p0, Lar/com/hjg/pngj/Deinterlacer;->imi:Lar/com/hjg/pngj/ImageInfo;

    iget p1, p1, Lar/com/hjg/pngj/ImageInfo;->cols:I

    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->dX:I

    add-int/2addr p1, v2

    sub-int/2addr p1, v1

    iget v1, p0, Lar/com/hjg/pngj/Deinterlacer;->oX:I

    sub-int/2addr p1, v1

    div-int/2addr p1, v2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    iput p1, p0, Lar/com/hjg/pngj/Deinterlacer;->cols:I

    if-nez p1, :cond_3

    .line 71
    iput v0, p0, Lar/com/hjg/pngj/Deinterlacer;->rows:I

    .line 72
    :cond_3
    iget p1, p0, Lar/com/hjg/pngj/Deinterlacer;->dX:I

    iget-object v0, p0, Lar/com/hjg/pngj/Deinterlacer;->imi:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr p1, v0

    iput p1, p0, Lar/com/hjg/pngj/Deinterlacer;->dXsamples:I

    .line 73
    iget p1, p0, Lar/com/hjg/pngj/Deinterlacer;->oX:I

    iget-object v0, p0, Lar/com/hjg/pngj/Deinterlacer;->imi:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr p1, v0

    iput p1, p0, Lar/com/hjg/pngj/Deinterlacer;->oXsamples:I

    return-void
.end method
