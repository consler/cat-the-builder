.class public Lorg/catrobat/paintroid/tools/implementation/BrushTool;
.super Lorg/catrobat/paintroid/tools/implementation/BaseTool;
.source "BrushTool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0016\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\u0010\u00102\u001a\u00020%2\u0006\u00103\u001a\u00020\u001eH\u0002J\u0010\u00104\u001a\u00020%2\u0006\u00103\u001a\u00020\u001eH\u0002J\u0018\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020%H\u0016J\u0010\u0010:\u001a\u0002062\u0006\u0010;\u001a\u00020<H\u0016J\u0008\u0010=\u001a\u00020%H\u0002J\u0012\u0010>\u001a\u00020%2\u0008\u00103\u001a\u0004\u0018\u00010\u001eH\u0016J\u0012\u0010?\u001a\u0002062\u0008\u00103\u001a\u0004\u0018\u00010\u001eH\u0016J\u001a\u0010@\u001a\u00020%2\u0008\u00103\u001a\u0004\u0018\u00010\u001e2\u0006\u0010A\u001a\u00020%H\u0016J\u0012\u0010B\u001a\u00020%2\u0008\u00103\u001a\u0004\u0018\u00010\u001eH\u0016J\u0012\u0010C\u001a\u0002062\u0008\u00103\u001a\u0004\u0018\u00010\u001eH\u0016J\u0008\u0010D\u001a\u000206H\u0002J\u0008\u0010E\u001a\u000206H\u0014J\u0008\u0010F\u001a\u000206H\u0002J\u0010\u0010G\u001a\u00020\u001e2\u0006\u00103\u001a\u00020\u001eH\u0016R\u0014\u0010\u0013\u001a\u00020\u00148TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0010\u001a\u00020\u0011X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u000e\u0010$\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010&\u001a\u00020\'8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001e0)\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u0014\u0010,\u001a\u00020\u00148TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010\u0016R\u0014\u0010.\u001a\u00020/8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101\u00a8\u0006H"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/BrushTool;",
        "Lorg/catrobat/paintroid/tools/implementation/BaseTool;",
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
        "bitmapPaint",
        "Landroid/graphics/Paint;",
        "getBitmapPaint",
        "()Landroid/graphics/Paint;",
        "getBrushToolOptionsView",
        "()Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;",
        "getDrawTime",
        "()J",
        "setDrawTime",
        "(J)V",
        "drawToolMovedDistance",
        "Landroid/graphics/PointF;",
        "initialEventCoordinate",
        "getInitialEventCoordinate",
        "()Landroid/graphics/PointF;",
        "setInitialEventCoordinate",
        "(Landroid/graphics/PointF;)V",
        "pathInsideBitmap",
        "",
        "pathToDraw",
        "Lorg/catrobat/paintroid/command/serialization/SerializablePath;",
        "pointArray",
        "",
        "getPointArray",
        "()Ljava/util/List;",
        "previewPaint",
        "getPreviewPaint",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "getToolType",
        "()Lorg/catrobat/paintroid/tools/ToolType;",
        "addPathCommand",
        "coordinate",
        "addPointCommand",
        "changePaintColor",
        "",
        "color",
        "",
        "invalidate",
        "draw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "eventCoordinatesAreNull",
        "handleDown",
        "handleDownAnimations",
        "handleMove",
        "shouldAnimate",
        "handleUp",
        "handleUpAnimations",
        "hideBrushSpecificLayoutOnHandleDown",
        "resetInternalState",
        "showBrushSpecificLayoutOnHandleUp",
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

.field private drawTime:J

.field private final drawToolMovedDistance:Landroid/graphics/PointF;

.field private initialEventCoordinate:Landroid/graphics/PointF;

