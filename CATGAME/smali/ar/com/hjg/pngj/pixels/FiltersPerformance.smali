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

    const/4 v0, 0x5

    new-array v0, v0, [D

    .line 28
    fill-array-data v0, :array_0

    sput-object v0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->FILTER_WEIGHTS_DEFAULT:[D

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 33
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3fe6666666666666L    # 0.7

    .line 14
    iput-wide v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->memoryA:D

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->lastrow:I

    const/4 v1, 0x5

    new-array v2, v1, [D

    .line 16
    iput-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->absum:[D

    new-array v2, v1, [D

    .line 18
    iput-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->entropy:[D

    new-array v2, v1, [D

    .line 19
    iput-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->cost:[D

    const/16 v2, 0x100

    new-array v2, v2, [I

    .line 20
    iput-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    .line 21
    iput v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->lastprefered:I

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->initdone:Z

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 23
    iput-wide v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->preferenceForNone:D

    new-array v0, v1, [D

    .line 31
    fill-array-data v0, :array_0

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->filter_weights:[D

    .line 36
    iput-object p1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

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
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v4, 0x10

    if-ne v0, v4, :cond_0

    const-wide v2, 0x3ff3333333333333L    # 1.2

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v0, :cond_1

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
    :cond_4
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->cost:[D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->initdone:Z

    return-void
.end method

.method private updateFromRawOrFiltered(Lar/com/hjg/pngj/FilterType;[B[B[BI)V
    .locals 3

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

    if-eqz p2, :cond_2

    .line 75
    invoke-virtual {p0, p2}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->computeHistogram([B)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->computeHistogramForFilter(Lar/com/hjg/pngj/FilterType;[B[B)V

    .line 78
    :goto_0
    sget-object p2, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    if-ne p1, p2, :cond_3

    .line 79
    iget-object p2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->entropy:[D

    iget p1, p1, Lar/com/hjg/pngj/FilterType;->val:I

    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->computeEntropyFromHistogram()D

    move-result-wide p3

    aput-wide p3, p2, p1

    goto :goto_1

    .line 81
    :cond_3
    iget-object p2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->absum:[D

    iget p1, p1, Lar/com/hjg/pngj/FilterType;->val:I

    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->computeAbsFromHistogram()D

    move-result-wide p3

    aput-wide p3, p2, p1

    :goto_1
    return-void
.end method


# virtual methods
.method public computeAbsFromHistogram()D
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    .line 152
    iget-object v3, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget v3, v3, v2

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_1
    if-lez v3, :cond_1

    .line 154
    iget-object v4, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget v4, v4, v2

    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    add-int/2addr v2, v1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    int-to-double v0, v0

    .line 155
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final computeEntropyFromHistogram()D
    .locals 15

    .line 159
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 160
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 163
    iget-object v4, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    array-length v5, v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-wide v9, v6

    :goto_0
    if-ge v8, v5, :cond_1

    aget v11, v4, v8

    if-lez v11, :cond_0

    int-to-double v11, v11

    .line 165
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    add-double/2addr v13, v0

    mul-double/2addr v13, v11

    add-double/2addr v9, v13

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 167
    :cond_1
    sget-wide v0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->LOG2NI:D

    mul-double/2addr v2, v0

    mul-double/2addr v9, v2

    cmpg-double v0, v9, v6

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move-wide v6, v9

    :goto_1
    return-wide v6
.end method

.method public computeHistogram([B)V
    .locals 5

    .line 144
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x1

    move v1, v0

    .line 145
    :goto_0
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    if-ge v1, v2, :cond_0

    .line 146
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    aget v4, v2, v3

    add-int/2addr v4, v0

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final computeHistogramForFilter(Lar/com/hjg/pngj/FilterType;[B[B)V
    .locals 8

    .line 108
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 109
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    .line 110
    sget-object v2, Lar/com/hjg/pngj/pixels/FiltersPerformance$1;->$SwitchMap$ar$com$hjg$pngj$FilterType:[I

    invoke-virtual {p1}, Lar/com/hjg/pngj/FilterType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    const/4 v1, 0x3

    if-eq v2, v1, :cond_3

    const/4 v1, 0x4

    if-eq v2, v1, :cond_2

    const/4 v1, 0x5

    if-ne v2, v1, :cond_1

    move p1, v3

    .line 133
    :goto_0
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    if-gt p1, v1, :cond_0

    .line 134
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget-byte v2, p2, p1

    and-int/lit16 v2, v2, 0xff

    aget-byte v5, p3, p1

    and-int/lit16 v5, v5, 0xff

    div-int/2addr v5, v4

    sub-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    aget v5, v1, v2

    add-int/2addr v5, v3

    aput v5, v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget p1, p1, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    add-int/2addr p1, v3

    move v1, v3

    :goto_1
    if-gt p1, v0, :cond_8

    .line 136
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget-byte v5, p2, p1

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p3, p1

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, p2, v1

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    div-int/2addr v6, v4

    sub-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget v6, v2, v5

    add-int/2addr v6, v3

    aput v6, v2, v5

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v1, v3

    goto :goto_1

    .line 139
    :cond_1
    new-instance p2, Lar/com/hjg/pngj/PngjExceptionInternal;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Bad filter:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    move p1, v3

    .line 129
    :goto_2
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    if-gt p1, v0, :cond_8

    .line 130
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget-byte v1, p2, p1

    aget-byte v2, p3, p1

    sub-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    move p1, v3

    .line 123
    :goto_3
    iget-object p3, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget p3, p3, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    if-gt p1, p3, :cond_4

    .line 124
    iget-object p3, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget-byte v1, p2, p1

    and-int/lit16 v1, v1, 0xff

    aget v2, p3, v1

    add-int/2addr v2, v3

    aput v2, p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 125
    :cond_4
    iget-object p1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget p1, p1, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    add-int/2addr p1, v3

    move p3, v3

    :goto_4
    if-gt p1, v0, :cond_8

    .line 126
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget-byte v2, p2, p1

    aget-byte v4, p2, p3

    sub-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aget v4, v1, v2

    add-int/2addr v4, v3

    aput v4, v1, v2

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p3, v3

    goto :goto_4

    :cond_5
    move p1, v3

    :goto_5
    if-gt p1, v0, :cond_6

    .line 117
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget-byte v4, p2, p1

    aget-byte v5, p3, p1

    and-int/lit16 v5, v5, 0xff

    invoke-static {v4, v1, v5, v1}, Lar/com/hjg/pngj/PngHelperInternal;->filterRowPaeth(IIII)I

    move-result v4

    aget v5, v2, v4

    add-int/2addr v5, v3

    aput v5, v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 118
    :cond_6
    iget-object p1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->iminfo:Lar/com/hjg/pngj/ImageInfo;

    iget p1, p1, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    add-int/2addr p1, v3

    move v1, v3

    :goto_6
    if-gt p1, v0, :cond_8

    .line 119
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget-byte v4, p2, p1

    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p3, p1

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, p3, v1

    and-int/lit16 v7, v7, 0xff

    invoke-static {v4, v5, v6, v7}, Lar/com/hjg/pngj/PngHelperInternal;->filterRowPaeth(IIII)I

    move-result v4

    aget v5, v2, v4

    add-int/2addr v5, v3

    aput v5, v2, v4

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v1, v3

    goto :goto_6

    :cond_7
    move p1, v3

    :goto_7
    if-gt p1, v0, :cond_8

    .line 113
    iget-object p3, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->histog:[I

    aget-byte v1, p2, p1

    and-int/lit16 v1, v1, 0xff

    aget v2, p3, v1

    add-int/2addr v2, v3

    aput v2, p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_8
    return-void
.end method

.method public getPreferred()Lar/com/hjg/pngj/FilterType;
    .locals 13

    const/4 v0, 0x0

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v2, v1

    move v1, v0

    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_2

    .line 89
    iget-object v4, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->absum:[D

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-nez v4, :cond_0

    .line 90
    iget-object v4, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->absum:[D

    aget-wide v7, v4, v0

    goto :goto_1

    .line 91
    :cond_0
    iget-object v4, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->entropy:[D

    aget-wide v7, v4, v0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    .line 92
    iget-object v4, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->entropy:[D

    aget-wide v7, v4, v0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    sub-double/2addr v7, v5

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v9

    .line 95
    :goto_1
    iget-object v4, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->filter_weights:[D

    aget-wide v9, v4, v0

    mul-double/2addr v7, v9

    .line 96
    iget-object v4, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->cost:[D

    aget-wide v9, v4, v0

    iget-wide v11, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->memoryA:D

    mul-double/2addr v9, v11

    sub-double/2addr v5, v11

    mul-double/2addr v5, v7

    add-double/2addr v9, v5

    .line 97
    aput-wide v9, v4, v0

    cmpg-double v4, v9, v2

    if-gez v4, :cond_1

    move v1, v0

    move-wide v2, v9

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_2
    iput v1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->lastprefered:I

    .line 104
    invoke-static {v1}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    return-object v0
.end method

.method public setFilterWeights([D)V
    .locals 3

    .line 201
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->filter_weights:[D

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setPreferenceForNone(D)V
    .locals 0

    .line 179
    iput-wide p1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->preferenceForNone:D

    return-void
.end method

.method public tuneMemory(D)V
    .locals 4

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

    move-result-wide p1

    iput-wide p1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->memoryA:D

    :goto_0
    return-void
.end method

.method public updateFromFiltered(Lar/com/hjg/pngj/FilterType;[BI)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 57
    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->updateFromRawOrFiltered(Lar/com/hjg/pngj/FilterType;[B[B[BI)V

    return-void
.end method

.method public updateFromRaw(Lar/com/hjg/pngj/FilterType;[B[BI)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 62
    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->updateFromRawOrFiltered(Lar/com/hjg/pngj/FilterType;[B[B[BI)V

    return-void
.end method
