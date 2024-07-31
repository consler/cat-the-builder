.class public interface abstract Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;
.super Ljava/lang/Object;
.source "DrawingSurfaceListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AutoScrollTaskCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&J*\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0005H&J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000c\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000fH&J\u0008\u0010\u0015\u001a\u00020\u0003H&J\u0018\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\tH&\u00a8\u0006\u0019"
    }
    d2 = {
        "Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;",
        "",
        "convertToCanvasFromSurface",
        "",
        "surfacePoint",
        "Landroid/graphics/PointF;",
        "getCurrentToolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "getPerspectiveScale",
        "",
        "getToolAutoScrollDirection",
        "Landroid/graphics/Point;",
        "pointX",
        "pointY",
        "screenWidth",
        "",
        "screenHeight",
        "handleToolMove",
        "coordinate",
        "isPointOnCanvas",
        "",
        "refreshDrawingSurface",
        "translatePerspective",
        "dx",
        "dy",
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
.method public abstract convertToCanvasFromSurface(Landroid/graphics/PointF;)V
.end method

.method public abstract getCurrentToolType()Lorg/catrobat/paintroid/tools/ToolType;
.end method

.method public abstract getPerspectiveScale()F
.end method

.method public abstract getToolAutoScrollDirection(FFII)Landroid/graphics/Point;
.end method

.method public abstract handleToolMove(Landroid/graphics/PointF;)V
.end method

.method public abstract isPointOnCanvas(II)Z
.end method

.method public abstract refreshDrawingSurface()V
.end method

.method public abstract translatePerspective(FF)V
.end method
