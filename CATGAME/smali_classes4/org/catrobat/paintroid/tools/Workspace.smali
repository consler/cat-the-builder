.class public interface abstract Lorg/catrobat/paintroid/tools/Workspace;
.super Ljava/lang/Object;
.source "Workspace.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H&J\u0010\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020/H&J\u0010\u00102\u001a\u00020/2\u0006\u00103\u001a\u00020/H&J\u0010\u00104\u001a\u00020-2\u0006\u00105\u001a\u000206H&J\u0008\u00107\u001a\u000208H&J\u0008\u00109\u001a\u000208H&R\u001a\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u0004\u0018\u00010\u0004X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\t\"\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0011R\u0012\u0010\u0014\u001a\u00020\u0015X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u0018\u001a\u00020\u0019X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0018\u0010\u001e\u001a\u00020\u001fX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u0012\u0010$\u001a\u00020\u001fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010!R\u0012\u0010&\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u0011R\u0012\u0010(\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u0011R\u0012\u0010*\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u0011\u00a8\u0006:"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/Workspace;",
        "",
        "bitmapListOfAllLayers",
        "",
        "Landroid/graphics/Bitmap;",
        "getBitmapListOfAllLayers",
        "()Ljava/util/List;",
        "bitmapOfAllLayers",
        "getBitmapOfAllLayers",
        "()Landroid/graphics/Bitmap;",
        "bitmapOfCurrentLayer",
        "getBitmapOfCurrentLayer",
        "setBitmapOfCurrentLayer",
        "(Landroid/graphics/Bitmap;)V",
        "currentLayerIndex",
        "",
        "getCurrentLayerIndex",
        "()I",
        "height",
        "getHeight",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "getLayerModel",
        "()Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
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
        "getSurfacePointFromCanvasPoint",
        "coordinate",
        "intersectsWith",
        "rectF",
        "Landroid/graphics/RectF;",
        "invalidate",
        "",
        "resetPerspective",
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
.method public abstract contains(Landroid/graphics/PointF;)Z
.end method

.method public abstract getBitmapListOfAllLayers()Ljava/util/List;
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

.method public abstract getCurrentLayerIndex()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;
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

.method public abstract setBitmapOfCurrentLayer(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setPerspective(Lorg/catrobat/paintroid/ui/Perspective;)V
.end method

.method public abstract setScale(F)V
.end method
