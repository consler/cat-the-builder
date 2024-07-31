.class public final Lorg/catrobat/paintroid/command/implementation/SelectLayerCommand;
.super Ljava/lang/Object;
.source "SelectLayerCommand.kt"

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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/SelectLayerCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "position",
        "",
        "(I)V",
        "<set-?>",
        "getPosition",
        "()I",
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
.field private position:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "position"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lorg/catrobat/paintroid/command/implementation/SelectLayerCommand;->position:I

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    .line 36
    return-void
.end method

.method public final getPosition()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/SelectLayerCommand;->position:I

    return v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayers()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/catrobat/paintroid/command/implementation/SelectLayerCommand;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    invoke-interface {p2, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setCurrentLayer(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)V

    .line 32
    return-void
.end method
