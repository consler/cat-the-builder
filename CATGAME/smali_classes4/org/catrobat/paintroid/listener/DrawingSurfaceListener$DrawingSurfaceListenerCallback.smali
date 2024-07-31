.class public interface abstract Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;
.super Ljava/lang/Object;
.source "DrawingSurfaceListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrawingSurfaceListenerCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000cH&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;",
        "",
        "convertToCanvasFromSurface",
        "",
        "surfacePoint",
        "Landroid/graphics/PointF;",
        "getCurrentTool",
        "Lorg/catrobat/paintroid/tools/Tool;",
        "getToolOptionsViewController",
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;",
        "multiplyPerspectiveScale",
        "factor",
        "",
        "translatePerspective",
        "x",
        "y",
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

.method public abstract getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;
.end method

.method public abstract getToolOptionsViewController()Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
.end method

.method public abstract multiplyPerspectiveScale(F)V
.end method

.method public abstract translatePerspective(FF)V
.end method
