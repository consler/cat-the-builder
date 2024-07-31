.class public final Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;
.super Ljava/lang/Object;
.source "DefaultCommandFactory.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/CommandFactory;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultCommandFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultCommandFactory.kt\norg/catrobat/paintroid/command/implementation/DefaultCommandFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n1819#2,2:182\n*E\n*S KotlinDebug\n*F\n+ 1 DefaultCommandFactory.kt\norg/catrobat/paintroid/command/implementation/DefaultCommandFactory\n*L\n132#1,2:182\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J0\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tH\u0016J(\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0016J(\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0012H\u0016J\u0010\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J0\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\'H\u0016J\u0018\u0010%\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\t2\u0006\u0010)\u001a\u00020\tH\u0016J\u0018\u0010%\u001a\u00020\u00062\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\'0+H\u0016J\u0018\u0010,\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\t2\u0006\u0010-\u001a\u00020\tH\u0016J\u0018\u0010.\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010/\u001a\u000200H\u0016J\u0018\u00101\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u0010H\u0016J\u0010\u00103\u001a\u00020\u00062\u0006\u00104\u001a\u00020\tH\u0016J\u0018\u00105\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\t2\u0006\u00106\u001a\u00020\tH\u0016J\u0008\u00107\u001a\u00020\u0006H\u0016J\u0018\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020\t2\u0006\u0010:\u001a\u00020\tH\u0016J\u0010\u0010;\u001a\u00020\u00062\u0006\u0010<\u001a\u00020=H\u0016J\u0010\u0010>\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\tH\u0016J6\u0010?\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\'2\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00100A2\u0006\u0010B\u001a\u00020\u00122\u0006\u0010C\u001a\u00020\u00122\u0006\u0010D\u001a\u00020\u0012H\u0016J\u0018\u0010E\u001a\u00020\u00062\u0006\u0010F\u001a\u00020G2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J0\u0010H\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\'2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0016JS\u0010I\u001a\u00020\u00062\u000c\u0010J\u001a\u0008\u0012\u0004\u0012\u00020L0K2\u0006\u0010M\u001a\u00020\u00192\u0006\u0010N\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010O\u001a\u00020PH\u0016\u00a2\u0006\u0002\u0010QR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006R"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;",
        "Lorg/catrobat/paintroid/command/CommandFactory;",
        "()V",
        "commonFactory",
        "Lorg/catrobat/paintroid/common/CommonFactory;",
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


# instance fields
.field private final commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-direct {v0}, Lorg/catrobat/paintroid/common/CommonFactory;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    return-void
.end method


# virtual methods
.method public createAddLayerCommand()Lorg/catrobat/paintroid/command/Command;
    .locals 2

    .line 61
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/AddLayerCommand;

    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/command/implementation/AddLayerCommand;-><init>(Lorg/catrobat/paintroid/common/CommonFactory;)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createCropCommand(IIIII)Lorg/catrobat/paintroid/command/Command;
    .locals 7
    .param p1, "resizeCoordinateXLeft"    # I
    .param p2, "resizeCoordinateYTop"    # I
    .param p3, "resizeCoordinateXRight"    # I
    .param p4, "resizeCoordinateYBottom"    # I
    .param p5, "maximumBitmapResolution"    # I

    .line 85
    new-instance v6, Lorg/catrobat/paintroid/command/implementation/CropCommand;

    .line 86
    nop

    .line 87
    nop

    .line 88
    nop

    .line 89
    nop

    .line 90
    nop

    .line 85
    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/paintroid/command/implementation/CropCommand;-><init>(IIIII)V

    check-cast v6, Lorg/catrobat/paintroid/command/Command;

    .line 91
    return-object v6
.end method

