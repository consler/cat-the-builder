.class public final Lorg/catrobat/paintroid/tools/implementation/FillTool;
.super Lorg/catrobat/paintroid/tools/implementation/BaseTool;
.source "FillTool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016J\u000e\u0010#\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%J\u0012\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u0012\u0010*\u001a\u00020 2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u001a\u0010+\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010,\u001a\u00020\'H\u0016J\u0012\u0010-\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u0012\u0010.\u001a\u00020 2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u0008\u0010/\u001a\u00020 H\u0016J\u0010\u00100\u001a\u00020)2\u0006\u0010(\u001a\u00020)H\u0016J\u000e\u00101\u001a\u00020 2\u0006\u00102\u001a\u00020%R\u0018\u0010\u0013\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0010\u001a\u00020\u0011X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u001cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u00063"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/FillTool;",
        "Lorg/catrobat/paintroid/tools/implementation/BaseTool;",
        "fillToolOptionsView",
        "Lorg/catrobat/paintroid/tools/options/FillToolOptionsView;",
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
        "(Lorg/catrobat/paintroid/tools/options/FillToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V",
        "colorTolerance",
        "",
        "getColorTolerance$annotations",
        "()V",
        "getDrawTime",
        "()J",
        "setDrawTime",
        "(J)V",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "getToolType",
        "()Lorg/catrobat/paintroid/tools/ToolType;",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getToleranceAbsoluteValue",
        "toleranceInPercent",
        "",
        "handleDown",
        "",
        "coordinate",
        "Landroid/graphics/PointF;",
        "handleDownAnimations",
        "handleMove",
        "shouldAnimate",
        "handleUp",
        "handleUpAnimations",
        "resetInternalState",
        "toolPositionCoordinates",
        "updateColorTolerance",
        "colorToleranceInPercent",
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
.field public colorTolerance:F

.field private drawTime:J

.field private final toolType:Lorg/catrobat/paintroid/tools/ToolType;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/options/FillToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V
    .locals 9

    move-object v7, p0

    move-object v8, p1

    const-string v0, "fillToolOptionsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallback"

    move-object v1, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    move-object v2, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPaint"

    move-object v3, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    move-object v4, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idlingResource"

    move-object v5, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 46
    invoke-direct/range {v0 .. v6}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V

    move-wide/from16 v0, p8

    .line 45
    iput-wide v0, v7, Lorg/catrobat/paintroid/tools/implementation/FillTool;->drawTime:J

    const v0, 0x4274cccd    # 61.2f

    .line 56
    iput v0, v7, Lorg/catrobat/paintroid/tools/implementation/FillTool;->colorTolerance:F

    .line 59
    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/FillTool$1;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/tools/implementation/FillTool$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/FillTool;)V

    check-cast v0, Lorg/catrobat/paintroid/tools/options/FillToolOptionsView$Callback;

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/options/FillToolOptionsView;->setCallback(Lorg/catrobat/paintroid/tools/options/FillToolOptionsView$Callback;)V

    .line 94
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->FILL:Lorg/catrobat/paintroid/tools/ToolType;

    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/FillTool;->toolType:Lorg/catrobat/paintroid/tools/ToolType;

    return-void
.end method

.method public static synthetic getColorTolerance$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getDrawTime()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->drawTime:J

    return-wide v0
.end method

.method public final getToleranceAbsoluteValue(I)F
    .locals 1

    mul-int/lit16 p1, p1, 0x1fe

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    return p1
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->toolType:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public handleDown(Landroid/graphics/PointF;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handleDownAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->handleDown(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public handleMove(Landroid/graphics/PointF;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handleUp(Landroid/graphics/PointF;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 79
    :cond_0
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/tools/Workspace;->contains(Landroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 83
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    .line 84
    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->colorTolerance:F

    .line 83
    invoke-interface {v0, v1, p1, v2, v3}, Lorg/catrobat/paintroid/command/CommandFactory;->createFillCommand(IILandroid/graphics/Paint;F)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    const/4 p1, 0x1

    return p1
.end method

.method public handleUpAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->handleUp(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public resetInternalState()V
    .locals 0

    return-void
.end method

.method public setDrawTime(J)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->drawTime:J

    return-void
.end method

.method public toolPositionCoordinates(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final updateColorTolerance(I)V
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/FillTool;->getToleranceAbsoluteValue(I)F

    move-result p1

    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->colorTolerance:F

    return-void
.end method
