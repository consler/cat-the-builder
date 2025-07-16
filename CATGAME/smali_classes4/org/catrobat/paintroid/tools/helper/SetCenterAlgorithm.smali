.class public final Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;
.super Ljava/lang/Object;
.source "SetCenterAlgorithm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
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

.field private cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

.field private position:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;)V
    .locals 1

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
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->getBottommostCellWithOpaquePixel()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 50
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->position:Landroid/graphics/PointF;

    if-nez v1, :cond_1

    const-string v1, "position"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private final getDistanceLeft()I
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->getLeftmostCellWithOpaquePixel()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 34
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->position:Landroid/graphics/PointF;

    if-nez v1, :cond_1

    const-string v1, "position"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    sub-int/2addr v1, v0

    return v1
.end method

.method private final getDistanceRight()I
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->getRightmostCellWithOpaquePixel()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 39
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->position:Landroid/graphics/PointF;

    if-nez v1, :cond_1

    const-string v1, "position"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private final getDistanceTop()I
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->getTopmostCellWithOpaquePixel()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 44
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->position:Landroid/graphics/PointF;

    if-nez v1, :cond_1

    const-string v1, "position"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    sub-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public final crop(Landroid/graphics/Bitmap;Landroid/graphics/PointF;)Landroid/graphics/Rect;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 57
    :cond_0
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->bitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_1

    return-object v0

    .line 58
    :cond_1
    iput-object p2, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->position:Landroid/graphics/PointF;

    .line 59
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

    invoke-virtual {v1, p1}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;->init(Landroid/graphics/Bitmap;)V

    .line 61
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->checkIfNothingFound()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    .line 63
    :cond_2
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->getDistanceLeft()I

    move-result p1

    .line 64
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->getDistanceRight()I

    move-result v1

    .line 65
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->getDistanceTop()I

    move-result v2

    .line 66
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->getDistanceBottom()I

    move-result v3

    .line 68
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->bounds:Landroid/graphics/Rect;

    if-le v2, v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    if-le p1, v1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v1

    .line 73
    :goto_1
    iget v1, p2, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    sub-int/2addr v1, v2

    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 74
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->bounds:Landroid/graphics/Rect;

    const-string v3, "bounds"

    if-nez v1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_5
    iget v4, p2, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    add-int/2addr v4, v2

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 75
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v1, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_6
    iget v2, p2, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    sub-int/2addr v2, p1

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 76
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez v1, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_7
    iget p2, p2, Landroid/graphics/PointF;->x:F

    float-to-int p2, p2

    add-int/2addr p2, p1

    iput p2, v1, Landroid/graphics/Rect;->right:I

    .line 78
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;->bounds:Landroid/graphics/Rect;

    if-nez p1, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v0, p1

    :goto_2
    return-object v0
.end method
