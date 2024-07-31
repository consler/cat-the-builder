.class public final Lorg/catrobat/paintroid/tools/implementation/TransformTool;
.super Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;
.source "TransformTool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0008\u00104\u001a\u00020\u0012H\u0002J\u0008\u00105\u001a\u000206H\u0002J\u0010\u00107\u001a\u0002062\u0006\u00108\u001a\u000209H\u0002J8\u0010:\u001a\u0002062\u0006\u00108\u001a\u0002092\u0006\u0010;\u001a\u00020$2\u0006\u0010<\u001a\u00020$2\u0006\u0010=\u001a\u00020$2\u0006\u0010>\u001a\u00020$2\u0006\u0010?\u001a\u00020$H\u0002J \u0010@\u001a\u0002062\u0006\u00108\u001a\u0002092\u0006\u0010A\u001a\u00020$2\u0006\u0010B\u001a\u00020$H\u0014J\u0008\u0010C\u001a\u000206H\u0002J\u0008\u0010D\u001a\u000206H\u0002J\u0008\u0010E\u001a\u000206H\u0002J\u0008\u0010F\u001a\u000206H\u0002J\u0012\u0010G\u001a\u00020\u00122\u0008\u0010H\u001a\u0004\u0018\u00010IH\u0016J\u0012\u0010J\u001a\u00020\u00122\u0008\u0010H\u001a\u0004\u0018\u00010IH\u0016J\u0008\u0010K\u001a\u000206H\u0002J\u0008\u0010L\u001a\u000206H\u0002J\u0010\u0010M\u001a\u0002062\u0006\u0010N\u001a\u00020OH\u0002J\u0008\u0010P\u001a\u000206H\u0016J(\u0010Q\u001a\u0002062\u0006\u0010R\u001a\u00020$2\u0006\u0010S\u001a\u00020$2\u0006\u0010T\u001a\u00020$2\u0006\u0010U\u001a\u00020$H\u0014J\u0008\u0010V\u001a\u000206H\u0014J\u0008\u0010W\u001a\u000206H\u0002J\u0008\u0010X\u001a\u000206H\u0002J\u0008\u0010Y\u001a\u000206H\u0002J\u0008\u0010Z\u001a\u000206H\u0002J\u0010\u0010[\u001a\u0002062\u0006\u0010\\\u001a\u00020]H\u0002J\u0008\u0010^\u001a\u000206H\u0002J\u0008\u0010_\u001a\u000206H\u0002R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010#\u001a\u00020$8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008%\u0010&R\u0018\u0010\'\u001a\u00020$8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008(\u0010&R\u0018\u0010)\u001a\u00020$8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008*\u0010&R\u0018\u0010+\u001a\u00020$8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008,\u0010&R\u000e\u0010-\u001a\u00020.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010/\u001a\u0002008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006`"
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
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "drawTime",
        "",
        "(Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V",
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
        "handleMove",
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
        "updateToolOptions",
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
.method public constructor <init>(Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V
    .locals 6
    .param p1, "transformToolOptionsView"    # Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;
    .param p2, "contextCallback"    # Lorg/catrobat/paintroid/tools/ContextCallback;
    .param p3, "toolOptionsViewController"    # Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
    .param p4, "toolPaint"    # Lorg/catrobat/paintroid/tools/ToolPaint;
    .param p5, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;
    .param p6, "commandManager"    # Lorg/catrobat/paintroid/command/CommandManager;
    .param p7, "drawTime"    # J

    const-string v0, "transformToolOptionsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPaint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    nop

    .line 76
    nop

    .line 77
    nop

    .line 78
    nop

    .line 79
    nop

    .line 80
    nop

    .line 75
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;)V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->transformToolOptionsView:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;

    iput-wide p7, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->drawTime:J

    .line 112
    nop

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->rotationEnabled:Z

    .line 114
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizePointsVisible:Z

    .line 115
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->respectMaximumBorderRatio:Z

    .line 116
    invoke-interface {p5}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    .line 117
    invoke-interface {p5}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    .line 118
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 119
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 120
    new-instance v0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

    invoke-direct {v0}, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;-><init>()V

    check-cast v0, Lorg/catrobat/paintroid/tools/helper/CropAlgorithm;

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/CropAlgorithm;

    .line 121
    new-instance v1, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;

    check-cast v0, Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;

    invoke-direct {v1, v0}, Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;-><init>(Lorg/catrobat/paintroid/tools/helper/JavaCropAlgorithm;)V

    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->setCenterCropAlgorithm:Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->cropRunFinished:Z

    .line 123
    nop

    .line 124
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->maximumBoxResolution:F

    .line 125
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->respectMaximumBoxResolution:Z

    .line 126
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->initResizeBounds()V

    .line 127
    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/TransformTool$1;

    invoke-direct {v1, p0, p2}, Lorg/catrobat/paintroid/tools/implementation/TransformTool$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/TransformTool;Lorg/catrobat/paintroid/tools/ContextCallback;)V

    check-cast v1, Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController$Callback;

    invoke-interface {p3, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->setCallback(Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController$Callback;)V

    .line 148
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->transformToolOptionsView:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;

    new-instance v2, Lorg/catrobat/paintroid/tools/implementation/TransformTool$2;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool$2;-><init>(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V

    check-cast v2, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    invoke-interface {v1, v2}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;->setCallback(Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;)V

    .line 189
    new-instance v1, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->maximumBoxResolution:F

    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v1, v0, v2}, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;-><init>(II)V

    check-cast v1, Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;

    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->rangeFilterHeight:Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;

    .line 190
    new-instance v1, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->maximumBoxResolution:F

    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v1, v0, v2}, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;-><init>(II)V

    check-cast v1, Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;

    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->rangeFilterWidth:Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;

    .line 191
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->transformToolOptionsView:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->rangeFilterHeight:Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;->setHeightFilter(Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;)V

    .line 192
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->transformToolOptionsView:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->rangeFilterWidth:Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;->setWidthFilter(Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;)V

    .line 193
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->updateToolOptions()V

    .line 194
    invoke-interface {p3}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->showDelayed()V

    .line 195
    return-void
