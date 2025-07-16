.class public final Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;
.super Ljava/lang/Object;
.source "JavaFillAlgorithm.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/helper/FillAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJavaFillAlgorithm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaFillAlgorithm.kt\norg/catrobat/paintroid/tools/helper/JavaFillAlgorithm\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,180:1\n1#2:181\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0018\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001GB\u0005\u00a2\u0006\u0002\u0010\u0002J \u00101\u001a\u0002022\u0006\u00103\u001a\u00020(2\u0006\u00104\u001a\u00020\r2\u0006\u00105\u001a\u00020\u0018H\u0002J \u00106\u001a\u00020(2\u0006\u00104\u001a\u00020\r2\u0006\u00107\u001a\u00020\r2\u0006\u00108\u001a\u00020\u0018H\u0002J\u0018\u00109\u001a\u00020\r2\u0006\u00104\u001a\u00020\r2\u0006\u00107\u001a\u00020\rH\u0002J\u0018\u0010:\u001a\u00020\r2\u0006\u00104\u001a\u00020\r2\u0006\u00107\u001a\u00020\rH\u0002J\u0018\u0010;\u001a\u00020\u00182\u0006\u0010<\u001a\u00020\r2\u0006\u0010=\u001a\u00020\rH\u0002J\u0008\u0010>\u001a\u000202H\u0016J0\u0010?\u001a\u0002022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\r2\u0006\u0010@\u001a\u00020\r2\u0006\u0010A\u001a\u00020BH\u0016J\u0018\u0010C\u001a\u00020\u00182\u0006\u00104\u001a\u00020\r2\u0006\u00107\u001a\u00020\rH\u0002J\u0010\u0010D\u001a\u00020\r2\u0006\u0010E\u001a\u00020\rH\u0002J\u0018\u0010F\u001a\u00020\u00182\u0006\u00104\u001a\u00020\r2\u0006\u00107\u001a\u00020\rH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000e\u0010\u0002\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R$\u0010\u0013\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0014\u0010\u0002\u001a\u0004\u0008\u0015\u0010\u0010\"\u0004\u0008\u0016\u0010\u0012R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082.\u00a2\u0006\u0004\n\u0002\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R,\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001a8\u0006@\u0006X\u0087.\u00a2\u0006\u0016\n\u0002\u0010%\u0012\u0004\u0008 \u0010\u0002\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\"\u0010&\u001a\u0008\u0012\u0004\u0012\u00020(0\'8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008)\u0010\u0002\u001a\u0004\u0008*\u0010+R$\u0010,\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008-\u0010\u0002\u001a\u0004\u0008.\u0010\u0010\"\u0004\u0008/\u0010\u0012R\u000e\u00100\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006H"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;",
        "Lorg/catrobat/paintroid/tools/helper/FillAlgorithm;",
        "()V",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "clickedPixel",
        "Landroid/graphics/Point;",
        "getClickedPixel$annotations",
        "getClickedPixel",
        "()Landroid/graphics/Point;",
        "setClickedPixel",
        "(Landroid/graphics/Point;)V",
        "colorToBeReplaced",
        "",
        "getColorToBeReplaced$annotations",
        "getColorToBeReplaced",
        "()I",
        "setColorToBeReplaced",
        "(I)V",
        "colorToleranceThresholdSquared",
        "getColorToleranceThresholdSquared$annotations",
        "getColorToleranceThresholdSquared",
        "setColorToleranceThresholdSquared",
        "considerTolerance",
        "",
        "filledPixels",
        "",
        "",
        "[[Z",
        "height",
        "pixels",
        "",
        "getPixels$annotations",
        "getPixels",
        "()[[I",
        "setPixels",
        "([[I)V",
        "[[I",
        "ranges",
        "Ljava/util/Queue;",
        "Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;",
        "getRanges$annotations",
        "getRanges",
        "()Ljava/util/Queue;",
        "targetColor",
        "getTargetColor$annotations",
        "getTargetColor",
        "setTargetColor",
        "width",
        "checkRangeAndGenerateNewRanges",
        "",
        "range",
        "row",
        "directionUp",
        "generateRangeAndReplaceColor",
        "col",
        "direction",
        "getEndIndex",
        "getStartIndex",
        "isPixelWithinColorTolerance",
        "pixel",
        "referenceColor",
        "performFilling",
        "setParameters",
        "replacementColor",
        "colorToleranceThreshold",
        "",
        "shouldCellBeFilled",
        "square",
        "x",
        "validateAndAssign",
        "Range",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field public clickedPixel:Landroid/graphics/Point;

.field private colorToBeReplaced:I

.field private colorToleranceThresholdSquared:I

.field private considerTolerance:Z

