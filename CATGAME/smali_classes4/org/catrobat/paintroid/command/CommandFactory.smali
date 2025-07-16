.class public interface abstract Lorg/catrobat/paintroid/command/CommandFactory;
.super Ljava/lang/Object;
.source "CommandFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J0\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH&J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006H&J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H&J0\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0015H&J(\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH&J(\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\nH&J\u0010\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020%H&J0\u0010&\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010 \u001a\u00020!H&J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0018\u0010-\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u00152\u0006\u0010/\u001a\u00020\u0015H&J\u0016\u0010-\u001a\u00020\u00032\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020201H&J\u0018\u00103\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\u00152\u0006\u00104\u001a\u00020\u0015H&J\u0018\u00105\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\u00152\u0006\u00106\u001a\u00020\u0015H&J\u0018\u00107\u001a\u00020\u00032\u0006\u0010 \u001a\u00020!2\u0006\u00108\u001a\u000209H&J\u0018\u0010:\u001a\u00020\u00032\u0006\u0010 \u001a\u00020!2\u0006\u0010;\u001a\u00020\u0008H&J\u0010\u0010<\u001a\u00020\u00032\u0006\u0010=\u001a\u00020\u0015H&J\u0018\u0010>\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\u00152\u0006\u0010?\u001a\u00020\u0015H&J\u0008\u0010@\u001a\u00020\u0003H&J\u0018\u0010A\u001a\u00020\u00032\u0006\u0010B\u001a\u00020\u00152\u0006\u0010C\u001a\u00020\u0015H&J\u0010\u0010D\u001a\u00020\u00032\u0006\u0010E\u001a\u00020FH&J\u0010\u0010G\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\u0015H&J6\u0010H\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u00080J2\u0006\u0010K\u001a\u00020\n2\u0006\u0010L\u001a\u00020\n2\u0006\u0010M\u001a\u00020\nH&J\u0018\u0010N\u001a\u00020\u00032\u0006\u0010O\u001a\u00020P2\u0006\u0010 \u001a\u00020!H&JS\u0010Q\u001a\u00020\u00032\u000c\u0010R\u001a\u0008\u0012\u0004\u0012\u00020T0S2\u0006\u0010U\u001a\u00020!2\u0006\u0010V\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010W\u001a\u00020XH&\u00a2\u0006\u0002\u0010Y\u00a8\u0006Z"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/CommandFactory;",
        "",
        "createAddEmptyLayerCommand",
        "Lorg/catrobat/paintroid/command/Command;",
        "createClipboardCommand",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "toolPosition",
        "Landroid/graphics/PointF;",
        "boxWidth",
        "",
        "boxHeight",
        "boxRotation",
        "createClippingCommand",
        "pathBitmap",
        "createColorChangedCommand",
        "toolReference",
        "Lorg/catrobat/paintroid/tools/ToolReference;",
        "context",
        "Landroid/content/Context;",
        "color",
        "",
        "createCropCommand",
        "resizeCoordinateXLeft",
        "resizeCoordinateYTop",
        "resizeCoordinateXRight",
        "resizeCoordinateYBottom",
        "maximumBitmapResolution",
        "createCutCommand",
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
        "width",
        "height",
        "layers",
        "",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
        "createLayerOpacityCommand",
        "opacityPercentage",
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
        "createTextToolCommand",
        "multilineText",
        "",
        "",
        "textPaint",
        "boxOffset",
        "typefaceInfo",
        "Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;",
        "([Ljava/lang/String;Landroid/graphics/Paint;IFFLandroid/graphics/PointF;FLorg/catrobat/paintroid/command/serialization/SerializableTypeface;)Lorg/catrobat/paintroid/command/Command;",
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
.method public abstract createAddEmptyLayerCommand()Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createClipboardCommand(Landroid/graphics/Bitmap;Landroid/graphics/PointF;FFF)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createClippingCommand(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Lorg/catrobat/paintroid/command/Command;
.end method

.method public abstract createColorChangedCommand(Lorg/catrobat/paintroid/tools/ToolReference;Landroid/content/Context;I)Lorg/catrobat/paintroid/command/Command;
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
            "+",
            "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
            ">;)",
            "Lorg/catrobat/paintroid/command/Command;"
        }
    .end annotation
.end method

.method public abstract createLayerOpacityCommand(II)Lorg/catrobat/paintroid/command/Command;
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

.method public abstract createTextToolCommand([Ljava/lang/String;Landroid/graphics/Paint;IFFLandroid/graphics/PointF;FLorg/catrobat/paintroid/command/serialization/SerializableTypeface;)Lorg/catrobat/paintroid/command/Command;
.end method
