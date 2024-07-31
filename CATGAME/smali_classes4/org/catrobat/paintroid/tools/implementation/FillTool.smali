.class public final Lorg/catrobat/paintroid/tools/implementation/FillTool;
.super Lorg/catrobat/paintroid/tools/implementation/BaseTool;
.source "FillTool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u000e\u0010!\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020#J\u0012\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0016J\u0012\u0010(\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0016J\u0012\u0010)\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0016J\u0008\u0010*\u001a\u00020\u001eH\u0016J\u000e\u0010+\u001a\u00020\u001e2\u0006\u0010,\u001a\u00020#R\u0018\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u000e\u001a\u00020\u000fX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u001aX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006-"
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
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "drawTime",
        "",
        "(Lorg/catrobat/paintroid/tools/options/FillToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V",
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
        "handleMove",
        "handleUp",
        "resetInternalState",
        "updateColorTolerance",
        "colorToleranceInPercent",
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
.field public colorTolerance:F

.field private drawTime:J

.field private final toolType:Lorg/catrobat/paintroid/tools/ToolType;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/options/FillToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V
    .locals 6
    .param p1, "fillToolOptionsView"    # Lorg/catrobat/paintroid/tools/options/FillToolOptionsView;
    .param p2, "contextCallback"    # Lorg/catrobat/paintroid/tools/ContextCallback;
    .param p3, "toolOptionsViewController"    # Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
    .param p4, "toolPaint"    # Lorg/catrobat/paintroid/tools/ToolPaint;
    .param p5, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;
    .param p6, "commandManager"    # Lorg/catrobat/paintroid/command/CommandManager;
    .param p7, "drawTime"    # J

    const-string v0, "fillToolOptionsView"

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

    .line 36
    nop

    .line 45
    nop

    .line 46
    nop

    .line 47
    nop

    .line 48
    nop

    .line 49
    nop

    .line 44
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;)V

    iput-wide p7, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->drawTime:J

    .line 53
    const v0, 0x4274cccd    # 61.2f

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->colorTolerance:F

    .line 55
    nop

    .line 56
    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/FillTool$1;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/tools/implementation/FillTool$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/FillTool;)V

    check-cast v0, Lorg/catrobat/paintroid/tools/options/FillToolOptionsView$Callback;

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/options/FillToolOptionsView;->setCallback(Lorg/catrobat/paintroid/tools/options/FillToolOptionsView$Callback;)V

    .line 61
    nop

    .line 89
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->FILL:Lorg/catrobat/paintroid/tools/ToolType;

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->toolType:Lorg/catrobat/paintroid/tools/ToolType;

    return-void
.end method

.method public static synthetic getColorTolerance$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public getDrawTime()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->drawTime:J

    return-wide v0
.end method

.method public final getToleranceAbsoluteValue(I)F
    .locals 2
    .param p1, "toleranceInPercent"    # I

    .line 68
    mul-int/lit16 v0, p1, 0x1fe

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->toolType:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public handleDown(Landroid/graphics/PointF;)Z
    .locals 1
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public handleMove(Landroid/graphics/PointF;)Z
    .locals 1
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public handleUp(Landroid/graphics/PointF;)Z
    .locals 5
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    .line 75
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 76
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/tools/Workspace;->contains(Landroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    return v0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    .line 81
    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->colorTolerance:F

    .line 80
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/catrobat/paintroid/command/CommandFactory;->createFillCommand(IILandroid/graphics/Paint;F)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 83
    .local v0, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 84
    const/4 v1, 0x1

    return v1

    .line 75
    .end local v0    # "command":Lorg/catrobat/paintroid/command/Command;
    :cond_1
    return v0
.end method

.method public resetInternalState()V
    .locals 0

    .line 87
    return-void
.end method

.method public setDrawTime(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 43
    iput-wide p1, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->drawTime:J

    return-void
.end method

.method public final updateColorTolerance(I)V
    .locals 1
    .param p1, "colorToleranceInPercent"    # I

    .line 64
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/FillTool;->getToleranceAbsoluteValue(I)F

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/FillTool;->colorTolerance:F

    .line 65
    return-void
.end method
