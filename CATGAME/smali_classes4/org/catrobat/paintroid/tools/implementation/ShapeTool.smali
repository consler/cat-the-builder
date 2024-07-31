.class public final Lorg/catrobat/paintroid/tools/implementation/ShapeTool;
.super Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;
.source "ShapeTool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\"H\u0016J \u0010-\u001a\u00020+2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000201H\u0014J\u0006\u00103\u001a\u00020\u0012J\u0008\u00104\u001a\u00020+H\u0016J\u0012\u00105\u001a\u00020+2\u0008\u00106\u001a\u0004\u0018\u000107H\u0016J\u0012\u00108\u001a\u00020+2\u0008\u00106\u001a\u0004\u0018\u000107H\u0016J\u0010\u00109\u001a\u00020+2\u0006\u0010:\u001a\u00020\u001aH\u0002J \u0010;\u001a\u00020+2\u0006\u0010<\u001a\u00020%2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000201H\u0002J\u000e\u0010=\u001a\u00020+2\u0006\u0010>\u001a\u00020\u0012R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u00020\'8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)\u00a8\u0006?"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/ShapeTool;",
        "Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;",
        "shapeToolOptionsView",
        "Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;",
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
        "(Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V",
        "baseShape",
        "Lorg/catrobat/paintroid/tools/drawable/DrawableShape;",
        "getDrawTime",
        "()J",
        "setDrawTime",
        "(J)V",
        "drawableFactory",
        "Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;",
        "shapeBitmapPaint",
        "Landroid/graphics/Paint;",
        "getShapeBitmapPaint",
        "()Landroid/graphics/Paint;",
        "shapeDrawType",
        "Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;",
        "shapeDrawable",
        "Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;",
        "shapeOutlineWidth",
        "",
        "shapePreviewPaint",
        "shapePreviewRect",
        "Landroid/graphics/RectF;",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "getToolType",
        "()Lorg/catrobat/paintroid/tools/ToolType;",
        "changePaintColor",
        "",
        "color",
        "drawBitmap",
        "canvas",
        "Landroid/graphics/Canvas;",
        "boxWidth",
        "",
        "boxHeight",
        "getBaseShape",
        "onClickOnButton",
        "onRestoreInstanceState",
        "bundle",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "preparePaint",
        "paint",
        "prepareShapeRectangle",
        "shapeRect",
        "setBaseShape",
        "shape",
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
.field private baseShape:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

.field private drawTime:J

.field private final drawableFactory:Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;

.field private final shapeBitmapPaint:Landroid/graphics/Paint;

.field private shapeDrawType:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

.field private shapeDrawable:Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

.field private shapeOutlineWidth:I

.field private final shapePreviewPaint:Landroid/graphics/Paint;

.field private final shapePreviewRect:Landroid/graphics/RectF;

.field private final shapeToolOptionsView:Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V
    .locals 6
    .param p1, "shapeToolOptionsView"    # Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;
    .param p2, "contextCallback"    # Lorg/catrobat/paintroid/tools/ContextCallback;
    .param p3, "toolOptionsViewController"    # Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
    .param p4, "toolPaint"    # Lorg/catrobat/paintroid/tools/ToolPaint;
    .param p5, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;
    .param p6, "commandManager"    # Lorg/catrobat/paintroid/command/CommandManager;
    .param p7, "drawTime"    # J

    const-string v0, "shapeToolOptionsView"

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

    .line 44
    nop

    .line 53
    nop

    .line 52
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;)V

    iput-wide p7, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->drawTime:J

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapePreviewPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapePreviewRect:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;

    invoke-direct {v0}, Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->drawableFactory:Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;

    .line 59
    sget-object v0, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->RECTANGLE:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->baseShape:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    .line 60
    sget-object v0, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;->FILL:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawType:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    .line 61
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->drawableFactory:Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->baseShape:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;->createDrawable(Lorg/catrobat/paintroid/tools/drawable/DrawableShape;)Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawable:Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    .line 62
    const/16 v0, 0x19

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeOutlineWidth:I

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeBitmapPaint:Landroid/graphics/Paint;

    .line 68
    nop

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->rotationEnabled:Z

    .line 70
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeToolOptionsView:Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;

    .line 71
    nop

    .line 72
    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool$1;

    invoke-direct {v0, p0, p5}, Lorg/catrobat/paintroid/tools/implementation/ShapeTool$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/ShapeTool;Lorg/catrobat/paintroid/tools/Workspace;)V

    check-cast v0, Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView$Callback;

    .line 71
    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;->setCallback(Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView$Callback;)V

    .line 88
    invoke-interface {p3}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->showDelayed()V

    .line 89
    return-void
