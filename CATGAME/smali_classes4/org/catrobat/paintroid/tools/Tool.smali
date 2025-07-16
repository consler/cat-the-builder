.class public interface abstract Lorg/catrobat/paintroid/tools/Tool;
.super Ljava/lang/Object;
.source "Tool.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/tools/Tool$StateChange;,
        Lorg/catrobat/paintroid/tools/Tool$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u00016J\u001a\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015H&J\u0010\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018H&J\u0010\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0013H&J\u0010\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u001dH&J(\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020\u0013H&J\u0008\u0010%\u001a\u00020\u0015H&J\u0012\u0010&\u001a\u00020\u00152\u0008\u0010\'\u001a\u0004\u0018\u00010(H&J\u0012\u0010)\u001a\u00020\u00112\u0008\u0010\'\u001a\u0004\u0018\u00010(H&J\u001c\u0010*\u001a\u00020\u00152\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0008\u0002\u0010+\u001a\u00020\u0015H&J\u0012\u0010,\u001a\u00020\u00152\u0008\u0010\'\u001a\u0004\u0018\u00010(H&J\u0012\u0010-\u001a\u00020\u00112\u0008\u0010\'\u001a\u0004\u0018\u00010(H&J\u0012\u0010.\u001a\u00020\u00112\u0008\u0010/\u001a\u0004\u0018\u000100H&J\u0012\u00101\u001a\u00020\u00112\u0008\u0010/\u001a\u0004\u0018\u000100H&J\u0010\u00102\u001a\u00020\u00112\u0006\u00103\u001a\u000204H&J\u0010\u00105\u001a\u00020(2\u0006\u0010\'\u001a\u00020(H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\u00020\u0007X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u00067"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/Tool;",
        "",
        "drawPaint",
        "Landroid/graphics/Paint;",
        "getDrawPaint",
        "()Landroid/graphics/Paint;",
        "drawTime",
        "",
        "getDrawTime",
        "()J",
        "setDrawTime",
        "(J)V",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "getToolType",
        "()Lorg/catrobat/paintroid/tools/ToolType;",
        "changePaintColor",
        "",
        "color",
        "",
        "invalidate",
        "",
        "changePaintStrokeCap",
        "cap",
        "Landroid/graphics/Paint$Cap;",
        "changePaintStrokeWidth",
        "strokeWidth",
        "draw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getAutoScrollDirection",
        "Landroid/graphics/Point;",
        "pointX",
        "",
        "pointY",
        "screenWidth",
        "screenHeight",
        "handToolMode",
        "handleDown",
        "coordinate",
        "Landroid/graphics/PointF;",
        "handleDownAnimations",
        "handleMove",
        "shouldAnimate",
        "handleUp",
        "handleUpAnimations",
        "onRestoreInstanceState",
        "bundle",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "resetInternalState",
        "stateChange",
        "Lorg/catrobat/paintroid/tools/Tool$StateChange;",
        "toolPositionCoordinates",
        "StateChange",
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


# virtual methods
.method public abstract changePaintColor(IZ)V
.end method

.method public abstract changePaintStrokeCap(Landroid/graphics/Paint$Cap;)V
.end method

.method public abstract changePaintStrokeWidth(I)V
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract getAutoScrollDirection(FFII)Landroid/graphics/Point;
.end method

.method public abstract getDrawPaint()Landroid/graphics/Paint;
.end method

.method public abstract getDrawTime()J
.end method

.method public abstract getToolType()Lorg/catrobat/paintroid/tools/ToolType;
.end method

.method public abstract handToolMode()Z
.end method

.method public abstract handleDown(Landroid/graphics/PointF;)Z
.end method

.method public abstract handleDownAnimations(Landroid/graphics/PointF;)V
.end method

.method public abstract handleMove(Landroid/graphics/PointF;Z)Z
.end method

.method public abstract handleUp(Landroid/graphics/PointF;)Z
.end method

.method public abstract handleUpAnimations(Landroid/graphics/PointF;)V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V
.end method

.method public abstract setDrawTime(J)V
.end method

.method public abstract toolPositionCoordinates(Landroid/graphics/PointF;)Landroid/graphics/PointF;
.end method
