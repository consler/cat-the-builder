.class public final Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;
.super Ljava/lang/Object;
.source "SmudgePathCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmudgePathCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmudgePathCommand.kt\norg/catrobat/paintroid/command/implementation/SmudgePathCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,80:1\n1819#2,2:81\n*E\n*S KotlinDebug\n*F\n+ 1 SmudgePathCommand.kt\norg/catrobat/paintroid/command/implementation/SmudgePathCommand\n*L\n49#1,2:81\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
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
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "pointPath"    # Ljava/util/List;
    .param p3, "maxPressure"    # F
    .param p4, "maxSize"    # F
    .param p5, "minSize"    # F
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

    .line 78
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
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-object/from16 v0, p0

    const-string v1, "canvas"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "layerModel"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget v1, v0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->maxSize:F

    iget v4, v0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->minSize:F

    sub-float/2addr v1, v4

    iget-object v4, v0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->pointPath:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 43
    .local v1, "step":F
    iget v4, v0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->maxSize:F

    .line 44
    .local v4, "size":F
    iget v5, v0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->maxPressure:F

    .line 45
    .local v5, "pressure":F
    new-instance v6, Landroid/graphics/ColorMatrix;

    invoke-direct {v6}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 46
    .local v6, "colorMatrix":Landroid/graphics/ColorMatrix;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 47
    .local v7, "paint":Landroid/graphics/Paint;
    iget-object v8, v0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->originalBitmap:Landroid/graphics/Bitmap;

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 49
    .local v8, "bitmap":Ljava/lang/Object;
    iget-object v9, v0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->pointPath:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 81
    .local v10, "$i$f$forEach":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroid/graphics/PointF;

    .local v13, "it":Landroid/graphics/PointF;
    const/4 v14, 0x0

    .line 50
    .local v14, "$i$a$-forEach-SmudgePathCommand$run$1":I
    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v6, v15, v15, v15, v5}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 51
    new-instance v15, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v15, v6}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    check-cast v15, Landroid/graphics/ColorFilter;

    invoke-virtual {v7, v15}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 53
    iget v15, v0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->maxSize:F

    float-to-int v0, v15

    float-to-int v15, v15

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v15, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    move-object v2, v0

    .local v2, "it":Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    .line 56
    .local v15, "$i$a$-let-SmudgePathCommand$run$1$1":I
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v3, "$this$apply":Landroid/graphics/Canvas;
    const/16 v16, 0x0

    .line 57
    .local v16, "$i$a$-apply-SmudgePathCommand$run$1$1$1":I
    move-object/from16 v17, v2

    .end local v2    # "it":Landroid/graphics/Bitmap;
    .local v17, "it":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-virtual {v3, v8, v2, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 58
    nop

    .line 56
    .end local v3    # "$this$apply":Landroid/graphics/Canvas;
    .end local v16    # "$i$a$-apply-SmudgePathCommand$run$1$1$1":I
    nop

    .line 55
    .end local v15    # "$i$a$-let-SmudgePathCommand$run$1$1":I
    .end local v17    # "it":Landroid/graphics/Bitmap;
    nop

    .line 61
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 62
    move-object v8, v0

    .line 64
    new-instance v2, Landroid/graphics/RectF;

    neg-float v3, v4

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v3, v15

    move-object/from16 v16, v0

    .end local v0    # "newBitmap":Landroid/graphics/Bitmap;
    .local v16, "newBitmap":Landroid/graphics/Bitmap;
    neg-float v0, v4

    div-float/2addr v0, v15

    move-object/from16 v17, v6

    .end local v6    # "colorMatrix":Landroid/graphics/ColorMatrix;
    .local v17, "colorMatrix":Landroid/graphics/ColorMatrix;
    div-float v6, v4, v15

    div-float v15, v4, v15

    invoke-direct {v2, v3, v0, v6, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v2

    .line 65
    .local v0, "rect":Landroid/graphics/RectF;
    move-object/from16 v2, p1

    .local v2, "$this$with":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    .line 66
    .local v3, "$i$a$-with-SmudgePathCommand$run$1$2":I
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 67
    iget v6, v13, Landroid/graphics/PointF;->x:F

    iget v15, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v6, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 68
    const/4 v6, 0x0

    new-instance v15, Landroid/graphics/Paint;

    move/from16 v18, v3

    .end local v3    # "$i$a$-with-SmudgePathCommand$run$1$2":I
    .local v18, "$i$a$-with-SmudgePathCommand$run$1$2":I
    const/4 v3, 0x4

    invoke-direct {v15, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v2, v8, v6, v0, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 69
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 70
    nop

    .line 65
    .end local v2    # "$this$with":Landroid/graphics/Canvas;
    .end local v18    # "$i$a$-with-SmudgePathCommand$run$1$2":I
    nop

    .line 71
    sub-float/2addr v4, v1

    .line 72
    const v2, 0x3b83126f    # 0.004f

    sub-float/2addr v5, v2

    .line 73
    .end local v0    # "rect":Landroid/graphics/RectF;
    .end local v16    # "newBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, v17

    .end local v12    # "element$iv":Ljava/lang/Object;
    .end local v13    # "it":Landroid/graphics/PointF;
    .end local v14    # "$i$a$-forEach-SmudgePathCommand$run$1":I
    goto :goto_0

    .line 82
    .end local v17    # "colorMatrix":Landroid/graphics/ColorMatrix;
    .restart local v6    # "colorMatrix":Landroid/graphics/ColorMatrix;
    :cond_0
    nop

    .line 74
    .end local v9    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$forEach":I
    return-void
.end method
