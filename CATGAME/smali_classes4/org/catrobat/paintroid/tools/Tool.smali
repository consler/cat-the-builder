.class public interface abstract Lorg/catrobat/paintroid/tools/Tool;
.super Ljava/lang/Object;
.source "Tool.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/tools/Tool$StateChange;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001:\u00011J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0016H&J\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0013H&J\u0010\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001bH&J(\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020\u0013H&J\u0008\u0010#\u001a\u00020$H&J\u0012\u0010%\u001a\u00020$2\u0008\u0010&\u001a\u0004\u0018\u00010\'H&J\u0012\u0010(\u001a\u00020$2\u0008\u0010&\u001a\u0004\u0018\u00010\'H&J\u0012\u0010)\u001a\u00020$2\u0008\u0010&\u001a\u0004\u0018\u00010\'H&J\u0012\u0010*\u001a\u00020\u00112\u0008\u0010+\u001a\u0004\u0018\u00010,H&J\u0012\u0010-\u001a\u00020\u00112\u0008\u0010+\u001a\u0004\u0018\u00010,H&J\u0010\u0010.\u001a\u00020\u00112\u0006\u0010/\u001a\u000200H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\u00020\u0007X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u00062"
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
        "",
        "handleDown",
        "coordinate",
        "Landroid/graphics/PointF;",
        "handleMove",
        "handleUp",
        "onRestoreInstanceState",
        "bundle",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "resetInternalState",
        "stateChange",
        "Lorg/catrobat/paintroid/tools/Tool$StateChange;",
        "StateChange",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract changePaintColor(I)V
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

.method public abstract handleMove(Landroid/graphics/PointF;)Z
.end method

.method public abstract handleUp(Landroid/graphics/PointF;)Z
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V
.end method

.method public abstract setDrawTime(J)V
.end method
