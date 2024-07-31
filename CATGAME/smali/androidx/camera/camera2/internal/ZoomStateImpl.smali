.class Landroidx/camera/camera2/internal/ZoomStateImpl;
.super Ljava/lang/Object;
.source "ZoomStateImpl.java"

# interfaces
.implements Landroidx/camera/core/ZoomState;


# instance fields
.field private mLinearZoom:F

.field private final mMaxZoomRatio:F

.field private final mMinZoomRatio:F

.field private mZoomRatio:F


# direct methods
.method constructor <init>(FF)V
    .locals 0
    .param p1, "maxZoomRatio"    # F
    .param p2, "minZoomRatio"    # F

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mMaxZoomRatio:F

    .line 31
    iput p2, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mMinZoomRatio:F

    .line 32
    return-void
.end method

.method private getPercentageByRatio(F)F
    .locals 5
    .param p1, "ratio"    # F

    .line 99
    iget v0, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mMaxZoomRatio:F

    iget v1, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mMinZoomRatio:F

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 100
    return v3

    .line 105
    :cond_0
    cmpl-float v2, p1, v0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v2, :cond_1

    .line 106
    return v4

    .line 107
    :cond_1
    cmpl-float v2, p1, v1

    if-nez v2, :cond_2

    .line 108
    return v3

    .line 111
    :cond_2
    div-float v2, v4, p1

    .line 112
    .local v2, "cropWidth":F
    div-float v0, v4, v0

    .line 113
    .local v0, "cropWidthInMaxZoom":F
    div-float/2addr v4, v1

    .line 115
    .local v4, "cropWidthInMinZoom":F
    sub-float v1, v2, v4

    sub-float v3, v0, v4

    div-float/2addr v1, v3

    return v1
.end method

.method private getRatioByPercentage(F)F
    .locals 19
    .param p1, "percentage"    # F

    .line 78
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    .line 79
    iget v2, v0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mMaxZoomRatio:F

    return v2

    .line 80
    :cond_0
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    .line 81
    iget v2, v0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mMinZoomRatio:F

    return v2

    .line 86
    :cond_1
    iget v3, v0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mMaxZoomRatio:F

    div-float v4, v2, v3

    float-to-double v4, v4

    .line 87
    .local v4, "cropWidthInMaxZoom":D
    iget v6, v0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mMinZoomRatio:F

    div-float/2addr v2, v6

    float-to-double v7, v2

    .line 89
    .local v7, "cropWidthInMinZoom":D
    sub-double v9, v4, v7

    float-to-double v11, v1

    mul-double/2addr v9, v11

    add-double/2addr v9, v7

    .line 92
    .local v9, "cropWidth":D
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double/2addr v11, v9

    .line 94
    .local v11, "ratio":D
    float-to-double v13, v6

    float-to-double v2, v3

    move-wide v15, v13

    move-wide v13, v11

    move-wide/from16 v17, v2

    invoke-static/range {v13 .. v18}, Landroidx/core/math/MathUtils;->clamp(DDD)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method


# virtual methods
.method public getLinearZoom()F
    .locals 1

    .line 73
    iget v0, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mLinearZoom:F

    return v0
.end method

.method public getMaxZoomRatio()F
    .locals 1

    .line 63
    iget v0, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mMaxZoomRatio:F

    return v0
.end method

.method public getMinZoomRatio()F
    .locals 1

    .line 68
    iget v0, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mMinZoomRatio:F

    return v0
.end method

.method public getZoomRatio()F
    .locals 1

    .line 58
    iget v0, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mZoomRatio:F

    return v0
.end method

.method setLinearZoom(F)V
    .locals 2
    .param p1, "linearZoom"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 52
    iput p1, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mLinearZoom:F

    .line 53
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/ZoomStateImpl;->getRatioByPercentage(F)F

    move-result v0

    iput v0, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mZoomRatio:F

    .line 54
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested linearZoom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " is not within valid range [0..1]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "outOfRangeDesc":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setZoomRatio(F)V
    .locals 2
    .param p1, "zoomRatio"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 35
    iget v0, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mMaxZoomRatio:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mMinZoomRatio:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 42
    iput p1, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mZoomRatio:F

    .line 43
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/ZoomStateImpl;->getPercentageByRatio(F)F

    move-result v0

    iput v0, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mLinearZoom:F

    .line 44
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested zoomRatio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " is not within valid range ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mMinZoomRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->mMaxZoomRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "outOfRangeDesc":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
