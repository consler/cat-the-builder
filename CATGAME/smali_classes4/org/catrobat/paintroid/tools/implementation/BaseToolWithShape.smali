.class public abstract Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;
.super Lorg/catrobat/paintroid/tools/implementation/BaseTool;
.source "BaseToolWithShape.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B7\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH&J \u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0014J(\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020 2\u0006\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020\u00142\u0006\u0010\'\u001a\u00020\u0014H\u0016J\u000e\u0010(\u001a\u00020 2\u0006\u0010)\u001a\u00020 J\u001e\u0010*\u001a\u00020 2\u0006\u0010+\u001a\u00020 2\u0006\u0010,\u001a\u00020 2\u0006\u0010-\u001a\u00020 J\u0008\u0010.\u001a\u00020\u001bH&J\u0012\u0010/\u001a\u00020\u001b2\u0008\u00100\u001a\u0004\u0018\u000101H\u0016J\u0012\u00102\u001a\u00020\u001b2\u0008\u00100\u001a\u0004\u0018\u000101H\u0016R\u0010\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0018\u0010\u0019\u00a8\u00063"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;",
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
        "(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V",
        "linePaint",
        "Landroid/graphics/Paint;",
        "metrics",
        "Landroid/util/DisplayMetrics;",
        "primaryShapeColor",
        "",
        "secondaryShapeColor",
        "toolPosition",
        "Landroid/graphics/PointF;",
        "getToolPosition$annotations",
        "()V",
        "drawShape",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawToolSpecifics",
        "boxWidth",
        "",
        "boxHeight",
        "getAutoScrollDirection",
        "Landroid/graphics/Point;",
        "pointX",
        "pointY",
        "screenWidth",
        "screenHeight",
        "getInverselyProportionalSizeForZoom",
        "defaultSize",
        "getStrokeWidthForZoom",
        "defaultStrokeWidth",
        "minStrokeWidth",
        "maxStrokeWidth",
        "onClickOnButton",
        "onRestoreInstanceState",
        "bundle",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
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
.field public final linePaint:Landroid/graphics/Paint;

.field public final metrics:Landroid/util/DisplayMetrics;

.field public primaryShapeColor:I

.field public secondaryShapeColor:I

.field public toolPosition:Landroid/graphics/PointF;


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

    .line 49
    invoke-direct/range {p0 .. p6}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V

    .line 64
    sget p2, Lorg/catrobat/paintroid/R$color;->pocketpaint_main_rectangle_tool_primary_color:I

    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/tools/ContextCallback;->getColor(I)I

    move-result p2

    iput p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->primaryShapeColor:I

    .line 67
    sget p2, Lorg/catrobat/paintroid/R$color;->pocketpaint_colorAccentAlpha60:I

    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/tools/ContextCallback;->getColor(I)I

    move-result p2

    iput p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->secondaryShapeColor:I

    .line 73
    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/ContextCallback;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->metrics:Landroid/util/DisplayMetrics;

    .line 76
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/Workspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/Perspective;->getScale()F

    move-result p2

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p3

    if-lez p2, :cond_0

    .line 78
    new-instance p2, Landroid/graphics/PointF;

    .line 79
    iget p3, p1, Lorg/catrobat/paintroid/ui/Perspective;->surfaceCenterX:F

    iget p4, p1, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationX:F

    sub-float/2addr p3, p4

    .line 80
    iget p4, p1, Lorg/catrobat/paintroid/ui/Perspective;->surfaceCenterY:F

    iget p1, p1, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationY:F

    sub-float/2addr p4, p1

    .line 78
    invoke-direct {p2, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 83
    :cond_0
    new-instance p2, Landroid/graphics/PointF;

    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, p3

    invoke-direct {p2, p1, p4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 77
    :goto_0
    iput-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->toolPosition:Landroid/graphics/PointF;

    .line 85
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->linePaint:Landroid/graphics/Paint;

    .line 86
    iget p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->primaryShapeColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x0

    .line 87
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public static synthetic getToolPosition$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract drawShape(Landroid/graphics/Canvas;)V
.end method

.method protected drawToolSpecifics(Landroid/graphics/Canvas;FF)V
    .locals 0

    const-string p2, "canvas"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getAutoScrollDirection(FFII)Landroid/graphics/Point;
    .locals 1

    .line 128
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->toolPosition:Landroid/graphics/PointF;

    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/tools/Workspace;->getSurfacePointFromCanvasPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 129
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->scrollBehavior:Lorg/catrobat/paintroid/tools/common/ScrollBehavior;

    .line 130
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 131
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 129
    invoke-interface {p2, v0, p1, p3, p4}, Lorg/catrobat/paintroid/tools/common/ScrollBehavior;->getScrollDirection(FFII)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public final getInverselyProportionalSizeForZoom(F)F
    .locals 2

    .line 102
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getScale()F

    move-result v0

    .line 103
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    return p1
.end method

.method public final getStrokeWidthForZoom(FFF)F
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getScale()F

    move-result v0

    div-float/2addr p1, v0

    .line 98
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method public abstract onClickOnButton()V
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 115
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->toolPosition:Landroid/graphics/PointF;

    const-string v1, "TOOL_POSITION_X"

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 118
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->toolPosition:Landroid/graphics/PointF;

    const-string v1, "TOOL_POSITION_Y"

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 107
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const-string v1, "TOOL_POSITION_X"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 110
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const-string v1, "TOOL_POSITION_Y"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :goto_0
    return-void
.end method
