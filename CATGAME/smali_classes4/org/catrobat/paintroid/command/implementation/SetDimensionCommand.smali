.class public final Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;
.super Ljava/lang/Object;
.source "SetDimensionCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u001e\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "width",
        "",
        "height",
        "(II)V",
        "<set-?>",
        "getHeight",
        "()I",
        "getWidth",
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
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;->width:I

    .line 29
    iput p2, p0, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;->height:I

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    return-void
.end method

.method public final getHeight()I
    .locals 1

    .line 29
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;->width:I

    return v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "layerModel"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget p1, p0, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;->width:I

    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setWidth(I)V

    .line 33
    iget p1, p0, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;->height:I

    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setHeight(I)V

    return-void
.end method
