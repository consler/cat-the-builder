.class public final Lorg/catrobat/paintroid/command/implementation/RemoveLayerCommand;
.super Ljava/lang/Object;
.source "RemoveLayerCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoveLayerCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveLayerCommand.kt\norg/catrobat/paintroid/command/implementation/RemoveLayerCommand\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,40:1\n1#2:41\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/RemoveLayerCommand;",
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
.field private position:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lorg/catrobat/paintroid/command/implementation/RemoveLayerCommand;->position:I

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    return-void
.end method

.method public final getPosition()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/RemoveLayerCommand;->position:I

    return v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "layerModel"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget p1, p0, Lorg/catrobat/paintroid/command/implementation/RemoveLayerCommand;->position:I

    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->removeLayerAt(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 32
    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setCurrentLayer(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)V

    :cond_1
    :goto_0
    return-void
.end method
