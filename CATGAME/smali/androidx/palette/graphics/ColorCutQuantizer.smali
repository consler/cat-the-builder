.class final Landroidx/palette/graphics/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/palette/graphics/ColorCutQuantizer$Vbox;
    }
.end annotation


# static fields
.field static final COMPONENT_BLUE:I = -0x1

.field static final COMPONENT_GREEN:I = -0x2

.field static final COMPONENT_RED:I = -0x3

.field private static final LOG_TAG:Ljava/lang/String; = "ColorCutQuantizer"

.field private static final LOG_TIMINGS:Z = false

.field private static final QUANTIZE_WORD_MASK:I = 0x1f

.field private static final QUANTIZE_WORD_WIDTH:I = 0x5

.field private static final VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/palette/graphics/ColorCutQuantizer$Vbox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mColors:[I

.field final mFilters:[Landroidx/palette/graphics/Palette$Filter;

.field final mHistogram:[I

.field final mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempHsl:[F

.field final mTimingLogger:Landroid/util/TimingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 457
    new-instance v0, Landroidx/palette/graphics/ColorCutQuantizer$1;

    invoke-direct {v0}, Landroidx/palette/graphics/ColorCutQuantizer$1;-><init>()V

    sput-object v0, Landroidx/palette/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>([II[Landroidx/palette/graphics/Palette$Filter;)V
    .locals 11
    .param p1, "pixels"    # [I
    .param p2, "maxColors"    # I
    .param p3, "filters"    # [Landroidx/palette/graphics/Palette$Filter;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mTimingLogger:Landroid/util/TimingLogger;

    .line 75
    iput-object p3, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    .line 77
    const v0, 0x8000

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 78
    .local v0, "hist":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 79
    aget v2, p1, v1

    invoke-static {v2}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizeFromRgb888(I)I

    move-result v2

    .line 81
    .local v2, "quantizedColor":I
    aput v2, p1, v1

    .line 83
    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    .line 78
    .end local v2    # "quantizedColor":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .line 92
    .local v1, "distinctColorCount":I
    const/4 v2, 0x0

    .local v2, "color":I
    :goto_1
    array-length v3, v0

    const/4 v4, 0x0

    if-ge v2, v3, :cond_3

    .line 93
    aget v3, v0, v2

    if-lez v3, :cond_1

    invoke-direct {p0, v2}, Landroidx/palette/graphics/ColorCutQuantizer;->shouldIgnoreColor(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    aput v4, v0, v2

    .line 97
    :cond_1
    aget v3, v0, v2

    if-lez v3, :cond_2

    .line 99
    add-int/lit8 v1, v1, 0x1

    .line 92
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    .end local v2    # "color":I
    :cond_3
    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    .line 109
    .local v2, "colors":[I
    const/4 v3, 0x0

    .line 110
    .local v3, "distinctColorIndex":I
    const/4 v5, 0x0

    .local v5, "color":I
    :goto_2
    array-length v6, v0

    if-ge v5, v6, :cond_5

    .line 111
    aget v6, v0, v5

    if-lez v6, :cond_4

    .line 112
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "distinctColorIndex":I
    .local v6, "distinctColorIndex":I
    aput v5, v2, v3

    move v3, v6

    .line 110
    .end local v6    # "distinctColorIndex":I
    .restart local v3    # "distinctColorIndex":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 120
    .end local v5    # "color":I
    :cond_5
    if-gt v1, p2, :cond_6

    .line 122
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 123
    array-length v5, v2

    :goto_3
    if-ge v4, v5, :cond_7

    aget v6, v2, v4

    .line 124
    .local v6, "color":I
    iget-object v7, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v8, Landroidx/palette/graphics/Palette$Swatch;

    invoke-static {v6}, Landroidx/palette/graphics/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result v9

    aget v10, v0, v6

    invoke-direct {v8, v9, v10}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v6    # "color":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 133
    :cond_6
    invoke-direct {p0, p2}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizePixels(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 140
    :cond_7
    return-void
.end method

.method private static approximateToRgb888(I)I
    .locals 3
    .param p0, "color"    # I

    .line 484
    invoke-static {p0}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v0

    invoke-static {p0}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v1

    invoke-static {p0}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/palette/graphics/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result v0

    return v0
.end method

.method static approximateToRgb888(III)I
    .locals 4
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .line 478
    const/4 v0, 0x5

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v2

    .line 479
    invoke-static {p1, v0, v1}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v3

    .line 480
    invoke-static {p2, v0, v1}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    .line 478
    invoke-static {v2, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private generateAverageColors(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/palette/graphics/ColorCutQuantizer$Vbox;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 199
    .local p1, "vboxes":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/palette/graphics/ColorCutQuantizer$Vbox;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .local v0, "colors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/palette/graphics/Palette$Swatch;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 201
    .local v2, "vbox":Landroidx/palette/graphics/ColorCutQuantizer$Vbox;
    invoke-virtual {v2}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->getAverageColor()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v3

    .line 202
    .local v3, "swatch":Landroidx/palette/graphics/Palette$Swatch;
    invoke-direct {p0, v3}, Landroidx/palette/graphics/ColorCutQuantizer;->shouldIgnoreColor(Landroidx/palette/graphics/Palette$Swatch;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 205
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v2    # "vbox":Landroidx/palette/graphics/ColorCutQuantizer$Vbox;
    .end local v3    # "swatch":Landroidx/palette/graphics/Palette$Swatch;
    :cond_0
    goto :goto_0

    .line 208
    :cond_1
    return-object v0
.end method

.method static modifySignificantOctet([IIII)V
    .locals 4
    .param p0, "a"    # [I
    .param p1, "dimension"    # I
    .param p2, "lower"    # I
    .param p3, "upper"    # I

    .line 408
    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 423
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_3

    .line 424
    aget v1, p0, v0

    .line 425
    .local v1, "color":I
    invoke-static {v1}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xa

    .line 426
    invoke-static {v1}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    .line 427
    invoke-static {v1}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v3

    or-int/2addr v2, v3

    aput v2, p0, v0

    .line 423
    .end local v1    # "color":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    .end local v0    # "i":I
    :cond_1
    move v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-gt v0, p3, :cond_2

    .line 415
    aget v1, p0, v0

    .line 416
    .restart local v1    # "color":I
    invoke-static {v1}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xa

    .line 417
    invoke-static {v1}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    .line 418
    invoke-static {v1}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v3

    or-int/2addr v2, v3

    aput v2, p0, v0

    .line 414
    .end local v1    # "color":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 420
    .end local v0    # "i":I
    :cond_2
    nop

    .line 431
    :cond_3
    :goto_2
    return-void
.end method

.method private static modifyWordWidth(III)I
    .locals 3
    .param p0, "value"    # I
    .param p1, "currentWidth"    # I
    .param p2, "targetWidth"    # I

    .line 510
    if-le p2, p1, :cond_0

    .line 512
    sub-int v0, p2, p1

    shl-int v0, p0, v0

    .local v0, "newValue":I
    goto :goto_0

    .line 515
    .end local v0    # "newValue":I
    :cond_0
    sub-int v0, p1, p2

    shr-int v0, p0, v0

    .line 517
    .restart local v0    # "newValue":I
    :goto_0
    const/4 v1, 0x1

    shl-int v2, v1, p2

    sub-int/2addr v2, v1

    and-int v1, v0, v2

    return v1
.end method

.method private static quantizeFromRgb888(I)I
    .locals 5
    .param p0, "color"    # I

    .line 468
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    .line 469
    .local v0, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3, v1, v2}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v3

    .line 470
    .local v3, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4, v1, v2}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v1

    .line 471
    .local v1, "b":I
    shl-int/lit8 v2, v0, 0xa

    shl-int/lit8 v4, v3, 0x5

    or-int/2addr v2, v4

    or-int/2addr v2, v1

    return v2
.end method

.method private quantizePixels(I)Ljava/util/List;
    .locals 4
    .param p1, "maxColors"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Landroidx/palette/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 155
    .local v0, "pq":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Landroidx/palette/graphics/ColorCutQuantizer$Vbox;>;"
    new-instance v1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;-><init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 159
    invoke-direct {p0, v0, p1}, Landroidx/palette/graphics/ColorCutQuantizer;->splitBoxes(Ljava/util/PriorityQueue;I)V

    .line 162
    invoke-direct {p0, v0}, Landroidx/palette/graphics/ColorCutQuantizer;->generateAverageColors(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static quantizedBlue(I)I
    .locals 1
    .param p0, "color"    # I

    .line 505
    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method static quantizedGreen(I)I
    .locals 1
    .param p0, "color"    # I

    .line 498
    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method static quantizedRed(I)I
    .locals 1
    .param p0, "color"    # I

    .line 491
    shr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private shouldIgnoreColor(I)Z
    .locals 2
    .param p1, "color565"    # I

    .line 434
    invoke-static {p1}, Landroidx/palette/graphics/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result v0

    .line 435
    .local v0, "rgb":I
    iget-object v1, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 436
    iget-object v1, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    invoke-direct {p0, v0, v1}, Landroidx/palette/graphics/ColorCutQuantizer;->shouldIgnoreColor(I[F)Z

    move-result v1

    return v1
.end method

.method private shouldIgnoreColor(I[F)Z
    .locals 3
    .param p1, "rgb"    # I
    .param p2, "hsl"    # [F

    .line 444
    iget-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 445
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 446
    iget-object v2, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    aget-object v2, v2, v1

    invoke-interface {v2, p1, p2}, Landroidx/palette/graphics/Palette$Filter;->isAllowed(I[F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    const/4 v2, 0x1

    return v2

    .line 445
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private shouldIgnoreColor(Landroidx/palette/graphics/Palette$Swatch;)Z
    .locals 2
    .param p1, "color"    # Landroidx/palette/graphics/Palette$Swatch;

    .line 440
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result v0

    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/palette/graphics/ColorCutQuantizer;->shouldIgnoreColor(I[F)Z

    move-result v0

    return v0
.end method

.method private splitBoxes(Ljava/util/PriorityQueue;I)V
    .locals 2
    .param p2, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "Landroidx/palette/graphics/ColorCutQuantizer$Vbox;",
            ">;I)V"
        }
    .end annotation

    .line 176
    .local p1, "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Landroidx/palette/graphics/ColorCutQuantizer$Vbox;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 177
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 179
    .local v0, "vbox":Landroidx/palette/graphics/ColorCutQuantizer$Vbox;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->splitBox()Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 195
    .end local v0    # "vbox":Landroidx/palette/graphics/ColorCutQuantizer$Vbox;
    goto :goto_0

    .line 193
    .restart local v0    # "vbox":Landroidx/palette/graphics/ColorCutQuantizer$Vbox;
    :cond_0
    return-void

    .line 196
    .end local v0    # "vbox":Landroidx/palette/graphics/ColorCutQuantizer$Vbox;
    :cond_1
    return-void
.end method


# virtual methods
.method getQuantizedColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method