.end method

.method public static final synthetic access$getShapeDrawType$p(Lorg/catrobat/paintroid/tools/implementation/ShapeTool;)Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/ShapeTool;

    .line 44
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawType:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    return-object v0
.end method

.method public static final synthetic access$getShapeOutlineWidth$p(Lorg/catrobat/paintroid/tools/implementation/ShapeTool;)I
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/ShapeTool;

    .line 44
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeOutlineWidth:I

    return v0
.end method

.method public static final synthetic access$setShapeDrawType$p(Lorg/catrobat/paintroid/tools/implementation/ShapeTool;Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/ShapeTool;
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    .line 44
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawType:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    return-void
.end method

.method public static final synthetic access$setShapeOutlineWidth$p(Lorg/catrobat/paintroid/tools/implementation/ShapeTool;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/ShapeTool;
    .param p1, "<set-?>"    # I

    .line 44
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeOutlineWidth:I

    return-void
.end method

.method private final preparePaint(Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 148
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawType:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/ShapeTool$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeOutlineWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 156
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 157
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 158
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeOutlineWidth:I

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 159
    .local v0, "antiAlias":Z
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .end local v0    # "antiAlias":Z
    goto :goto_1

    .line 150
    :cond_2
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 151
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 161
    :goto_1
    nop

    .line 162
    return-void
.end method

.method private final prepareShapeRectangle(Landroid/graphics/RectF;FF)V
    .locals 5
    .param p1, "shapeRect"    # Landroid/graphics/RectF;
    .param p2, "boxWidth"    # F
    .param p3, "boxHeight"    # F

    .line 137
    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 138
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getScale()F

    move-result v0

    const/4 v1, 0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getScale()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 139
    .local v0, "zoomScaling":F
    :goto_0
    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v1, v0

    .line 140
    .local v1, "shapeOffset":F
    const/high16 v2, 0x3f400000    # 0.75f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    move v2, v1

    :cond_1
    move v1, v2

    .line 141
    const/4 v2, 0x2

    int-to-float v2, v2

    div-float v3, p2, v2

    sub-float v3, v1, v3

    div-float v2, p3, v2

    sub-float v2, v1, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 142
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapePreviewPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v2, v3, :cond_2

    .line 143
    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeOutlineWidth:I

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p1, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 145
    :cond_2
    return-void
.end method


# virtual methods
.method public changePaintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 99
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->changePaintColor(I)V

    .line 100
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    .line 101
    return-void
.end method

.method protected drawBitmap(Landroid/graphics/Canvas;FF)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "boxWidth"    # F
    .param p3, "boxHeight"    # F

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapePreviewPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 131
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapePreviewPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->preparePaint(Landroid/graphics/Paint;)V

    .line 132
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapePreviewRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, p2, p3}, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->prepareShapeRectangle(Landroid/graphics/RectF;FF)V

    .line 133
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawable:Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapePreviewRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapePreviewPaint:Landroid/graphics/Paint;

    invoke-interface {v0, p1, v1, v2}, Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 134
    return-void
.end method

.method public final getBaseShape()Lorg/catrobat/paintroid/tools/drawable/DrawableShape;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->baseShape:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    return-object v0
.end method

.method public getDrawTime()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->drawTime:J

    return-wide v0
.end method

.method public final getShapeBitmapPaint()Landroid/graphics/Paint;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeBitmapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 66
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->SHAPE:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public onClickOnButton()V
    .locals 7

    .line 165
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->boxWidth:F

    neg-float v0, v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->boxWidth:F

    div-float/2addr v3, v1

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->toolPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_0

    cmpg-float v0, v3, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->boxHeight:F

    neg-float v0, v0

    div-float/2addr v0, v1

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->boxHeight:F

    div-float/2addr v3, v1

    add-float/2addr v2, v3

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    cmpg-float v0, v1, v2

    if-gtz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 167
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 168
    .local v0, "shapeRect":Landroid/graphics/RectF;
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeBitmapPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->preparePaint(Landroid/graphics/Paint;)V

    .line 169
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->boxWidth:F

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->boxHeight:F

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->prepareShapeRectangle(Landroid/graphics/RectF;FF)V

    .line 170
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    .line 171
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawable:Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    .line 172
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->toolPosition:Landroid/graphics/PointF;

    invoke-static {v3}, Lorg/catrobat/paintroid/tools/helper/ConversionKt;->toPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v3

    .line 173
    nop

    .line 174
    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->boxRotation:F

    .line 175
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeBitmapPaint:Landroid/graphics/Paint;

    .line 170
    move-object v4, v0

    invoke-interface/range {v1 .. v6}, Lorg/catrobat/paintroid/command/CommandFactory;->createGeometricFillCommand(Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;Landroid/graphics/Point;Landroid/graphics/RectF;FLandroid/graphics/Paint;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v1

    .line 177
    .local v1, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v2, v1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 178
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->highlightBox()V

    .line 180
    .end local v0    # "shapeRect":Landroid/graphics/RectF;
    .end local v1    # "command":Lorg/catrobat/paintroid/command/Command;
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 113
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 114
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "BASE_SHAPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    if-eqz v1, :cond_6

    .line 115
    .local v1, "newBaseShape":Lorg/catrobat/paintroid/tools/drawable/DrawableShape;
    nop

    .line 116
    if-eqz p1, :cond_1

    const-string v0, "SHAPE_DRAW_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    :cond_1
    check-cast v0, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    if-eqz v0, :cond_5

    .line 115
    nop

    .line 117
    .local v0, "newShapeDrawType":Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;
    if-eqz p1, :cond_4

    const-string v2, "OUTLINE_WIDTH"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 118
    .local v2, "newShapeOutlineWidth":I
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->baseShape:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawType:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    if-eq v3, v0, :cond_3

    .line 119
    :cond_2
    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->baseShape:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    .line 120
    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawType:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    .line 121
    iput v2, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeOutlineWidth:I

    .line 122
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->drawableFactory:Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;

    invoke-virtual {v3, v1}, Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;->createDrawable(Lorg/catrobat/paintroid/tools/drawable/DrawableShape;)Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    move-result-object v3

    iput-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawable:Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    .line 123
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeToolOptionsView:Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;

    invoke-interface {v3, v1}, Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;->setShapeActivated(Lorg/catrobat/paintroid/tools/drawable/DrawableShape;)V

    .line 124
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeToolOptionsView:Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;

    invoke-interface {v3, v0}, Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;->setDrawTypeActivated(Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;)V

    .line 125
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeToolOptionsView:Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;

    invoke-interface {v3, v2}, Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;->setShapeOutlineWidth(I)V

    .line 127
    :cond_3
    return-void

    .line 117
    .end local v2    # "newShapeOutlineWidth":I
    :cond_4
    return-void

    .line 116
    .end local v0    # "newShapeDrawType":Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;
    :cond_5
    return-void

    .line 114
    .end local v1    # "newBaseShape":Lorg/catrobat/paintroid/tools/drawable/DrawableShape;
    :cond_6
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 104
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "$this$apply":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 106
    .local v1, "$i$a$-apply-ShapeTool$onSaveInstanceState$1":I
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->baseShape:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    check-cast v2, Ljava/io/Serializable;

    const-string v3, "BASE_SHAPE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 107
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawType:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    check-cast v2, Ljava/io/Serializable;

    const-string v3, "SHAPE_DRAW_TYPE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 108
    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeOutlineWidth:I

    const-string v3, "OUTLINE_WIDTH"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    nop

    .line 105
    .end local v0    # "$this$apply":Landroid/os/Bundle;
    .end local v1    # "$i$a$-apply-ShapeTool$onSaveInstanceState$1":I
    nop

    .line 110
    :cond_0
    return-void
.end method

.method public final setBaseShape(Lorg/catrobat/paintroid/tools/drawable/DrawableShape;)V
    .locals 1
    .param p1, "shape"    # Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->baseShape:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    .line 95
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->drawableFactory:Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;->createDrawable(Lorg/catrobat/paintroid/tools/drawable/DrawableShape;)Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawable:Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    .line 96
    return-void
.end method

.method public setDrawTime(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 51
    iput-wide p1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->drawTime:J

    return-void
.end method
