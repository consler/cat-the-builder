.class public final Lorg/catrobat/paintroid/tools/implementation/StampTool;
.super Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;
.source "StampTool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0006\u0010\u001d\u001a\u00020\u001eJ\u0008\u0010\u001f\u001a\u00020\u001eH\u0002J\u0008\u0010 \u001a\u00020\u001eH\u0016J\u0012\u0010!\u001a\u00020\u001e2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0012\u0010$\u001a\u00020\u001e2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0008\u0010%\u001a\u00020\u001eH\u0002J\u0008\u0010&\u001a\u00020\u001eH\u0014R\u001a\u0010\u000e\u001a\u00020\u000fX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00168BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\'"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/StampTool;",
        "Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;",
        "stampToolOptionsView",
        "Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;",
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
        "(Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V",
        "getDrawTime",
        "()J",
        "setDrawTime",
        "(J)V",
        "isDrawingBitmapReusable",
        "",
        "()Z",
        "readyForPaste",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "getToolType",
        "()Lorg/catrobat/paintroid/tools/ToolType;",
        "copyBoxContent",
        "",
        "cutBoxContent",
        "onClickOnButton",
        "onRestoreInstanceState",
        "bundle",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "pasteBoxContent",
        "resetInternalState",
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

.field private readyForPaste:Z

.field private final stampToolOptionsView:Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V
    .locals 6
    .param p1, "stampToolOptionsView"    # Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;
    .param p2, "contextCallback"    # Lorg/catrobat/paintroid/tools/ContextCallback;
    .param p3, "toolOptionsViewController"    # Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
    .param p4, "toolPaint"    # Lorg/catrobat/paintroid/tools/ToolPaint;
    .param p5, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;
    .param p6, "commandManager"    # Lorg/catrobat/paintroid/command/CommandManager;
    .param p7, "drawTime"    # J

    const-string v0, "stampToolOptionsView"

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

    .line 37
    nop

    .line 46
    nop

    .line 45
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;)V

    iput-wide p7, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->drawTime:J

    .line 61
    nop

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->rotationEnabled:Z

    .line 63
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->stampToolOptionsView:Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;

    .line 64
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->boxWidth:F

    float-to-int v0, v0

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->boxHeight:F

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/tools/implementation/StampTool;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/StampTool$callback$1;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/tools/implementation/StampTool$callback$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/StampTool;)V

    check-cast v0, Lorg/catrobat/paintroid/tools/options/StampToolOptionsView$Callback;

    .line 84
    .local v0, "callback":Lorg/catrobat/paintroid/tools/options/StampToolOptionsView$Callback;
    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;->setCallback(Lorg/catrobat/paintroid/tools/options/StampToolOptionsView$Callback;)V

    .line 85
    invoke-interface {p3}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->showDelayed()V

    .line 86
    .end local v0    # "callback":Lorg/catrobat/paintroid/tools/options/StampToolOptionsView$Callback;
    return-void
.end method

