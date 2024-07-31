.class public Lar/com/hjg/pngj/pixels/FiltersPerformance;
.super Ljava/lang/Object;
.source "FiltersPerformance.java"


# static fields
.field public static final FILTER_WEIGHTS_DEFAULT:[D

.field private static final LOG2NI:D


# instance fields
.field private absum:[D

.field private cost:[D

.field private entropy:[D

.field private filter_weights:[D

.field private histog:[I

.field private final iminfo:Lar/com/hjg/pngj/ImageInfo;

.field private initdone:Z

.field private lastprefered:I

.field private lastrow:I

.field private memoryA:D

.field private preferenceForNone:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->FILTER_WEIGHTS_DEFAULT:[D

    .line 33
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    div-double/2addr v2, v0

    sput-wide v2, Lar/com/hjg/pngj/pixels/FiltersPerformance;->LOG2NI:D

    return-void

    :array_0
    .array-data 8
        0x3fe75c28f5c28f5cL    # 0.73
        0x3ff07ae147ae147bL    # 1.03
        0x3fef0a3d70a3d70aL    # 0.97
        0x3ff1c28f5c28f5c3L    # 1.11
        0x3ff3851eb851eb85L    # 1.22
    .end array-data
.end method

.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 4
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide v0, 0x3fe6666666666666L    # 0.7

    iput-wide v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->memoryA:D

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->lastrow:I

    .line 16
    const/4 v1, 0x5

    new-array v2, v1, [D

    iput-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->absum:[D

    .line 18
    new-array v2, v1, [D

    iput-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->entropy:[D

    .line 19
    new-array v2, v1, [D

    iput-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->cost:[D

    .line 20
    const/16 v2, 0x100

    new-array v2, v2, [I

    iput-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    .line 21
    iput v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->lastprefered:I

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->initdone:Z

    .line 23
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->preferenceForNone:D

    .line 31
    new-array v0, v1, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->filter_weights:[D

    .line 36
    iput-object p1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    .line 37
    return-void

    nop

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method private init()V
    .locals 6

    .line 40
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->filter_weights:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_4

    .line 41
    sget-object v2, Lar/com/hjg/pngj/pixels/FiltersPerformance;->FILTER_WEIGHTS_DEFAULT:[D

    const/4 v3, 0x5

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->filter_weights:[D

    aget-wide v2, v0, v1

    .line 43
    .local v2, "wNone":D
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v4, 0x10

    if-ne v0, v4, :cond_0

    .line 44
    const-wide v2, 0x3ff3333333333333L    # 1.2

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v0, :cond_1

    .line 46
    const-wide v2, 0x3fe999999999999aL    # 0.8

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v4, 0x8

    if-ge v0, v4, :cond_3

    .line 48
    :cond_2
    const-wide v2, 0x3fd999999999999aL    # 0.4

    .line 49
    :cond_3
    :goto_0
    iget-wide v4, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->preferenceForNone:D

    div-double/2addr v2, v4

    .line 50
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->filter_weights:[D

    aput-wide v2, v0, v1

    .line 52
    .end local v2    # "wNone":D
    :cond_4
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->cost:[D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->initdone:Z

    .line 54
    return-void
.end method

.method private updateFromRawOrFiltered(Lar/com/hjg/pngj/FilterType;[B[B[BI)V
    .locals 4
    .param p1, "ftype"    # Lar/com/hjg/pngj/FilterType;
    .param p2, "rowff"    # [B
    .param p3, "rowb"    # [B
    .param p4, "rowbprev"    # [B
    .param p5, "rown"    # I

    .line 67
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->initdone:Z

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->init()V

    .line 69
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->lastrow:I

    if-eq p5, v0, :cond_1

    .line 70
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->absum:[D

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 71
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->entropy:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 73
    :cond_1
    iput p5, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->lastrow:I

    .line 74
    if-eqz p2, :cond_2

    .line 75
    invoke-virtual {p0, p2}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->computeHistogram([B)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->computeHistogramForFilter(Lar/com/hjg/pngj/FilterType;[B[B)V

    .line 78
    :goto_0
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    if-ne p1, v0, :cond_3

    .line 79
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->entropy:[D

    iget v1, p1, Lar/com/hjg/pngj/FilterType;->val:I

    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->computeEntropyFromHistogram()D

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_1

    .line 81
    :cond_3
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->absum:[D

    iget v1, p1, Lar/com/hjg/pngj/FilterType;->val:I

    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->computeAbsFromHistogram()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 82
    :goto_1
    return-void
.end method


# virtual methods
.method public computeAbsFromHistogram()D
    .locals 5

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "s":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    .line 152
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget v2, v2, v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x80

    .restart local v1    # "i":I
    const/16 v2, 0x80

    .local v2, "j":I
    :goto_1
    if-lez v2, :cond_1

    .line 154
    iget-object v3, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget v3, v3, v1

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 153
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 155
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_1
    int-to-double v1, v0

    iget-object v3, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public final computeEntropyFromHistogram()D
    .locals 14

    .line 159
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 160
    .local v2, "s":D
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 162
    .local v0, "ls":D
    const-wide/16 v4, 0x0

    .line 163
    .local v4, "h":D
    iget-object v6, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    .local v6, "arr$":[I
    array-length v7, v6

    .local v7, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v7, :cond_1

    aget v9, v6, v8

    .line 164
    .local v9, "x":I
    if-lez v9, :cond_0

    .line 165
    int-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    add-double/2addr v10, v0

    int-to-double v12, v9

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    .line 163
    .end local v9    # "x":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 167
    .end local v6    # "arr$":[I
    .end local v7    # "len$":I
    .end local v8    # "i$":I
    :cond_1
    sget-wide v6, Lar/com/hjg/pngj/pixels/FiltersPerformance;->LOG2NI:D

    mul-double/2addr v6, v2

    mul-double/2addr v4, v6

    .line 168
    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_2

    .line 169
    const-wide/16 v4, 0x0

    .line 170
    :cond_2
    return-wide v4
.end method

.method public computeHistogram([B)V
    .locals 4
    .param p1, "rowff"    # [B

    .line 144
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 145
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    if-ge v0, v1, :cond_0

    .line 146
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final computeHistogramForFilter(Lar/com/hjg/pngj/FilterType;[B[B)V
    .locals 9
    .param p1, "filterType"    # Lar/com/hjg/pngj/FilterType;
    .param p2, "rowb"    # [B
    .param p3, "rowbprev"    # [B

    .line 108
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 109
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    .line 110
    .local v0, "imax":I
    sget-object v2, Lar/com/hjg/pngj/pixels/FiltersPerformance$1;->$SwitchMap$ar$com$hjg$pngj$FilterType:[I

    invoke-virtual {p1}, Lar/com/hjg/pngj/FilterType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3

    const/4 v5, 0x4

    if-eq v2, v5, :cond_2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_1

    move v2, v1

    .line 133
    .local v1, "j":I
    .local v2, "i":I
    const/4 v2, 0x1

    :goto_0
    iget-object v5, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v5, v5, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    if-gt v2, v5, :cond_0

    .line 134
    iget-object v5, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget-byte v6, p2, v2

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, p3, v2

    and-int/lit16 v7, v7, 0xff

    div-int/2addr v7, v4

    sub-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    aget v7, v5, v6

    add-int/2addr v7, v3

    aput v7, v5, v6

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_0
    const/4 v1, 0x1

    iget-object v5, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v5, v5, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    add-int/2addr v5, v3

    .end local v2    # "i":I
    .local v5, "i":I
    :goto_1
    if-gt v5, v0, :cond_8

    .line 136
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget-byte v6, p2, v5

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, p3, v5

    and-int/lit16 v7, v7, 0xff

    aget-byte v8, p2, v1

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    div-int/2addr v7, v4

    sub-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    aget v7, v2, v6

    add-int/2addr v7, v3

    aput v7, v2, v6

    .line 135
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    .end local v1    # "j":I
    .end local v5    # "i":I
    :cond_1
    move v2, v1

    .line 139
    .restart local v1    # "j":I
    .restart local v2    # "i":I
    new-instance v3, Lar/com/hjg/pngj/PngjExceptionInternal;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad filter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw v3

    .line 110
    .end local v1    # "j":I
    .end local v2    # "i":I
    :cond_2
    move v2, v1

    .line 129
    .restart local v1    # "j":I
    .restart local v2    # "i":I
    const/4 v2, 0x1

    move v5, v2

    .end local v2    # "i":I
    .restart local v5    # "i":I
    :goto_2
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    if-gt v5, v2, :cond_8

    .line 130
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget-byte v4, p2, v5

    aget-byte v6, p3, v5

    sub-int/2addr v4, v6

    and-int/lit16 v4, v4, 0xff

    aget v6, v2, v4

    add-int/2addr v6, v3

    aput v6, v2, v4

    .line 129
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 110
    .end local v1    # "j":I
    .end local v5    # "i":I
    :cond_3
    move v2, v1

    .line 123
    .restart local v1    # "j":I
    .restart local v2    # "i":I
    const/4 v2, 0x1

    :goto_3
    iget-object v4, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v4, v4, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    if-gt v2, v4, :cond_4

    .line 124
    iget-object v4, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    aget v6, v4, v5

    add-int/2addr v6, v3

    aput v6, v4, v5

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 125
    :cond_4
    const/4 v1, 0x1

    iget-object v4, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v4, v4, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    add-int/2addr v4, v3

    move v5, v4

    .end local v2    # "i":I
    .restart local v5    # "i":I
    :goto_4
    if-gt v5, v0, :cond_8

    .line 126
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget-byte v4, p2, v5

    aget-byte v6, p2, v1

    sub-int/2addr v4, v6

    and-int/lit16 v4, v4, 0xff

    aget v6, v2, v4

    add-int/2addr v6, v3

    aput v6, v2, v4

    .line 125
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 110
    .end local v1    # "j":I
    .end local v5    # "i":I
    :cond_5
    move v2, v1

    .line 116
    .restart local v2    # "i":I
    const/4 v2, 0x1

    :goto_5
    if-gt v2, v0, :cond_6

    .line 117
    iget-object v4, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget-byte v5, p2, v2

    aget-byte v6, p3, v2

    and-int/lit16 v6, v6, 0xff

    invoke-static {v5, v1, v6, v1}, Lar/com/hjg/pngj/PngHelperInternal;->filterRowPaeth(IIII)I

    move-result v5

    aget v6, v4, v5

    add-int/2addr v6, v3

    aput v6, v4, v5

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 118
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "j":I
    iget-object v4, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v4, v4, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    add-int/2addr v4, v3

    move v5, v4

    .end local v2    # "i":I
    .restart local v5    # "i":I
    :goto_6
    if-gt v5, v0, :cond_8

    .line 119
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget-byte v4, p2, v5

    aget-byte v6, p2, v1

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, p3, v5

    and-int/lit16 v7, v7, 0xff

    aget-byte v8, p3, v1

    and-int/lit16 v8, v8, 0xff

    invoke-static {v4, v6, v7, v8}, Lar/com/hjg/pngj/PngHelperInternal;->filterRowPaeth(IIII)I

    move-result v4

    aget v6, v2, v4

    add-int/2addr v6, v3

    aput v6, v2, v4

    .line 118
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 112
    .end local v1    # "j":I
    .end local v5    # "i":I
    :cond_7
    const/4 v2, 0x1

    move v5, v2

    .restart local v5    # "i":I
    :goto_7
    if-gt v5, v0, :cond_8

    .line 113
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget-byte v4, p2, v5

    and-int/lit16 v4, v4, 0xff

    aget v6, v2, v4

    add-int/2addr v6, v3

    aput v6, v2, v4

    .line 112
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 141
    .restart local v1    # "j":I
    :cond_8
    return-void
.end method

.method public getPreferred()Lar/com/hjg/pngj/FilterType;
    .locals 13

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "fi":I
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .local v1, "vali":D
    const-wide/16 v3, 0x0

    .line 88
    .local v3, "val":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x5

    if-ge v5, v6, :cond_3

    .line 89
    iget-object v6, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->absum:[D

    aget-wide v7, v6, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-nez v6, :cond_0

    .line 90
    iget-object v6, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->absum:[D

    aget-wide v3, v6, v5

    goto :goto_1

    .line 91
    :cond_0
    iget-object v6, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->entropy:[D

    aget-wide v9, v6, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_2

    .line 92
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    iget-object v6, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->entropy:[D

    aget-wide v11, v6, v5

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    sub-double/2addr v9, v7

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double v3, v9, v11

    .line 95
    :goto_1
    iget-object v6, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->filter_weights:[D

    aget-wide v9, v6, v5

    mul-double/2addr v3, v9

    .line 96
    iget-object v6, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->cost:[D

    aget-wide v9, v6, v5

    iget-wide v11, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->memoryA:D

    mul-double/2addr v9, v11

    sub-double/2addr v7, v11

    mul-double/2addr v7, v3

    add-double/2addr v9, v7

    .line 97
    .end local v3    # "val":D
    .local v9, "val":D
    aput-wide v9, v6, v5

    .line 98
    cmpg-double v3, v9, v1

    if-gez v3, :cond_1

    .line 99
    move-wide v1, v9

    .line 100
    move v0, v5

    move-wide v3, v9

    goto :goto_2

    .line 98
    :cond_1
    move-wide v3, v9

    .line 88
    .end local v9    # "val":D
    .restart local v3    # "val":D
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 103
    .end local v5    # "i":I
    :cond_3
    iput v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->lastprefered:I

    .line 104
    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v5

    return-object v5
.end method

.method public setFilterWeights([D)V
    .locals 3
    .param p1, "weights"    # [D

    .line 201
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->filter_weights:[D

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    return-void
.end method

.method public setPreferenceForNone(D)V
    .locals 0
    .param p1, "preferenceForNone"    # D

    .line 179
    iput-wide p1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->preferenceForNone:D

    .line 180
    return-void
.end method

.method public tuneMemory(D)V
    .locals 4
    .param p1, "m"    # D

    .line 188
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    .line 189
    iput-wide v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->memoryA:D

    goto :goto_0

    .line 191
    :cond_0
    iget-wide v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->memoryA:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->memoryA:D

    .line 192
    :goto_0
    return-void
.end method

.method public updateFromFiltered(Lar/com/hjg/pngj/FilterType;[BI)V
    .locals 6
    .param p1, "ftype"    # Lar/com/hjg/pngj/FilterType;
    .param p2, "rowff"    # [B
    .param p3, "rown"    # I

    .line 57
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->updateFromRawOrFiltered(Lar/com/hjg/pngj/FilterType;[B[B[BI)V

    .line 58
    return-void
.end method

.method public updateFromRaw(Lar/com/hjg/pngj/FilterType;[B[BI)V
    .locals 6
    .param p1, "ftype"    # Lar/com/hjg/pngj/FilterType;
    .param p2, "rowb"    # [B
    .param p3, "rowbprev"    # [B
    .param p4, "rown"    # I

    .line 62
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->updateFromRawOrFiltered(Lar/com/hjg/pngj/FilterType;[B[B[BI)V

    .line 63
    return-void
.end method