.field private pathInsideBitmap:Z

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


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V
    .locals 11

    move-object v7, p0

    move-object v8, p1

    move-object v9, p4

    const-string v0, "brushToolOptionsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallback"

    move-object v1, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    move-object v10, p3

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

    move-object v2, p3

    move-object v3, p4

    .line 54
    invoke-direct/range {v0 .. v6}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V

    .line 46
    iput-object v8, v7, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    move-wide/from16 v0, p8

    .line 53
    iput-wide v0, v7, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->drawTime:J

    .line 65
    new-instance v0, Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-direct {v0}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;-><init>()V

    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    .line 68
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->drawToolMovedDistance:Landroid/graphics/PointF;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pointArray:Ljava/util/List;

    .line 73
    invoke-interface {p3}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->enable()V

    .line 74
    iget-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->incReserve(I)V

    .line 75
    new-instance v0, Lorg/catrobat/paintroid/tools/common/CommonBrushChangedListener;

    move-object v1, v7

    check-cast v1, Lorg/catrobat/paintroid/tools/Tool;

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/tools/common/CommonBrushChangedListener;-><init>(Lorg/catrobat/paintroid/tools/Tool;)V

    check-cast v0, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->setBrushChangedListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;)V

    .line 77
    new-instance v0, Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;

    .line 79
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v1

    .line 77
    invoke-direct {v0, p4, v1}, Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;-><init>(Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/ToolType;)V

    check-cast v0, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    .line 76
    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->setBrushPreviewListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;)V

    .line 82
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->setCurrentPaint(Landroid/graphics/Paint;)V

    .line 83
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->setStrokeCapButtonChecked(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private final addPathCommand(Landroid/graphics/PointF;)Z
    .locals 5

    .line 226
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->lineTo(FF)V

    .line 228
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pathInsideBitmap:Z

    if-nez v0, :cond_0

    .line 229
    sget-object p1, Lorg/catrobat/paintroid/tools/Tool$StateChange;->RESET_INTERNAL_STATE:Lorg/catrobat/paintroid/tools/Tool$StateChange;

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V

    const/4 p1, 0x0

    return p1

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->initialEventCoordinate:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object p1, v1

    goto :goto_0

    .line 236
    :cond_1
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 238
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->getDrawTime()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 240
    :goto_1
    sget-boolean p1, Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;->smoothing:Z

    if-eqz p1, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpg-double p1, v0, v2

    if-gez p1, :cond_3

    goto :goto_2

    .line 244
    :cond_3
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pointArray:Ljava/util/List;

    invoke-static {p1}, Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;->smoothingAlgorithm(Ljava/util/List;)Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    move-result-object p1

    .line 245
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->getBitmapPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/catrobat/paintroid/command/CommandFactory;->createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    .line 246
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    goto :goto_3

    .line 241
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->getBitmapPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-interface {p1, v0, v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    .line 242
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 249
    :goto_3
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pointArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x1

    return p1
.end method

.method private final addPointCommand(Landroid/graphics/PointF;)Z
    .locals 2

    .line 254
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pathInsideBitmap:Z

    if-nez v0, :cond_0

    .line 255
    sget-object p1, Lorg/catrobat/paintroid/tools/Tool$StateChange;->RESET_INTERNAL_STATE:Lorg/catrobat/paintroid/tools/Tool$StateChange;

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V

    const/4 p1, 0x0

    return p1

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pointArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 260
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->getBitmapPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/catrobat/paintroid/command/CommandFactory;->createPointCommand(Landroid/graphics/Paint;Landroid/graphics/PointF;)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    .line 261
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    const/4 p1, 0x1

    return p1
.end method

.method private final eventCoordinatesAreNull()Z
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->initialEventCoordinate:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->previousEventCoordinate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final hideBrushSpecificLayoutOnHandleDown()V
    .locals 4

    .line 96
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getTopToolOptions()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 99
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getTopToolOptions()Landroid/view/View;

    move-result-object v3

    .line 98
    invoke-interface {v0, v3, v2, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->slideUp(Landroid/view/View;ZZ)V

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getBottomToolOptions()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 107
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getBottomToolOptions()Landroid/view/View;

    move-result-object v3

    .line 106
    invoke-interface {v0, v3, v2, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->slideDown(Landroid/view/View;ZZ)V

    :cond_1
    return-void
.end method

.method private final showBrushSpecificLayoutOnHandleUp()V
    .locals 5

    .line 116
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getBottomToolOptions()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 118
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 119
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v4}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getTopToolOptions()Landroid/view/View;

    move-result-object v4

    .line 118
    invoke-interface {v0, v4, v2, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->slideDown(Landroid/view/View;ZZ)V

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getBottomToolOptions()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 126
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 127
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getBottomToolOptions()Landroid/view/View;

    move-result-object v3

    .line 126
    invoke-interface {v0, v3, v2, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->slideUp(Landroid/view/View;ZZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public changePaintColor(IZ)V
    .locals 0

    .line 218
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->changePaintColor(IZ)V

    if-eqz p2, :cond_0

    .line 219
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->invalidate()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 90
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    check-cast v0, Landroid/graphics/Path;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected getBitmapPaint()Landroid/graphics/Paint;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public final getBrushToolOptionsView()Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    return-object v0
.end method

.method public getDrawTime()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->drawTime:J

    return-wide v0
.end method

.method public final getInitialEventCoordinate()Landroid/graphics/PointF;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->initialEventCoordinate:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getPointArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pointArray:Ljava/util/List;

    return-object v0
.end method

.method protected getPreviewPaint()Landroid/graphics/Paint;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 62
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->BRUSH:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public handleDown(Landroid/graphics/PointF;)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 137
    :cond_0
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->handleDown(Landroid/graphics/PointF;)Z

    .line 138
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->initialEventCoordinate:Landroid/graphics/PointF;

    .line 139
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->previousEventCoordinate:Landroid/graphics/PointF;

    .line 140
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->moveTo(FF)V

    .line 141
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->drawToolMovedDistance:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 142
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pointArray:Ljava/util/List;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/Workspace;->contains(Landroid/graphics/PointF;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pathInsideBitmap:Z

    const/4 p1, 0x1

    return p1
.end method

.method public handleDownAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->hideBrushSpecificLayoutOnHandleDown()V

    return-void
.end method

.method public handleMove(Landroid/graphics/PointF;Z)Z
    .locals 6

    .line 157
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->eventCoordinatesAreNull()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->handleMove(Landroid/graphics/PointF;Z)Z

    if-eqz p2, :cond_1

    .line 162
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->hideBrushSpecificLayoutOnHandleDown()V

    .line 164
    :cond_1
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->previousEventCoordinate:Landroid/graphics/PointF;

    const/4 v0, 0x1

    if-nez p2, :cond_2

    goto :goto_0

    .line 165
    :cond_2
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->quadTo(FFFF)V

    .line 166
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-virtual {v1, v0}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->incReserve(I)V

    .line 167
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->drawToolMovedDistance:Landroid/graphics/PointF;

    .line 168
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    .line 169
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->drawToolMovedDistance:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    .line 167
    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 171
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->getPointArray()Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 174
    :goto_0
    iget-boolean p2, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pathInsideBitmap:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/tools/Workspace;->contains(Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 175
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pathInsideBitmap:Z

    :cond_3
    return v0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public handleUp(Landroid/graphics/PointF;)Z
    .locals 6

    .line 181
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->eventCoordinatesAreNull()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 184
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->showBrushSpecificLayoutOnHandleUp()V

    .line 185
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->handleUp(Landroid/graphics/PointF;)Z

    .line 187
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pathInsideBitmap:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/Workspace;->contains(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pathInsideBitmap:Z

    .line 191
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->previousEventCoordinate:Landroid/graphics/PointF;

    if-nez v0, :cond_2

    goto :goto_0

    .line 192
    :cond_2
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->drawToolMovedDistance:Landroid/graphics/PointF;

    .line 193
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    .line 194
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->drawToolMovedDistance:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v4, v0

    .line 192
    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 198
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->drawToolMovedDistance:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->drawToolMovedDistance:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_3

    .line 199
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->addPathCommand(Landroid/graphics/PointF;)Z

    move-result v1

    goto :goto_1

    .line 201
    :cond_3
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->initialEventCoordinate:Landroid/graphics/PointF;

    if-nez p1, :cond_4

    :goto_1
    return v1

    .line 202
    :cond_4
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->addPointCommand(Landroid/graphics/PointF;)Z

    move-result p1

    return p1

    :cond_5
    :goto_2
    return v1
.end method

.method public handleUpAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->showBrushSpecificLayoutOnHandleUp()V

    .line 153
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->handleUp(Landroid/graphics/PointF;)Z

    return-void
.end method

.method protected resetInternalState()V
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->rewind()V

    .line 212
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->pointArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->initialEventCoordinate:Landroid/graphics/PointF;

    .line 214
    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->previousEventCoordinate:Landroid/graphics/PointF;

    return-void
.end method

.method public setDrawTime(J)V
    .locals 0

    .line 53
    iput-wide p1, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->drawTime:J

    return-void
.end method

.method public final setInitialEventCoordinate(Landroid/graphics/PointF;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->initialEventCoordinate:Landroid/graphics/PointF;

    return-void
.end method

.method public toolPositionCoordinates(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
