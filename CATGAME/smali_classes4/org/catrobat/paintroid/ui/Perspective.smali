.class public Lorg/catrobat/paintroid/ui/Perspective;
.super Ljava/lang/Object;
.source "Perspective.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201J\u0006\u00102\u001a\u00020\u000cJ\u000e\u00103\u001a\u00020/2\u0006\u00104\u001a\u000205J\u000e\u00106\u001a\u00020/2\u0006\u00107\u001a\u000205J\u000e\u00108\u001a\u0002052\u0006\u00104\u001a\u000205J\u0010\u00109\u001a\u00020\u000c2\u0006\u0010:\u001a\u00020\u000cH\u0002J\u000e\u0010;\u001a\u0002052\u0006\u00107\u001a\u000205J\u000e\u0010<\u001a\u00020/2\u0006\u0010=\u001a\u00020\u000cJ\u0006\u0010>\u001a\u00020/J\u0016\u0010?\u001a\u00020/2\u0006\u0010@\u001a\u00020\u00032\u0006\u0010A\u001a\u00020\u0003J\u000e\u0010B\u001a\u00020/2\u0006\u0010C\u001a\u00020DJ\u0016\u0010E\u001a\u00020/2\u0006\u0010F\u001a\u00020\u000c2\u0006\u0010G\u001a\u00020\u000cR\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\r\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0011\"\u0004\u0008\u001c\u0010\u0013R$\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u000c8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001e\u0010\u0011\"\u0004\u0008\u001f\u0010\u0013R\u0011\u0010 \u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0011R\u0018\u0010\"\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008#\u0010\u000fR\u0018\u0010$\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008%\u0010\u000fR\u0012\u0010&\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\'\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008(\u0010\u000f\u001a\u0004\u0008)\u0010\u0011\"\u0004\u0008*\u0010\u0013R\u0012\u0010+\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010,\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010-\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006H"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/Perspective;",
        "",
        "bitmapWidth",
        "",
        "bitmapHeight",
        "(II)V",
        "callResetScaleAndTransformationOnStartUp",
        "getCallResetScaleAndTransformationOnStartUp",
        "()I",
        "setCallResetScaleAndTransformationOnStartUp",
        "(I)V",
        "initialTranslationX",
        "",
        "initialTranslationY",
        "getInitialTranslationY$annotations",
        "()V",
        "getInitialTranslationY",
        "()F",
        "setInitialTranslationY",
        "(F)V",
        "mainActivity",
        "Lorg/catrobat/paintroid/MainActivity;",
        "getMainActivity",
        "()Lorg/catrobat/paintroid/MainActivity;",
        "setMainActivity",
        "(Lorg/catrobat/paintroid/MainActivity;)V",
        "oldHeight",
        "getOldHeight",
        "setOldHeight",
        "scale",
        "getScale",
        "setScale",
        "scaleForCenterBitmap",
        "getScaleForCenterBitmap",
        "surfaceCenterX",
        "getSurfaceCenterX$annotations",
        "surfaceCenterY",
        "getSurfaceCenterY$annotations",
        "surfaceHeight",
        "surfaceScale",
        "getSurfaceScale$annotations",
        "getSurfaceScale",
        "setSurfaceScale",
        "surfaceTranslationX",
        "surfaceTranslationY",
        "surfaceWidth",
        "applyToCanvas",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "calculateZoomFactor",
        "convertToCanvasFromSurface",
        "surfacePoint",
        "Landroid/graphics/PointF;",
        "convertToSurfaceFromCanvas",
        "canvasPoint",
        "getCanvasPointFromSurfacePoint",
        "getExactCenterYIgnoreWindowResize",
        "actualExactCenterY",
        "getSurfacePointFromCanvasPoint",
        "multiplyScale",
        "factor",
        "resetScaleAndTranslation",
        "setBitmapDimensions",
        "width",
        "height",
        "setSurfaceFrame",
        "surfaceFrame",
        "Landroid/graphics/Rect;",
        "translate",
        "dx",
        "dy",
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
.field private bitmapHeight:I

.field private bitmapWidth:I

.field private callResetScaleAndTransformationOnStartUp:I

.field private initialTranslationX:F

.field private initialTranslationY:F

.field private mainActivity:Lorg/catrobat/paintroid/MainActivity;

.field private oldHeight:F

.field public surfaceCenterX:F

.field public surfaceCenterY:F

.field public surfaceHeight:I

.field private surfaceScale:F

.field public surfaceTranslationX:F

.field public surfaceTranslationY:F