.method public static final synthetic access$cutBoxContent(Lorg/catrobat/paintroid/tools/implementation/StampTool;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/StampTool;

    .line 37
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/StampTool;->cutBoxContent()V

    return-void
.end method

.method public static final synthetic access$getStampToolOptionsView$p(Lorg/catrobat/paintroid/tools/implementation/StampTool;)Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/StampTool;

    .line 37
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->stampToolOptionsView:Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;

    return-object v0
.end method

.method public static final synthetic access$pasteBoxContent(Lorg/catrobat/paintroid/tools/implementation/StampTool;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/StampTool;

    .line 37
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/StampTool;->pasteBoxContent()V

    return-void
.end method

.method private final cutBoxContent()V
    .locals 5

    .line 122
    nop

    .line 123
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->toolPosition:Landroid/graphics/PointF;

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->boxWidth:F

    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->boxHeight:F

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->boxRotation:F

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/catrobat/paintroid/command/CommandFactory;->createCutCommand(Landroid/graphics/PointF;FFF)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 122
    nop

    .line 124
    .local v0, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 125
    return-void
.end method

.method private final isDrawingBitmapReusable()Z
    .locals 5

    .line 52
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->drawingBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .local v0, "it":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 53
    .local v2, "$i$a$-let-StampTool$isDrawingBitmapReusable$1":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->boxWidth:F

    float-to-int v4, v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->boxHeight:F

    float-to-int v4, v4

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 55
    .end local v0    # "it":Landroid/graphics/Bitmap;
    .end local v2    # "$i$a$-let-StampTool$isDrawingBitmapReusable$1":I
    :cond_1
    return v1
.end method

.method private final pasteBoxContent()V
    .locals 7

    .line 109
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->drawingBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .local v1, "it":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 110
    .local v6, "$i$a$-let-StampTool$pasteBoxContent$1":I
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    .line 111
    nop

    .line 112
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->toolPosition:Landroid/graphics/PointF;

    .line 113
    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->boxWidth:F

    .line 114
    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->boxHeight:F

    .line 115
    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->boxRotation:F

    .line 110
    invoke-interface/range {v0 .. v5}, Lorg/catrobat/paintroid/command/CommandFactory;->createStampCommand(Landroid/graphics/Bitmap;Landroid/graphics/PointF;FFF)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 117
    .local v0, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v2, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 118
    .end local v0    # "command":Lorg/catrobat/paintroid/command/Command;
    nop

    .line 109
    .end local v1    # "it":Landroid/graphics/Bitmap;
    .end local v6    # "$i$a$-let-StampTool$pasteBoxContent$1":I
    nop

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public final copyBoxContent()V
    .locals 9

    .line 89
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/StampTool;->isDrawingBitmapReusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->drawingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 92
    :cond_0
    nop

    .line 93
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->boxWidth:F

    float-to-int v0, v0

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->boxHeight:F

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->drawingBitmap:Landroid/graphics/Bitmap;

    .line 94
    :cond_1
    :goto_0
    nop

    .line 95
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getBitmapOfCurrentLayer()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    .local v0, "layerBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 97
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->drawingBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .local v1, "it":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 98
    .local v2, "$i$a$-let-StampTool$copyBoxContent$1":I
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v3, "$this$apply":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    .line 99
    .local v4, "$i$a$-apply-StampTool$copyBoxContent$1$1":I
    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->toolPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    neg-float v5, v5

    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->boxWidth:F

    const/4 v7, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->toolPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    neg-float v6, v6

    iget v8, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->boxHeight:F

    div-float/2addr v8, v7

    add-float/2addr v6, v8

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 100
    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->boxRotation:F

    neg-float v5, v5

    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->toolPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->toolPosition:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 101
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 102
    nop

    .line 98
    .end local v3    # "$this$apply":Landroid/graphics/Canvas;
    .end local v4    # "$i$a$-apply-StampTool$copyBoxContent$1$1":I
    nop

    .line 105
    .end local v1    # "it":Landroid/graphics/Bitmap;
    .end local v2    # "$i$a$-let-StampTool$copyBoxContent$1":I
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->readyForPaste:Z

    .line 106
    return-void
.end method

.method public getDrawTime()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->drawTime:J

    return-wide v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 59
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->STAMP:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public onClickOnButton()V
    .locals 2

    .line 128
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->readyForPaste:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->drawingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/StampTool;->boxIntersectsWorkspace()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/StampTool;->pasteBoxContent()V

    .line 132
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/StampTool;->highlightBox()V

    goto :goto_1

    .line 129
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    sget v1, Lorg/catrobat/paintroid/R$string;->stamp_tool_copy_hint:I

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/ContextCallback;->showNotification(I)V

    .line 133
    :cond_2
    :goto_1
    nop

    .line 134
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 144
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 145
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "$this$apply":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 146
    .local v1, "$i$a$-apply-StampTool$onRestoreInstanceState$1":I
    iget-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->readyForPaste:Z

    const-string v3, "BUNDLE_TOOL_READY_FOR_PASTE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->readyForPaste:Z

    .line 147
    const-string v2, "BUNDLE_TOOL_DRAWING_BITMAP"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->drawingBitmap:Landroid/graphics/Bitmap;

    .line 148
    nop

    .line 145
    .end local v0    # "$this$apply":Landroid/os/Bundle;
    .end local v1    # "$i$a$-apply-StampTool$onRestoreInstanceState$1":I
    nop

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->stampToolOptionsView:Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;

    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->readyForPaste:Z

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;->enablePaste(Z)V

    .line 150
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 138
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->drawingBitmap:Landroid/graphics/Bitmap;

    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "BUNDLE_TOOL_DRAWING_BITMAP"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 140
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->readyForPaste:Z

    const-string v1, "BUNDLE_TOOL_READY_FOR_PASTE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    :cond_1
    return-void
.end method

.method protected resetInternalState()V
    .locals 0

    .line 136
    return-void
.end method

.method public setDrawTime(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 44
    iput-wide p1, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool;->drawTime:J

    return-void
.end method