.method public createCutCommand(Landroid/graphics/PointF;FFF)Lorg/catrobat/paintroid/command/Command;
    .locals 2
    .param p1, "toolPosition"    # Landroid/graphics/PointF;
    .param p2, "boxWidth"    # F
    .param p3, "boxHeight"    # F
    .param p4, "boxRotation"    # F

    const-string v0, "toolPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/CutCommand;

    invoke-static {p1}, Lorg/catrobat/paintroid/tools/helper/ConversionKt;->toPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lorg/catrobat/paintroid/command/implementation/CutCommand;-><init>(Landroid/graphics/Point;FFF)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createFillCommand(IILandroid/graphics/Paint;F)Lorg/catrobat/paintroid/command/Command;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "colorTolerance"    # F

    const-string v0, "paint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/FillCommand;

    .line 100
    new-instance v1, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithmFactory;

    invoke-direct {v1}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithmFactory;-><init>()V

    check-cast v1, Lorg/catrobat/paintroid/tools/helper/FillAlgorithmFactory;

    .line 101
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v2, p1, p2}, Lorg/catrobat/paintroid/common/CommonFactory;->createPoint(II)Landroid/graphics/Point;

    move-result-object v2

    .line 102
    iget-object v3, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v3, p3}, Lorg/catrobat/paintroid/common/CommonFactory;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v3

    .line 103
    nop

    .line 99
    invoke-direct {v0, v1, v2, v3, p4}, Lorg/catrobat/paintroid/command/implementation/FillCommand;-><init>(Lorg/catrobat/paintroid/tools/helper/FillAlgorithmFactory;Landroid/graphics/Point;Landroid/graphics/Paint;F)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    .line 104
    return-object v0
.end method

.method public createFlipCommand(Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;)Lorg/catrobat/paintroid/command/Command;
    .locals 1
    .param p1, "flipDirection"    # Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    const-string v0, "flipDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/FlipCommand;

    invoke-direct {v0, p1}, Lorg/catrobat/paintroid/command/implementation/FlipCommand;-><init>(Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createGeometricFillCommand(Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;Landroid/graphics/Point;Landroid/graphics/RectF;FLandroid/graphics/Paint;)Lorg/catrobat/paintroid/command/Command;
    .locals 9
    .param p1, "shapeDrawable"    # Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "box"    # Landroid/graphics/RectF;
    .param p4, "boxRotation"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    const-string v0, "shapeDrawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "box"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v0, p3}, Lorg/catrobat/paintroid/common/CommonFactory;->createRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 114
    .local v0, "destRectF":Landroid/graphics/RectF;
    new-instance v8, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;

    .line 115
    nop

    .line 116
    iget v3, p2, Landroid/graphics/Point;->x:I

    .line 117
    iget v4, p2, Landroid/graphics/Point;->y:I

    .line 118
    nop

    .line 119
    nop

    .line 120
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v1, p5}, Lorg/catrobat/paintroid/common/CommonFactory;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v7

    .line 114
    move-object v1, v8

    move-object v2, p1

    move-object v5, v0

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;-><init>(Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;IILandroid/graphics/RectF;FLandroid/graphics/Paint;)V

    check-cast v8, Lorg/catrobat/paintroid/command/Command;

    return-object v8
.end method

.method public createInitCommand(II)Lorg/catrobat/paintroid/command/Command;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 39
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;

    invoke-direct {v0}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;-><init>()V

    move-object v1, v0

    .local v1, "$this$apply":Lorg/catrobat/paintroid/command/implementation/CompositeCommand;
    const/4 v2, 0x0

    .line 40
    .local v2, "$i$a$-apply-DefaultCommandFactory$createInitCommand$1":I
    new-instance v3, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;

    invoke-direct {v3, p1, p2}, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;-><init>(II)V

    check-cast v3, Lorg/catrobat/paintroid/command/Command;

    invoke-virtual {v1, v3}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 41
    new-instance v3, Lorg/catrobat/paintroid/command/implementation/AddLayerCommand;

    iget-object v4, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-direct {v3, v4}, Lorg/catrobat/paintroid/command/implementation/AddLayerCommand;-><init>(Lorg/catrobat/paintroid/common/CommonFactory;)V

    check-cast v3, Lorg/catrobat/paintroid/command/Command;

    invoke-virtual {v1, v3}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 42
    nop

    .line 39
    .end local v1    # "$this$apply":Lorg/catrobat/paintroid/command/implementation/CompositeCommand;
    .end local v2    # "$i$a$-apply-DefaultCommandFactory$createInitCommand$1":I
    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    .line 42
    return-object v0
