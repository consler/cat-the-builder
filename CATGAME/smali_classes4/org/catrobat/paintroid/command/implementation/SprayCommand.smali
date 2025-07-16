.class public final Lorg/catrobat/paintroid/command/implementation/SprayCommand;
.super Ljava/lang/Object;
.source "SprayCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/SprayCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "sprayedPoints",
        "",
        "paint",
        "Landroid/graphics/Paint;",
        "([FLandroid/graphics/Paint;)V",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "getSprayedPoints",
        "()[F",
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
.field private final paint:Landroid/graphics/Paint;

.field private final sprayedPoints:[F


# direct methods
.method public constructor <init>([FLandroid/graphics/Paint;)V
    .locals 1

    const-string v0, "sprayedPoints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/SprayCommand;->sprayedPoints:[F

    .line 28
    iput-object p2, p0, Lorg/catrobat/paintroid/command/implementation/SprayCommand;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    return-void
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/SprayCommand;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getSprayedPoints()[F
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/SprayCommand;->sprayedPoints:[F

    return-object v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lorg/catrobat/paintroid/command/implementation/SprayCommand;->sprayedPoints:[F

    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/SprayCommand;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    return-void
.end method
