.class public Lorg/catrobat/paintroid/tools/implementation/CursorTool;
.super Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;
.source "CursorTool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u0016\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\u0010\u0010+\u001a\u00020$2\u0006\u0010,\u001a\u00020\u001dH\u0002J\u0010\u0010-\u001a\u00020$2\u0006\u0010,\u001a\u00020\u001dH\u0002J\u0018\u0010.\u001a\u00020\u001d2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000200H\u0002J\u0018\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u00142\u0006\u00105\u001a\u00020$H\u0016J \u00106\u001a\u0002002\u0006\u00107\u001a\u0002002\u0006\u00108\u001a\u0002002\u0006\u00109\u001a\u000200H\u0002J \u0010:\u001a\u00020$2\u0006\u0010;\u001a\u00020\u001d2\u0006\u0010<\u001a\u00020\u00142\u0006\u0010=\u001a\u00020\u0014H\u0002J\u0010\u0010>\u001a\u0002032\u0006\u0010?\u001a\u00020@H\u0016J(\u0010A\u001a\u0002032\u0006\u0010?\u001a\u00020@2\u0006\u0010B\u001a\u0002002\u0006\u0010C\u001a\u0002002\u0006\u0010D\u001a\u000200H\u0002J(\u0010E\u001a\u0002032\u0006\u0010?\u001a\u00020@2\u0006\u0010B\u001a\u0002002\u0006\u0010C\u001a\u0002002\u0006\u0010D\u001a\u000200H\u0002J\u0010\u0010F\u001a\u0002032\u0006\u0010?\u001a\u00020@H\u0016J\u0012\u0010G\u001a\u00020$2\u0008\u0010,\u001a\u0004\u0018\u00010\u001dH\u0016J\u0012\u0010H\u001a\u0002032\u0008\u0010,\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010I\u001a\u000203H\u0002J\u001a\u0010J\u001a\u00020$2\u0008\u0010,\u001a\u0004\u0018\u00010\u001d2\u0006\u0010K\u001a\u00020$H\u0016J\u0012\u0010L\u001a\u00020$2\u0008\u0010,\u001a\u0004\u0018\u00010\u001dH\u0016J\u0012\u0010M\u001a\u0002032\u0008\u0010,\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010N\u001a\u000203H\u0002J\u0008\u0010O\u001a\u000203H\u0016J\u0008\u0010P\u001a\u000203H\u0016J\u0008\u0010Q\u001a\u000203H\u0002J\u0010\u0010R\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\u001dH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0010\u001a\u00020\u0011X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u001e\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008 \u0010\u0017R\u0014\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010%\u001a\u00020$8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008&\u0010\u0017R\u0014\u0010\'\u001a\u00020(8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*\u00a8\u0006S"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/CursorTool;",
        "Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;",
        "brushToolOptionsView",
        "Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;",
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
        "(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V",
        "cursorToolPrimaryShapeColor",
        "",
        "cursorToolSecondaryShapeColor",
        "getCursorToolSecondaryShapeColor$annotations",
        "()V",
        "getDrawTime",
        "()J",
        "setDrawTime",
        "(J)V",
        "initialEventCoordinate",
        "Landroid/graphics/PointF;",
        "pathToDraw",
        "Lorg/catrobat/paintroid/command/serialization/SerializablePath;",
        "getPathToDraw$annotations",
        "pointArray",
        "",
        "pointInsideBitmap",
        "",
        "toolInDrawMode",
        "getToolInDrawMode$annotations",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "getToolType",
        "()Lorg/catrobat/paintroid/tools/ToolType;",
        "addPathCommand",
        "coordinate",
        "addPointCommand",
        "calculateNewClampedToolPosition",
        "deltaX",
        "",
        "deltaY",
        "changePaintColor",
        "",
        "color",
        "invalidate",
        "clamp",
        "value",
        "min",
        "max",
        "contains",
        "point",
        "width",
        "height",
        "draw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawCircle",
        "strokeWidth",
        "outerCircleRadius",
        "innerCircleRadius",
        "drawRect",
        "drawShape",
        "handleDown",
        "handleDownAnimations",
        "handleDrawMode",
        "handleMove",
        "shouldAnimate",
        "handleUp",
        "handleUpAnimations",
        "hideToolOptions",
        "onClickOnButton",
        "resetInternalState",
        "showToolOptions",
        "toolPositionCoordinates",
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
.field private final brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

