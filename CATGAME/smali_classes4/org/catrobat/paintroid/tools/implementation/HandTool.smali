.class public final Lorg/catrobat/paintroid/tools/implementation/HandTool;
.super Lorg/catrobat/paintroid/tools/implementation/BaseTool;
.source "HandTool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0012\u0010\u001f\u001a\u00020\u001e2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0012\u0010\"\u001a\u00020\u001a2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u001a\u0010#\u001a\u00020\u001e2\u0008\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010$\u001a\u00020\u001eH\u0016J\u0012\u0010%\u001a\u00020\u001e2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0012\u0010&\u001a\u00020\u001a2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0008\u0010\'\u001a\u00020\u001aH\u0014J\u0010\u0010(\u001a\u00020!2\u0006\u0010 \u001a\u00020!H\u0016R\u001a\u0010\u000e\u001a\u00020\u000fX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006)"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/HandTool;",
        "Lorg/catrobat/paintroid/tools/implementation/BaseTool;",
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
        "(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V",
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
        "handToolMode",
        "",
        "handleDown",
        "coordinate",
        "Landroid/graphics/PointF;",
        "handleDownAnimations",
        "handleMove",
        "shouldAnimate",
        "handleUp",
        "handleUpAnimations",
        "resetInternalState",
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
.field private drawTime:J


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V
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

    .line 39
    invoke-direct/range {p0 .. p6}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V

    .line 38
    iput-wide p7, p0, Lorg/catrobat/paintroid/tools/implementation/HandTool;->drawTime:J

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

    .line 38
    iget-wide v0, p0, Lorg/catrobat/paintroid/tools/implementation/HandTool;->drawTime:J

    return-wide v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 48
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->HAND:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public handToolMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleDown(Landroid/graphics/PointF;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public handleDownAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->handleDown(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public handleMove(Landroid/graphics/PointF;Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public handleUp(Landroid/graphics/PointF;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public handleUpAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->handleUp(Landroid/graphics/PointF;)Z

    return-void
.end method

.method protected resetInternalState()V
    .locals 0

    return-void
.end method

.method public setDrawTime(J)V
    .locals 0

    .line 38
    iput-wide p1, p0, Lorg/catrobat/paintroid/tools/implementation/HandTool;->drawTime:J

    return-void
.end method

.method public toolPositionCoordinates(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
