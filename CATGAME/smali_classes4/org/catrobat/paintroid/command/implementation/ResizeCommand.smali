.class public final Lorg/catrobat/paintroid/command/implementation/ResizeCommand;
.super Ljava/lang/Object;
.source "ResizeCommand.kt"

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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u001e\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/ResizeCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "newWidth",
        "",
        "newHeight",
        "(II)V",
        "<set-?>",
        "getNewHeight",
        "()I",
        "getNewWidth",
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
.field private newHeight:I

.field private newWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;->newWidth:I

    .line 29
    iput p2, p0, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;->newHeight:I

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    .line 50
    return-void
.end method

.method public final getNewHeight()I
    .locals 1

    .line 29
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;->newHeight:I

    return v0
.end method

.method public final getNewWidth()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;->newWidth:I

    return v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 33
    .local v0, "iterator":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    .line 35
    .local v1, "currentLayer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .local v2, "currentBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 36
    .local v4, "$i$a$-let-ResizeCommand$run$1":I
    iget v5, p0, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;->newWidth:I

    iget v6, p0, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;->newHeight:I

    invoke-static {v2, v5, v6, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 37
    .local v5, "resizedBitmap":Landroid/graphics/Bitmap;
    invoke-interface {v1, v5}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    .end local v5    # "resizedBitmap":Landroid/graphics/Bitmap;
    nop

    .line 35
    .end local v2    # "currentBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "$i$a$-let-ResizeCommand$run$1":I
    nop

    .line 39
    :cond_0
    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getTransparentBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .restart local v2    # "currentBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 40
    .local v4, "$i$a$-let-ResizeCommand$run$2":I
    iget v5, p0, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;->newWidth:I

    iget v6, p0, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;->newHeight:I

    invoke-static {v2, v5, v6, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 41
    .local v3, "resizedBitmap":Landroid/graphics/Bitmap;
    invoke-interface {v1, v3}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setTransparentBitmap(Landroid/graphics/Bitmap;)V

    .line 42
    .end local v3    # "resizedBitmap":Landroid/graphics/Bitmap;
    nop

    .line 39
    .end local v2    # "currentBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "$i$a$-let-ResizeCommand$run$2":I
    nop

    .line 33
    .end local v1    # "currentLayer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    :cond_1
    goto :goto_0

    .line 44
    :cond_2
    iget v1, p0, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;->newHeight:I

    invoke-interface {p2, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setHeight(I)V

    .line 45
    iget v1, p0, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;->newWidth:I

    invoke-interface {p2, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setWidth(I)V

    .line 46
    return-void
.end method