.field private final cursorToolPrimaryShapeColor:I

.field public cursorToolSecondaryShapeColor:I

.field private drawTime:J

.field private final initialEventCoordinate:Landroid/graphics/PointF;

.field public pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

.field private final pointArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private pointInsideBitmap:Z

.field public toolInDrawMode:Z


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V
    .locals 11

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object v10, p4

    const-string v0, "brushToolOptionsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    move-object v2, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPaint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idlingResource"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    .line 65
    invoke-direct/range {v0 .. v6}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V

    .line 57
    iput-object v8, v7, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    move-wide/from16 v0, p8

    .line 64
    iput-wide v0, v7, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->drawTime:J

    .line 75
    new-instance v0, Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-direct {v0}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;-><init>()V

    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    .line 88
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->initialEventCoordinate:Landroid/graphics/PointF;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pointArray:Ljava/util/List;

    .line 103
    iget-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->incReserve(I)V

    .line 105
    sget v0, Lorg/catrobat/paintroid/R$color;->pocketpaint_main_cursor_tool_inactive_primary_color:I

    invoke-interface {p2, v0}, Lorg/catrobat/paintroid/tools/ContextCallback;->getColor(I)I

    move-result v0

    .line 104
    iput v0, v7, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->cursorToolPrimaryShapeColor:I

    const v0, -0x333334

    .line 106
    iput v0, v7, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->cursorToolSecondaryShapeColor:I

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, v7, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pointInsideBitmap:Z

    .line 109
    new-instance v0, Lorg/catrobat/paintroid/tools/common/CommonBrushChangedListener;

    move-object v1, v7

    check-cast v1, Lorg/catrobat/paintroid/tools/Tool;

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/tools/common/CommonBrushChangedListener;-><init>(Lorg/catrobat/paintroid/tools/Tool;)V

    check-cast v0, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->setBrushChangedListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;)V

    .line 110
    new-instance v0, Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;-><init>(Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/ToolType;)V

    check-cast v0, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->setBrushPreviewListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;)V

    .line 111
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->setCurrentPaint(Landroid/graphics/Paint;)V

    .line 113
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->setStrokeCapButtonChecked(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private final addPathCommand(Landroid/graphics/PointF;)Z
    .locals 7

    .line 379
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->lineTo(FF)V

    .line 380
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 381
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 382
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeWidth()F

    move-result v1

    neg-float v1, v1

    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeWidth()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 383
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/tools/Workspace;->intersectsWith(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 387
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->initialEventCoordinate:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    .line 388
    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->initialEventCoordinate:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    .line 389
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->initialEventCoordinate:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v3

    add-float/2addr v1, p1

    float-to-double v3, v1

    .line 385
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 392
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->getDrawTime()J

    move-result-wide v5

    long-to-double v5, v5

    div-double/2addr v3, v5

    .line 394
    sget-boolean p1, Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;->smoothing:Z

    if-eqz p1, :cond_1

    const-wide v5, 0x3fc999999999999aL    # 0.2

    cmpg-double p1, v3, v5

    if-gez p1, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pointArray:Ljava/util/List;

    invoke-static {p1}, Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;->smoothingAlgorithm(Ljava/util/List;)Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    move-result-object p1

    .line 400
    invoke-virtual {p1, v0, v2}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 401
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/catrobat/paintroid/command/CommandFactory;->createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    .line 402
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    goto :goto_1

    .line 395
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-interface {p1, v0, v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    .line 396
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    :goto_1
    return v2

    .line 407
    :cond_2
    sget-object p1, Lorg/catrobat/paintroid/tools/Tool$StateChange;->RESET_INTERNAL_STATE:Lorg/catrobat/paintroid/tools/Tool$StateChange;

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V

    const/4 p1, 0x0

    return p1
.end method

.method private final addPointCommand(Landroid/graphics/PointF;)Z
    .locals 2

    .line 412
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pointInsideBitmap:Z

    if-nez v0, :cond_0

    .line 413
    sget-object p1, Lorg/catrobat/paintroid/tools/Tool$StateChange;->RESET_INTERNAL_STATE:Lorg/catrobat/paintroid/tools/Tool$StateChange;

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V

    const/4 p1, 0x0

    return p1

    .line 416
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/catrobat/paintroid/command/CommandFactory;->createPointCommand(Landroid/graphics/Paint;Landroid/graphics/PointF;)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    .line 417
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    const/4 p1, 0x1

    return p1
.end method

.method private final calculateNewClampedToolPosition(FF)Landroid/graphics/PointF;
    .locals 4

    .line 204
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p1

    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 205
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/Workspace;->getSurfacePointFromCanvasPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 206
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {p2}, Lorg/catrobat/paintroid/tools/Workspace;->getSurfaceWidth()I

    move-result p2

    .line 207
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getSurfaceHeight()I

    move-result v1

    .line 208
    invoke-direct {p0, p1, p2, v1}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->contains(Landroid/graphics/PointF;II)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 210
    iget v2, p1, Landroid/graphics/PointF;->x:F

    int-to-float p2, p2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, p2}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->clamp(FFF)F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 211
    iget p2, p1, Landroid/graphics/PointF;->y:F

    int-to-float v1, v1

    invoke-direct {p0, p2, v3, v1}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->clamp(FFF)F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 212
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/tools/Workspace;->getCanvasPointFromSurfacePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_0
    return-object v0
.end method

.method private final clamp(FFF)F
    .locals 0

    .line 217
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private final contains(Landroid/graphics/PointF;II)Z
    .locals 2

    .line 220
    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/PointF;->x:F

    int-to-float p2, p2

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    int-to-float p2, p3

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final drawCircle(Landroid/graphics/Canvas;FFF)V
    .locals 3

    .line 253
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 254
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    const v0, -0x333334

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, p4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 256
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 259
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    .line 260
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    sub-float/2addr p4, p2

    .line 262
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    .line 258
    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawRect(Landroid/graphics/Canvas;FFF)V
    .locals 5

    .line 272
    new-instance v0, Landroid/graphics/RectF;

    .line 273
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p3

    .line 274
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p3

    .line 275
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, p3

    .line 276
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, p3

    .line 272
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 278
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 280
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p3, p4

    .line 281
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p4

    .line 282
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, p4

    .line 283
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, p4

    .line 279
    invoke-virtual {v0, p3, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 285
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 286
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 287
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 288
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 290
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p3, p4

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    add-float/2addr p3, p2

    .line 291
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p4

    add-float/2addr v1, p2

    .line 292
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, p4

    sub-float/2addr v2, p2

    .line 293
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, p4

    sub-float/2addr v3, p2

    .line 289
    invoke-virtual {v0, p3, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 295
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static synthetic getCursorToolSecondaryShapeColor$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPathToDraw$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getToolInDrawMode$annotations()V
    .locals 0

    return-void
.end method

.method private final handleDrawMode()V
    .locals 2

    .line 422
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolInDrawMode:Z

    const/high16 v1, 0x40a00000    # 5.0f

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->movedDistance:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->movedDistance:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    sget v1, Lorg/catrobat/paintroid/R$string;->cursor_draw_inactive:I

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/ContextCallback;->showNotification(I)V

    const/4 v0, 0x0

    .line 428
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolInDrawMode:Z

    const v0, -0x333334

    .line 429
    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->cursorToolSecondaryShapeColor:I

    goto :goto_1

    .line 424
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->addPathCommand(Landroid/graphics/PointF;)Z

    .line 425
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolPaint;->getColor()I

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->cursorToolSecondaryShapeColor:I

    goto :goto_1

    .line 432
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->movedDistance:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->movedDistance:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_3

    .line 433
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    sget v1, Lorg/catrobat/paintroid/R$string;->cursor_draw_active:I

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/ContextCallback;->showNotification(I)V

    const/4 v0, 0x1

    .line 434
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolInDrawMode:Z

    .line 435
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolPaint;->getColor()I

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->cursorToolSecondaryShapeColor:I

    .line 436
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->addPointCommand(Landroid/graphics/PointF;)Z

    .line 440
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pointArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private final hideToolOptions()V
    .locals 4

    .line 125
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getTopToolOptions()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 128
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getTopToolOptions()Landroid/view/View;

    move-result-object v3

    .line 127
    invoke-interface {v0, v3, v2, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->slideUp(Landroid/view/View;ZZ)V

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getBottomToolOptions()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 136
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getBottomToolOptions()Landroid/view/View;

    move-result-object v3

    .line 135
    invoke-interface {v0, v3, v2, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->slideDown(Landroid/view/View;ZZ)V

    :cond_1
    return-void
.end method

.method private final showToolOptions()V
    .locals 5

    .line 145
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getBottomToolOptions()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 147
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 148
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v4}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getTopToolOptions()Landroid/view/View;

    move-result-object v4

    .line 147
    invoke-interface {v0, v4, v2, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->slideDown(Landroid/view/View;ZZ)V

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getBottomToolOptions()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 155
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 156
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getBottomToolOptions()Landroid/view/View;

    move-result-object v3

    .line 155
    invoke-interface {v0, v3, v2, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->slideUp(Landroid/view/View;ZZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public changePaintColor(IZ)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->changePaintColor(IZ)V

    .line 118
    iget-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolInDrawMode:Z

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getColor()I

    move-result p1

    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->cursorToolSecondaryShapeColor:I

    :cond_0
    if-eqz p2, :cond_1

    .line 121
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->invalidate()V

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolInDrawMode:Z

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 370
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 371
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    check-cast v0, Landroid/graphics/Path;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 372
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 375
    :cond_0
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->drawShape(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawShape(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "canvas"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v4, 0x41200000    # 10.0f

    .line 300
    invoke-virtual {v0, v3, v8, v4}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->getStrokeWidthForZoom(FFF)F

    move-result v9

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float v10, v9, v3

    div-float v11, v9, v2

    add-float/2addr v1, v11

    add-float v12, v1, v9

    .line 307
    iget-object v2, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    .line 308
    iget v3, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->cursorToolPrimaryShapeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 310
    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 312
    iget-object v2, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v2

    .line 313
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    if-ne v2, v3, :cond_0

    .line 314
    invoke-direct {v0, v7, v9, v12, v1}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->drawCircle(Landroid/graphics/Canvas;FFF)V

    goto :goto_0

    .line 316
    :cond_0
    invoke-direct {v0, v7, v9, v12, v1}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->drawRect(Landroid/graphics/Canvas;FFF)V

    .line 319
    :goto_0
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-float v1, v10, v9

    const/4 v2, 0x0

    move v13, v1

    move v14, v2

    move v15, v11

    :goto_1
    const/4 v1, 0x4

    if-ge v14, v1, :cond_2

    .line 324
    rem-int/lit8 v1, v14, 0x2

    if-nez v1, :cond_1

    .line 325
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->cursorToolSecondaryShapeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 327
    :cond_1
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->cursorToolPrimaryShapeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    :goto_2
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v12

    sub-float v2, v1, v15

    .line 332
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->y:F

    .line 333
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v12

    sub-float v4, v1, v13

    .line 334
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/PointF;->y:F

    .line 335
    iget-object v6, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 330
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 338
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v12

    add-float v2, v1, v15

    .line 339
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->y:F

    .line 340
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v12

    add-float v4, v1, v13

    .line 341
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/PointF;->y:F

    .line 342
    iget-object v6, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 337
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 345
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 346
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v12

    add-float v3, v1, v15

    .line 347
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 348
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v12

    add-float v5, v1, v13

    .line 349
    iget-object v6, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 344
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 352
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 353
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v12

    sub-float v3, v1, v15

    .line 354
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 355
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v12

    sub-float v5, v1, v13

    .line 356
    iget-object v6, v0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 351
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    int-to-float v1, v14

    mul-float v2, v10, v1

    add-float v15, v11, v2

    add-float/2addr v1, v8

    mul-float/2addr v1, v10

    add-float v13, v9, v1

    goto/16 :goto_1

    :cond_2
    return-void
.end method

.method public getDrawTime()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->drawTime:J

    return-wide v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 92
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->CURSOR:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public handleDown(Landroid/graphics/PointF;)Z
    .locals 3

    .line 165
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->handleDown(Landroid/graphics/PointF;)Z

    .line 166
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->moveTo(FF)V

    if-nez p1, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->previousEventCoordinate:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 169
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->initialEventCoordinate:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 171
    :goto_1
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pointArray:Ljava/util/List;

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->movedDistance:Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 173
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/Workspace;->contains(Landroid/graphics/PointF;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pointInsideBitmap:Z

    const/4 p1, 0x1

    return p1
.end method

.method public handleDownAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->handleDown(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public handleMove(Landroid/graphics/PointF;Z)Z
    .locals 7

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_0

    .line 180
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->hideToolOptions()V

    .line 182
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->handleMove(Landroid/graphics/PointF;Z)Z

    .line 183
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->previousEventCoordinate:Landroid/graphics/PointF;

    if-nez p2, :cond_1

    goto/16 :goto_2

    .line 184
    :cond_1
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 185
    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    .line 186
    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v3, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 187
    iget-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pointInsideBitmap:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/tools/Workspace;->contains(Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pointInsideBitmap:Z

    .line 188
    invoke-direct {p0, v1, v2}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->calculateNewClampedToolPosition(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 189
    iget-boolean p2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolInDrawMode:Z

    if-eqz p2, :cond_4

    .line 190
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p2, v3

    .line 191
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    .line 192
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v5, v6, p2, v4}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->quadTo(FFFF)V

    .line 193
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-virtual {p2, v0}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->incReserve(I)V

    .line 195
    :cond_4
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pointArray:Ljava/util/List;

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 197
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->movedDistance:Landroid/graphics/PointF;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/graphics/PointF;->offset(FF)V

    :cond_5
    :goto_2
    return v0
.end method

.method public handleUp(Landroid/graphics/PointF;)Z
    .locals 6

    .line 223
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->showToolOptions()V

    .line 224
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->handleUp(Landroid/graphics/PointF;)Z

    .line 226
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pointInsideBitmap:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->toolPosition:Landroid/graphics/PointF;

    invoke-interface {v0, v2}, Lorg/catrobat/paintroid/tools/Workspace;->contains(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pointInsideBitmap:Z

    :cond_0
    if-eqz p1, :cond_2

    .line 230
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->previousEventCoordinate:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->movedDistance:Landroid/graphics/PointF;

    .line 232
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->movedDistance:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    .line 233
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->movedDistance:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v4, p1

    .line 231
    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 237
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->handleDrawMode()V

    .line 238
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pointArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return v1
.end method

.method public handleUpAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->handleUp(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public onClickOnButton()V
    .locals 0

    return-void
.end method

.method public resetInternalState()V
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pointArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 244
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->rewind()V

    return-void
.end method

.method public setDrawTime(J)V
    .locals 0

    .line 64
    iput-wide p1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->drawTime:J

    return-void
.end method

.method public toolPositionCoordinates(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 445
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->previousEventCoordinate:Landroid/graphics/PointF;

    if-nez v1, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    .line 447
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    .line 448
    invoke-direct {p0, v0, p1}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;->calculateNewClampedToolPosition(FF)Landroid/graphics/PointF;

    move-result-object v0

    :goto_0
    return-object v0
.end method
