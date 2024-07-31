.class public interface abstract Lorg/catrobat/paintroid/tools/Workspace;
.super Ljava/lang/Object;
.source "Workspace.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H&J\u0010\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020)H&J\u0008\u0010,\u001a\u00020-H&J\u0010\u0010.\u001a\u00020)2\u0006\u0010/\u001a\u00020)H&J\u0010\u00100\u001a\u00020\'2\u0006\u00101\u001a\u000202H&J\u0008\u00103\u001a\u000204H&J\u0008\u00105\u001a\u000204H&R\u001a\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0012\u0010\u000c\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000fR\u0018\u0010\u0012\u001a\u00020\u0013X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u0018\u001a\u00020\u0019X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0012\u0010\u001e\u001a\u00020\u0019X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u001bR\u0012\u0010 \u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u000fR\u0012\u0010\"\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u000fR\u0012\u0010$\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u000f\u00a8\u00066"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/Workspace;",
        "",
        "bitmapLisOfAllLayers",
        "",
        "Landroid/graphics/Bitmap;",
        "getBitmapLisOfAllLayers",
        "()Ljava/util/List;",
        "bitmapOfAllLayers",
        "getBitmapOfAllLayers",
        "()Landroid/graphics/Bitmap;",
        "bitmapOfCurrentLayer",
        "getBitmapOfCurrentLayer",
        "currentLayerIndex",
        "",
        "getCurrentLayerIndex",
        "()I",
        "height",
        "getHeight",
        "perspective",
        "Lorg/catrobat/paintroid/ui/Perspective;",
        "getPerspective",
        "()Lorg/catrobat/paintroid/ui/Perspective;",
        "setPerspective",
        "(Lorg/catrobat/paintroid/ui/Perspective;)V",
        "scale",
        "",
        "getScale",
        "()F",
        "setScale",
        "(F)V",
        "scaleForCenterBitmap",
        "getScaleForCenterBitmap",
        "surfaceHeight",
        "getSurfaceHeight",
        "surfaceWidth",
        "getSurfaceWidth",
        "width",
        "getWidth",
        "contains",
        "",
        "point",
        "Landroid/graphics/PointF;",
        "getCanvasPointFromSurfacePoint",
        "surfacePoint",
        "getCommandSerializationHelper",
        "Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;",
        "getSurfacePointFromCanvasPoint",
        "coordinate",
        "intersectsWith",
        "rectF",
        "Landroid/graphics/RectF;",
        "invalidate",
        "",
        "resetPerspective",
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
.method public abstract contains(Landroid/graphics/PointF;)Z
.end method

.method public abstract getBitmapLisOfAllLayers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBitmapOfAllLayers()Landroid/graphics/Bitmap;
.end method

.method public abstract getBitmapOfCurrentLayer()Landroid/graphics/Bitmap;
.end method

.method public abstract getCanvasPointFromSurfacePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method public abstract getCommandSerializationHelper()Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;
.end method

.method public abstract getCurrentLayerIndex()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getPerspective()Lorg/catrobat/paintroid/ui/Perspective;
.end method

.method public abstract getScale()F
.end method

.method public abstract getScaleForCenterBitmap()F
.end method

.method public abstract getSurfaceHeight()I
.end method

.method public abstract getSurfacePointFromCanvasPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method public abstract getSurfaceWidth()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract intersectsWith(Landroid/graphics/RectF;)Z
.end method

.method public abstract invalidate()V
.end method

.method public abstract resetPerspective()V
.end method

.method public abstract setPerspective(Lorg/catrobat/paintroid/ui/Perspective;)V
.end method

.method public abstract setScale(F)V
.end method