.end method

.method public static final synthetic access$autoCrop(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    .line 67
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->autoCrop()V

    return-void
.end method

.method public static final synthetic access$flipHorizontal(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    .line 67
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->flipHorizontal()V

    return-void
.end method

.method public static final synthetic access$flipVertical(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    .line 67
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->flipVertical()V

    return-void
.end method

.method public static final synthetic access$getCropAlgorithm$p(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)Lorg/catrobat/paintroid/tools/helper/CropAlgorithm;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    .line 67
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->cropAlgorithm:Lorg/catrobat/paintroid/tools/helper/CropAlgorithm;

    return-object v0
.end method

.method public static final synthetic access$getSetCenterCropAlgorithm$p(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    .line 67
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->setCenterCropAlgorithm:Lorg/catrobat/paintroid/tools/helper/SetCenterAlgorithm;

    return-object v0
.end method

.method public static final synthetic access$getZeroSizeBitmap$p(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    .line 67
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->zeroSizeBitmap:Z

    return v0
.end method

.method public static final synthetic access$isSetCenter$p(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    .line 67
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->isSetCenter:Z

    return v0
.end method

.method public static final synthetic access$onApplyResizeClicked(Lorg/catrobat/paintroid/tools/implementation/TransformTool;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/TransformTool;
    .param p1, "resizePercentage"    # I

    .line 67
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->onApplyResizeClicked(I)V

    return-void
.end method

.method public static final synthetic access$rotateClockWise(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    .line 67
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->rotateClockWise()V

    return-void
.end method

.method public static final synthetic access$rotateCounterClockWise(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    .line 67
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->rotateCounterClockWise()V

    return-void
.end method

.method public static final synthetic access$setCenter(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    .line 67
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->setCenter()V

    return-void
.end method

.method public static final synthetic access$setSetCenter$p(Lorg/catrobat/paintroid/tools/implementation/TransformTool;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/TransformTool;
    .param p1, "<set-?>"    # Z

    .line 67
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->isSetCenter:Z

    return-void
.end method

.method public static final synthetic access$setZeroSizeBitmap$p(Lorg/catrobat/paintroid/tools/implementation/TransformTool;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/TransformTool;
    .param p1, "<set-?>"    # Z

    .line 67
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->zeroSizeBitmap:Z

    return-void
.end method

.method public static final synthetic access$updateToolOptions(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    .line 67
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->updateToolOptions()V

    return-void
.end method

.method private final areResizeBordersValid()Z
    .locals 6

    .line 527
    nop

    .line 528
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    if-ltz v0, :cond_5

    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    goto :goto_1

    .line 532
    :cond_0
    nop

    .line 534
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-gez v0, :cond_4

    .line 533
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    .line 532
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v1, v2

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_4

    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    goto :goto_0

    .line 538
    :cond_1
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    .line 539
    return v2

    .line 541
    :cond_2
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    sub-float/2addr v0, v1

    const/4 v1, 0x1

    int-to-float v3, v1

    add-float/2addr v0, v3

    .line 542
    .local v0, "width":F
    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    sub-float/2addr v4, v5

    add-float/2addr v4, v3

    .line 543
    .local v4, "height":F
    mul-float v3, v0, v4

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->maximumBoxResolution:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_3

    move v2, v1

    :cond_3
    return v2

    .line 536
    .end local v0    # "width":F
    .end local v4    # "height":F
    :cond_4
    :goto_0
    return v2

    .line 530
    :cond_5
    :goto_1
    return v2
.end method

.method private final autoCrop()V
    .locals 7

    .line 405
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/TransformTool;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 419
    return-void
.end method

.method private final drawCursor(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 433
    move-object/from16 v7, p0

    const/4 v8, 0x0

    .line 434
    .local v8, "positionX":F
    const/4 v9, 0x0

    .line 435
    .local v9, "positionY":F
    iget-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeWidth()F

    move-result v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v0, v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v0, v11}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 436
    .local v12, "brushStrokeWidth":F
    nop

    .line 437
    nop

    .line 438
    nop

    .line 436
    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v7, v0, v11, v1}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->getStrokeWidthForZoom(FFF)F

    move-result v13

    .line 440
    .local v13, "strokeWidth":F
    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float v14, v13, v0

    .line 441
    .local v14, "cursorPartLength":F
    div-float v0, v13, v10

    add-float v15, v12, v0

    .line 442
    .local v15, "innerCircleRadius":F
    add-float v16, v15, v13

    .line 443
    .local v16, "outerCircleRadius":F
    iget-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    .local v0, "$this$apply":Landroid/graphics/Paint;
    const/4 v1, 0x0

    .line 444
    .local v1, "$i$a$-apply-TransformTool$drawCursor$1":I
    nop

    .line 445
    iget-object v2, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    sget v3, Lorg/catrobat/paintroid/R$color;->pocketpaint_main_cursor_tool_inactive_primary_color:I

    invoke-interface {v2, v3}, Lorg/catrobat/paintroid/tools/ContextCallback;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 447
    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 448
    nop

    .line 443
    .end local v0    # "$this$apply":Landroid/graphics/Paint;
    .end local v1    # "$i$a$-apply-TransformTool$drawCursor$1":I
    nop

    .line 449
    nop

    .line 450
    nop

    .line 451
    nop

    .line 452
    nop

    .line 453
    nop

    .line 454
    nop

    .line 455
    nop

    .line 449
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move/from16 v3, v16

    move v4, v15

    move v5, v8

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->drawCursorCircle(Landroid/graphics/Canvas;FFFFF)V

    .line 458
    iget-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 459
    div-float v0, v13, v10

    .line 460
    .local v0, "startLineLengthAddition":F
    add-float v1, v14, v13

    .line 461
    .local v1, "endLineLengthAddition":F
    const/4 v2, 0x0

    move v6, v0

    move/from16 v17, v1

    move v5, v2

    .line 462
    .end local v0    # "startLineLengthAddition":F
    .end local v1    # "endLineLengthAddition":F
    .local v5, "lineNr":I
    .local v6, "startLineLengthAddition":F
    .local v17, "endLineLengthAddition":F
    :goto_0
    const/4 v0, 0x4

    if-ge v5, v0, :cond_1

    .line 463
    rem-int/lit8 v0, v5, 0x2

    if-nez v0, :cond_0

    .line 464
    iget-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 466
    :cond_0
    nop

    .line 467
    iget-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    iget-object v1, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    sget v2, Lorg/catrobat/paintroid/R$color;->pocketpaint_main_cursor_tool_inactive_primary_color:I

    invoke-interface {v1, v2}, Lorg/catrobat/paintroid/tools/ContextCallback;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 468
    :goto_1
    nop

    .line 470
    nop

    .line 471
    sub-float v0, v8, v16

    sub-float v1, v0, v6

    .line 472
    nop

    .line 473
    sub-float v0, v8, v16

    sub-float v3, v0, v17

    .line 474
    nop

    .line 475
    iget-object v4, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    .line 470
    move-object/from16 v0, p1

    move v2, v9

    move-object/from16 v18, v4

    move v4, v9

    move/from16 v19, v5

    .end local v5    # "lineNr":I
    .local v19, "lineNr":I
    move-object/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 477
    nop

    .line 478
    add-float v0, v8, v16

    add-float v1, v0, v6

    .line 479
    nop

    .line 480
    add-float v0, v8, v16

    add-float v3, v0, v17

    .line 481
    nop

    .line 482
    iget-object v5, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    .line 477
    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 484
    nop

    .line 485
    nop

    .line 486
    add-float v0, v9, v16

    add-float v2, v0, v6

    .line 487
    nop

    .line 488
    add-float v0, v9, v16

    add-float v4, v0, v17

    .line 489
    iget-object v5, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    .line 484
    move-object/from16 v0, p1

    move v1, v8

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 491
    nop

    .line 492
    nop

    .line 493
    sub-float v0, v9, v16

    sub-float v2, v0, v6

    .line 494
    nop

    .line 495
    sub-float v0, v9, v16

    sub-float v4, v0, v17

    .line 496
    iget-object v5, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    .line 491
    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 498
    add-int/lit8 v5, v19, 0x1

    .line 499
    .end local v19    # "lineNr":I
    .restart local v5    # "lineNr":I
    div-float v0, v13, v10

    int-to-float v1, v5

    mul-float/2addr v1, v14

    add-float v6, v0, v1

    .line 500
    int-to-float v0, v5

    add-float/2addr v0, v11

    mul-float/2addr v0, v14

    add-float v17, v13, v0

    .line 462
    goto :goto_0

    .line 502
    :cond_1
    iget-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 503
    return-void
.end method

.method private final drawCursorCircle(Landroid/graphics/Canvas;FFFFF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "strokeWidth"    # F
    .param p3, "outerCircleRadius"    # F
    .param p4, "innerCircleRadius"    # F
    .param p5, "positionX"    # F
    .param p6, "positionY"    # F

    .line 513
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, p6, p3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 514
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 515
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, p6, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 516
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 517
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 518
    nop

    .line 519
    nop

    .line 520
    nop

    .line 521
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p2, v0

    sub-float v0, p4, v0

    .line 522
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    .line 518
    invoke-virtual {p1, p5, p6, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 524
    return-void
.end method

.method private final executeResizeCommand()V
    .locals 7

    .line 342
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->cropRunFinished:Z

    if-eqz v0, :cond_1

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->cropRunFinished:Z

    .line 344
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->initResizeBounds()V

    .line 345
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->areResizeBordersValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    .line 347
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    float-to-int v2, v0

    .line 348
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v0, v3

    float-to-int v3, v0

    .line 349
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v0, v4

    float-to-int v4, v0

    .line 350
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v0, v5

    float-to-int v5, v0

    .line 351
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->maximumBoxResolution:F

    float-to-int v6, v0

    .line 346
    invoke-interface/range {v1 .. v6}, Lorg/catrobat/paintroid/command/CommandFactory;->createCropCommand(IIIII)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 353
    .local v0, "resizeCommand":Lorg/catrobat/paintroid/command/Command;
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .end local v0    # "resizeCommand":Lorg/catrobat/paintroid/command/Command;
    goto :goto_0

    .line 355
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->cropRunFinished:Z

    .line 356
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    sget v1, Lorg/catrobat/paintroid/R$string;->resize_nothing_to_resize:I

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/ContextCallback;->showNotification(I)V

    .line 357
    :cond_1
    :goto_0
    nop

    .line 359
    return-void
.end method

.method private final executeSetCenterCommand()V
    .locals 7

    .line 320
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$executeSetCenterCommand$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/catrobat/paintroid/tools/implementation/TransformTool$executeSetCenterCommand$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/TransformTool;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 339
    return-void
.end method

.method private final flipHorizontal()V
    .locals 2

    .line 377
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    sget-object v1, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;->FLIP_HORIZONTAL:Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createFlipCommand(Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 378
    .local v0, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 379
    return-void
.end method

.method private final flipVertical()V
    .locals 2

    .line 382
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    sget-object v1, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;->FLIP_VERTICAL:Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createFlipCommand(Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 383
    .local v0, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 384
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

    .line 559
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    .line 560
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    .line 561
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    .line 562
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    .line 563
    return-void
.end method

.method private final initialiseResizingState()V
    .locals 7

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->cropRunFinished:Z

    .line 282
    const/4 v1, 0x0

    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    .line 283
    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    .line 284
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    .line 285
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    .line 286
    iget-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->checkMarkClicked:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 287
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resetScaleAndTranslation()V

    .line 288
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v2, v4

    iput v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    .line 289
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    iput v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    .line 290
    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    .line 291
    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    goto :goto_0

    .line 293
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

    .line 294
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

    .line 295
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

    .line 296
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

    .line 297
    :goto_0
    nop

    .line 299
    nop

    .line 300
    new-instance v1, Landroid/graphics/RectF;

    .line 301
    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    .line 302
    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    .line 303
    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXRight:F

    .line 304
    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYBottom:F

    .line 300
    invoke-direct {v1, v2, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 299
    invoke-direct {p0, v1}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->setRectangle(Landroid/graphics/RectF;)V

    .line 307
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->checkMarkClicked:Z

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v1

    iget v2, v1, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationX:F

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    add-float/2addr v2, v4

    iput v2, v1, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationX:F

    .line 309
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v1

    iget v2, v1, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationY:F

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    add-float/2addr v2, v4

    iput v2, v1, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationY:F

    .line 310
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v1

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    float-to-int v2, v2

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    float-to-int v4, v4

    invoke-virtual {v1, v2, v4}, Lorg/catrobat/paintroid/ui/Perspective;->setBitmapDimensions(II)V

    .line 311
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundWidthXLeft:F

    sub-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 312
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->resizeBoundHeightYTop:F

    sub-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 313
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->checkMarkClicked:Z

    .line 315
    :cond_1
    iput-boolean v3, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->cropRunFinished:Z

    .line 316
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->updateToolOptions()V

    .line 317
    return-void
.end method

.method private final onApplyResizeClicked(I)V
    .locals 5
    .param p1, "resizePercentage"    # I

    .line 362
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    int-to-float v2, p1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 363
    .local v0, "newWidth":I
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    int-to-float v1, p1

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 364
    .local v1, "newHeight":I
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v2, v0, v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createResizeCommand(II)Lorg/catrobat/paintroid/command/Command;

    move-result-object v2

    .line 372
    .local v2, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v3, v2}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    goto :goto_1

    .line 365
    .end local v2    # "command":Lorg/catrobat/paintroid/command/Command;
    :cond_1
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->zeroSizeBitmap:Z

    .line 366
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    .line 367
    sget v3, Lorg/catrobat/paintroid/R$string;->resize_cannot_resize_to_this_size:I

    .line 368
    sget-object v4, Lorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;->LONG:Lorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;

    .line 366
    invoke-interface {v2, v3, v4}, Lorg/catrobat/paintroid/tools/ContextCallback;->showNotificationWithDuration(ILorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;)V

    .line 373
    :goto_1
    nop

    .line 374
    return-void
.end method

.method private final resetScaleAndTranslation()V
    .locals 2

    .line 275
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->resetPerspective()V

    .line 276
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getScaleForCenterBitmap()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v0, v1

    .line 277
    .local v0, "zoomFactor":F
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/tools/Workspace;->setScale(F)V

    .line 278
    return-void
.end method

.method private final rotateClockWise()V
    .locals 2

    .line 393
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    sget-object v1, Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;->ROTATE_RIGHT:Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createRotateCommand(Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 394
    .local v0, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 395
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->swapWidthAndHeight()V

    .line 396
    return-void
.end method

.method private final rotateCounterClockWise()V
    .locals 2

    .line 387
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    sget-object v1, Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;->ROTATE_LEFT:Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createRotateCommand(Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 388
    .local v0, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 389
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->swapWidthAndHeight()V

    .line 390
    return-void
.end method

.method private final setCenter()V
    .locals 7

    .line 422
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$setCenter$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/catrobat/paintroid/tools/implementation/TransformTool$setCenter$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/TransformTool;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 430
    return-void
.end method

.method private final setRectangle(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "rectangle"    # Landroid/graphics/RectF;

    .line 547
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->checkMarkClicked:Z

    if-nez v0, :cond_0

    .line 548
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    .line 549
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    .line 550
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 551
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 553
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    .line 554
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    .line 555
    :goto_0
    nop

    .line 556
    return-void
.end method

.method private final swapWidthAndHeight()V
    .locals 2

    .line 399
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    .line 400
    .local v0, "tempBoxWidth":F
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    .line 401
    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    .line 402
    return-void
.end method

.method private final updateToolOptions()V
    .locals 3

    .line 587
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->rangeFilterHeight:Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->maximumBoxResolution:F

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;->setMax(I)V

    .line 588
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->rangeFilterWidth:Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->maximumBoxResolution:F

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;->setMax(I)V

    .line 589
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->transformToolOptionsView:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;->setWidth(I)V

    .line 590
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->transformToolOptionsView:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;->setHeight(I)V

    .line 591
    return-void
.end method


# virtual methods
.method protected drawToolSpecifics(Landroid/graphics/Canvas;FF)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "boxWidth"    # F
    .param p3, "boxHeight"    # F

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "canvas"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-boolean v1, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->isSetCenter:Z

    if-eqz v1, :cond_0

    .line 227
    invoke-direct/range {p0 .. p1}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->drawCursor(Landroid/graphics/Canvas;)V

    .line 228
    return-void

    .line 231
    :cond_0
    move/from16 v1, p2

    .line 232
    .local v1, "width":F
    move/from16 v2, p3

    .line 234
    .local v2, "height":F
    iget-boolean v3, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->cropRunFinished:Z

    if-eqz v3, :cond_2

    .line 235
    iget-object v3, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    iget v4, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->primaryShapeColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    iget-object v3, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    iget v4, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolStrokeWidth:F

    const/4 v5, 0x2

    int-to-float v8, v5

    mul-float/2addr v4, v8

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 238
    new-instance v3, Landroid/graphics/PointF;

    neg-float v4, v1

    div-float/2addr v4, v8

    neg-float v5, v2

    div-float/2addr v5, v8

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v9, v3

    .line 239
    .local v9, "rightTopPoint":Landroid/graphics/PointF;
    const/4 v10, 0x4

    const/4 v3, 0x0

    move v11, v1

    move v12, v2

    move v13, v3

    .end local v1    # "width":F
    .end local v2    # "height":F
    .local v11, "width":F
    .local v12, "height":F
    :goto_0
    if-ge v13, v10, :cond_1

    move v14, v13

    .local v14, "it":I
    const/4 v15, 0x0

    .line 240
    .local v15, "$i$a$-repeat-TransformTool$drawToolSpecifics$1":I
    const/16 v1, 0xa

    int-to-float v1, v1

    div-float v16, v12, v1

    .line 241
    .local v16, "resizeLineLengthHeight":F
    div-float v17, v11, v1

    .line 242
    .local v17, "resizeLineLengthWidth":F
    nop

    .line 243
    iget v1, v9, Landroid/graphics/PointF;->x:F

    iget v2, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolStrokeWidth:F

    div-float/2addr v2, v8

    sub-float v2, v1, v2

    .line 244
    iget v3, v9, Landroid/graphics/PointF;->y:F

    .line 245
    iget v1, v9, Landroid/graphics/PointF;->x:F

    add-float v4, v1, v17

    .line 246
    iget v5, v9, Landroid/graphics/PointF;->y:F

    .line 247
    iget-object v6, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    .line 242
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 249
    nop

    .line 250
    iget v2, v9, Landroid/graphics/PointF;->x:F

    .line 251
    iget v1, v9, Landroid/graphics/PointF;->y:F

    iget v3, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolStrokeWidth:F

    div-float/2addr v3, v8

    sub-float v3, v1, v3

    .line 252
    iget v4, v9, Landroid/graphics/PointF;->x:F

    .line 253
    iget v1, v9, Landroid/graphics/PointF;->y:F

    add-float v5, v1, v16

    .line 254
    iget-object v6, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    .line 249
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 256
    nop

    .line 257
    iget v1, v9, Landroid/graphics/PointF;->x:F

    div-float v2, v11, v8

    add-float/2addr v1, v2

    sub-float v2, v1, v17

    .line 258
    iget v3, v9, Landroid/graphics/PointF;->y:F

    .line 259
    iget v1, v9, Landroid/graphics/PointF;->x:F

    div-float v4, v11, v8

    add-float/2addr v1, v4

    add-float v4, v1, v17

    .line 260
    iget v5, v9, Landroid/graphics/PointF;->y:F

    .line 261
    iget-object v6, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->linePaint:Landroid/graphics/Paint;

    .line 256
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 263
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 264
    iget v1, v9, Landroid/graphics/PointF;->x:F

    .line 265
    .local v1, "tempX":F
    iget v2, v9, Landroid/graphics/PointF;->y:F

    iput v2, v9, Landroid/graphics/PointF;->x:F

    .line 266
    iput v1, v9, Landroid/graphics/PointF;->y:F

    .line 267
    move v2, v12

    .line 268
    .local v2, "tempHeight":F
    move v12, v11

    .line 269
    move v11, v2

    .line 270
    .end local v1    # "tempX":F
    .end local v2    # "tempHeight":F
    .end local v16    # "resizeLineLengthHeight":F
    .end local v17    # "resizeLineLengthWidth":F
    nop

    .line 239
    .end local v14    # "it":I
    .end local v15    # "$i$a$-repeat-TransformTool$drawToolSpecifics$1":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    move v1, v11

    move v2, v12

    .line 272
    .end local v9    # "rightTopPoint":Landroid/graphics/PointF;
    .end local v11    # "width":F
    .end local v12    # "height":F
    .local v1, "width":F
    .local v2, "height":F
    :cond_2
    return-void
.end method

.method public final getCheckMarkClicked()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->checkMarkClicked:Z

    return v0
.end method

.method public getDrawTime()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->drawTime:J

    return-wide v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 110
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->TRANSFORM:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public handleDown(Landroid/graphics/PointF;)Z
    .locals 7
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    .line 202
    if-eqz p1, :cond_1

    .line 203
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->isSetCenter:Z

    if-nez v0, :cond_0

    .line 204
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->handleDown(Landroid/graphics/PointF;)Z

    move-result v0

    return v0

    .line 207
    :cond_0
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

    .line 214
    const/4 v0, 0x1

    return v0

    .line 202
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public handleMove(Landroid/graphics/PointF;)Z
    .locals 1
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    .line 218
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->isSetCenter:Z

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    return v0

    .line 221
    :cond_0
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->handleMove(Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method public onClickOnButton()V
    .locals 1

    .line 566
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->isSetCenter:Z

    if-eqz v0, :cond_0

    .line 567
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->executeSetCenterCommand()V

    goto :goto_0

    .line 569
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->executeResizeCommand()V

    .line 570
    :goto_0
    nop

    .line 571
    return-void
.end method

.method protected preventThatBoxGetsTooLarge(FFFF)V
    .locals 2
    .param p1, "oldWidth"    # F
    .param p2, "oldHeight"    # F
    .param p3, "oldPosX"    # F
    .param p4, "oldPosY"    # F

    .line 579
    invoke-super {p0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->preventThatBoxGetsTooLarge(FFFF)V

    .line 580
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->maxImageResolutionInformationAlreadyShown:Z

    if-nez v0, :cond_0

    .line 581
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    sget v1, Lorg/catrobat/paintroid/R$string;->resize_max_image_resolution_reached:I

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/ContextCallback;->showNotification(I)V

    .line 582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->maxImageResolutionInformationAlreadyShown:Z

    .line 584
    :cond_0
    return-void
.end method

.method protected resetInternalState()V
    .locals 0

    .line 198
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->initialiseResizingState()V

    .line 199
    return-void
.end method

.method public final setCheckMarkClicked(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 98
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->checkMarkClicked:Z

    return-void
.end method

.method public setDrawTime(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 74
    iput-wide p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->drawTime:J

    return-void
.end method
