.class public final Lorg/catrobat/paintroid/tools/implementation/PipetteTool;
.super Lorg/catrobat/paintroid/tools/implementation/BaseTool;
.source "PipetteTool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0012\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0012\u0010#\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0012\u0010$\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0008\u0010%\u001a\u00020\u001cH\u0014J\u0012\u0010&\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0002J\u0008\u0010\'\u001a\u00020\u001cH\u0002R\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006("
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/PipetteTool;",
        "Lorg/catrobat/paintroid/tools/implementation/BaseTool;",
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
        "listener",
        "Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;",
        "(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)V",
        "drawTime",
        "",
        "getDrawTime",
        "()J",
        "setDrawTime",
        "(J)V",
        "surfaceBitmap",
        "Landroid/graphics/Bitmap;",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "getToolType",
        "()Lorg/catrobat/paintroid/tools/ToolType;",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "handleDown",
        "",
        "coordinate",
        "Landroid/graphics/PointF;",
        "handleMove",
        "handleUp",
        "resetInternalState",
        "setColor",
        "updateSurfaceBitmap",
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

.field private final listener:Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

.field private surfaceBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)V
    .locals 1
    .param p1, "contextCallback"    # Lorg/catrobat/paintroid/tools/ContextCallback;
    .param p2, "toolOptionsViewController"    # Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
    .param p3, "toolPaint"    # Lorg/catrobat/paintroid/tools/ToolPaint;
    .param p4, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;
    .param p5, "commandManager"    # Lorg/catrobat/paintroid/command/CommandManager;
    .param p6, "listener"    # Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

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

    const-string v0, "listener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    nop

    .line 39
    invoke-direct/range {p0 .. p5}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;)V

    iput-object p6, p0, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->listener:Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

    .line 47
    nop

    .line 48
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->updateSurfaceBitmap()V

    .line 49
    return-void
.end method

.method private final setColor(Landroid/graphics/PointF;)Z
    .locals 3
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    .line 64
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/tools/Workspace;->contains(Landroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    nop

    .line 68
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->surfaceBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 67
    nop

    .line 69
    .local v0, "color":I
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->listener:Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;->colorChanged(I)V

    .line 70
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->changePaintColor(I)V

    .line 71
    const/4 v1, 0x1

    return v1

    .line 68
    .end local v0    # "color":I
    :cond_1
    return v0

    .line 65
    :cond_2
    :goto_0
    return v0
.end method

.method private final updateSurfaceBitmap()V
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getBitmapOfAllLayers()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->surfaceBitmap:Landroid/graphics/Bitmap;

    .line 76
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public getDrawTime()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->drawTime:J

    return-wide v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 43
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->PIPETTE:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public handleDown(Landroid/graphics/PointF;)Z
    .locals 1
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    .line 53
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->setColor(Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method public handleMove(Landroid/graphics/PointF;)Z
    .locals 1
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    .line 55
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->setColor(Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method public handleUp(Landroid/graphics/PointF;)Z
    .locals 1
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    .line 57
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->setColor(Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method protected resetInternalState()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->updateSurfaceBitmap()V

    .line 61
    return-void
.end method

.method public setDrawTime(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 45
    iput-wide p1, p0, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->drawTime:J

    return-void
.end method
