.class public final Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;
.super Ljava/lang/Object;
.source "JavaCropAlgorithm.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/helper/CropAlgorithm;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJavaCropAlgorithm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaCropAlgorithm.kt\norg/catrobat/paintroid/tools/helper/JavaCropAlgorithm\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n286#2:77\n286#2,2:78\n287#2:80\n516#2,3:81\n286#2,2:84\n519#2,4:86\n286#2:90\n286#2,2:91\n287#2:93\n516#2,3:94\n286#2,2:97\n519#2,4:99\n*S KotlinDebug\n*F\n+ 1 JavaCropAlgorithm.kt\norg/catrobat/paintroid/tools/helper/JavaCropAlgorithm\n*L\n36#1:77\n38#1:78,2\n36#1:80\n42#1:81,3\n44#1:84,2\n42#1:86,4\n48#1:90\n50#1:91,2\n48#1:93\n54#1:94,3\n56#1:97,2\n54#1:99,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\r\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\r\u0010\u000b\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\r\u0010\u000c\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\r\u0010\r\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0004J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\tH\u0002J\u000c\u0010\u0014\u001a\u00020\u0015*\u00020\u0006H\u0002J\u000c\u0010\u0016\u001a\u00020\u0015*\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;",
        "Lorg/catrobat/paintroid/tools/helper/CropAlgorithm;",
        "()V",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "bounds",
        "Landroid/graphics/Rect;",
        "crop",
        "getBottommostCellWithOpaquePixel",
        "",
        "()Ljava/lang/Integer;",
        "getLeftmostCellWithOpaquePixel",
        "getRightmostCellWithOpaquePixel",
        "getTopmostCellWithOpaquePixel",
        "init",
        "",
        "isOpaquePixel",
        "",
        "x",
        "y",
        "xRange",
        "Lkotlin/ranges/IntRange;",
        "yRange",
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

.field private bounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isOpaquePixel(II)Z
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string v0, "bitmap"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final xRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;
    .locals 2

    .line 31
    new-instance v0, Lkotlin/ranges/IntRange;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v1, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0
.end method

.method private final yRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;
    .locals 2

    .line 29
    new-instance v0, Lkotlin/ranges/IntRange;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public crop(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 65
    :cond_0
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bitmap:Landroid/graphics/Bitmap;

    .line 66
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    .line 68
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->getTopmostCellWithOpaquePixel()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v1, Landroid/graphics/Rect;->top:I

    .line 69
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    const-string v1, "bounds"

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->getBottommostCellWithOpaquePixel()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_3
    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 70
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_5
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->getLeftmostCellWithOpaquePixel()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v2, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_6
    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 71
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez p1, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_8
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->getRightmostCellWithOpaquePixel()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v2, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_9
    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_2
    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 73
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez p1, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move-object v0, p1

    :goto_3
    return-object v0
.end method

.method public final getBottommostCellWithOpaquePixel()Ljava/lang/Integer;
    .locals 9

    .line 42
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    const-string v1, "bounds"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->yRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 82
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 83
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 43
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v6, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_2
    invoke-direct {p0, v6}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->xRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 84
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 44
    invoke-direct {p0, v8, v5}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->isOpaquePixel(II)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_4
    move-object v7, v2

    :goto_1
    if-eqz v7, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 89
    :cond_6
    check-cast v3, Ljava/lang/Integer;

    return-object v3
.end method

.method public final getLeftmostCellWithOpaquePixel()Ljava/lang/Integer;
    .locals 8

    .line 48
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    const-string v1, "bounds"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->xRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 90
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 49
    iget-object v5, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v5, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_2
    invoke-direct {p0, v5}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->yRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 91
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 50
    invoke-direct {p0, v4, v7}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->isOpaquePixel(II)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_4
    move-object v6, v2

    :goto_0
    if-eqz v6, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    move-object v2, v3

    .line 93
    :cond_6
    check-cast v2, Ljava/lang/Integer;

    return-object v2
.end method

.method public final getRightmostCellWithOpaquePixel()Ljava/lang/Integer;
    .locals 9

    .line 54
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    const-string v1, "bounds"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->xRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 95
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 96
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 55
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v6, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_2
    invoke-direct {p0, v6}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->yRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 97
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 56
    invoke-direct {p0, v5, v8}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->isOpaquePixel(II)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_4
    move-object v7, v2

    :goto_1
    if-eqz v7, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 102
    :cond_6
    check-cast v3, Ljava/lang/Integer;

    return-object v3
.end method

.method public final getTopmostCellWithOpaquePixel()Ljava/lang/Integer;
    .locals 8

    .line 36
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    const-string v1, "bounds"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->yRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 77
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 37
    iget-object v5, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v5, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_2
    invoke-direct {p0, v5}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->xRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 78
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 38
    invoke-direct {p0, v7, v4}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->isOpaquePixel(II)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_4
    move-object v6, v2

    :goto_0
    if-eqz v6, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    move-object v2, v3

    .line 80
    :cond_6
    check-cast v2, Ljava/lang/Integer;

    return-object v2
.end method

.method public final init(Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bitmap:Landroid/graphics/Bitmap;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    return-void
.end method
