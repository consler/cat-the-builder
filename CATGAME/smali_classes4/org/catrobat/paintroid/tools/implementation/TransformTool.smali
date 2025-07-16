.class public final Lorg/catrobat/paintroid/tools/implementation/TransformTool;
.super Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;
.source "TransformTool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\u0008\u00106\u001a\u00020\u0014H\u0002J\u0008\u00107\u001a\u000208H\u0002J\u0010\u00109\u001a\u0002082\u0006\u0010:\u001a\u00020;H\u0002J8\u0010<\u001a\u0002082\u0006\u0010:\u001a\u00020;2\u0006\u0010=\u001a\u00020&2\u0006\u0010>\u001a\u00020&2\u0006\u0010?\u001a\u00020&2\u0006\u0010@\u001a\u00020&2\u0006\u0010A\u001a\u00020&H\u0002J \u0010B\u001a\u0002082\u0006\u0010:\u001a\u00020;2\u0006\u0010C\u001a\u00020&2\u0006\u0010D\u001a\u00020&H\u0014J\u0008\u0010E\u001a\u000208H\u0002J\u0008\u0010F\u001a\u000208H\u0002J\u0008\u0010G\u001a\u000208H\u0002J\u0008\u0010H\u001a\u000208H\u0002J\u0012\u0010I\u001a\u00020\u00142\u0008\u0010J\u001a\u0004\u0018\u00010KH\u0016J\u0012\u0010L\u001a\u0002082\u0008\u0010J\u001a\u0004\u0018\u00010KH\u0016J\u001a\u0010M\u001a\u00020\u00142\u0008\u0010J\u001a\u0004\u0018\u00010K2\u0006\u0010N\u001a\u00020\u0014H\u0016J\u0012\u0010O\u001a\u0002082\u0008\u0010J\u001a\u0004\u0018\u00010KH\u0016J\u0008\u0010P\u001a\u000208H\u0002J\u0008\u0010Q\u001a\u000208H\u0002J\u0010\u0010R\u001a\u0002082\u0006\u0010S\u001a\u00020TH\u0002J\u0008\u0010U\u001a\u000208H\u0016J(\u0010V\u001a\u0002082\u0006\u0010W\u001a\u00020&2\u0006\u0010X\u001a\u00020&2\u0006\u0010Y\u001a\u00020&2\u0006\u0010Z\u001a\u00020&H\u0014J\u0008\u0010[\u001a\u000208H\u0014J\u0008\u0010\\\u001a\u000208H\u0002J\u0008\u0010]\u001a\u000208H\u0002J\u0008\u0010^\u001a\u000208H\u0002J\u0008\u0010_\u001a\u000208H\u0002J\u0010\u0010`\u001a\u0002082\u0006\u0010a\u001a\u00020bH\u0002J\u0008\u0010c\u001a\u000208H\u0002J\u0010\u0010d\u001a\u00020K2\u0006\u0010J\u001a\u00020KH\u0016J\u0008\u0010e\u001a\u000208H\u0002R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010%\u001a\u00020&8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\'\u0010(R\u0018\u0010)\u001a\u00020&8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008*\u0010(R\u0018\u0010+\u001a\u00020&8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008,\u0010(R\u0018\u0010-\u001a\u00020&8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008.\u0010(R\u000e\u0010/\u001a\u000200X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u00101\u001a\u0002028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00083\u00104R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006f"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/TransformTool;",
        "Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;",
        "transformToolOptionsView",
        "Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;",
        "contextCallback",
        "Lorg/catrobat/paintroid/tools/ContextCallback;",
        "toolOptionsViewController",
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;",
        "toolPaint",
        "Lorg/catrobat/paintroid/tools/ToolPaint;",
        "workspace",
        "Lorg/catrobat/paintroid/tools/Workspace;",
        "idlingResource",
        "Landroidx/test/espresso/idling/CountingIdlingResource;",
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "drawTime",
        "",
        "(Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V",
        "checkMarkClicked",
        "",
        "getCheckMarkClicked",
        "()Z",
        "setCheckMarkClicked",
        "(Z)V",
        "cropAlgorithm",
        "Lorg/catrobat/paintroid/tools/helper/CropAlgorithm;",
        "cropRunFinished",
        "getDrawTime",
        "()J",
        "setDrawTime",
        "(J)V",
        "isSetCenter",
        "maxImageResolutionInformationAlreadyShown",
        "rangeFilterHeight",
        "Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;",
        "rangeFilterWidth",
        "resizeBoundHeightYBottom",
        "",
        "getResizeBoundHeightYBottom$annotations",
        "()V",
        "resizeBoundHeightYTop",
        "getResizeBoundHeightYTop$annotations",
        "resizeBoundWidthXLeft",
        "getResizeBoundWidthXLeft$annotations",
        "resizeBoundWidthXRight",
        "getResizeBoundWidthXRight$annotations",
        "setCenterCropAlgorithm",
        "Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "getToolType",
        "()Lorg/catrobat/paintroid/tools/ToolType;",
        "zeroSizeBitmap",
        "areResizeBordersValid",
        "autoCrop",
        "",
        "drawCursor",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawCursorCircle",
        "strokeWidth",
        "outerCircleRadius",
        "innerCircleRadius",
        "positionX",
        "positionY",
        "drawToolSpecifics",
        "boxWidth",
        "boxHeight",
        "executeResizeCommand",
        "executeSetCenterCommand",
        "flipHorizontal",
        "flipVertical",
        "handleDown",
        "coordinate",
        "Landroid/graphics/PointF;",
        "handleDownAnimations",
        "handleMove",
        "shouldAnimate",
        "handleUpAnimations",
        "initResizeBounds",
        "initialiseResizingState",
        "onApplyResizeClicked",
        "resizePercentage",
        "",
        "onClickOnButton",
        "preventThatBoxGetsTooLarge",
        "oldWidth",
        "oldHeight",
        "oldPosX",
        "oldPosY",
        "resetInternalState",
        "resetScaleAndTranslation",
        "rotateClockWise",
        "rotateCounterClockWise",
        "setCenter",
        "setRectangle",
        "rectangle",
        "Landroid/graphics/RectF;",
        "swapWidthAndHeight",
        "toolPositionCoordinates",
        "updateToolOptions",
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
.field private checkMarkClicked:Z

