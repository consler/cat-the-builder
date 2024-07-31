.class public abstract Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;
.super Lorg/catrobat/paintroid/tools/implementation/BaseTool;
.source "BaseToolWithShape.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH&J \u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0014J(\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u0012H\u0016J\u000e\u0010&\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020\u001eJ\u001e\u0010(\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020\u001e2\u0006\u0010+\u001a\u00020\u001eJ\u0008\u0010,\u001a\u00020\u0019H&J\u0012\u0010-\u001a\u00020\u00192\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u0012\u00100\u001a\u00020\u00192\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016R\u0010\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\u00020\u00158\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0016\u0010\u0017\u00a8\u00061"
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
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;)V",
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
.field public final linePaint:Landroid/graphics/Paint;

.field public final metrics:Landroid/util/DisplayMetrics;

.field public primaryShapeColor:I

.field public secondaryShapeColor:I

.field public final toolPosition:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;)V
    .locals 5
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

    .line 41
    nop

    .line 48
    nop

    .line 49
    nop

    .line 50
    nop

    .line 51
    nop

    .line 52
    nop

    .line 47
    invoke-direct/range {p0 .. p5}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;)V

    .line 61
    sget v0, Lorg/catrobat/paintroid/R$color;->pocketpaint_main_rectangle_tool_primary_color:I

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/ContextCallback;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->primaryShapeColor:I

    .line 64
    sget v0, Lorg/catrobat/paintroid/R$color;->pocketpaint_colorAccent:I

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/ContextCallback;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->secondaryShapeColor:I

    .line 70
    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/ContextCallback;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->metrics:Landroid/util/DisplayMetrics;

    .line 72
    nop

    .line 73
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/Workspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    .line 74
    .local v0, "perspective":Lorg/catrobat/paintroid/ui/Perspective;
    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/Perspective;->getScale()F

    move-result v1

    const/4 v2, 0x1

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 75
    new-instance v1, Landroid/graphics/PointF;

    .line 76
    iget v2, v0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceCenterX:F

    iget v3, v0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationX:F

    sub-float/2addr v2, v3

    .line 77
    iget v3, v0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceCenterY:F

    iget v4, v0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceTranslationY:F

    sub-float/2addr v3, v4

    .line 75
    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 80
    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 74
    :goto_0
    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->toolPosition:Landroid/graphics/PointF;

    .line 82
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->linePaint:Landroid/graphics/Paint;

    .line 83
    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->primaryShapeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    .end local v0    # "perspective":Lorg/catrobat/paintroid/ui/Perspective;
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
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "boxWidth"    # F
    .param p3, "boxHeight"    # F

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public getAutoScrollDirection(FFII)Landroid/graphics/Point;
    .locals 4
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F
    .param p3, "screenWidth"    # I
    .param p4, "screenHeight"    # I

    .line 124
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->toolPosition:Landroid/graphics/PointF;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/Workspace;->getSurfacePointFromCanvasPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 125
    .local v0, "surfaceToolPosition":Landroid/graphics/PointF;
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->scrollBehavior:Lorg/catrobat/paintroid/tools/common/ScrollBehavior;

    .line 126
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 127
    iget v3, v0, Landroid/graphics/PointF;->y:F

    .line 128
    nop

    .line 129
    nop

    .line 125
    invoke-interface {v1, v2, v3, p3, p4}, Lorg/catrobat/paintroid/tools/common/ScrollBehavior;->getScrollDirection(FFII)Landroid/graphics/Point;

    move-result-object v1

    return-object v1
.end method

.method public final getInverselyProportionalSizeForZoom(F)F
    .locals 2
    .param p1, "defaultSize"    # F

    .line 98
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getScale()F

    move-result v0

    .line 99
    .local v0, "applicationScale":F
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    return v1
.end method

.method public final getStrokeWidthForZoom(FFF)F
    .locals 2
    .param p1, "defaultStrokeWidth"    # F
    .param p2, "minStrokeWidth"    # F
    .param p3, "maxStrokeWidth"    # F

    .line 93
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    .line 94
    .local v0, "strokeWidth":F
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method public abstract onClickOnButton()V
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 111
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 112
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "$this$apply":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 113
    .local v1, "$i$a$-apply-BaseToolWithShape$onRestoreInstanceState$1":I
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->toolPosition:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    const-string v4, "TOOL_POSITION_X"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 114
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->toolPosition:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    const-string v4, "TOOL_POSITION_Y"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 115
    nop

    .line 112
    .end local v0    # "$this$apply":Landroid/os/Bundle;
    .end local v1    # "$i$a$-apply-BaseToolWithShape$onRestoreInstanceState$1":I
    nop

    .line 116
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 103
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 104
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "$this$apply":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 105
    .local v1, "$i$a$-apply-BaseToolWithShape$onSaveInstanceState$1":I
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->toolPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const-string v3, "TOOL_POSITION_X"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 106
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->toolPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const-string v3, "TOOL_POSITION_Y"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 107
    nop

    .line 104
    .end local v0    # "$this$apply":Landroid/os/Bundle;
    .end local v1    # "$i$a$-apply-BaseToolWithShape$onSaveInstanceState$1":I
    nop

    .line 108
    :cond_0
    return-void
.end method
