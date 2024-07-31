.class public final Lorg/catrobat/paintroid/command/implementation/AddLayerCommand;
.super Ljava/lang/Object;
.source "AddLayerCommand.kt"

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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/AddLayerCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "commonFactory",
        "Lorg/catrobat/paintroid/common/CommonFactory;",
        "(Lorg/catrobat/paintroid/common/CommonFactory;)V",
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
.field private final commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/common/CommonFactory;)V
    .locals 1
    .param p1, "commonFactory"    # Lorg/catrobat/paintroid/common/CommonFactory;

    const-string v0, "commonFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/AddLayerCommand;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    .line 43
    return-void
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lorg/catrobat/paintroid/model/Layer;

    .line 32
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AddLayerCommand;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    .line 33
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v2

    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v3

    .line 34
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 32
    invoke-virtual {v1, v2, v3, v4}, Lorg/catrobat/paintroid/common/CommonFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/model/Layer;-><init>(Landroid/graphics/Bitmap;)V

    .line 37
    .local v0, "layer":Lorg/catrobat/paintroid/model/Layer;
    move-object v1, v0

    check-cast v1, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->addLayerAt(ILorg/catrobat/paintroid/contract/LayerContracts$Layer;)Z

    .line 38
    move-object v1, v0

    check-cast v1, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    invoke-interface {p2, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setCurrentLayer(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)V

    .line 39
    return-void
.end method
