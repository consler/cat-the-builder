.class public Lar/com/hjg/pngj/IdatSet;
.super Lar/com/hjg/pngj/DeflatedChunksSet;
.source "IdatSet.java"


# instance fields
.field protected final deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

.field protected filterUseStat:[I

.field protected final imgInfo:Lar/com/hjg/pngj/ImageInfo;

.field protected rowUnfiltered:[B

.field protected rowUnfilteredPrev:[B

.field final rowinfo:Lar/com/hjg/pngj/RowInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;Lar/com/hjg/pngj/Deinterlacer;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "iminfo"    # Lar/com/hjg/pngj/ImageInfo;
    .param p3, "deinterlacer"    # Lar/com/hjg/pngj/Deinterlacer;

    .line 30
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/IdatSet;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;Lar/com/hjg/pngj/Deinterlacer;Ljava/util/zip/Inflater;[B)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;Lar/com/hjg/pngj/Deinterlacer;Ljava/util/zip/Inflater;[B)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "iminfo"    # Lar/com/hjg/pngj/ImageInfo;
    .param p3, "deinterlacer"    # Lar/com/hjg/pngj/Deinterlacer;
    .param p4, "inf"    # Ljava/util/zip/Inflater;
    .param p5, "buffer"    # [B

    .line 41
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lar/com/hjg/pngj/Deinterlacer;->getBytesToRead()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p2, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    move v3, v0

    iget v0, p2, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    add-int/lit8 v4, v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lar/com/hjg/pngj/DeflatedChunksSet;-><init>(Ljava/lang/String;IILjava/util/zip/Inflater;[B)V

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lar/com/hjg/pngj/IdatSet;->filterUseStat:[I

    .line 43
    iput-object p2, p0, Lar/com/hjg/pngj/IdatSet;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 44
    iput-object p3, p0, Lar/com/hjg/pngj/IdatSet;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    .line 45
    new-instance v0, Lar/com/hjg/pngj/RowInfo;

    invoke-direct {v0, p2, p3}, Lar/com/hjg/pngj/RowInfo;-><init>(Lar/com/hjg/pngj/ImageInfo;Lar/com/hjg/pngj/Deinterlacer;)V

    iput-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowinfo:Lar/com/hjg/pngj/RowInfo;

    .line 46
    return-void
.end method

.method private unfilterRowAverage(I)V
    .locals 6
    .param p1, "nbytes"    # I

    .line 98
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    rsub-int/lit8 v0, v0, 0x1

    .local v0, "j":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, p1, :cond_1

    .line 99
    if-lez v0, :cond_0

    iget-object v2, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 100
    .local v2, "x":I
    :goto_1
    iget-object v3, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    iget-object v4, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    aget-byte v4, v4, v1

    iget-object v5, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfilteredPrev:[B

    aget-byte v5, v5, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 98
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v2    # "x":I
    :cond_1
    return-void
.end method

.method private unfilterRowNone(I)V
    .locals 3
    .param p1, "nbytes"    # I

    .line 105
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_0

    .line 106
    iget-object v1, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    iget-object v2, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    aget-byte v2, v2, v0

    aput-byte v2, v1, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private unfilterRowPaeth(I)V
    .locals 7
    .param p1, "nbytes"    # I

    .line 112
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    rsub-int/lit8 v0, v0, 0x1

    .local v0, "j":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, p1, :cond_2

    .line 113
    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v3, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    goto :goto_1

    :cond_0
    move v3, v2

    .line 114
    .local v3, "x":I
    :goto_1
    if-lez v0, :cond_1

    iget-object v2, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfilteredPrev:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    .line 115
    .local v2, "y":I
    :cond_1
    iget-object v4, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    iget-object v5, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    aget-byte v5, v5, v1

    iget-object v6, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfilteredPrev:[B

    aget-byte v6, v6, v1

    and-int/lit16 v6, v6, 0xff

    invoke-static {v3, v6, v2}, Lar/com/hjg/pngj/PngHelperInternal;->filterPaethPredictor(III)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 112
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "y":I
    .end local v3    # "x":I
    :cond_2
    return-void
.end method

.method private unfilterRowSub(I)V
    .locals 5
    .param p1, "nbytes"    # I

    .line 123
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lar/com/hjg/pngj/IdatSet;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    if-gt v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    iget-object v2, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    aget-byte v2, v2, v0

    aput-byte v2, v1, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    const/4 v1, 0x1

    .local v1, "j":I
    iget-object v2, p0, Lar/com/hjg/pngj/IdatSet;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    add-int/lit8 v2, v2, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    :goto_1
    if-gt v2, p1, :cond_1

    .line 127
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    iget-object v3, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    aget-byte v3, v3, v2

    iget-object v4, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    aget-byte v4, v4, v1

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 126
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    :cond_1
    return-void
.end method

.method private unfilterRowUp(I)V
    .locals 4
    .param p1, "nbytes"    # I

    .line 132
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_0

    .line 133
    iget-object v1, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    iget-object v2, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    aget-byte v2, v2, v0

    iget-object v3, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfilteredPrev:[B

    aget-byte v3, v3, v0

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public advanceToNextRow()I
    .locals 3

    .line 182
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lar/com/hjg/pngj/IdatSet;->getRown()I

    move-result v0

    iget-object v2, p0, Lar/com/hjg/pngj/IdatSet;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->rows:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    add-int/lit8 v1, v0, 0x1

    :goto_0
    move v0, v1

    .local v0, "bytesNextRow":I
    goto :goto_1

    .line 185
    .end local v0    # "bytesNextRow":I
    :cond_1
    invoke-virtual {v0}, Lar/com/hjg/pngj/Deinterlacer;->nextRow()Z

    move-result v0

    .line 186
    .local v0, "more":Z
    if-eqz v0, :cond_2

    iget-object v1, p0, Lar/com/hjg/pngj/IdatSet;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    invoke-virtual {v1}, Lar/com/hjg/pngj/Deinterlacer;->getBytesToRead()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :cond_2
    move v0, v1

    .line 188
    .local v0, "bytesNextRow":I
    :goto_1
    invoke-virtual {p0}, Lar/com/hjg/pngj/IdatSet;->isCallbackMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 189
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/IdatSet;->prepareForNextRow(I)V

    .line 191
    :cond_3
    return v0
.end method

.method public close()V
    .locals 1

    .line 225
    invoke-super {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->close()V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    .line 227
    iput-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfilteredPrev:[B

    .line 228
    return-void
.end method

.method public getDeinterlacer()Lar/com/hjg/pngj/Deinterlacer;
    .locals 1

    .line 214
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    return-object v0
.end method

.method public getFilterUseStat()[I
    .locals 1

    .line 236
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->filterUseStat:[I

    return-object v0
.end method

.method public getUnfilteredRow()[B
    .locals 1

    .line 210
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    return-object v0
.end method

.method public isRowReady()Z
    .locals 1

    .line 195
    invoke-virtual {p0}, Lar/com/hjg/pngj/IdatSet;->isWaitingForMoreInput()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected preProcessRow()V
    .locals 3

    .line 142
    invoke-super {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->preProcessRow()V

    .line 143
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowinfo:Lar/com/hjg/pngj/RowInfo;

    invoke-virtual {p0}, Lar/com/hjg/pngj/IdatSet;->getRown()I

    move-result v1

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/RowInfo;->update(I)V

    .line 144
    invoke-virtual {p0}, Lar/com/hjg/pngj/IdatSet;->unfilterRow()V

    .line 145
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowinfo:Lar/com/hjg/pngj/RowInfo;

    iget-object v1, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    iget v2, v0, Lar/com/hjg/pngj/RowInfo;->bytesRow:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lar/com/hjg/pngj/RowInfo;->updateBuf([BI)V

    .line 146
    return-void
.end method

.method protected processDoneCallback()V
    .locals 0

    .line 168
    return-void
.end method

.method protected processRowCallback()I
    .locals 1

    .line 163
    invoke-virtual {p0}, Lar/com/hjg/pngj/IdatSet;->advanceToNextRow()I

    move-result v0

    .line 164
    .local v0, "bytesNextRow":I
    return v0
.end method

.method public unfilterRow()V
    .locals 1

    .line 53
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowinfo:Lar/com/hjg/pngj/RowInfo;

    iget v0, v0, Lar/com/hjg/pngj/RowInfo;->bytesRow:I

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/IdatSet;->unfilterRow(I)V

    .line 54
    return-void
.end method

.method protected unfilterRow(I)V
    .locals 8
    .param p1, "nbytes"    # I

    .line 58
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    iget-object v1, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 59
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    .line 60
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfilteredPrev:[B

    .line 62
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowinfo:Lar/com/hjg/pngj/RowInfo;

    iget v0, v0, Lar/com/hjg/pngj/RowInfo;->rowNsubImg:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 63
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 65
    :cond_2
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    .line 66
    .local v0, "tmp":[B
    iget-object v2, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfilteredPrev:[B

    iput-object v2, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    .line 67
    iput-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfilteredPrev:[B

    .line 69
    iget-object v2, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    aget-byte v2, v2, v1

    .line 70
    .local v2, "ftn":I
    invoke-static {v2}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v3

    .line 71
    .local v3, "ft":Lar/com/hjg/pngj/FilterType;
    const-string v4, "Filter type "

    if-eqz v3, :cond_8

    .line 73
    iget-object v5, p0, Lar/com/hjg/pngj/IdatSet;->filterUseStat:[I

    aget v6, v5, v2

    const/4 v7, 0x1

    add-int/2addr v6, v7

    aput v6, v5, v2

    .line 74
    iget-object v5, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    iget-object v6, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    aget-byte v6, v6, v1

    aput-byte v6, v5, v1

    .line 75
    sget-object v1, Lar/com/hjg/pngj/IdatSet$1;->$SwitchMap$ar$com$hjg$pngj$FilterType:[I

    invoke-virtual {v3}, Lar/com/hjg/pngj/FilterType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v7, :cond_7

    const/4 v5, 0x2

    if-eq v1, v5, :cond_6

    const/4 v5, 0x3

    if-eq v1, v5, :cond_5

    const/4 v5, 0x4

    if-eq v1, v5, :cond_4

    const/4 v5, 0x5

    if-ne v1, v5, :cond_3

    .line 89
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/IdatSet;->unfilterRowPaeth(I)V

    .line 90
    goto :goto_0

    .line 92
    :cond_3
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not implemented"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_4
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/IdatSet;->unfilterRowAverage(I)V

    .line 87
    goto :goto_0

    .line 83
    :cond_5
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/IdatSet;->unfilterRowUp(I)V

    .line 84
    goto :goto_0

    .line 80
    :cond_6
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/IdatSet;->unfilterRowSub(I)V

    .line 81
    goto :goto_0

    .line 77
    :cond_7
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/IdatSet;->unfilterRowNone(I)V

    .line 78
    nop

    .line 94
    :goto_0
    return-void

    .line 72
    :cond_8
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " invalid"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method varargs updateCrcs([Ljava/util/zip/Checksum;)V
    .locals 7
    .param p1, "idatCrcs"    # [Ljava/util/zip/Checksum;

    .line 218
    move-object v0, p1

    .local v0, "arr$":[Ljava/util/zip/Checksum;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 219
    .local v3, "idatCrca":Ljava/util/zip/Checksum;
    if-eqz v3, :cond_0

    .line 220
    invoke-virtual {p0}, Lar/com/hjg/pngj/IdatSet;->getUnfilteredRow()[B

    move-result-object v4

    invoke-virtual {p0}, Lar/com/hjg/pngj/IdatSet;->getRowFilled()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v3, v4, v6, v5}, Ljava/util/zip/Checksum;->update([BII)V

    .line 218
    .end local v3    # "idatCrca":Ljava/util/zip/Checksum;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "arr$":[Ljava/util/zip/Checksum;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method
