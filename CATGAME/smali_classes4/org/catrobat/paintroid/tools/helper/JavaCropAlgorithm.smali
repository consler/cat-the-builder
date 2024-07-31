.class public final Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;
.super Ljava/lang/Object;
.source "JavaCropAlgorithm.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/helper/CropAlgorithm;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJavaCropAlgorithm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaCropAlgorithm.kt\norg/catrobat/paintroid/tools/helper/JavaCropAlgorithm\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n256#2:77\n256#2,2:78\n257#2:80\n486#2,3:81\n256#2,2:84\n489#2,4:86\n256#2:90\n256#2,2:91\n257#2:93\n486#2,3:94\n256#2,2:97\n489#2,4:99\n*E\n*S KotlinDebug\n*F\n+ 1 JavaCropAlgorithm.kt\norg/catrobat/paintroid/tools/helper/JavaCropAlgorithm\n*L\n36#1:77\n38#1,2:78\n36#1:80\n42#1,3:81\n44#1,2:84\n42#1,4:86\n48#1:90\n50#1,2:91\n48#1:93\n54#1,3:94\n56#1,2:97\n54#1,4:99\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
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

.field private bounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isOpaquePixel(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 33
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string v1, "bitmap"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final xRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;
    .locals 3
    .param p1, "$this$xRange"    # Landroid/graphics/Rect;

    .line 31
    iget v0, p1, Landroid/graphics/Rect;->left:I

    new-instance v1, Lkotlin/ranges/IntRange;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v0, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v1
.end method

.method private final yRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;
    .locals 3
    .param p1, "$this$yRange"    # Landroid/graphics/Rect;

    .line 29
    iget v0, p1, Landroid/graphics/Rect;->top:I

    new-instance v1, Lkotlin/ranges/IntRange;

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v0, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public crop(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 65
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bitmap:Landroid/graphics/Bitmap;

    .line 66
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    .line 68
    const-string v2, "bounds"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->getTopmostCellWithOpaquePixel()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 69
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->getBottommostCellWithOpaquePixel()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 70
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->getLeftmostCellWithOpaquePixel()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    :goto_1
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 71
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->getRightmostCellWithOpaquePixel()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v1, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x1

    :goto_2
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 73
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v0, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    return-object v0

    .line 68
    :cond_b
    return-object v0

    .line 65
    :cond_c
    return-object v0
.end method

.method public final getBottommostCellWithOpaquePixel()Ljava/lang/Integer;
    .locals 14

    .line 42
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    const-string v1, "bounds"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->yRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$lastOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 81
    .local v2, "$i$f$lastOrNull":I
    const/4 v3, 0x0

    .line 82
    .local v3, "last$iv":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 83
    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .local v6, "y":I
    const/4 v7, 0x0

    .line 43
    .local v7, "$i$a$-lastOrNull-JavaCropAlgorithm$getBottommostCellWithOpaquePixel$1":I
    nop

    .line 44
    nop

    .line 43
    iget-object v8, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v8, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v8}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->xRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 44
    nop

    .local v8, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 84
    .local v9, "$i$f$firstOrNull":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .local v12, "x":I
    const/4 v13, 0x0

    .line 44
    .local v13, "$i$a$-firstOrNull-JavaCropAlgorithm$getBottommostCellWithOpaquePixel$1$1":I
    invoke-direct {p0, v12, v6}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->isOpaquePixel(II)Z

    move-result v12

    .end local v12    # "x":I
    .end local v13    # "$i$a$-firstOrNull-JavaCropAlgorithm$getBottommostCellWithOpaquePixel$1$1":I
    if-eqz v12, :cond_2

    goto :goto_1

    .line 85
    .end local v11    # "element$iv":Ljava/lang/Object;
    :cond_3
    const/4 v11, 0x0

    .end local v8    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$firstOrNull":I
    :goto_1
    if-eqz v11, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    .end local v6    # "y":I
    .end local v7    # "$i$a$-lastOrNull-JavaCropAlgorithm$getBottommostCellWithOpaquePixel$1":I
    :goto_2
    if-eqz v8, :cond_5

    .line 86
    move-object v3, v5

    .line 82
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_5
    goto :goto_0

    .line 89
    :cond_6
    nop

    .end local v0    # "$this$lastOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$lastOrNull":I
    .end local v3    # "last$iv":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    .line 45
    return-object v0
.end method

.method public final getLeftmostCellWithOpaquePixel()Ljava/lang/Integer;
    .locals 14

    .line 48
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    const-string v1, "bounds"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->xRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 90
    .local v2, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .local v6, "x":I
    const/4 v7, 0x0

    .line 49
    .local v7, "$i$a$-firstOrNull-JavaCropAlgorithm$getLeftmostCellWithOpaquePixel$1":I
    nop

    .line 50
    nop

    .line 49
    iget-object v8, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v8, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v8}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->yRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 50
    nop

    .local v8, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 91
    .local v9, "$i$f$firstOrNull":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .local v12, "y":I
    const/4 v13, 0x0

    .line 50
    .local v13, "$i$a$-firstOrNull-JavaCropAlgorithm$getLeftmostCellWithOpaquePixel$1$1":I
    invoke-direct {p0, v6, v12}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->isOpaquePixel(II)Z

    move-result v12

    .end local v12    # "y":I
    .end local v13    # "$i$a$-firstOrNull-JavaCropAlgorithm$getLeftmostCellWithOpaquePixel$1$1":I
    if-eqz v12, :cond_3

    move-object v5, v11

    goto :goto_0

    .line 92
    .end local v11    # "element$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v8    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$firstOrNull":I
    :goto_0
    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    .end local v6    # "x":I
    .end local v7    # "$i$a$-firstOrNull-JavaCropAlgorithm$getLeftmostCellWithOpaquePixel$1":I
    :goto_1
    if-eqz v5, :cond_1

    move-object v5, v4

    goto :goto_2

    .line 93
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$firstOrNull":I
    :goto_2
    check-cast v5, Ljava/lang/Integer;

    .line 51
    return-object v5
