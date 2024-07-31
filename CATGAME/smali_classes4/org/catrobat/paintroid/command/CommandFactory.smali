.class public interface abstract Lorg/catrobat/paintroid/command/CommandFactory;
.super Ljava/lang/Object;
.source "CommandFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J0\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H&J(\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH&J(\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000fH&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH&J0\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H&J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020$H&J\u0018\u0010\"\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u0006H&J\u0018\u0010\"\u001a\u00020\u00032\u000e\u0010\'\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010$0(H&J\u0018\u0010)\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0006H&J\u0018\u0010+\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010,\u001a\u00020-H&J\u0018\u0010.\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\rH&J\u0010\u00100\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u0006H&J\u0018\u00102\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u0006H&J\u0008\u00104\u001a\u00020\u0003H&J\u0018\u00105\u001a\u00020\u00032\u0006\u00106\u001a\u00020\u00062\u0006\u00107\u001a\u00020\u0006H&J\u0010\u00108\u001a\u00020\u00032\u0006\u00109\u001a\u00020:H&J\u0010\u0010;\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0006H&J6\u0010<\u001a\u00020\u00032\u0006\u0010#\u001a\u00020$2\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\r0>2\u0006\u0010?\u001a\u00020\u000f2\u0006\u0010@\u001a\u00020\u000f2\u0006\u0010A\u001a\u00020\u000fH&J\u0018\u0010B\u001a\u00020\u00032\u0006\u0010C\u001a\u00020D2\u0006\u0010\u0015\u001a\u00020\u0016H&J0\u0010E\u001a\u00020\u00032\u0006\u0010#\u001a\u00020$2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH&JS\u0010F\u001a\u00020\u00032\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020I0H2\u0006\u0010J\u001a\u00020\u00162\u0006\u0010K\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010L\u001a\u00020MH&\u00a2\u0006\u0002\u0010N\u00a8\u0006O"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/CommandFactory;",
        "",
        "createAddLayerCommand",
        "Lorg/catrobat/paintroid/command/Command;",
        "createCropCommand",
        "resizeCoordinateXLeft",
        "",
        "resizeCoordinateYTop",
        "resizeCoordinateXRight",
        "resizeCoordinateYBottom",
        "maximumBitmapResolution",
        "createCutCommand",
        "toolPosition",
        "Landroid/graphics/PointF;",
        "boxWidth",
        "",
        "boxHeight",
        "boxRotation",
        "createFillCommand",
        "x",
        "y",
        "paint",
        "Landroid/graphics/Paint;",
        "colorTolerance",
        "createFlipCommand",
        "flipDirection",
        "Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;",
        "createGeometricFillCommand",
        "shapeDrawable",
        "Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;",
        "position",
        "Landroid/graphics/Point;",
        "box",
        "Landroid/graphics/RectF;",
        "createInitCommand",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "width",
        "height",
        "bitmapList",
        "",
        "createMergeLayersCommand",
        "mergeWith",
        "createPathCommand",
        "path",
        "Lorg/catrobat/paintroid/command/serialization/SerializablePath;",
        "createPointCommand",
        "coordinate",
        "createRemoveLayerCommand",
        "index",
        "createReorderLayersCommand",
        "swapWith",
        "createResetCommand",
        "createResizeCommand",
        "newWidth",
        "newHeight",
        "createRotateCommand",
        "rotateDirection",
        "Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;",
        "createSelectLayerCommand",
        "createSmudgePathCommand",
        "pointPath",
        "",
        "maxPressure",
        "maxSize",
        "minSize",
        "createSprayCommand",
        "sprayedPoints",
        "",
        "createStampCommand",
        "createTextToolCommand",
        "multilineText",
        "",
        "",
        "textPaint",
        "boxOffset",
        "typefaceInfo",
        "Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;",
        "([Ljava/lang/String;Landroid/graphics/Paint;IFFLandroid/graphics/PointF;FLorg/catrobat/paintroid/command/serialization/SerializableTypeface;)Lorg/catrobat/paintroid/command/Command;",
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
.method public abstract createAddLayerCommand()Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createCropCommand(IIIII)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createCutCommand(Landroid/graphics/PointF;FFF)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createFillCommand(IILandroid/graphics/Paint;F)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createFlipCommand(Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createGeometricFillCommand(Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;Landroid/graphics/Point;Landroid/graphics/RectF;FLandroid/graphics/Paint;)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createInitCommand(II)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createInitCommand(Landroid/graphics/Bitmap;)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createInitCommand(Ljava/util/List;)Lorg/catrobat/paintroid/command/Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/catrobat/paintroid/command/Command;"
        }
    .end annotation
.end method

.method public abstract createMergeLayersCommand(II)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createPointCommand(Landroid/graphics/Paint;Landroid/graphics/PointF;)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createRemoveLayerCommand(I)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createReorderLayersCommand(II)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createResetCommand()Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createResizeCommand(II)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createRotateCommand(Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createSelectLayerCommand(I)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createSmudgePathCommand(Landroid/graphics/Bitmap;Ljava/util/List;FFF)Lorg/catrobat/paintroid/command/Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;FFF)",
            "Lorg/catrobat/paintroid/command/Command;"
        }
    .end annotation
.end method

.method public abstract createSprayCommand([FLandroid/graphics/Paint;)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createStampCommand(Landroid/graphics/Bitmap;Landroid/graphics/PointF;FFF)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createTextToolCommand([Ljava/lang/String;Landroid/graphics/Paint;IFFLandroid/graphics/PointF;FLorg/catrobat/paintroid/command/serialization/SerializableTypeface;)Lorg/catrobat/paintroid/command/Command;
.end method
