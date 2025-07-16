.class public final Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;
.super Ljava/lang/Object;
.source "SmudgePathCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmudgePathCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmudgePathCommand.kt\norg/catrobat/paintroid/command/implementation/SmudgePathCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,80:1\n1849#2,2:81\n*S KotlinDebug\n*F\n+ 1 SmudgePathCommand.kt\norg/catrobat/paintroid/command/implementation/SmudgePathCommand\n*L\n49#1:81,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016R\u001e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u001e\u0010\n\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u001e\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R*\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "pointPath",
        "",
        "Landroid/graphics/PointF;",
        "maxPressure",
        "",
        "maxSize",
        "minSize",
        "(Landroid/graphics/Bitmap;Ljava/util/List;FFF)V",
        "<set-?>",
        "getMaxPressure",
        "()F",
        "getMaxSize",
        "getMinSize",
        "originalBitmap",
        "getOriginalBitmap",
        "()Landroid/graphics/Bitmap;",
        "getPointPath",
        "()Ljava/util/List;",
        "freeResources",
        "",
        "run",
        "canvas",
        "Landroid/graphics/Canvas;",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
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
.field private maxPressure:F

.field private maxSize:F

.field private minSize:F

.field private originalBitmap:Landroid/graphics/Bitmap;

.field private pointPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/util/List;FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;FFF)V"
        }
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->originalBitmap:Landroid/graphics/Bitmap;

    .line 36
    iput-object p2, p0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->pointPath:Ljava/util/List;

    .line 37
    iput p3, p0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->maxPressure:F

    .line 38
    iput p4, p0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->maxSize:F

    .line 39
    iput p5, p0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->minSize:F

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public final getMaxPressure()F
    .locals 1

    .line 37
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->maxPressure:F

    return v0
.end method

.method public final getMaxSize()F
    .locals 1

    .line 38
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->maxSize:F

    return v0
.end method

.method public final getMinSize()F
    .locals 1

    .line 39
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->minSize:F

    return v0
.end method

.method public final getOriginalBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->originalBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getPointPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->pointPath:Ljava/util/List;

    return-object v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget p2, p0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->maxSize:F

    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->minSize:F

    sub-float/2addr p2, v0

    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->pointPath:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 43
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->maxSize:F

    .line 44
    iget v1, p0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->maxPressure:F

    .line 45
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 46
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 47
    iget-object v4, p0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->originalBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 49
    iget-object v5, p0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->pointPath:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    .line 81
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    const/high16 v7, 0x3f800000    # 1.0f

    .line 50
    invoke-virtual {v2, v7, v7, v7, v1}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 51
    new-instance v7, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v7, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    check-cast v7, Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 53
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->getMaxSize()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->getMaxSize()F

    move-result v8

    float-to-int v8, v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 56
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    .line 57
    invoke-virtual {v8, v4, v9, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 61
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 64
    new-instance v4, Landroid/graphics/RectF;

    neg-float v8, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    div-float v9, v0, v9

    invoke-direct {v4, v8, v8, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 67
    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 68
    new-instance v6, Landroid/graphics/Paint;

    const/4 v8, 0x4

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sub-float/2addr v0, p2

    const v4, 0x3b83126f    # 0.004f

    sub-float/2addr v1, v4

    move-object v4, v7

    goto :goto_0

    :cond_0
    return-void
.end method