.field private filledPixels:[[Z

.field private height:I

.field public pixels:[[I

.field private final ranges:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;",
            ">;"
        }
    .end annotation
.end field

.field private targetColor:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->ranges:Ljava/util/Queue;

    return-void
.end method

.method private final checkRangeAndGenerateNewRanges(Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;IZ)V
    .locals 6

    .line 141
    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getStart()I

    move-result v0

    .line 142
    :goto_0
    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getEnd()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 143
    invoke-direct {p0, p2, v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->shouldCellBeFilled(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    invoke-direct {p0, p2, v0, p3}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->generateRangeAndReplaceColor(IIZ)Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->ranges:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getStart()I

    move-result v1

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getStart()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-gt v1, v2, :cond_0

    .line 147
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->ranges:Ljava/util/Queue;

    new-instance v2, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getStart()I

    move-result v3

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getStart()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    xor-int/lit8 v5, p3, 0x1

    invoke-direct {v2, p2, v3, v4, v5}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;-><init>(IIIZ)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getEnd()I

    move-result v1

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getEnd()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_1

    .line 150
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->ranges:Ljava/util/Queue;

    new-instance v2, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getEnd()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getEnd()I

    move-result v4

    xor-int/lit8 v5, p3, 0x1

    invoke-direct {v2, p2, v3, v4, v5}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;-><init>(IIIZ)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getEnd()I

    move-result v1

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getEnd()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_2

    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getEnd()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private final generateRangeAndReplaceColor(IIZ)Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;
    .locals 15

    move-object v0, p0

    move/from16 v6, p1

    .line 123
    new-instance v14, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xf

    const/4 v13, 0x0

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;-><init>(IIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 124
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->getPixels()[[I

    move-result-object v1

    aget-object v1, v1, v6

    iget v2, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->targetColor:I

    aput v2, v1, p2

    .line 125
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->filledPixels:[[Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "filledPixels"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    aget-object v1, v1, v6

    const/4 v3, 0x1

    aput-boolean v3, v1, p2

    add-int/lit8 v1, p2, -0x1

    .line 127
    invoke-direct {p0, v6, v1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->getStartIndex(II)I

    move-result v5

    add-int/lit8 v1, p2, 0x1

    .line 128
    invoke-direct {p0, v6, v1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->getEndIndex(II)I

    move-result v1

    .line 130
    invoke-virtual {v14, v6}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->setLine(I)V

    .line 131
    invoke-virtual {v14, v1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->setEnd(I)V

    .line 132
    invoke-virtual {v14, v5}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->setStart(I)V

    move/from16 v4, p3

    .line 133
    invoke-virtual {v14, v4}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->setDirection(Z)V

    .line 135
    iget-object v4, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->bitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    const-string v4, "bitmap"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->getPixels()[[I

    move-result-object v4

    aget-object v4, v4, v6

    iget v7, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->width:I

    sub-int/2addr v1, v5

    add-int/lit8 v8, v1, 0x1

    const/4 v9, 0x1

    move-object v1, v2

    move-object v2, v4

    move v3, v5

    move v4, v7

    move/from16 v6, p1

    move v7, v8

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v14
.end method

.method public static synthetic getClickedPixel$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getColorToBeReplaced$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getColorToleranceThresholdSquared$annotations()V
    .locals 0

    return-void
.end method

.method private final getEndIndex(II)I
    .locals 2

    .line 118
    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->width:I

    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->validateAndAssign(II)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->width:I

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public static synthetic getPixels$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRanges$annotations()V
    .locals 0

    return-void
.end method

.method private final getStartIndex(II)I
    .locals 2

    const/4 v0, 0x0

    .line 113
    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->validateAndAssign(II)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static synthetic getTargetColor$annotations()V
    .locals 0

    return-void
.end method

.method private final isPixelWithinColorTolerance(II)Z
    .locals 4

    .line 163
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 164
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 165
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 166
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    sub-int/2addr p1, p2

    .line 168
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->square(I)I

    move-result p2

    invoke-direct {p0, v1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->square(I)I

    move-result v0

    add-int/2addr p2, v0

    invoke-direct {p0, v2}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->square(I)I

    move-result v0

    add-int/2addr p2, v0

    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->square(I)I

    move-result p1

    add-int/2addr p2, p1

    .line 169
    iget p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->colorToleranceThresholdSquared:I

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final shouldCellBeFilled(II)Z
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->filledPixels:[[Z

    if-nez v0, :cond_0

    const-string v0, "filledPixels"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    if-nez v0, :cond_2

    .line 100
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->getPixels()[[I

    move-result-object v0

    aget-object v0, v0, p1

    aget v0, v0, p2

    iget v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->colorToBeReplaced:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->considerTolerance:Z

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->getPixels()[[I

    move-result-object v0

    aget-object p1, v0, p1

    aget p1, p1, p2

    .line 102
    iget p2, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->colorToBeReplaced:I

    .line 100
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->isPixelWithinColorTolerance(II)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final square(I)I
    .locals 0

    mul-int/2addr p1, p1

    return p1
.end method

.method private final validateAndAssign(II)Z
    .locals 2

    .line 106
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->shouldCellBeFilled(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->getPixels()[[I

    move-result-object v0

    aget-object v0, v0, p1

    iget v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->targetColor:I

    aput v1, v0, p2

    .line 108
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->filledPixels:[[Z

    if-nez v0, :cond_0

    const-string v0, "filledPixels"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    aget-object p1, v0, p1

    const/4 v0, 0x1

    aput-boolean v0, p1, p2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final getClickedPixel()Landroid/graphics/Point;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->clickedPixel:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "clickedPixel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getColorToBeReplaced()I
    .locals 1

    .line 45
    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->colorToBeReplaced:I

    return v0
.end method

.method public final getColorToleranceThresholdSquared()I
    .locals 1

    .line 48
    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->colorToleranceThresholdSquared:I

    return v0
.end method

.method public final getPixels()[[I
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->pixels:[[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "pixels"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRanges()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->ranges:Ljava/util/Queue;

    return-object v0
.end method

.method public final getTargetColor()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->targetColor:I

    return v0
.end method

.method public performFilling()V
    .locals 7

    .line 80
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->getClickedPixel()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->getClickedPixel()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x1

    .line 79
    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->generateRangeAndReplaceColor(IIZ)Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->ranges:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->ranges:Ljava/util/Queue;

    new-instance v3, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getLine()I

    move-result v4

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getStart()I

    move-result v5

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getEnd()I

    move-result v0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v0, v6}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;-><init>(IIIZ)V

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->ranges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 86
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->ranges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;

    if-nez v0, :cond_1

    goto :goto_3

    .line 87
    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getDirection()Z

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v3, -0x1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 89
    :goto_1
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getLine()I

    move-result v4

    add-int/2addr v4, v3

    if-ltz v4, :cond_3

    .line 90
    iget v3, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->height:I

    if-ge v4, v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v6

    :goto_2
    if-eqz v3, :cond_0

    .line 91
    invoke-direct {p0, v0, v4, v1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->checkRangeAndGenerateNewRanges(Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;IZ)V

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public final setClickedPixel(Landroid/graphics/Point;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->clickedPixel:Landroid/graphics/Point;

    return-void
.end method

.method public final setColorToBeReplaced(I)V
    .locals 0

    .line 45
    iput p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->colorToBeReplaced:I

    return-void
.end method

.method public final setColorToleranceThresholdSquared(I)V
    .locals 0

    .line 48
    iput p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->colorToleranceThresholdSquared:I

    return-void
.end method

.method public setParameters(Landroid/graphics/Bitmap;Landroid/graphics/Point;IIF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    const-string v4, "bitmap"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "clickedPixel"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object v1, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->bitmap:Landroid/graphics/Bitmap;

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->width:I

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->height:I

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    new-array v6, v5, [[I

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    new-array v9, v9, [I

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v6}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->setPixels([[I)V

    .line 67
    iget v5, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->height:I

    if-lez v5, :cond_3

    move v13, v7

    :goto_1
    add-int/lit8 v6, v13, 0x1

    .line 68
    iget-object v8, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->bitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->getPixels()[[I

    move-result-object v9

    aget-object v9, v9, v13

    const/4 v10, 0x0

    iget v14, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->width:I

    const/4 v12, 0x0

    const/4 v15, 0x1

    move v11, v14

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    if-lt v6, v5, :cond_2

    goto :goto_2

    :cond_2
    move v13, v6

    goto :goto_1

    .line 70
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-array v5, v4, [[Z

    move v6, v7

    :goto_3
    if-ge v6, v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    new-array v8, v8, [Z

    aput-object v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    iput-object v5, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->filledPixels:[[Z

    .line 71
    invoke-virtual {v0, v2}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->setClickedPixel(Landroid/graphics/Point;)V

    move/from16 v1, p3

    .line 72
    iput v1, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->targetColor:I

    move/from16 v1, p4

    .line 73
    iput v1, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->colorToBeReplaced:I

    float-to-int v1, v3

    .line 74
    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->square(I)I

    move-result v1

    iput v1, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->colorToleranceThresholdSquared:I

    const/4 v1, 0x0

    cmpl-float v1, v3, v1

    if-lez v1, :cond_5

    const/4 v7, 0x1

    .line 75
    :cond_5
    iput-boolean v7, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->considerTolerance:Z

    return-void
.end method

.method public final setPixels([[I)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->pixels:[[I

    return-void
.end method

.method public final setTargetColor(I)V
    .locals 0

    .line 42
    iput p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->targetColor:I

    return-void
.end method
