.class public final Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;
.super Ljava/lang/Object;
.source "DefaultCommandFactory.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/CommandFactory;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultCommandFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultCommandFactory.kt\norg/catrobat/paintroid/command/implementation/DefaultCommandFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,206:1\n1849#2,2:207\n*S KotlinDebug\n*F\n+ 1 DefaultCommandFactory.kt\norg/catrobat/paintroid/command/implementation/DefaultCommandFactory\n*L\n144#1:207,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J0\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0016J \u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J0\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u0018H\u0016J(\u0010\u001f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0016J(\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u00182\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\rH\u0016J\u0010\u0010&\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020(H\u0016J0\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010#\u001a\u00020$H\u0016J\u0010\u00100\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u00100\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u00182\u0006\u00102\u001a\u00020\u0018H\u0016J\u0016\u00100\u001a\u00020\u00062\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020504H\u0016J\u0018\u00106\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u00182\u0006\u00107\u001a\u00020\u0018H\u0016J\u0018\u00108\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u00182\u0006\u00109\u001a\u00020\u0018H\u0016J\u0018\u0010:\u001a\u00020\u00062\u0006\u0010#\u001a\u00020$2\u0006\u0010;\u001a\u00020<H\u0016J\u0018\u0010=\u001a\u00020\u00062\u0006\u0010#\u001a\u00020$2\u0006\u0010>\u001a\u00020\u000bH\u0016J\u0010\u0010?\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\u0018H\u0016J\u0018\u0010A\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u00182\u0006\u0010B\u001a\u00020\u0018H\u0016J\u0008\u0010C\u001a\u00020\u0006H\u0016J\u0018\u0010D\u001a\u00020\u00062\u0006\u0010E\u001a\u00020\u00182\u0006\u0010F\u001a\u00020\u0018H\u0016J\u0010\u0010G\u001a\u00020\u00062\u0006\u0010H\u001a\u00020IH\u0016J\u0010\u0010J\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u0018H\u0016J6\u0010K\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u000b0M2\u0006\u0010N\u001a\u00020\r2\u0006\u0010O\u001a\u00020\r2\u0006\u0010P\u001a\u00020\rH\u0016J\u0018\u0010Q\u001a\u00020\u00062\u0006\u0010R\u001a\u00020S2\u0006\u0010#\u001a\u00020$H\u0016JS\u0010T\u001a\u00020\u00062\u000c\u0010U\u001a\u0008\u0012\u0004\u0012\u00020W0V2\u0006\u0010X\u001a\u00020$2\u0006\u0010Y\u001a\u00020\u00182\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010Z\u001a\u00020[H\u0016\u00a2\u0006\u0002\u0010\\R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006]"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;",
        "Lorg/catrobat/paintroid/command/CommandFactory;",
        "()V",
        "commonFactory",
        "Lorg/catrobat/paintroid/common/CommonFactory;",
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


# instance fields
.field private final commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-direct {v0}, Lorg/catrobat/paintroid/common/CommonFactory;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    return-void
.end method


