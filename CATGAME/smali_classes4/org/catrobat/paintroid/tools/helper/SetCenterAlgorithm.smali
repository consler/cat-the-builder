.class public final Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;
.super Ljava/lang/Object;
.source "SetCenterAlgorithm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000c\u001a\u00020\rH\u0002J\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J\u0008\u0010\u0012\u001a\u00020\u0010H\u0002J\u0008\u0010\u0013\u001a\u00020\u0010H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;",
        "",
        "javaCropAlgorithm",
        "Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;",
        "(Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;)V",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "bounds",
        "Landroid/graphics/Rect;",
        "cropAlgorithm",
        "position",
        "Landroid/graphics/PointF;",
        "checkIfNothingFound",
        "",
        "crop",
        "getDistanceBottom",
        "",
        "getDistanceLeft",
        "getDistanceRight",
        "getDistanceTop",
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

.field private cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

.field private position:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;)V
    .locals 1
    .param p1, "javaCropAlgorithm"    # Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

    const-string v0, "javaCropAlgorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

    return-void
.end method

.method private final checkIfNothingFound()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->getLeftmostCellWithOpaquePixel()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final getDistanceBottom()I
    .locals 3

    .line 48
    nop

    .line 49
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->getBottommostCellWithOpaquePixel()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    nop

    .line 50
    .local v0, "bottommostCell":I
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->position:Landroid/graphics/PointF;

    if-nez v1, :cond_0

    const-string v2, "position"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    sub-int v1, v0, v1

    return v1

    .line 49
    .end local v0    # "bottommostCell":I
    :cond_1
    const/high16 v0, -0x80000000

    return v0
.end method

.method private final getDistanceLeft()I
    .locals 3

    .line 33
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->getLeftmostCellWithOpaquePixel()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 34
    .local v0, "leftmostCell":I
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->position:Landroid/graphics/PointF;

    if-nez v1, :cond_0

    const-string v2, "position"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    sub-int/2addr v1, v0

    return v1

    .line 33
    .end local v0    # "leftmostCell":I
    :cond_1
    const/high16 v0, -0x80000000

    return v0
.end method

.method private final getDistanceRight()I
    .locals 3

    .line 38
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->getRightmostCellWithOpaquePixel()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 39
    .local v0, "rightmostCell":I
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->position:Landroid/graphics/PointF;

    if-nez v1, :cond_0

    const-string v2, "position"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    sub-int v1, v0, v1

    return v1

    .line 38
    .end local v0    # "rightmostCell":I
    :cond_1
    const/high16 v0, -0x80000000

    return v0
.end method

.method private final getDistanceTop()I
    .locals 3

    .line 43
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->getTopmostCellWithOpaquePixel()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 44
    .local v0, "topmostCell":I
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->position:Landroid/graphics/PointF;

    if-nez v1, :cond_0

    const-string v2, "position"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    sub-int/2addr v1, v0

    return v1

    .line 43
    .end local v0    # "topmostCell":I
    :cond_1
    const/high16 v0, -0x80000000

    return v0
.end method


# virtual methods
.method public final crop(Landroid/graphics/Bitmap;Landroid/graphics/PointF;)Landroid/graphics/Rect;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "position"    # Landroid/graphics/PointF;

    .line 57
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->bitmap:Landroid/graphics/Bitmap;

    .line 58
    if-eqz p2, :cond_8

    iput-object p2, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->position:Landroid/graphics/PointF;

    .line 59
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

    invoke-virtual {v1, p1}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->init(Landroid/graphics/Bitmap;)V

    .line 61
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->checkIfNothingFound()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 63
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->getDistanceLeft()I

    move-result v0

    .line 64
    .local v0, "distanceLeft":I
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->getDistanceRight()I

    move-result v1

    .line 65
    .local v1, "distanceRight":I
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->getDistanceTop()I

    move-result v2

    .line 66
    .local v2, "distanceTop":I
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->getDistanceBottom()I

    move-result v3

    .line 68
    .local v3, "distanceBottom":I
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->bounds:Landroid/graphics/Rect;

    .line 70
    if-le v2, v3, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 71
    .local v4, "distanceVertical":I
    :goto_0
    if-le v0, v1, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    move v5, v1

    .line 73
    .local v5, "distanceHorizontal":I
    :goto_1
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->bounds:Landroid/graphics/Rect;

    const-string v7, "bounds"

    if-nez v6, :cond_3

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget v8, p2, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    sub-int/2addr v8, v4

    iput v8, v6, Landroid/graphics/Rect;->top:I

    .line 74
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v6, :cond_4

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget v8, p2, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    add-int/2addr v8, v4

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 75
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v6, :cond_5

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget v8, p2, Landroid/graphics/PointF;->x:F

    float-to-int v8, v8

    sub-int/2addr v8, v5

    iput v8, v6, Landroid/graphics/Rect;->left:I

    .line 76
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v6, :cond_6

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget v8, p2, Landroid/graphics/PointF;->x:F

    float-to-int v8, v8

    add-int/2addr v8, v5

    iput v8, v6, Landroid/graphics/Rect;->right:I

    .line 78
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v6, :cond_7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    return-object v6

    .line 58
    .end local v0    # "distanceLeft":I
    .end local v1    # "distanceRight":I
    .end local v2    # "distanceTop":I
    .end local v3    # "distanceBottom":I
    .end local v4    # "distanceVertical":I
    .end local v5    # "distanceHorizontal":I
    :cond_8
    return-object v0

    .line 57
    :cond_9
    return-object v0
.end method