.end method

.method public final getRightmostCellWithOpaquePixel()Ljava/lang/Integer;
    .locals 14

    .line 54
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    const-string v1, "bounds"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->xRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$lastOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 94
    .local v2, "$i$f$lastOrNull":I
    const/4 v3, 0x0

    .line 95
    .local v3, "last$iv":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 96
    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .local v6, "x":I
    const/4 v7, 0x0

    .line 55
    .local v7, "$i$a$-lastOrNull-JavaCropAlgorithm$getRightmostCellWithOpaquePixel$1":I
    nop

    .line 56
    nop

    .line 55
    iget-object v8, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v8, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v8}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->yRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 56
    nop

    .local v8, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 97
    .local v9, "$i$f$firstOrNull":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .local v12, "y":I
    const/4 v13, 0x0

    .line 56
    .local v13, "$i$a$-firstOrNull-JavaCropAlgorithm$getRightmostCellWithOpaquePixel$1$1":I
    invoke-direct {p0, v6, v12}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->isOpaquePixel(II)Z

    move-result v12

    .end local v12    # "y":I
    .end local v13    # "$i$a$-firstOrNull-JavaCropAlgorithm$getRightmostCellWithOpaquePixel$1$1":I
    if-eqz v12, :cond_2

    goto :goto_1

    .line 98
    .end local v11    # "element$iv":Ljava/lang/Object;
    :cond_3
    const/4 v11, 0x0

    .end local v8    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$firstOrNull":I
    :goto_1
    if-eqz v11, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    .end local v6    # "x":I
    .end local v7    # "$i$a$-lastOrNull-JavaCropAlgorithm$getRightmostCellWithOpaquePixel$1":I
    :goto_2
    if-eqz v8, :cond_5

    .line 99
    move-object v3, v5

    .line 95
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_5
    goto :goto_0

    .line 102
    :cond_6
    nop

    .end local v0    # "$this$lastOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$lastOrNull":I
    .end local v3    # "last$iv":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    .line 57
    return-object v0
.end method

.method public final getTopmostCellWithOpaquePixel()Ljava/lang/Integer;
    .locals 14

    .line 36
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    const-string v1, "bounds"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->yRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 77
    .local v2, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .local v6, "y":I
    const/4 v7, 0x0

    .line 37
    .local v7, "$i$a$-firstOrNull-JavaCropAlgorithm$getTopmostCellWithOpaquePixel$1":I
    nop

    .line 38
    nop

    .line 37
    iget-object v8, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v8, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v8}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->xRange(Landroid/graphics/Rect;)Lkotlin/ranges/IntRange;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 38
    nop

    .local v8, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 78
    .local v9, "$i$f$firstOrNull":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .local v12, "x":I
    const/4 v13, 0x0

    .line 38
    .local v13, "$i$a$-firstOrNull-JavaCropAlgorithm$getTopmostCellWithOpaquePixel$1$1":I
    invoke-direct {p0, v12, v6}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->isOpaquePixel(II)Z

    move-result v12

    .end local v12    # "x":I
    .end local v13    # "$i$a$-firstOrNull-JavaCropAlgorithm$getTopmostCellWithOpaquePixel$1$1":I
    if-eqz v12, :cond_3

    move-object v5, v11

    goto :goto_0

    .line 79
    .end local v11    # "element$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v8    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$firstOrNull":I
    :goto_0
    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    .end local v6    # "y":I
    .end local v7    # "$i$a$-firstOrNull-JavaCropAlgorithm$getTopmostCellWithOpaquePixel$1":I
    :goto_1
    if-eqz v5, :cond_1

    move-object v5, v4

    goto :goto_2

    .line 80
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$firstOrNull":I
    :goto_2
    check-cast v5, Ljava/lang/Integer;

    .line 39
    return-object v5
.end method

.method public final init(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

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

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->bounds:Landroid/graphics/Rect;

    .line 62
    return-void
.end method
