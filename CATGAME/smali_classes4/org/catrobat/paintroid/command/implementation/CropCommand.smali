.class public final Lorg/catrobat/paintroid/command/implementation/CropCommand;
.super Ljava/lang/Object;
.source "CropCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R\u001e\u0010\u0007\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u001e\u0010\u0005\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u001e\u0010\u0006\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u001e\u0010\u0004\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/CropCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "resizeCoordinateXLeft",
        "",
        "resizeCoordinateYTop",
        "resizeCoordinateXRight",
        "resizeCoordinateYBottom",
        "maximumBitmapResolution",
        "(IIIII)V",
        "<set-?>",
        "getMaximumBitmapResolution",
        "()I",
        "getResizeCoordinateXLeft",
        "getResizeCoordinateXRight",
        "getResizeCoordinateYBottom",
        "getResizeCoordinateYTop",
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
.field private maximumBitmapResolution:I

.field private resizeCoordinateXLeft:I

.field private resizeCoordinateXRight:I

.field private resizeCoordinateYBottom:I

.field private resizeCoordinateYTop:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "resizeCoordinateXLeft"    # I
    .param p2, "resizeCoordinateYTop"    # I
    .param p3, "resizeCoordinateXRight"    # I
    .param p4, "resizeCoordinateYBottom"    # I
    .param p5, "maximumBitmapResolution"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXLeft:I

    .line 36
    iput p2, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYTop:I

    .line 37
    iput p3, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXRight:I

    .line 38
    iput p4, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYBottom:I

    .line 39
    iput p5, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->maximumBitmapResolution:I

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    .line 83
    return-void
.end method

.method public final getMaximumBitmapResolution()I
    .locals 1

    .line 39
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->maximumBitmapResolution:I

    return v0
.end method

.method public final getResizeCoordinateXLeft()I
    .locals 1

    .line 35
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXLeft:I

    return v0
.end method

.method public final getResizeCoordinateXRight()I
    .locals 1

    .line 37
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXRight:I

    return v0
.end method

.method public final getResizeCoordinateYBottom()I
    .locals 1

    .line 38
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYBottom:I

    return v0
.end method

.method public final getResizeCoordinateYTop()I
    .locals 1

    .line 36
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYTop:I

    return v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXRight:I

    iget v1, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXLeft:I

    if-lt v0, v1, :cond_9

    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYBottom:I

    iget v2, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYTop:I

    if-ge v0, v2, :cond_0

    goto/16 :goto_5

    .line 45
    :cond_0
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXRight:I

    if-ltz v0, :cond_8

    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYTop:I

    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYBottom:I

    if-gez v0, :cond_1

    goto/16 :goto_4

    .line 48
    :cond_1
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXLeft:I

    if-nez v0, :cond_2

    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXRight:I

    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYBottom:I

    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYTop:I

    if-nez v0, :cond_2

    .line 49
    return-void

    .line 51
    :cond_2
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXRight:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXLeft:I

    sub-int/2addr v1, v2

    iget v3, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYBottom:I

    add-int/lit8 v4, v3, 0x1

    iget v5, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYTop:I

    sub-int/2addr v4, v5

    mul-int/2addr v1, v4

    iget v4, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->maximumBitmapResolution:I

    if-le v1, v4, :cond_3

    .line 52
    return-void

    .line 54
    :cond_3
    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v2

    .line 55
    .local v0, "width":I
    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v3, v5

    .line 56
    .local v3, "height":I
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 57
    .local v1, "iterator":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 58
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    .line 59
    .local v2, "currentLayer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->isVisible()Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "currentBitmap"

    if-eqz v4, :cond_5

    .line 60
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 61
    .local v4, "currentBitmap":Landroid/graphics/Bitmap;
    :goto_1
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v0, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 62
    .local v6, "resizedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v0, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 63
    .local v7, "resizedTransparentBitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    .local v8, "resizedCanvas":Landroid/graphics/Canvas;
    iget v9, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXLeft:I

    int-to-float v9, v9

    neg-float v9, v9

    iget v10, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYTop:I

    int-to-float v10, v10

    neg-float v10, v10

    invoke-virtual {v8, v4, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 65
    invoke-interface {v2, v6}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 66
    invoke-interface {v2, v7}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setTransparentBitmap(Landroid/graphics/Bitmap;)V

    .end local v4    # "currentBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "resizedBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "resizedTransparentBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "resizedCanvas":Landroid/graphics/Canvas;
    goto :goto_3

    .line 68
    :cond_5
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getTransparentBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 69
    .restart local v4    # "currentBitmap":Landroid/graphics/Bitmap;
    :goto_2
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v0, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 70
    .restart local v6    # "resizedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v0, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 71
    .restart local v7    # "resizedTransparentBitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    .restart local v8    # "resizedCanvas":Landroid/graphics/Canvas;
    iget v9, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXLeft:I

    int-to-float v9, v9

    neg-float v9, v9

    iget v10, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYTop:I

    int-to-float v10, v10

    neg-float v10, v10

    invoke-virtual {v8, v4, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 73
    invoke-interface {v2, v6}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    invoke-interface {v2, v7}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setTransparentBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    .end local v2    # "currentLayer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .end local v4    # "currentBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "resizedBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "resizedTransparentBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "resizedCanvas":Landroid/graphics/Canvas;
    :goto_3
    nop

    .line 57
    goto/16 :goto_0

    .line 77
    :cond_7
    invoke-interface {p2, v3}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setHeight(I)V

    .line 78
    invoke-interface {p2, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setWidth(I)V

    .line 79
    return-void

    .line 46
    .end local v0    # "width":I
    .end local v1    # "iterator":Ljava/util/ListIterator;
    .end local v3    # "height":I
    :cond_8
    :goto_4
    return-void

    .line 43
    :cond_9
    :goto_5
    return-void
.end method
