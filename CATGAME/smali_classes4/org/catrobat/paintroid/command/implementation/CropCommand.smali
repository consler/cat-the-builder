.class public final Lorg/catrobat/paintroid/command/implementation/CropCommand;
.super Ljava/lang/Object;
.source "CropCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation runtime Lkotlin/Metadata;
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
.field private maximumBitmapResolution:I

.field private resizeCoordinateXLeft:I

.field private resizeCoordinateXRight:I

.field private resizeCoordinateYBottom:I

.field private resizeCoordinateYTop:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

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
    .locals 9

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "layerModel"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget p1, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXRight:I

    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXLeft:I

    if-lt p1, v0, :cond_6

    iget p1, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYBottom:I

    iget v1, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYTop:I

    if-ge p1, v1, :cond_0

    goto/16 :goto_1

    .line 45
    :cond_0
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result p1

    if-ge v0, p1, :cond_6

    iget p1, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXRight:I

    if-ltz p1, :cond_6

    iget p1, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYTop:I

    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_6

    iget p1, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYBottom:I

    if-gez p1, :cond_1

    goto/16 :goto_1

    .line 48
    :cond_1
    iget p1, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXLeft:I

    if-nez p1, :cond_2

    iget p1, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXRight:I

    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    iget p1, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYBottom:I

    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    iget p1, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYTop:I

    if-nez p1, :cond_2

    return-void

    .line 51
    :cond_2
    iget p1, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXRight:I

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXLeft:I

    sub-int/2addr v0, v1

    iget v2, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYBottom:I

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYTop:I

    sub-int/2addr v3, v4

    mul-int/2addr v0, v3

    iget v3, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->maximumBitmapResolution:I

    if-le v0, v3, :cond_3

    return-void

    :cond_3
    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p1, v1

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v2, v4

    const/4 v0, 0x0

    .line 56
    invoke-interface {p2, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 57
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 58
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    .line 59
    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_4

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 60
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {p1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 61
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 62
    iget v6, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateXLeft:I

    int-to-float v6, v6

    neg-float v6, v6

    iget v7, p0, Lorg/catrobat/paintroid/command/implementation/CropCommand;->resizeCoordinateYTop:I

    int-to-float v7, v7

    neg-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const-string v3, "resizedBitmap"

    .line 63
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 65
    :cond_5
    invoke-interface {p2, v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setHeight(I)V

    .line 66
    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setWidth(I)V

    :cond_6
    :goto_1
    return-void
.end method