.end method

.method public createInitCommand(Landroid/graphics/Bitmap;)Lorg/catrobat/paintroid/command/Command;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;

    invoke-direct {v0}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;-><init>()V

    move-object v1, v0

    .local v1, "$this$apply":Lorg/catrobat/paintroid/command/implementation/CompositeCommand;
    const/4 v2, 0x0

    .line 45
    .local v2, "$i$a$-apply-DefaultCommandFactory$createInitCommand$2":I
    new-instance v3, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;-><init>(II)V

    check-cast v3, Lorg/catrobat/paintroid/command/Command;

    invoke-virtual {v1, v3}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 46
    new-instance v3, Lorg/catrobat/paintroid/command/implementation/LoadCommand;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v5, "bitmap.copy(Bitmap.Config.ARGB_8888, false)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/catrobat/paintroid/command/implementation/LoadCommand;-><init>(Landroid/graphics/Bitmap;)V

    check-cast v3, Lorg/catrobat/paintroid/command/Command;

    invoke-virtual {v1, v3}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 47
    nop

    .line 44
    .end local v1    # "$this$apply":Lorg/catrobat/paintroid/command/implementation/CompositeCommand;
    .end local v2    # "$i$a$-apply-DefaultCommandFactory$createInitCommand$2":I
    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    .line 47
    return-object v0
.end method

.method public createInitCommand(Ljava/util/List;)Lorg/catrobat/paintroid/command/Command;
    .locals 8
    .param p1, "bitmapList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/catrobat/paintroid/command/Command;"
        }
    .end annotation

    const-string v0, "bitmapList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;

    invoke-direct {v0}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;-><init>()V

    move-object v1, v0

    .local v1, "$this$apply":Lorg/catrobat/paintroid/command/implementation/CompositeCommand;
    const/4 v2, 0x0

    .line 50
    .local v2, "$i$a$-apply-DefaultCommandFactory$createInitCommand$3":I
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .local v3, "it":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 51
    .local v4, "$i$a$-let-DefaultCommandFactory$createInitCommand$3$1":I
    new-instance v5, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;-><init>(II)V

    check-cast v5, Lorg/catrobat/paintroid/command/Command;

    invoke-virtual {v1, v5}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 52
    nop

    .line 50
    .end local v3    # "it":Landroid/graphics/Bitmap;
    .end local v4    # "$i$a$-let-DefaultCommandFactory$createInitCommand$3$1":I
    nop

    .line 53
    :cond_0
    new-instance v3, Lorg/catrobat/paintroid/command/implementation/LoadBitmapListCommand;

    invoke-direct {v3, p1}, Lorg/catrobat/paintroid/command/implementation/LoadBitmapListCommand;-><init>(Ljava/util/List;)V

    check-cast v3, Lorg/catrobat/paintroid/command/Command;

    invoke-virtual {v1, v3}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 54
    nop

    .line 49
    .end local v1    # "$this$apply":Lorg/catrobat/paintroid/command/implementation/CompositeCommand;
    .end local v2    # "$i$a$-apply-DefaultCommandFactory$createInitCommand$3":I
    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    .line 54
    return-object v0
.end method

