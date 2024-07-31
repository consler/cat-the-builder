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
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0018\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001FB\u0005\u00a2\u0006\u0002\u0010\u0002J \u00101\u001a\u0002022\u0006\u00103\u001a\u00020$2\u0006\u00104\u001a\u00020\r2\u0006\u00105\u001a\u00020\u0014H\u0002J \u00106\u001a\u00020$2\u0006\u00104\u001a\u00020\r2\u0006\u00107\u001a\u00020\r2\u0006\u00108\u001a\u00020\u0014H\u0002J\u0018\u00109\u001a\u00020\r2\u0006\u00104\u001a\u00020\r2\u0006\u00107\u001a\u00020\rH\u0002J\u0018\u0010:\u001a\u00020\r2\u0006\u00104\u001a\u00020\r2\u0006\u00107\u001a\u00020\rH\u0002J\u0018\u0010;\u001a\u00020\u00142\u0006\u0010<\u001a\u00020\r2\u0006\u0010=\u001a\u00020\rH\u0002J\u0008\u0010>\u001a\u000202H\u0016J0\u0010?\u001a\u0002022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\r2\u0006\u0010(\u001a\u00020\r2\u0006\u0010@\u001a\u00020AH\u0016J\u0018\u0010B\u001a\u00020\u00142\u0006\u00104\u001a\u00020\r2\u0006\u00107\u001a\u00020\rH\u0002J\u0010\u0010C\u001a\u00020\r2\u0006\u0010D\u001a\u00020\rH\u0002J\u0018\u0010E\u001a\u00020\u00142\u0006\u00104\u001a\u00020\r2\u0006\u00107\u001a\u00020\rH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000e\u0010\u0002\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082.\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R,\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u00168\u0006@\u0006X\u0087.\u00a2\u0006\u0016\n\u0002\u0010!\u0012\u0004\u0008\u001c\u0010\u0002\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\"\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008%\u0010\u0002\u001a\u0004\u0008&\u0010\'R$\u0010(\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008)\u0010\u0002\u001a\u0004\u0008*\u0010\u0010\"\u0004\u0008+\u0010\u0012R$\u0010,\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008-\u0010\u0002\u001a\u0004\u0008.\u0010\u0010\"\u0004\u0008/\u0010\u0012R\u000e\u00100\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006G"
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
        "colorToleranceThresholdSquared",
        "",
        "getColorToleranceThresholdSquared$annotations",
        "getColorToleranceThresholdSquared",
        "()I",
        "setColorToleranceThresholdSquared",
        "(I)V",
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
        "replacementColor",
        "getReplacementColor$annotations",
        "getReplacementColor",
        "setReplacementColor",
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
        "colorToleranceThreshold",
        "",
        "shouldCellBeFilled",
        "square",
        "x",
        "validateAndAssign",
        "Range",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field public clickedPixel:Landroid/graphics/Point;

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

.field private replacementColor:I

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
    .locals 7
    .param p1, "range"    # Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;
    .param p2, "row"    # I
    .param p3, "directionUp"    # Z

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "newRange":Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;
    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getStart()I

    move-result v1

    .line 142
    .local v1, "col":I
    :goto_0
    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getEnd()I

    move-result v2

    if-gt v1, v2, :cond_4

    .line 143
    invoke-direct {p0, p2, v1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->shouldCellBeFilled(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    invoke-direct {p0, p2, v1, p3}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->generateRangeAndReplaceColor(IIZ)Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;

    move-result-object v0

    .line 145
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->ranges:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getStart()I

    move-result v2

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getStart()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-gt v2, v3, :cond_0

    .line 147
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->ranges:Ljava/util/Queue;

    new-instance v3, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getStart()I

    move-result v4

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getStart()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    xor-int/lit8 v6, p3, 0x1

    invoke-direct {v3, p2, v4, v5, v6}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;-><init>(IIIZ)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getEnd()I

    move-result v2

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getEnd()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_1

    .line 150
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->ranges:Ljava/util/Queue;

    new-instance v3, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getEnd()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getEnd()I

    move-result v5

    xor-int/lit8 v6, p3, 0x1

    invoke-direct {v3, p2, v4, v5, v6}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;-><init>(IIIZ)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getEnd()I

    move-result v2

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getEnd()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_2

    .line 153
    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getEnd()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 152
    move v1, v2

    .line 158
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 142
    goto :goto_0

    .line 160
    :cond_4
    :goto_1
    return-void
.end method

.method private final generateRangeAndReplaceColor(IIZ)Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;
    .locals 14
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "direction"    # Z

    .line 123
    move-object v0, p0

    move v9, p1

    new-instance v8, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;-><init>(IIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v8

    .line 124
    .local v10, "range":Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->pixels:[[I

    const-string v2, "pixels"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    aget-object v1, v1, v9

    iget v3, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->targetColor:I

    aput v3, v1, p2

    .line 125
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->filledPixels:[[Z

    if-nez v1, :cond_1

    const-string v3, "filledPixels"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    aget-object v1, v1, v9

    const/4 v3, 0x1

    aput-boolean v3, v1, p2

    .line 127
    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, p1, v1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->getStartIndex(II)I

    move-result v11

    .line 128
    .local v11, "start":I
    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, p1, v1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->getEndIndex(II)I

    move-result v12

    .line 129
    .local v12, "end":I
    move-object v1, v10

    .local v1, "$this$apply":Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;
    const/4 v4, 0x0

    .line 130
    .local v4, "$i$a$-apply-JavaFillAlgorithm$generateRangeAndReplaceColor$1":I
    invoke-virtual {v1, p1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->setLine(I)V

    .line 131
    invoke-virtual {v1, v12}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->setEnd(I)V

    .line 132
    invoke-virtual {v1, v11}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->setStart(I)V

    .line 133
    move/from16 v13, p3

    invoke-virtual {v1, v13}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->setDirection(Z)V

    .line 134
    nop

    .line 129
    .end local v1    # "$this$apply":Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;
    .end local v4    # "$i$a$-apply-JavaFillAlgorithm$generateRangeAndReplaceColor$1":I
    nop

    .line 135
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    const-string v4, "bitmap"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v4, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->pixels:[[I

    if-nez v4, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    aget-object v2, v4, v9

    iget v4, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->width:I

    sub-int v5, v12, v11

    add-int/lit8 v7, v5, 0x1

    const/4 v8, 0x1

    move v3, v11

    move v5, v11

    move v6, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 136
    return-object v10
.end method

.method public static synthetic getClickedPixel$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getColorToleranceThresholdSquared$annotations()V
    .locals 0

    return-void
.end method

.method private final getEndIndex(II)I
    .locals 5
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 118
    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->width:I

    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 181
    .local v2, "it":I
    const/4 v3, 0x0

    .line 118
    .local v3, "$i$a$-find-JavaFillAlgorithm$getEndIndex$end$1":I
    invoke-direct {p0, p1, v2}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->validateAndAssign(II)Z

    move-result v4

    .end local v2    # "it":I
    .end local v3    # "$i$a$-find-JavaFillAlgorithm$getEndIndex$end$1":I
    xor-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->width:I

    .line 119
    .local v0, "end":I
    :goto_1
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method public static synthetic getPixels$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRanges$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getReplacementColor$annotations()V
    .locals 0

    return-void
.end method

.method private final getStartIndex(II)I
    .locals 5
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 113
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 181
    .local v2, "it":I
    const/4 v3, 0x0

    .line 113
    .local v3, "$i$a$-find-JavaFillAlgorithm$getStartIndex$start$1":I
    invoke-direct {p0, p1, v2}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->validateAndAssign(II)Z

    move-result v4

    .end local v2    # "it":I
    .end local v3    # "$i$a$-find-JavaFillAlgorithm$getStartIndex$start$1":I
    xor-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 114
    .local v0, "start":I
    :goto_1
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public static synthetic getTargetColor$annotations()V
    .locals 0

    return-void
.end method

.method private final isPixelWithinColorTolerance(II)Z
    .locals 6
    .param p1, "pixel"    # I
    .param p2, "referenceColor"    # I

    .line 163
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 164
    .local v0, "redDiff":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 165
    .local v1, "greenDiff":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 166
    .local v2, "blueDiff":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 167
    .local v3, "alphaDiff":I
    nop

    .line 168
    nop

    .line 169
    nop

    .line 168
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->square(I)I

    move-result v4

    invoke-direct {p0, v1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->square(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p0, v2}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->square(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p0, v3}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->square(I)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->colorToleranceThresholdSquared:I

    if-gt v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 167
    :goto_0
    return v4
.end method

.method private final shouldCellBeFilled(II)Z
    .locals 3
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 99
    nop

    .line 100
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->filledPixels:[[Z

    if-nez v0, :cond_0

    const-string v1, "filledPixels"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->pixels:[[I

    const-string v1, "pixels"

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    aget-object v0, v0, p1

    aget v0, v0, p2

    iget v2, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->replacementColor:I

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->considerTolerance:Z

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->pixels:[[I

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    aget-object v0, v0, p1

    aget v0, v0, p2

    .line 102
    iget v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->replacementColor:I

    .line 100
    invoke-direct {p0, v0, v1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->isPixelWithinColorTolerance(II)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0
.end method

.method private final square(I)I
    .locals 1
    .param p1, "x"    # I

    .line 96
    mul-int v0, p1, p1

    return v0
.end method

.method private final validateAndAssign(II)Z
    .locals 3
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 106
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->shouldCellBeFilled(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->pixels:[[I

    if-nez v0, :cond_0

    const-string v2, "pixels"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    aget-object v0, v0, p1

    iget v2, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->targetColor:I

    aput v2, v0, p2

    .line 108
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->filledPixels:[[Z

    if-nez v0, :cond_1

    const-string v2, "filledPixels"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    aget-object v0, v0, p1

    aput-boolean v1, v0, p2

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    const/4 v1, 0x0

    .line 106
    :goto_0
    nop

    .line 110
    return v1
.end method


# virtual methods
.method public final getClickedPixel()Landroid/graphics/Point;
    .locals 2

    .line 36
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->clickedPixel:Landroid/graphics/Point;

    if-nez v0, :cond_0

    const-string v1, "clickedPixel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getColorToleranceThresholdSquared()I
    .locals 1

    .line 48
    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->colorToleranceThresholdSquared:I

    return v0
.end method

.method public final getPixels()[[I
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->pixels:[[I

    if-nez v0, :cond_0

    const-string v1, "pixels"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
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

.method public final getReplacementColor()I
    .locals 1

    .line 45
    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->replacementColor:I

    return v0
.end method

.method public final getTargetColor()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->targetColor:I

    return v0
.end method

.method public performFilling()V
    .locals 8

    .line 79
    nop

    .line 80
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->clickedPixel:Landroid/graphics/Point;

    const-string v1, "clickedPixel"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->clickedPixel:Landroid/graphics/Point;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 79
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->generateRangeAndReplaceColor(IIZ)Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;

    move-result-object v0

    .line 82
    .local v0, "range":Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;
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

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;-><init>(IIIZ)V

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "row":I
    :goto_0
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->ranges:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 86
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->ranges:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;

    if-eqz v3, :cond_5

    move-object v0, v3

    .line 87
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getDirection()Z

    move-result v3

    .line 88
    .local v3, "direction":Z
    if-ne v3, v2, :cond_2

    const/4 v4, -0x1

    goto :goto_1

    :cond_2
    move v4, v2

    .line 89
    .local v4, "diff":I
    :goto_1
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->getLine()I

    move-result v5

    add-int v1, v5, v4

    .line 90
    iget v5, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->height:I

    if-gez v1, :cond_3

    goto :goto_2

    :cond_3
    if-le v5, v1, :cond_4

    .line 91
    invoke-direct {p0, v0, v1, v3}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->checkRangeAndGenerateNewRanges(Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;IZ)V

    .line 85
    .end local v3    # "direction":Z
    .end local v4    # "diff":I
    :cond_4
    :goto_2
    goto :goto_0

    .line 94
    :cond_5
    return-void
.end method

.method public final setClickedPixel(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/graphics/Point;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->clickedPixel:Landroid/graphics/Point;

    return-void
.end method

.method public final setColorToleranceThresholdSquared(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 48
    iput p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->colorToleranceThresholdSquared:I

    return-void
.end method

.method public setParameters(Landroid/graphics/Bitmap;Landroid/graphics/Point;IIF)V
    .locals 17
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "clickedPixel"    # Landroid/graphics/Point;
    .param p3, "targetColor"    # I
    .param p4, "replacementColor"    # I
    .param p5, "colorToleranceThreshold"    # F

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

    move v9, v8

    .local v9, "it":I
    const/4 v10, 0x0

    .local v10, "$i$a$-<init>-JavaFillAlgorithm$setParameters$1":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    new-array v9, v11, [I

    .end local v9    # "it":I
    .end local v10    # "$i$a$-<init>-JavaFillAlgorithm$setParameters$1":I
    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    check-cast v6, [[I

    iput-object v6, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->pixels:[[I

    .line 67
    iget v5, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->height:I

    move v6, v7

    :goto_1
    const/4 v8, 0x1

    if-ge v6, v5, :cond_3

    .line 68
    .local v6, "i":I
    iget-object v9, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->bitmap:Landroid/graphics/Bitmap;

    if-nez v9, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v10, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->pixels:[[I

    if-nez v10, :cond_2

    const-string v11, "pixels"

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    aget-object v10, v10, v6

    const/4 v11, 0x0

    iget v15, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->width:I

    const/4 v13, 0x0

    const/16 v16, 0x1

    move v12, v15

    move v14, v6

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 67
    nop

    .end local v6    # "i":I
    add-int/2addr v6, v8

    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-array v5, v4, [[Z

    move v6, v7

    :goto_2
    if-ge v6, v4, :cond_4

    move v9, v6

    .restart local v9    # "it":I
    const/4 v10, 0x0

    .local v10, "$i$a$-<init>-JavaFillAlgorithm$setParameters$2":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    new-array v9, v11, [Z

    .end local v9    # "it":I
    .end local v10    # "$i$a$-<init>-JavaFillAlgorithm$setParameters$2":I
    aput-object v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    check-cast v5, [[Z

    iput-object v5, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->filledPixels:[[Z

    .line 71
    iput-object v2, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->clickedPixel:Landroid/graphics/Point;

    .line 72
    move/from16 v4, p3

    iput v4, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->targetColor:I

    .line 73
    move/from16 v5, p4

    iput v5, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->replacementColor:I

    .line 74
    float-to-int v6, v3

    invoke-direct {v0, v6}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->square(I)I

    move-result v6

    iput v6, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->colorToleranceThresholdSquared:I

    .line 75
    int-to-float v6, v7

    cmpl-float v6, v3, v6

    if-lez v6, :cond_5

    move v7, v8

    :cond_5
    iput-boolean v7, v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->considerTolerance:Z

    .line 76
    return-void
.end method

.method public final setPixels([[I)V
    .locals 1
    .param p1, "<set-?>"    # [[I

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->pixels:[[I

    return-void
.end method

.method public final setReplacementColor(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 45
    iput p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->replacementColor:I

    return-void
.end method

.method public final setTargetColor(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 42
    iput p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;->targetColor:I

    return-void
.end method