.field public surfaceWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/catrobat/paintroid/ui/Perspective;->bitmapWidth:I

    iput p2, p0, Lorg/catrobat/paintroid/ui/Perspective;->bitmapHeight:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 50
    iput p1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceScale:F

    return-void
.end method

.method private final getExactCenterYIgnoreWindowResize(F)F
    .locals 2

    .line 216
    iget v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceCenterY:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    cmpl-float v1, v0, p1

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method public static synthetic getInitialTranslationY$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSurfaceCenterX$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSurfaceCenterY$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSurfaceScale$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final declared-synchronized applyToCanvas(Landroid/graphics/Canvas;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceScale:F

    iget v1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceCenterX:F

    iget v2, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceCenterY:F

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 212
    iget v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationX:F

    iget v1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized calculateZoomFactor()F
    .locals 4

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 137
    :goto_0
    iget v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->bitmapHeight:I

    iget v2, p0, Lorg/catrobat/paintroid/ui/Perspective;->bitmapWidth:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-le v0, v2, :cond_5

    .line 138
    iget v2, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v2, :cond_3

    .line 139
    monitor-exit p0

    return v3

    :cond_3
    if-eqz v1, :cond_4

    .line 142
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/catrobat/paintroid/ui/Perspective;->bitmapHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v1, v1

    div-float/2addr v0, v1

    monitor-exit p0

    return v0

    :cond_4
    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 144
    monitor-exit p0

    return v1

    .line 148
    :cond_5
    :try_start_2
    iget v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceWidth:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v2, v0, :cond_6

    .line 149
    monitor-exit p0

    return v3

    :cond_6
    int-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 151
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized convertToCanvasFromSurface(Landroid/graphics/PointF;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "surfacePoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceCenterX:F

    sub-float/2addr v0, v1

    iget v2, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceScale:F

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationX:F

    sub-float/2addr v0, v1

    .line 181
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 184
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceCenterY:F

    sub-float/2addr v0, v1

    iget v2, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceScale:F

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationY:F

    sub-float/2addr v0, v1

    .line 183
    iput v0, p1, Landroid/graphics/PointF;->y:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized convertToSurfaceFromCanvas(Landroid/graphics/PointF;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "canvasPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationX:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceCenterX:F

    sub-float/2addr v0, v1

    iget v2, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceScale:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 189
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 192
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationY:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceCenterY:F

    sub-float/2addr v0, v1

    iget v2, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceScale:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 191
    iput v0, p1, Landroid/graphics/PointF;->y:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getCallResetScaleAndTransformationOnStartUp()I
    .locals 1

    .line 95
    iget v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->callResetScaleAndTransformationOnStartUp:I

    return v0
.end method

.method public final declared-synchronized getCanvasPointFromSurfacePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "surfacePoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 198
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/ui/Perspective;->convertToCanvasFromSurface(Landroid/graphics/PointF;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getInitialTranslationY()F
    .locals 1

    .line 59
    iget v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->initialTranslationY:F

    return v0
.end method

.method public final getMainActivity()Lorg/catrobat/paintroid/MainActivity;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    return-object v0
.end method

.method public final getOldHeight()F
    .locals 1

    .line 97
    iget v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->oldHeight:F

    return v0
.end method

.method public final getScale()F
    .locals 1

    .line 63
    iget v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceScale:F

    return v0
.end method

.method public final getScaleForCenterBitmap()F
    .locals 6

    .line 71
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    .line 75
    iget v2, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceWidth:I

    int-to-float v2, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_1

    :cond_3
    move v2, v0

    .line 78
    :goto_1
    iget v3, p0, Lorg/catrobat/paintroid/ui/Perspective;->bitmapWidth:I

    int-to-float v4, v3

    iget v5, p0, Lorg/catrobat/paintroid/ui/Perspective;->bitmapHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    if-eqz v1, :cond_5

    .line 81
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/catrobat/paintroid/ui/Perspective;->bitmapHeight:I

    int-to-float v1, v1

    goto :goto_2

    .line 84
    :cond_4
    iget v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceWidth:I

    int-to-float v0, v0

    int-to-float v1, v3

    :goto_2
    div-float/2addr v0, v1

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final declared-synchronized getSurfacePointFromCanvasPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "canvasPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 205
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/ui/Perspective;->convertToSurfaceFromCanvas(Landroid/graphics/PointF;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getSurfaceScale()F
    .locals 1

    .line 50
    iget v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceScale:F

    return v0
.end method

.method public final declared-synchronized multiplyScale(F)V
    .locals 1

    monitor-enter p0

    .line 158
    :try_start_0
    iget v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceScale:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/ui/Perspective;->setScale(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized resetScaleAndTranslation()V
    .locals 4

    monitor-enter p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 119
    :try_start_0
    iput v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceScale:F

    .line 120
    iget v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceWidth:I

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceHeight:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 124
    iget v3, p0, Lorg/catrobat/paintroid/ui/Perspective;->bitmapWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    iput v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationX:F

    .line 125
    iput v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->initialTranslationX:F

    int-to-float v0, v1

    div-float/2addr v0, v2

    .line 126
    iget v1, p0, Lorg/catrobat/paintroid/ui/Perspective;->bitmapHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationY:F

    .line 127
    iput v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->initialTranslationY:F

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationX:F

    .line 122
    iput v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationY:F

    .line 129
    :goto_1
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/Perspective;->calculateZoomFactor()F

    move-result v0

    .line 131
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/Perspective;->getScaleForCenterBitmap()F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setBitmapDimensions(II)V
    .locals 0

    monitor-enter p0

    .line 113
    :try_start_0
    iput p1, p0, Lorg/catrobat/paintroid/ui/Perspective;->bitmapWidth:I

    .line 114
    iput p2, p0, Lorg/catrobat/paintroid/ui/Perspective;->bitmapHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setCallResetScaleAndTransformationOnStartUp(I)V
    .locals 0

    .line 95
    iput p1, p0, Lorg/catrobat/paintroid/ui/Perspective;->callResetScaleAndTransformationOnStartUp:I

    return-void
.end method

.method public final setInitialTranslationY(F)V
    .locals 0

    .line 59
    iput p1, p0, Lorg/catrobat/paintroid/ui/Perspective;->initialTranslationY:F

    return-void
.end method

.method public final setMainActivity(Lorg/catrobat/paintroid/MainActivity;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/Perspective;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    return-void
.end method

.method public final setOldHeight(F)V
    .locals 0

    .line 97
    iput p1, p0, Lorg/catrobat/paintroid/ui/Perspective;->oldHeight:F

    return-void
.end method

.method public final declared-synchronized setScale(F)V
    .locals 1

    monitor-enter p0

    const/high16 v0, 0x42c80000    # 100.0f

    .line 65
    :try_start_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setSurfaceFrame(Landroid/graphics/Rect;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "surfaceFrame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceHeight:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->oldHeight:F

    .line 104
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceWidth:I

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceCenterX:F

    .line 106
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceHeight:I

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/Perspective;->getExactCenterYIgnoreWindowResize(F)F

    move-result p1

    iput p1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceCenterY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setSurfaceScale(F)V
    .locals 0

    .line 50
    iput p1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceScale:F

    return-void
.end method

.method public final declared-synchronized translate(FF)V
    .locals 6

    monitor-enter p0

    .line 163
    :try_start_0
    iget v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationX:F

    iget v1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceScale:F

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationX:F

    .line 164
    iget p1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationY:F

    div-float/2addr p2, v1

    add-float/2addr p1, p2

    iput p1, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationY:F

    .line 165
    iget p2, p0, Lorg/catrobat/paintroid/ui/Perspective;->bitmapWidth:I

    int-to-float p2, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    iget v3, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v4, 0x42480000    # 50.0f

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    add-float/2addr p2, v3

    .line 166
    iget v3, p0, Lorg/catrobat/paintroid/ui/Perspective;->initialTranslationX:F

    add-float v5, p2, v3

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    add-float/2addr p2, v3

    .line 167
    iput p2, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationX:F

    goto :goto_0

    :cond_0
    neg-float p2, p2

    add-float v5, p2, v3

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    add-float/2addr p2, v3

    .line 169
    iput p2, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationX:F

    .line 171
    :cond_1
    :goto_0
    iget p2, p0, Lorg/catrobat/paintroid/ui/Perspective;->bitmapHeight:I

    int-to-float p2, p2

    div-float/2addr p2, v2

    iget v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr v0, v4

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    .line 172
    iget v0, p0, Lorg/catrobat/paintroid/ui/Perspective;->initialTranslationY:F

    add-float v1, p2, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    add-float/2addr p2, v0

    .line 173
    iput p2, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationY:F

    goto :goto_1

    :cond_2
    neg-float p2, p2

    add-float v1, p2, v0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    add-float/2addr p2, v0

    .line 175
    iput p2, p0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
