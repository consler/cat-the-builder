.class public final Lorg/catrobat/paintroid/command/implementation/ResizeCommand;
.super Ljava/lang/Object;
.source "ResizeCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation runtime Lkotlin/Metadata;
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
.field private newHeight:I

.field private newWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

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
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "layerModel"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 32
    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    .line 35
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;->getNewWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;->getNewHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "resizedBitmap"

    .line 37
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 40
    :cond_1
    iget p1, p0, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;->newHeight:I

    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setHeight(I)V

    .line 41
    iget p1, p0, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;->newWidth:I

    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setWidth(I)V

    return-void
.end method