.field private final cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/CropAlgorithm;

.field private cropRunFinished:Z

.field private drawTime:J

.field private isSetCenter:Z

.field private maxImageResolutionInformationAlreadyShown:Z

.field private final rangeFilterHeight:Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;

.field private final rangeFilterWidth:Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;

.field public resizeBoundHeightYBottom:F

.field public resizeBoundHeightYTop:F

.field public resizeBoundWidthXLeft:F

.field public resizeBoundWidthXRight:F

.field private final setCenterCropAlgorithm:Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;

.field private final transformToolOptionsView:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;

.field private zeroSizeBitmap:Z


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V
    .locals 12

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    const-string v0, "transformToolOptionsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPaint"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    move-object/from16 v11, p5

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idlingResource"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v4, p5

    .line 77
    invoke-direct/range {v0 .. v6}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V

    .line 69
    iput-object v8, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->transformToolOptionsView:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;

    move-wide/from16 v0, p8

    .line 76
    iput-wide v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->drawTime:J

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->rotationEnabled:Z

    .line 127
    iput-boolean v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizePointsVisible:Z

    .line 128
    iput-boolean v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->respectMaximumBorderRatio:Z

    .line 129
    invoke-interface/range {p5 .. p5}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    .line 130
    invoke-interface/range {p5 .. p5}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    .line 131
    iget-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 132
    iget-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 133
    new-instance v0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

    invoke-direct {v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;-><init>()V

    check-cast v0, Lorg/catrobat/paintroid/tools/helper/CropAlgorithm;

    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/CropAlgorithm;

    .line 134
    new-instance v1, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;

    check-cast v0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

    invoke-direct {v1, v0}, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;-><init>(Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;)V

    iput-object v1, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->setCenterCropAlgorithm:Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->cropRunFinished:Z

    .line 137
    iget-object v1, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    .line 136
    iput v1, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->maximumBoxResolution:F

    .line 138
    iput-boolean v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->respectMaximumBoxResolution:Z

    .line 139
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->initResizeBounds()V

    .line 140
    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/TransformTool$1;

    invoke-direct {v1, p0, p2}, Lorg/catrobat/paintroid/tools/implementation/TransformTool$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/TransformTool;Lorg/catrobat/paintroid/tools/ContextCallback;)V

    check-cast v1, Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController$Callback;

    invoke-interface {p3, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->setCallback(Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController$Callback;)V

    .line 161
    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/TransformTool$2;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool$2;-><init>(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V

    check-cast v1, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    invoke-interface {p1, v1}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;->setCallback(Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;)V

    .line 202
    new-instance v1, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;

    iget v2, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->maximumBoxResolution:F

    iget v3, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v1, v0, v2}, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;-><init>(II)V

    check-cast v1, Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;

    iput-object v1, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->rangeFilterHeight:Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;

    .line 203
    new-instance v2, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;

    iget v3, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->maximumBoxResolution:F

    iget v4, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v2, v0, v3}, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;-><init>(II)V

    check-cast v2, Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;

    iput-object v2, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->rangeFilterWidth:Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;

    .line 204
    invoke-interface {p1, v1}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;->setHeightFilter(Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;)V

    .line 205
    invoke-interface {p1, v2}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;->setWidthFilter(Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;)V

    .line 206
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->updateToolOptions()V

    .line 207
    invoke-interface {p3}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->showDelayed()V

    return-void
