.class public final Lorg/catrobat/paintroid/tools/implementation/ImportTool;
.super Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;
.source "ImportTool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\u001a2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0012\u0010 \u001a\u00020\u001a2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0008\u0010!\u001a\u00020\u001aH\u0016J\u0012\u0010\"\u001a\u00020\u001a2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0012\u0010%\u001a\u00020\u001a2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u000e\u0010&\u001a\u00020\u001a2\u0006\u0010\'\u001a\u00020(J\u0010\u0010)\u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016R\u001a\u0010\u000e\u001a\u00020\u000fX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006*"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/ImportTool;",
        "Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;",
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
        "drawShape",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "handleDownAnimations",
        "coordinate",
        "Landroid/graphics/PointF;",
        "handleUpAnimations",
        "onClickOnButton",
        "onRestoreInstanceState",
        "bundle",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "setBitmapFromSource",
        "bitmap",
        "Landroid/graphics/Bitmap;",
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

    .line 45
    invoke-direct/range {p0 .. p6}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V

    .line 44
    iput-wide p7, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->drawTime:J

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->rotationEnabled:Z

    return-void
.end method


# virtual methods
.method public drawShape(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->drawingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 68
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawShape(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getDrawTime()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->drawTime:J

    return-wide v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 50
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public handleDownAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->handleDown(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public handleUpAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->handleUp(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public onClickOnButton()V
    .locals 6

    .line 84
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->drawingBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->highlightBox()V

    .line 86
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    .line 88
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->toolPosition:Landroid/graphics/PointF;

    .line 89
    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->boxWidth:F

    .line 90
    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->boxHeight:F

    .line 91
    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->boxRotation:F

    .line 86
    invoke-interface/range {v0 .. v5}, Lorg/catrobat/paintroid/command/CommandFactory;->createClipboardCommand(Landroid/graphics/Bitmap;Landroid/graphics/PointF;FFF)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "BUNDLE_TOOL_DRAWING_BITMAP"

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 80
    :goto_0
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->drawingBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->drawingBitmap:Landroid/graphics/Bitmap;

    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "BUNDLE_TOOL_DRAWING_BITMAP"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method public final setBitmapFromSource(Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 100
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->boxWidth:F

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->boxHeight:F

    return-void
.end method

.method public setDrawTime(J)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->drawTime:J

    return-void
.end method

.method public toolPositionCoordinates(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
