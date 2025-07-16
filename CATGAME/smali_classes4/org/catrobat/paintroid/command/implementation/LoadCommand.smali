.class public final Lorg/catrobat/paintroid/command/implementation/LoadCommand;
.super Ljava/lang/Object;
.source "LoadCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/LoadCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "loadedBitmap",
        "Landroid/graphics/Bitmap;",
        "(Landroid/graphics/Bitmap;)V",
        "<set-?>",
        "getLoadedBitmap",
        "()Landroid/graphics/Bitmap;",
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
.field private loadedBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "loadedBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/LoadCommand;->loadedBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    return-void
.end method

.method public final getLoadedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/LoadCommand;->loadedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "layerModel"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance p1, Lorg/catrobat/paintroid/model/Layer;

    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/LoadCommand;->loadedBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "loadedBitmap.copy(Bitmap.Config.ARGB_8888, true)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lorg/catrobat/paintroid/model/Layer;-><init>(Landroid/graphics/Bitmap;)V

    .line 34
    check-cast p1, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->addLayerAt(ILorg/catrobat/paintroid/contract/LayerContracts$Layer;)Z

    .line 35
    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setCurrentLayer(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)V

    return-void
.end method
