.class public final Lorg/catrobat/paintroid/tools/implementation/ImportTool;
.super Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;
.source "ImportTool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0018H\u0016J\u0012\u0010\u001c\u001a\u00020\u00182\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0012\u0010\u001f\u001a\u00020\u00182\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u000e\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\"R\u001a\u0010\u000c\u001a\u00020\rX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006#"
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
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "drawTime",
        "",
        "(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V",
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
        "onClickOnButton",
        "onRestoreInstanceState",
        "bundle",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "setBitmapFromSource",
        "bitmap",
        "Landroid/graphics/Bitmap;",
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
.field private drawTime:J


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V
    .locals 1
    .param p1, "contextCallback"    # Lorg/catrobat/paintroid/tools/ContextCallback;
    .param p2, "toolOptionsViewController"    # Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
    .param p3, "toolPaint"    # Lorg/catrobat/paintroid/tools/ToolPaint;
    .param p4, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;
    .param p5, "commandManager"    # Lorg/catrobat/paintroid/command/CommandManager;
    .param p6, "drawTime"    # J

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

    .line 35
    nop

    .line 43
    nop

    .line 42
    invoke-direct/range {p0 .. p5}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;)V

    iput-wide p6, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->drawTime:J

    .line 49
    nop

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->rotationEnabled:Z

    .line 51
    return-void
.end method


# virtual methods
.method public drawShape(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->drawingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 55
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawShape(Landroid/graphics/Canvas;)V

    .line 57
    :cond_0
    return-void
.end method

.method public getDrawTime()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->drawTime:J

    return-wide v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 47
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public onClickOnButton()V
    .locals 7

    .line 71
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->drawingBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .local v1, "it":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 72
    .local v6, "$i$a$-let-ImportTool$onClickOnButton$1":I
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->highlightBox()V

    .line 73
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    .line 74
    nop

    .line 75
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->toolPosition:Landroid/graphics/PointF;

    .line 76
    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->boxWidth:F

    .line 77
    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->boxHeight:F

    .line 78
    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->boxRotation:F

    .line 73
    invoke-interface/range {v0 .. v5}, Lorg/catrobat/paintroid/command/CommandFactory;->createStampCommand(Landroid/graphics/Bitmap;Landroid/graphics/PointF;FFF)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 80
    .local v0, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v2, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 81
    .end local v0    # "command":Lorg/catrobat/paintroid/command/Command;
    nop

    .line 71
    .end local v1    # "it":Landroid/graphics/Bitmap;
    .end local v6    # "$i$a$-let-ImportTool$onClickOnButton$1":I
    nop

    .line 82
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 65
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 66
    if-eqz p1, :cond_0

    const-string v0, "BUNDLE_TOOL_DRAWING_BITMAP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 67
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->drawingBitmap:Landroid/graphics/Bitmap;

    .line 68
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 61
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->drawingBitmap:Landroid/graphics/Bitmap;

    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "BUNDLE_TOOL_DRAWING_BITMAP"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 62
    :cond_0
    return-void
.end method

.method public final setBitmapFromSource(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 87
    .local v0, "maximumBorderRatioWidth":F
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 88
    .local v2, "maximumBorderRatioHeight":F
    const/16 v1, 0x14

    int-to-float v1, v1

    .line 89
    .local v1, "minimumSize":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->boxWidth:F

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->boxHeight:F

    .line 91
    return-void
.end method

.method public setDrawTime(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 41
    iput-wide p1, p0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->drawTime:J

    return-void
.end method