# virtual methods
.method public createAddEmptyLayerCommand()Lorg/catrobat/paintroid/command/Command;
    .locals 2

    .line 65
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/AddEmptyLayerCommand;

    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/command/implementation/AddEmptyLayerCommand;-><init>(Lorg/catrobat/paintroid/common/CommonFactory;)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createClipboardCommand(Landroid/graphics/Bitmap;Landroid/graphics/PointF;FFF)Lorg/catrobat/paintroid/command/Command;
    .locals 7

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPosition"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/ClipboardCommand;

    .line 177
    invoke-static {p2}, Lorg/catrobat/paintroid/tools/helper/ConversionKt;->toPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v3

    move-object v1, v0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .line 175
    invoke-direct/range {v1 .. v6}, Lorg/catrobat/paintroid/command/implementation/ClipboardCommand;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Point;FFF)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createClippingCommand(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Lorg/catrobat/paintroid/command/Command;
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathBitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/ClippingCommand;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/paintroid/command/implementation/ClippingCommand;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createColorChangedCommand(Lorg/catrobat/paintroid/tools/ToolReference;Landroid/content/Context;I)Lorg/catrobat/paintroid/command/Command;
    .locals 1

    const-string v0, "toolReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;

    invoke-direct {v0, p1, p2, p3}, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;-><init>(Lorg/catrobat/paintroid/tools/ToolReference;Landroid/content/Context;I)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createCropCommand(IIIII)Lorg/catrobat/paintroid/command/Command;
    .locals 7

    .line 91
    new-instance v6, Lorg/catrobat/paintroid/command/implementation/CropCommand;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/paintroid/command/implementation/CropCommand;-><init>(IIIII)V

    check-cast v6, Lorg/catrobat/paintroid/command/Command;

    return-object v6
.end method

.method public createCutCommand(Landroid/graphics/PointF;FFF)Lorg/catrobat/paintroid/command/Command;
    .locals 1

    const-string v0, "toolPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/CutCommand;

    invoke-static {p1}, Lorg/catrobat/paintroid/tools/helper/ConversionKt;->toPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/command/implementation/CutCommand;-><init>(Landroid/graphics/Point;FFF)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createFillCommand(IILandroid/graphics/Paint;F)Lorg/catrobat/paintroid/command/Command;
    .locals 3

    const-string v0, "paint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/FillCommand;

    .line 106
    new-instance v1, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithmFactory;

    invoke-direct {v1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithmFactory;-><init>()V

    check-cast v1, Lorg/catrobat/paintroid/tools/helper/FillAlgorithmFactory;

    .line 107
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v2, p1, p2}, Lorg/catrobat/paintroid/common/CommonFactory;->createPoint(II)Landroid/graphics/Point;

    move-result-object p1

    .line 108
    iget-object p2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {p2, p3}, Lorg/catrobat/paintroid/common/CommonFactory;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p2

    .line 105
    invoke-direct {v0, v1, p1, p2, p4}, Lorg/catrobat/paintroid/command/implementation/FillCommand;-><init>(Lorg/catrobat/paintroid/tools/helper/FillAlgorithmFactory;Landroid/graphics/Point;Landroid/graphics/Paint;F)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createFlipCommand(Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;)Lorg/catrobat/paintroid/command/Command;
    .locals 1

    const-string v0, "flipDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/FlipCommand;

    invoke-direct {v0, p1}, Lorg/catrobat/paintroid/command/implementation/FlipCommand;-><init>(Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createGeometricFillCommand(Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;Landroid/graphics/Point;Landroid/graphics/RectF;FLandroid/graphics/Paint;)Lorg/catrobat/paintroid/command/Command;
    .locals 8

    const-string v0, "shapeDrawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "box"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v0, p3}, Lorg/catrobat/paintroid/common/CommonFactory;->createRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    .line 120
    new-instance p3, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;

    .line 122
    iget v3, p2, Landroid/graphics/Point;->x:I

    .line 123
    iget v4, p2, Landroid/graphics/Point;->y:I

    .line 126
    iget-object p2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {p2, p5}, Lorg/catrobat/paintroid/common/CommonFactory;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v7

    move-object v1, p3

    move-object v2, p1

    move v6, p4

    .line 120
    invoke-direct/range {v1 .. v7}, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;-><init>(Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;IILandroid/graphics/RectF;FLandroid/graphics/Paint;)V

    check-cast p3, Lorg/catrobat/paintroid/command/Command;

    return-object p3
.end method

.method public createInitCommand(II)Lorg/catrobat/paintroid/command/Command;
    .locals 2

    .line 42
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;

    invoke-direct {v0}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;-><init>()V

    .line 43
    new-instance v1, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;

    invoke-direct {v1, p1, p2}, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;-><init>(II)V

    check-cast v1, Lorg/catrobat/paintroid/command/Command;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 44
    new-instance p1, Lorg/catrobat/paintroid/command/implementation/AddEmptyLayerCommand;

    iget-object p2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-direct {p1, p2}, Lorg/catrobat/paintroid/command/implementation/AddEmptyLayerCommand;-><init>(Lorg/catrobat/paintroid/common/CommonFactory;)V

    check-cast p1, Lorg/catrobat/paintroid/command/Command;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 42
    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createInitCommand(Landroid/graphics/Bitmap;)Lorg/catrobat/paintroid/command/Command;
    .locals 4

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;

    invoke-direct {v0}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;-><init>()V

    .line 48
    new-instance v1, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;-><init>(II)V

    check-cast v1, Lorg/catrobat/paintroid/command/Command;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 49
    new-instance v1, Lorg/catrobat/paintroid/command/implementation/LoadCommand;

    invoke-direct {v1, p1}, Lorg/catrobat/paintroid/command/implementation/LoadCommand;-><init>(Landroid/graphics/Bitmap;)V

    check-cast v1, Lorg/catrobat/paintroid/command/Command;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 47
    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createInitCommand(Ljava/util/List;)Lorg/catrobat/paintroid/command/Command;
    .locals 4
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

    const-string v0, "layers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;

    invoke-direct {v0}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;-><init>()V

    const/4 v1, 0x0

    .line 53
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    .line 54
    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 55
    new-instance v2, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v2, v3, v1}, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;-><init>(II)V

    check-cast v2, Lorg/catrobat/paintroid/command/Command;

    invoke-virtual {v0, v2}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 57
    new-instance v1, Lorg/catrobat/paintroid/command/implementation/LoadLayerListCommand;

    invoke-direct {v1, p1}, Lorg/catrobat/paintroid/command/implementation/LoadLayerListCommand;-><init>(Ljava/util/List;)V

    check-cast v1, Lorg/catrobat/paintroid/command/Command;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 52
    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createLayerOpacityCommand(II)Lorg/catrobat/paintroid/command/Command;
    .locals 1

    .line 69
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/LayerOpacityCommand;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/paintroid/command/implementation/LayerOpacityCommand;-><init>(II)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createMergeLayersCommand(II)Lorg/catrobat/paintroid/command/Command;
    .locals 1

    .line 77
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;-><init>(II)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;
    .locals 2

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/PathCommand;

    .line 131
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v1, p1}, Lorg/catrobat/paintroid/common/CommonFactory;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p1

    .line 132
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v1, p2}, Lorg/catrobat/paintroid/common/CommonFactory;->createSerializablePath(Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    move-result-object p2

    check-cast p2, Landroid/graphics/Path;

    .line 130
    invoke-direct {v0, p1, p2}, Lorg/catrobat/paintroid/command/implementation/PathCommand;-><init>(Landroid/graphics/Paint;Landroid/graphics/Path;)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createPointCommand(Landroid/graphics/Paint;Landroid/graphics/PointF;)Lorg/catrobat/paintroid/command/Command;
    .locals 2

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coordinate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/PointCommand;

    .line 100
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v1, p1}, Lorg/catrobat/paintroid/common/CommonFactory;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p1

    .line 101
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v1, p2}, Lorg/catrobat/paintroid/common/CommonFactory;->createPointF(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 99
    invoke-direct {v0, p1, p2}, Lorg/catrobat/paintroid/command/implementation/PointCommand;-><init>(Landroid/graphics/Paint;Landroid/graphics/PointF;)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createRemoveLayerCommand(I)Lorg/catrobat/paintroid/command/Command;
    .locals 1

    .line 71
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/RemoveLayerCommand;

    invoke-direct {v0, p1}, Lorg/catrobat/paintroid/command/implementation/RemoveLayerCommand;-><init>(I)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createReorderLayersCommand(II)Lorg/catrobat/paintroid/command/Command;
    .locals 1

    .line 74
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand;-><init>(II)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createResetCommand()Lorg/catrobat/paintroid/command/Command;
    .locals 3

    .line 60
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;

    invoke-direct {v0}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;-><init>()V

    .line 61
    new-instance v1, Lorg/catrobat/paintroid/command/implementation/ResetCommand;

    invoke-direct {v1}, Lorg/catrobat/paintroid/command/implementation/ResetCommand;-><init>()V

    check-cast v1, Lorg/catrobat/paintroid/command/Command;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 62
    new-instance v1, Lorg/catrobat/paintroid/command/implementation/AddEmptyLayerCommand;

    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-direct {v1, v2}, Lorg/catrobat/paintroid/command/implementation/AddEmptyLayerCommand;-><init>(Lorg/catrobat/paintroid/common/CommonFactory;)V

    check-cast v1, Lorg/catrobat/paintroid/command/Command;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 60
    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createResizeCommand(II)Lorg/catrobat/paintroid/command/Command;
    .locals 1

    .line 167
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;-><init>(II)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createRotateCommand(Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;)Lorg/catrobat/paintroid/command/Command;
    .locals 1

    const-string v0, "rotateDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/RotateCommand;

    invoke-direct {v0, p1}, Lorg/catrobat/paintroid/command/implementation/RotateCommand;-><init>(Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createSelectLayerCommand(I)Lorg/catrobat/paintroid/command/Command;
    .locals 1

    .line 67
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/SelectLayerCommand;

    invoke-direct {v0, p1}, Lorg/catrobat/paintroid/command/implementation/SelectLayerCommand;-><init>(I)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createSmudgePathCommand(Landroid/graphics/Bitmap;Ljava/util/List;FFF)Lorg/catrobat/paintroid/command/Command;
    .locals 7
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

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 144
    check-cast p2, Ljava/lang/Iterable;

    .line 207
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 145
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v1, v0}, Lorg/catrobat/paintroid/common/CommonFactory;->createPointF(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_0
    new-instance p2, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string p1, "bitmap.copy(Bitmap.Config.ARGB_8888, false)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;-><init>(Landroid/graphics/Bitmap;Ljava/util/List;FFF)V

    check-cast p2, Lorg/catrobat/paintroid/command/Command;

    return-object p2
.end method

.method public createSprayCommand([FLandroid/graphics/Paint;)Lorg/catrobat/paintroid/command/Command;
    .locals 1

    const-string v0, "sprayedPoints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/SprayCommand;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/paintroid/command/implementation/SprayCommand;-><init>([FLandroid/graphics/Paint;)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createTextToolCommand([Ljava/lang/String;Landroid/graphics/Paint;IFFLandroid/graphics/PointF;FLorg/catrobat/paintroid/command/serialization/SerializableTypeface;)Lorg/catrobat/paintroid/command/Command;
    .locals 13

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p6

    const-string v3, "multilineText"

    move-object v5, p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "textPaint"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "toolPosition"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "typefaceInfo"

    move-object/from16 v12, p8

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance v3, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;

    .line 161
    iget-object v4, v0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v4, p2}, Lorg/catrobat/paintroid/common/CommonFactory;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v6

    move/from16 v1, p3

    int-to-float v7, v1

    .line 162
    iget-object v1, v0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v1, v2}, Lorg/catrobat/paintroid/common/CommonFactory;->createPointF(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v10

    move-object v4, v3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v11, p7

    .line 160
    invoke-direct/range {v4 .. v12}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;-><init>([Ljava/lang/String;Landroid/graphics/Paint;FFFLandroid/graphics/PointF;FLorg/catrobat/paintroid/command/serialization/SerializableTypeface;)V

    check-cast v3, Lorg/catrobat/paintroid/command/Command;

    return-object v3
.end method