.end method

.method public static final synthetic access$autoCrop(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->autoCrop()V

    return-void
.end method

.method public static final synthetic access$flipHorizontal(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->flipHorizontal()V

    return-void
.end method

.method public static final synthetic access$flipVertical(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->flipVertical()V

    return-void
.end method

.method public static final synthetic access$getCropAlgorithm$p(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)Lorg/catrobat/paintroid/tools/helper/CropAlgorithm;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/CropAlgorithm;

    return-object p0
.end method

.method public static final synthetic access$getSetCenterCropAlgorithm$p(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->setCenterCropAlgorithm:Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;

    return-object p0
.end method

.method public static final synthetic access$getZeroSizeBitmap$p(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->zeroSizeBitmap:Z

    return p0
.end method

.method public static final synthetic access$isSetCenter$p(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->isSetCenter:Z

    return p0
.end method

.method public static final synthetic access$onApplyResizeClicked(Lorg/catrobat/paintroid/tools/implementation/TransformTool;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->onApplyResizeClicked(I)V

    return-void
.end method

.method public static final synthetic access$rotateClockWise(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->rotateClockWise()V

    return-void
.end method

.method public static final synthetic access$rotateCounterClockWise(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->rotateCounterClockWise()V

    return-void
.end method

.method public static final synthetic access$setCenter(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->setCenter()V

    return-void
.end method

.method public static final synthetic access$setSetCenter$p(Lorg/catrobat/paintroid/tools/implementation/TransformTool;Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->isSetCenter:Z

    return-void
.end method

.method public static final synthetic access$setZeroSizeBitmap$p(Lorg/catrobat/paintroid/tools/implementation/TransformTool;Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->zeroSizeBitmap:Z

    return-void
.end method

.method public static final synthetic access$updateToolOptions(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->updateToolOptions()V

    return-void
.end method

.method private final areResizeBordersValid()Z
    .locals 6

    .line 542
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    if-ltz v0, :cond_7

    .line 543
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    goto/16 :goto_4

    .line 547
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-gez v0, :cond_7

    .line 548
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    .line 547
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_7

    .line 549
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    goto :goto_4

    .line 553
    :cond_1
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    cmpg-float v0, v0, v1

    const/4 v3, 0x1

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_6

    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    if-eqz v0, :cond_6

    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    if-eqz v0, :cond_6

    return v2

    .line 556
    :cond_6
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    sub-float/2addr v0, v1

    int-to-float v1, v3

    add-float/2addr v0, v1

    .line 557
    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    sub-float/2addr v4, v5

    add-float/2addr v4, v1

    mul-float/2addr v0, v4

    .line 558
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->maximumBoxResolution:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    move v2, v3

    :cond_7
    :goto_4
    return v2
.end method

.method private final autoCrop()V
    .locals 7

    .line 418
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/TransformTool;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final drawCursor(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v7, p0

    const/4 v8, 0x0

    .line 450
    iget-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x41200000    # 10.0f

    .line 451
    invoke-virtual {v7, v2, v9, v3}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->getStrokeWidthForZoom(FFF)F

    move-result v10

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float v11, v10, v2

    div-float v12, v10, v1

    add-float v4, v0, v12

    add-float v13, v4, v10

    .line 458
    iget-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    .line 460
    iget-object v1, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    sget v2, Lorg/catrobat/paintroid/R$color;->pocketpaint_main_cursor_tool_inactive_primary_color:I

    invoke-interface {v1, v2}, Lorg/catrobat/paintroid/tools/ContextCallback;->getColor(I)I

    move-result v1

    .line 459
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 461
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 462
    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v3, v13

    .line 464
    invoke-direct/range {v0 .. v6}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->drawCursorCircle(Landroid/graphics/Canvas;FFFFF)V

    .line 473
    iget-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-float v0, v11, v10

    const/4 v1, 0x0

    move v6, v1

    move v1, v12

    :goto_0
    const/4 v2, 0x4

    if-ge v6, v2, :cond_1

    .line 478
    rem-int/lit8 v2, v6, 0x2

    if-nez v2, :cond_0

    .line 479
    iget-object v2, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 481
    :cond_0
    iget-object v2, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    .line 482
    iget-object v3, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    sget v4, Lorg/catrobat/paintroid/R$color;->pocketpaint_main_cursor_tool_inactive_primary_color:I

    invoke-interface {v3, v4}, Lorg/catrobat/paintroid/tools/ContextCallback;->getColor(I)I

    move-result v3

    .line 481
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    const/4 v2, 0x0

    sub-float v3, v2, v13

    sub-float v20, v3, v1

    sub-float v21, v3, v0

    .line 490
    iget-object v3, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    const/16 v18, 0x0

    move-object/from16 v14, p1

    move/from16 v15, v20

    move/from16 v16, v18

    move/from16 v17, v21

    move-object/from16 v19, v3

    .line 485
    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v2, v13

    add-float v16, v2, v1

    add-float v18, v2, v0

    .line 497
    iget-object v5, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v16

    move v2, v8

    move/from16 v3, v18

    move v4, v8

    .line 492
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 504
    iget-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    const/16 v17, 0x0

    move/from16 v15, v17

    move-object/from16 v19, v0

    .line 499
    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 511
    iget-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    move/from16 v16, v20

    move/from16 v18, v21

    move-object/from16 v19, v0

    .line 506
    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    int-to-float v0, v6

    mul-float v1, v11, v0

    add-float/2addr v1, v12

    add-float/2addr v0, v9

    mul-float/2addr v0, v11

    add-float/2addr v0, v10

    goto :goto_0

    .line 517
    :cond_1
    iget-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private final drawCursorCircle(Landroid/graphics/Canvas;FFFFF)V
    .locals 1

    .line 528
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, p6, p3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 529
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    const v0, -0x333334

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 530
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, p6, p4, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 531
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 532
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    sub-float/2addr p4, p2

    .line 537
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    .line 533
    invoke-virtual {p1, p5, p6, p4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final executeResizeCommand()V
    .locals 7

    .line 355
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->cropRunFinished:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 356
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->cropRunFinished:Z

    .line 357
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->initResizeBounds()V

    .line 358
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->areResizeBordersValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    .line 360
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    float-to-int v2, v0

    .line 361
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v0, v3

    float-to-int v3, v0

    .line 362
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v0, v4

    float-to-int v4, v0

    .line 363
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v0, v5

    float-to-int v5, v0

    .line 364
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->maximumBoxResolution:F

    float-to-int v6, v0

    .line 359
    invoke-interface/range {v1 .. v6}, Lorg/catrobat/paintroid/command/CommandFactory;->createCropCommand(IIIII)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->cropRunFinished:Z

    .line 369
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    sget v1, Lorg/catrobat/paintroid/R$string;->resize_nothing_to_resize:I

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/ContextCallback;->showNotification(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final executeSetCenterCommand()V
    .locals 7

    .line 333
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$executeSetCenterCommand$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lorg/catrobat/paintroid/tools/implementation/TransformTool$executeSetCenterCommand$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/TransformTool;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final flipHorizontal()V
    .locals 2

    .line 390
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    sget-object v1, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;->FLIP_HORIZONTAL:Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createFlipCommand(Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    return-void
.end method

.method private final flipVertical()V
    .locals 2

    .line 395
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    sget-object v1, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;->FLIP_VERTICAL:Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createFlipCommand(Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    return-void
.end method

.method public static synthetic getResizeBoundHeightYBottom$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getResizeBoundHeightYTop$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getResizeBoundWidthXLeft$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getResizeBoundWidthXRight$annotations()V
    .locals 0

    return-void
.end method

.method private final initResizeBounds()V
    .locals 4

    .line 574
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    .line 575
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    .line 576
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    .line 577
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    return-void
.end method

.method private final initialiseResizingState()V
    .locals 7

    const/4 v0, 0x0

    .line 294
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->cropRunFinished:Z

    const/4 v1, 0x0

    .line 295
    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    .line 296
    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    .line 297
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    .line 298
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    .line 299
    iget-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->checkMarkClicked:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 300
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resetScaleAndTranslation()V

    .line 301
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v2, v4

    iput v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    .line 302
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    iput v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    .line 303
    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    .line 304
    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    goto :goto_0

    .line 306
    :cond_0
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    .line 307
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v4}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v1, v4

    add-float/2addr v1, v2

    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    .line 308
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v4}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v1, v4

    add-float/2addr v1, v2

    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    .line 309
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v4}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v1, v4

    add-float/2addr v1, v2

    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    .line 313
    :goto_0
    new-instance v1, Landroid/graphics/RectF;

    .line 314
    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    .line 315
    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    .line 316
    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    .line 317
    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    .line 313
    invoke-direct {v1, v2, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 312
    invoke-direct {p0, v1}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->setRectangle(Landroid/graphics/RectF;)V

    .line 320
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->checkMarkClicked:Z

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v1

    iget v2, v1, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationX:F

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    add-float/2addr v2, v4

    iput v2, v1, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationX:F

    .line 322
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v1

    iget v2, v1, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationY:F

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    add-float/2addr v2, v4

    iput v2, v1, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationY:F

    .line 323
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v1

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    float-to-int v2, v2

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    float-to-int v4, v4

    invoke-virtual {v1, v2, v4}, Lorg/catrobat/paintroid/ui/Perspective;->setBitmapDimensions(II)V

    .line 324
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    sub-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 325
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    sub-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 326
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->checkMarkClicked:Z

    .line 328
    :cond_1
    iput-boolean v3, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->cropRunFinished:Z

    .line 329
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->updateToolOptions()V

    return-void
.end method

.method private final onApplyResizeClicked(I)V
    .locals 3

    .line 375
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 376
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    mul-float/2addr v2, p1

    float-to-int p1, v2

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v1, v0, p1}, Lorg/catrobat/paintroid/command/CommandFactory;->createResizeCommand(II)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    .line 385
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 378
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->zeroSizeBitmap:Z

    .line 379
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    .line 380
    sget v0, Lorg/catrobat/paintroid/R$string;->resize_cannot_resize_to_this_size:I

    .line 381
    sget-object v1, Lorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;->LONG:Lorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;

    .line 379
    invoke-interface {p1, v0, v1}, Lorg/catrobat/paintroid/tools/ContextCallback;->showNotificationWithDuration(ILorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;)V

    :goto_1
    return-void
.end method

.method private final resetScaleAndTranslation()V
    .locals 2

    .line 288
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->resetPerspective()V

    .line 289
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getScaleForCenterBitmap()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v0, v1

    .line 290
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/tools/Workspace;->setScale(F)V

    return-void
.end method

.method private final rotateClockWise()V
    .locals 2

    .line 406
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    sget-object v1, Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;->ROTATE_RIGHT:Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createRotateCommand(Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 408
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->swapWidthAndHeight()V

    return-void
.end method

.method private final rotateCounterClockWise()V
    .locals 2

    .line 400
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    sget-object v1, Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;->ROTATE_LEFT:Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createRotateCommand(Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 402
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->swapWidthAndHeight()V

    return-void
.end method

.method private final setCenter()V
    .locals 7

    .line 437
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$setCenter$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lorg/catrobat/paintroid/tools/implementation/TransformTool$setCenter$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/TransformTool;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final setRectangle(Landroid/graphics/RectF;)V
    .locals 4

    .line 562
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->checkMarkClicked:Z

    if-nez v0, :cond_0

    .line 563
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    .line 564
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    .line 565
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 566
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    div-float/2addr v1, v3

    add-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 568
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    .line 569
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    :goto_0
    return-void
.end method

.method private final swapWidthAndHeight()V
    .locals 2

    .line 412
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    .line 413
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    .line 414
    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    return-void
.end method

.method private final updateToolOptions()V
    .locals 3

    .line 602
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->rangeFilterHeight:Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->maximumBoxResolution:F

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;->setMax(I)V

    .line 603
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->rangeFilterWidth:Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->maximumBoxResolution:F

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;->setMax(I)V

    .line 604
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->transformToolOptionsView:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;->setWidth(I)V

    .line 605
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->transformToolOptionsView:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;->setHeight(I)V

    return-void
.end method


# virtual methods
.method protected drawToolSpecifics(Landroid/graphics/Canvas;FF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "canvas"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-boolean v1, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->isSetCenter:Z

    if-eqz v1, :cond_0

    .line 240
    invoke-direct/range {p0 .. p1}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->drawCursor(Landroid/graphics/Canvas;)V

    return-void

    .line 247
    :cond_0
    iget-boolean v1, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->cropRunFinished:Z

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->primaryShapeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolStrokeWidth:F

    const/4 v3, 0x2

    int-to-float v8, v3

    mul-float/2addr v2, v8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 251
    new-instance v9, Landroid/graphics/PointF;

    move/from16 v1, p2

    neg-float v2, v1

    div-float/2addr v2, v8

    move/from16 v3, p3

    neg-float v4, v3

    div-float/2addr v4, v8

    invoke-direct {v9, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x0

    move v11, v1

    move v12, v2

    move v10, v3

    :goto_0
    const/4 v1, 0x4

    if-ge v12, v1, :cond_1

    const/16 v1, 0xa

    int-to-float v1, v1

    div-float v13, v10, v1

    div-float v14, v11, v1

    .line 256
    iget v1, v9, Landroid/graphics/PointF;->x:F

    iget v2, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolStrokeWidth:F

    div-float/2addr v2, v8

    sub-float v2, v1, v2

    .line 257
    iget v3, v9, Landroid/graphics/PointF;->y:F

    .line 258
    iget v1, v9, Landroid/graphics/PointF;->x:F

    add-float v4, v1, v14

    .line 259
    iget v5, v9, Landroid/graphics/PointF;->y:F

    .line 260
    iget-object v6, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 255
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 263
    iget v2, v9, Landroid/graphics/PointF;->x:F

    .line 264
    iget v1, v9, Landroid/graphics/PointF;->y:F

    iget v3, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolStrokeWidth:F

    div-float/2addr v3, v8

    sub-float v3, v1, v3

    .line 265
    iget v4, v9, Landroid/graphics/PointF;->x:F

    .line 266
    iget v1, v9, Landroid/graphics/PointF;->y:F

    add-float v5, v1, v13

    .line 267
    iget-object v6, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 262
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 270
    iget v1, v9, Landroid/graphics/PointF;->x:F

    div-float v2, v11, v8

    add-float/2addr v1, v2

    sub-float v3, v1, v14

    .line 271
    iget v4, v9, Landroid/graphics/PointF;->y:F

    .line 272
    iget v1, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    add-float v5, v1, v14

    .line 273
    iget v6, v9, Landroid/graphics/PointF;->y:F

    .line 274
    iget-object v13, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v13

    .line 269
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x42b40000    # 90.0f

    .line 276
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 277
    iget v1, v9, Landroid/graphics/PointF;->x:F

    .line 278
    iget v2, v9, Landroid/graphics/PointF;->y:F

    iput v2, v9, Landroid/graphics/PointF;->x:F

    .line 279
    iput v1, v9, Landroid/graphics/PointF;->y:F

    add-int/lit8 v12, v12, 0x1

    move v15, v11

    move v11, v10

    move v10, v15

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getCheckMarkClicked()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->checkMarkClicked:Z

    return v0
.end method

.method public getDrawTime()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->drawTime:J

    return-wide v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 113
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->TRANSFORM:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public handleDown(Landroid/graphics/PointF;)Z
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 216
    :cond_0
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->isSetCenter:Z

    if-nez v0, :cond_1

    .line 217
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->handleDown(Landroid/graphics/PointF;)Z

    move-result p1

    return p1

    .line 220
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$handleDown$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lorg/catrobat/paintroid/tools/implementation/TransformTool$handleDown$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/TransformTool;Landroid/graphics/PointF;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 p1, 0x1

    return p1
.end method

.method public handleDownAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->handleDown(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public handleMove(Landroid/graphics/PointF;Z)Z
    .locals 0

    .line 231
    iget-boolean p2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->isSetCenter:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x1

    .line 234
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->handleMove(Landroid/graphics/PointF;Z)Z

    move-result p1

    return p1
.end method

.method public handleUpAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->handleUp(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public onClickOnButton()V
    .locals 1

    .line 581
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->isSetCenter:Z

    if-eqz v0, :cond_0

    .line 582
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->executeSetCenterCommand()V

    goto :goto_0

    .line 584
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->executeResizeCommand()V

    :goto_0
    return-void
.end method

.method protected preventThatBoxGetsTooLarge(FFFF)V
    .locals 0

    .line 594
    invoke-super {p0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->preventThatBoxGetsTooLarge(FFFF)V

    .line 595
    iget-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->maxImageResolutionInformationAlreadyShown:Z

    if-nez p1, :cond_0

    .line 596
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    sget p2, Lorg/catrobat/paintroid/R$string;->resize_max_image_resolution_reached:I

    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/tools/ContextCallback;->showNotification(I)V

    const/4 p1, 0x1

    .line 597
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->maxImageResolutionInformationAlreadyShown:Z

    :cond_0
    return-void
.end method

.method protected resetInternalState()V
    .locals 0

    .line 211
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->initialiseResizingState()V

    return-void
.end method

.method public final setCheckMarkClicked(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->checkMarkClicked:Z

    return-void
.end method

.method public setDrawTime(J)V
    .locals 0

    .line 76
    iput-wide p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->drawTime:J

    return-void
.end method

.method public toolPositionCoordinates(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
