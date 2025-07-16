.class public abstract Lorg/catrobat/paintroid/tools/implementation/BaseTool;
.super Ljava/lang/Object;
.source "BaseTool.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/Tool;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u001a\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020\u001dH\u0016J\u0010\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\'H&J(\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020\u001dH\u0016J\u0008\u0010/\u001a\u00020\u001fH\u0016J\u0012\u00100\u001a\u00020\u001f2\u0008\u00101\u001a\u0004\u0018\u00010\u0016H\u0016J\u001a\u00102\u001a\u00020\u001f2\u0008\u00101\u001a\u0004\u0018\u00010\u00162\u0006\u00103\u001a\u00020\u001fH\u0016J\u0012\u00104\u001a\u00020\u001f2\u0008\u00101\u001a\u0004\u0018\u00010\u0016H\u0016J\u0012\u00105\u001a\u00020\u001b2\u0008\u00106\u001a\u0004\u0018\u000107H\u0016J\u0012\u00108\u001a\u00020\u001b2\u0008\u00106\u001a\u0004\u0018\u000107H\u0016J\u0008\u00109\u001a\u00020\u001bH\u0014J\u0010\u00109\u001a\u00020\u001b2\u0006\u0010:\u001a\u00020;H\u0016R\u0012\u0010\u000f\u001a\u00020\u00108\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\r8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0012\u0010\n\u001a\u00020\u000b8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u00168\u0004X\u0085\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00198\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
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
        "idlingResource",
        "Landroidx/test/espresso/idling/CountingIdlingResource;",
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V",
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
        "invalidate",
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
        "handleDown",
        "coordinate",
        "handleMove",
        "shouldAnimate",
        "handleUp",
        "onRestoreInstanceState",
        "bundle",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "resetInternalState",
        "stateChange",
        "Lorg/catrobat/paintroid/tools/Tool$StateChange;",
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
.field protected commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

.field protected commandManager:Lorg/catrobat/paintroid/command/CommandManager;

.field public contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

.field protected idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

.field protected final movedDistance:Landroid/graphics/PointF;

.field public previousEventCoordinate:Landroid/graphics/PointF;

.field protected scrollBehavior:Lorg/catrobat/paintroid/tools/common/ScrollBehavior;

.field public toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

.field protected toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

.field protected workspace:Lorg/catrobat/paintroid/tools/Workspace;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V
    .locals 1

    const-string v0, "contextCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPaint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idlingResource"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    .line 44
    iput-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 45
    iput-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    .line 47
    iput-object p4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    .line 49
    iput-object p5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    .line 51
    iput-object p6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    .line 64
    new-instance p1, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;

    invoke-direct {p1}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;-><init>()V

    check-cast p1, Lorg/catrobat/paintroid/command/CommandFactory;

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    .line 67
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/ContextCallback;->getScrollTolerance()I

    move-result p1

    .line 68
    new-instance p2, Lorg/catrobat/paintroid/tools/common/PointScrollBehavior;

    invoke-direct {p2, p1}, Lorg/catrobat/paintroid/tools/common/PointScrollBehavior;-><init>(I)V

    check-cast p2, Lorg/catrobat/paintroid/tools/common/ScrollBehavior;

    iput-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->scrollBehavior:Lorg/catrobat/paintroid/tools/common/ScrollBehavior;

    .line 69
    new-instance p1, Landroid/graphics/PointF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->movedDistance:Landroid/graphics/PointF;

    .line 70
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->previousEventCoordinate:Landroid/graphics/PointF;

    .line 71
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_0
    return-void
.end method


# virtual methods
.method public changePaintColor(IZ)V
    .locals 0

    .line 81
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/tools/ToolPaint;->setColor(I)V

    return-void
.end method

.method public changePaintStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1

    const-string v0, "cap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/ToolPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public changePaintStrokeWidth(I)V
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    int-to-float p1, p1

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/ToolPaint;->setStrokeWidth(F)V

    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public getAutoScrollDirection(FFII)Landroid/graphics/Point;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->scrollBehavior:Lorg/catrobat/paintroid/tools/common/ScrollBehavior;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/tools/common/ScrollBehavior;->getScrollDirection(FFII)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public getDrawPaint()Landroid/graphics/Paint;
    .locals 2

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public handToolMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleDown(Landroid/graphics/PointF;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public handleMove(Landroid/graphics/PointF;Z)Z
    .locals 0

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    .line 101
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->animateBottomAndTopNavigation(Z)V

    :cond_0
    return p1
.end method

.method public handleUp(Landroid/graphics/PointF;)Z
    .locals 1

    .line 95
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->animateBottomAndTopNavigation(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected resetInternalState()V
    .locals 0

    return-void
.end method

.method public resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V
    .locals 1

    const-string v0, "stateChange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/tools/ToolType;->shouldReactToStateChange(Lorg/catrobat/paintroid/tools/Tool$StateChange;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->resetInternalState()V

    :cond_0
    return-void
.end method
