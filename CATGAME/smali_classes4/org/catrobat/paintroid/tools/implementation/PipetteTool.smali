.class public final Lorg/catrobat/paintroid/tools/implementation/PipetteTool;
.super Lorg/catrobat/paintroid/tools/implementation/BaseTool;
.source "PipetteTool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0012\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0012\u0010%\u001a\u00020\u001e2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u001a\u0010&\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010\'\u001a\u00020\"H\u0016J\u0012\u0010(\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0012\u0010)\u001a\u00020\u001e2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0008\u0010*\u001a\u00020\u001eH\u0014J\u0012\u0010+\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0002J\u0010\u0010,\u001a\u00020$2\u0006\u0010#\u001a\u00020$H\u0016J\u0008\u0010-\u001a\u00020\u001eH\u0002R\u001a\u0010\u0011\u001a\u00020\u0012X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006."
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
        "idlingResource",
        "Landroidx/test/espresso/idling/CountingIdlingResource;",
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "listener",
        "Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;",
        "(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)V",
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
        "handleDownAnimations",
        "handleMove",
        "shouldAnimate",
        "handleUp",
        "handleUpAnimations",
        "resetInternalState",
        "setColor",
        "toolPositionCoordinates",
        "updateSurfaceBitmap",
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

.field private final listener:Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

.field private surfaceBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)V
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

    const-string v0, "listener"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct/range {p0 .. p6}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V

    .line 40
    iput-object p7, p0, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->listener:Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

    .line 57
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->updateSurfaceBitmap()V

    return-void
.end method

.method private final setColor(Landroid/graphics/PointF;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 75
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/tools/Workspace;->contains(Landroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->surfaceBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object p1, v2

    goto :goto_0

    :cond_1
    iget v3, p1, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    invoke-virtual {v1, v3, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 80
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->listener:Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;->colorChanged(I)V

    .line 81
    move-object v1, p0

    check-cast v1, Lorg/catrobat/paintroid/tools/Tool;

    const/4 v3, 0x2

    invoke-static {v1, p1, v0, v3, v2}, Lorg/catrobat/paintroid/tools/Tool$DefaultImpls;->changePaintColor$default(Lorg/catrobat/paintroid/tools/Tool;IZILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private final updateSurfaceBitmap()V
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getBitmapOfAllLayers()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->surfaceBitmap:Landroid/graphics/Bitmap;

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

    .line 47
    iget-wide v0, p0, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->drawTime:J

    return-wide v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 45
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->PIPETTE:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public handleDown(Landroid/graphics/PointF;)Z
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->setColor(Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public handleDownAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->handleDown(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public handleMove(Landroid/graphics/PointF;Z)Z
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->setColor(Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public handleUp(Landroid/graphics/PointF;)Z
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->setColor(Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public handleUpAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->handleUp(Landroid/graphics/PointF;)Z

    return-void
.end method

.method protected resetInternalState()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->updateSurfaceBitmap()V

    return-void
.end method

.method public setDrawTime(J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;->drawTime:J

    return-void
.end method

.method public toolPositionCoordinates(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
