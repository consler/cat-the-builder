.class public final Lorg/catrobat/paintroid/command/implementation/FillCommand;
.super Ljava/lang/Object;
.source "FillCommand.kt"

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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001e\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0019"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/FillCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "fillAlgorithmFactory",
        "Lorg/catrobat/paintroid/tools/helper/FillAlgorithmFactory;",
        "clickedPixel",
        "Landroid/graphics/Point;",
        "paint",
        "Landroid/graphics/Paint;",
        "colorTolerance",
        "",
        "(Lorg/catrobat/paintroid/tools/helper/FillAlgorithmFactory;Landroid/graphics/Point;Landroid/graphics/Paint;F)V",
        "<set-?>",
        "getClickedPixel",
        "()Landroid/graphics/Point;",
        "getColorTolerance",
        "()F",
        "getPaint",
        "()Landroid/graphics/Paint;",
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
.field private clickedPixel:Landroid/graphics/Point;

.field private colorTolerance:F

.field private final fillAlgorithmFactory:Lorg/catrobat/paintroid/tools/helper/FillAlgorithmFactory;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/helper/FillAlgorithmFactory;Landroid/graphics/Point;Landroid/graphics/Paint;F)V
    .locals 1
    .param p1, "fillAlgorithmFactory"    # Lorg/catrobat/paintroid/tools/helper/FillAlgorithmFactory;
    .param p2, "clickedPixel"    # Landroid/graphics/Point;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "colorTolerance"    # F

    const-string v0, "fillAlgorithmFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickedPixel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->fillAlgorithmFactory:Lorg/catrobat/paintroid/tools/helper/FillAlgorithmFactory;

    .line 31
    iput-object p2, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->clickedPixel:Landroid/graphics/Point;

    .line 32
    iput-object p3, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->paint:Landroid/graphics/Paint;

    .line 33
    iput p4, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->colorTolerance:F

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    .line 69
    return-void
.end method

.method public final getClickedPixel()Landroid/graphics/Point;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->clickedPixel:Landroid/graphics/Point;

    return-object v0
.end method

.method public final getColorTolerance()F
    .locals 1

    .line 33
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->colorTolerance:F

    return v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    .line 37
    .local v0, "currentLayer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    if-eqz v0, :cond_2

    .line 38
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 40
    .local v8, "$i$a$-let-FillCommand$run$1":I
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->clickedPixel:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->clickedPixel:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    .line 41
    .local v9, "replacementColor":I
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->fillAlgorithmFactory:Lorg/catrobat/paintroid/tools/helper/FillAlgorithmFactory;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/helper/FillAlgorithmFactory;->createFillAlgorithm()Lorg/catrobat/paintroid/tools/helper/FillAlgorithm;

    move-result-object v10

    .line 42
    .local v10, "fillAlgorithm":Lorg/catrobat/paintroid/tools/helper/FillAlgorithm;
    nop

    .line 43
    nop

    .line 44
    iget-object v4, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->clickedPixel:Landroid/graphics/Point;

    .line 45
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    .line 46
    nop

    .line 47
    iget v7, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->colorTolerance:F

    .line 42
    move-object v2, v10

    move-object v3, v1

    move v6, v9

    invoke-interface/range {v2 .. v7}, Lorg/catrobat/paintroid/tools/helper/FillAlgorithm;->setParameters(Landroid/graphics/Bitmap;Landroid/graphics/Point;IIF)V

    .line 49
    invoke-interface {v10}, Lorg/catrobat/paintroid/tools/helper/FillAlgorithm;->performFilling()V

    .line 50
    .end local v9    # "replacementColor":I
    .end local v10    # "fillAlgorithm":Lorg/catrobat/paintroid/tools/helper/FillAlgorithm;
    nop

    .line 39
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "$i$a$-let-FillCommand$run$1":I
    goto :goto_0

    .line 52
    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getTransparentBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 53
    .local v8, "$i$a$-let-FillCommand$run$2":I
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->clickedPixel:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->clickedPixel:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    .line 54
    .restart local v9    # "replacementColor":I
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->fillAlgorithmFactory:Lorg/catrobat/paintroid/tools/helper/FillAlgorithmFactory;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/helper/FillAlgorithmFactory;->createFillAlgorithm()Lorg/catrobat/paintroid/tools/helper/FillAlgorithm;

    move-result-object v10

    .line 55
    .restart local v10    # "fillAlgorithm":Lorg/catrobat/paintroid/tools/helper/FillAlgorithm;
    nop

    .line 56
    nop

    .line 57
    iget-object v4, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->clickedPixel:Landroid/graphics/Point;

    .line 58
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    .line 59
    nop

    .line 60
    iget v7, p0, Lorg/catrobat/paintroid/command/implementation/FillCommand;->colorTolerance:F

    .line 55
    move-object v2, v10

    move-object v3, v1

    move v6, v9

    invoke-interface/range {v2 .. v7}, Lorg/catrobat/paintroid/tools/helper/FillAlgorithm;->setParameters(Landroid/graphics/Bitmap;Landroid/graphics/Point;IIF)V

    .line 62
    invoke-interface {v10}, Lorg/catrobat/paintroid/tools/helper/FillAlgorithm;->performFilling()V

    .line 63
    .end local v9    # "replacementColor":I
    .end local v10    # "fillAlgorithm":Lorg/catrobat/paintroid/tools/helper/FillAlgorithm;
    nop

    .line 52
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "$i$a$-let-FillCommand$run$2":I
    nop

    .line 64
    :cond_1
    :goto_0
    nop

    .line 65
    return-void

    .line 37
    :cond_2
    return-void
.end method
