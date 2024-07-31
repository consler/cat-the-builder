.class public abstract Lorg/catrobat/paintroid/tools/implementation/BaseTool;
.super Ljava/lang/Object;
.source "BaseTool.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/Tool;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u001bH\u0016J\u0010\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020#H&J(\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\'2\u0006\u0010)\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020\u001bH\u0016J\u0008\u0010+\u001a\u00020,H\u0016J\u0012\u0010-\u001a\u00020\u00192\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u0012\u00100\u001a\u00020\u00192\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u0008\u00101\u001a\u00020\u0019H\u0014J\u0010\u00101\u001a\u00020\u00192\u0006\u00102\u001a\u000203H\u0016R\u0012\u0010\r\u001a\u00020\u000e8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u00020\u00148\u0004X\u0085\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00178\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u00020\u00058\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/BaseTool;",
        "Lorg/catrobat/paintroid/tools/Tool;",
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
        "(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;)V",
        "commandFactory",
        "Lorg/catrobat/paintroid/command/CommandFactory;",
        "drawPaint",
        "Landroid/graphics/Paint;",
        "getDrawPaint",
        "()Landroid/graphics/Paint;",
        "movedDistance",
        "Landroid/graphics/PointF;",
        "previousEventCoordinate",
        "scrollBehavior",
        "Lorg/catrobat/paintroid/tools/common/ScrollBehavior;",
        "changePaintColor",
        "",
        "color",
        "",
        "changePaintStrokeCap",
        "cap",
        "Landroid/graphics/Paint$Cap;",
        "changePaintStrokeWidth",
        "strokeWidth",
        "draw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getAutoScrollDirection",
        "Landroid/graphics/Point;",
        "pointX",
        "",
        "pointY",
        "screenWidth",
        "screenHeight",
        "handToolMode",
        "",
        "onRestoreInstanceState",
        "bundle",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "resetInternalState",
        "stateChange",
        "Lorg/catrobat/paintroid/tools/Tool$StateChange;",
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
.field protected commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

.field protected commandManager:Lorg/catrobat/paintroid/command/CommandManager;

.field public contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

.field protected final movedDistance:Landroid/graphics/PointF;

.field protected previousEventCoordinate:Landroid/graphics/PointF;

.field protected scrollBehavior:Lorg/catrobat/paintroid/tools/common/ScrollBehavior;

.field protected toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

.field protected toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

.field protected workspace:Lorg/catrobat/paintroid/tools/Workspace;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;)V
    .locals 3
    .param p1, "contextCallback"    # Lorg/catrobat/paintroid/tools/ContextCallback;
    .param p2, "toolOptionsViewController"    # Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
    .param p3, "toolPaint"    # Lorg/catrobat/paintroid/tools/ToolPaint;
    .param p4, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;
    .param p5, "commandManager"    # Lorg/catrobat/paintroid/command/CommandManager;

    const-string v0, "contextCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPaint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    iput-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    iput-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    iput-object p4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    iput-object p5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    .line 62
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;

    invoke-direct {v0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;-><init>()V

    check-cast v0, Lorg/catrobat/paintroid/command/CommandFactory;

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    .line 64
    nop

    .line 65
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ContextCallback;->getScrollTolerance()I

    move-result v0

    .line 66
    .local v0, "scrollTolerance":I
    new-instance v1, Lorg/catrobat/paintroid/tools/common/PointScrollBehavior;

    invoke-direct {v1, v0}, Lorg/catrobat/paintroid/tools/common/PointScrollBehavior;-><init>(I)V

    check-cast v1, Lorg/catrobat/paintroid/tools/common/ScrollBehavior;

    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->scrollBehavior:Lorg/catrobat/paintroid/tools/common/ScrollBehavior;

    .line 67
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->movedDistance:Landroid/graphics/PointF;

    .line 68
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->previousEventCoordinate:Landroid/graphics/PointF;

    .line 69
    .end local v0    # "scrollTolerance":I
    return-void
.end method


# virtual methods
.method public changePaintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 76
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/ToolPaint;->setColor(I)V

    .line 77
    return-void
.end method

.method public changePaintStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1
    .param p1, "cap"    # Landroid/graphics/Paint$Cap;

    const-string v0, "cap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/ToolPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 85
    return-void
.end method

.method public changePaintStrokeWidth(I)V
    .locals 2
    .param p1, "strokeWidth"    # I

    .line 80
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    int-to-float v1, p1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->setStrokeWidth(F)V

    .line 81
    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public getAutoScrollDirection(FFII)Landroid/graphics/Point;
    .locals 1
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F
    .param p3, "screenWidth"    # I
    .param p4, "screenHeight"    # I

    .line 105
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->scrollBehavior:Lorg/catrobat/paintroid/tools/common/ScrollBehavior;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/tools/common/ScrollBehavior;->getScrollDirection(FFII)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getDrawPaint()Landroid/graphics/Paint;
    .locals 2

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public handToolMode()Z
    .locals 1

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 73
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 71
    return-void
.end method

.method protected resetInternalState()V
    .locals 0

    .line 92
    return-void
.end method

.method public resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V
    .locals 1
    .param p1, "stateChange"    # Lorg/catrobat/paintroid/tools/Tool$StateChange;

    const-string v0, "stateChange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/tools/ToolType;->shouldReactToStateChange(Lorg/catrobat/paintroid/tools/Tool$StateChange;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->resetInternalState()V

    .line 98
    :cond_0
    return-void
.end method