.method public createMergeLayersCommand(II)Lorg/catrobat/paintroid/command/Command;
    .locals 1
    .param p1, "position"    # I
    .param p2, "mergeWith"    # I

    .line 71
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;-><init>(II)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "path"    # Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/PathCommand;

    .line 125
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v1, p1}, Lorg/catrobat/paintroid/common/CommonFactory;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v2, p2}, Lorg/catrobat/paintroid/common/CommonFactory;->createSerializablePath(Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    .line 124
    invoke-direct {v0, v1, v2}, Lorg/catrobat/paintroid/command/implementation/PathCommand;-><init>(Landroid/graphics/Paint;Landroid/graphics/Path;)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    .line 127
    return-object v0
.end method

.method public createPointCommand(Landroid/graphics/Paint;Landroid/graphics/PointF;)Lorg/catrobat/paintroid/command/Command;
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "coordinate"    # Landroid/graphics/PointF;

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coordinate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/PointCommand;

    .line 94
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v1, p1}, Lorg/catrobat/paintroid/common/CommonFactory;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v2, p2}, Lorg/catrobat/paintroid/common/CommonFactory;->createPointF(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 93
    invoke-direct {v0, v1, v2}, Lorg/catrobat/paintroid/command/implementation/PointCommand;-><init>(Landroid/graphics/Paint;Landroid/graphics/PointF;)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    .line 96
    return-object v0
.end method

.method public createRemoveLayerCommand(I)Lorg/catrobat/paintroid/command/Command;
    .locals 1
    .param p1, "index"    # I

    .line 65
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/RemoveLayerCommand;

    invoke-direct {v0, p1}, Lorg/catrobat/paintroid/command/implementation/RemoveLayerCommand;-><init>(I)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createReorderLayersCommand(II)Lorg/catrobat/paintroid/command/Command;
    .locals 1
    .param p1, "position"    # I
    .param p2, "swapWith"    # I

    .line 68
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand;-><init>(II)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createResetCommand()Lorg/catrobat/paintroid/command/Command;
    .locals 5

    .line 56
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;

    invoke-direct {v0}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;-><init>()V

    move-object v1, v0

    .local v1, "$this$apply":Lorg/catrobat/paintroid/command/implementation/CompositeCommand;
    const/4 v2, 0x0

    .line 57
    .local v2, "$i$a$-apply-DefaultCommandFactory$createResetCommand$1":I
    new-instance v3, Lorg/catrobat/paintroid/command/implementation/ResetCommand;

    invoke-direct {v3}, Lorg/catrobat/paintroid/command/implementation/ResetCommand;-><init>()V

    check-cast v3, Lorg/catrobat/paintroid/command/Command;

    invoke-virtual {v1, v3}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 58
    new-instance v3, Lorg/catrobat/paintroid/command/implementation/AddLayerCommand;

    iget-object v4, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-direct {v3, v4}, Lorg/catrobat/paintroid/command/implementation/AddLayerCommand;-><init>(Lorg/catrobat/paintroid/common/CommonFactory;)V

    check-cast v3, Lorg/catrobat/paintroid/command/Command;

    invoke-virtual {v1, v3}, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 59
    nop

    .line 56
    .end local v1    # "$this$apply":Lorg/catrobat/paintroid/command/implementation/CompositeCommand;
    .end local v2    # "$i$a$-apply-DefaultCommandFactory$createResetCommand$1":I
    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    .line 59
    return-object v0
.end method

.method public createResizeCommand(II)Lorg/catrobat/paintroid/command/Command;
    .locals 1
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .line 155
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;-><init>(II)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createRotateCommand(Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;)Lorg/catrobat/paintroid/command/Command;
    .locals 1
    .param p1, "rotateDirection"    # Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;

    const-string v0, "rotateDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/RotateCommand;

    invoke-direct {v0, p1}, Lorg/catrobat/paintroid/command/implementation/RotateCommand;-><init>(Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createSelectLayerCommand(I)Lorg/catrobat/paintroid/command/Command;
    .locals 1
    .param p1, "position"    # I

    .line 63
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/SelectLayerCommand;

    invoke-direct {v0, p1}, Lorg/catrobat/paintroid/command/implementation/SelectLayerCommand;-><init>(I)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createSmudgePathCommand(Landroid/graphics/Bitmap;Ljava/util/List;FFF)Lorg/catrobat/paintroid/command/Command;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "pointPath"    # Ljava/util/List;
    .param p3, "maxPressure"    # F
    .param p4, "maxSize"    # F
    .param p5, "minSize"    # F
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

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 132
    .local v0, "copy":Ljava/util/List;
    move-object v1, p2

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 182
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroid/graphics/PointF;

    .local v5, "it":Landroid/graphics/PointF;
    const/4 v6, 0x0

    .line 133
    .local v6, "$i$a$-forEach-DefaultCommandFactory$createSmudgePathCommand$1":I
    iget-object v7, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v7, v5}, Lorg/catrobat/paintroid/common/CommonFactory;->createPointF(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Landroid/graphics/PointF;
    .end local v6    # "$i$a$-forEach-DefaultCommandFactory$createSmudgePathCommand$1":I
    goto :goto_0

    .line 183
    :cond_0
    nop

    .line 136
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    new-instance v7, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v1, "bitmap.copy(Bitmap.Config.ARGB_8888, false)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v7

    move-object v3, v0

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;-><init>(Landroid/graphics/Bitmap;Ljava/util/List;FFF)V

    check-cast v7, Lorg/catrobat/paintroid/command/Command;

    return-object v7
.end method

.method public createSprayCommand([FLandroid/graphics/Paint;)Lorg/catrobat/paintroid/command/Command;
    .locals 1
    .param p1, "sprayedPoints"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    const-string v0, "sprayedPoints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/SprayCommand;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/paintroid/command/implementation/SprayCommand;-><init>([FLandroid/graphics/Paint;)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public createStampCommand(Landroid/graphics/Bitmap;Landroid/graphics/PointF;FFF)Lorg/catrobat/paintroid/command/Command;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "toolPosition"    # Landroid/graphics/PointF;
    .param p3, "boxWidth"    # F
    .param p4, "boxHeight"    # F
    .param p5, "boxRotation"    # F

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPosition"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/StampCommand;

    .line 164
    nop

    .line 165
    invoke-static {p2}, Lorg/catrobat/paintroid/tools/helper/ConversionKt;->toPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v3

    .line 166
    nop

    .line 167
    nop

    .line 168
    nop

    .line 163
    move-object v1, v0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/paintroid/command/implementation/StampCommand;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Point;FFF)V

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    .line 169
    return-object v0
.end method

.method public createTextToolCommand([Ljava/lang/String;Landroid/graphics/Paint;IFFLandroid/graphics/PointF;FLorg/catrobat/paintroid/command/serialization/SerializableTypeface;)Lorg/catrobat/paintroid/command/Command;
    .locals 16
    .param p1, "multilineText"    # [Ljava/lang/String;
    .param p2, "textPaint"    # Landroid/graphics/Paint;
    .param p3, "boxOffset"    # I
    .param p4, "boxWidth"    # F
    .param p5, "boxHeight"    # F
    .param p6, "toolPosition"    # Landroid/graphics/PointF;
    .param p7, "boxRotation"    # F
    .param p8, "typefaceInfo"    # Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    const-string v3, "multilineText"

    move-object/from16 v13, p1

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "textPaint"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "toolPosition"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "typefaceInfo"

    move-object/from16 v14, p8

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v3, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;

    .line 149
    iget-object v4, v0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v4, v1}, Lorg/catrobat/paintroid/common/CommonFactory;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v6

    .line 150
    move/from16 v15, p3

    int-to-float v7, v15

    iget-object v4, v0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v4, v2}, Lorg/catrobat/paintroid/common/CommonFactory;->createPointF(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v10

    .line 151
    nop

    .line 148
    move-object v4, v3

    move-object/from16 v5, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v4 .. v12}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;-><init>([Ljava/lang/String;Landroid/graphics/Paint;FFFLandroid/graphics/PointF;FLorg/catrobat/paintroid/command/serialization/SerializableTypeface;)V

    check-cast v3, Lorg/catrobat/paintroid/command/Command;

    .line 152
    return-object v3
.end method
