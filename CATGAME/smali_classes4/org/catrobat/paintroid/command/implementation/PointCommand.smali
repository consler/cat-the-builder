.class public final Lorg/catrobat/paintroid/command/implementation/PointCommand;
.super Ljava/lang/Object;
.source "PointCommand.kt"

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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/PointCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "paint",
        "Landroid/graphics/Paint;",
        "point",
        "Landroid/graphics/PointF;",
        "(Landroid/graphics/Paint;Landroid/graphics/PointF;)V",
        "<set-?>",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "getPoint",
        "()Landroid/graphics/PointF;",
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
.field private paint:Landroid/graphics/Paint;

.field private point:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "point"    # Landroid/graphics/PointF;

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/PointCommand;->paint:Landroid/graphics/Paint;

    .line 31
    iput-object p2, p0, Lorg/catrobat/paintroid/command/implementation/PointCommand;->point:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    .line 39
    return-void
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/PointCommand;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getPoint()Landroid/graphics/PointF;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/PointCommand;->point:Landroid/graphics/PointF;

    return-object v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/PointCommand;->point:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/PointCommand;->point:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/PointCommand;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 35
    return-void
.end method
