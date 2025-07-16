.class public final Lorg/catrobat/paintroid/tools/implementation/ShapeTool;
.super Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;
.source "ShapeTool.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/tools/implementation/ShapeTool$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\u0018\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020$2\u0006\u0010/\u001a\u000200H\u0016J \u00101\u001a\u00020-2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000205H\u0014J\u0006\u00107\u001a\u00020\u0014J\u0012\u00108\u001a\u00020-2\u0008\u00109\u001a\u0004\u0018\u00010:H\u0016J\u0012\u0010;\u001a\u00020-2\u0008\u00109\u001a\u0004\u0018\u00010:H\u0016J\u0008\u0010<\u001a\u00020-H\u0016J\u0012\u0010=\u001a\u00020-2\u0008\u0010>\u001a\u0004\u0018\u00010?H\u0016J\u0012\u0010@\u001a\u00020-2\u0008\u0010>\u001a\u0004\u0018\u00010?H\u0016J\u0010\u0010A\u001a\u00020-2\u0006\u0010B\u001a\u00020\u001cH\u0002J \u0010C\u001a\u00020-2\u0006\u0010D\u001a\u00020\'2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000205H\u0002J\u000e\u0010E\u001a\u00020-2\u0006\u0010F\u001a\u00020\u0014J\u0010\u0010G\u001a\u00020:2\u0006\u00109\u001a\u00020:H\u0016R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001b\u001a\u00020\u001c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u00020)8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+\u00a8\u0006H"
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
        "idlingResource",
        "Landroidx/test/espresso/idling/CountingIdlingResource;",
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "drawTime",
        "",
        "(Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V",
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
        "invalidate",
        "",
        "drawBitmap",
        "canvas",
        "Landroid/graphics/Canvas;",
        "boxWidth",
        "",
        "boxHeight",
        "getBaseShape",
        "handleDownAnimations",
        "coordinate",
        "Landroid/graphics/PointF;",
        "handleUpAnimations",
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
.method public constructor <init>(Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V
    .locals 11

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p5

    const-string v0, "shapeToolOptionsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallback"

    move-object v1, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    move-object v10, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPaint"

    move-object v3, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idlingResource"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p3

    move-object/from16 v4, p5

    .line 56
    invoke-direct/range {v0 .. v6}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V

    move-wide/from16 v0, p8

    .line 55
    iput-wide v0, v7, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->drawTime:J

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapePreviewPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapePreviewRect:Landroid/graphics/RectF;

    .line 62
    new-instance v0, Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;

    invoke-direct {v0}, Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;-><init>()V

    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->drawableFactory:Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;

    .line 63
    sget-object v1, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->RECTANGLE:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    iput-object v1, v7, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->baseShape:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    .line 64
    sget-object v1, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;->FILL:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    iput-object v1, v7, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawType:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    .line 65
    iget-object v1, v7, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->baseShape:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;->createDrawable(Lorg/catrobat/paintroid/tools/drawable/DrawableShape;)Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawable:Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    const/16 v0, 0x19

    .line 66
    iput v0, v7, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeOutlineWidth:I

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeBitmapPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, v7, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->rotationEnabled:Z

    .line 84
    iput-object v8, v7, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeToolOptionsView:Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;

    .line 86
    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool$1;

    invoke-direct {v0, p0, v9}, Lorg/catrobat/paintroid/tools/implementation/ShapeTool$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/ShapeTool;Lorg/catrobat/paintroid/tools/Workspace;)V

    check-cast v0, Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView$Callback;

    .line 85
    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;->setCallback(Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView$Callback;)V

    .line 102
    invoke-interface {p3}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->showDelayed()V

    return-void
.end method

.method public static final synthetic access$setShapeDrawType$p(Lorg/catrobat/paintroid/tools/implementation/ShapeTool;Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawType:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    return-void
.end method

.method public static final synthetic access$setShapeOutlineWidth$p(Lorg/catrobat/paintroid/tools/implementation/ShapeTool;I)V
    .locals 0

    .line 47
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeOutlineWidth:I

    return-void
.end method

.method private final preparePaint(Landroid/graphics/Paint;)V
    .locals 3

    .line 162
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

    .line 168
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeOutlineWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 171
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result v0

    const/4 v2, 0x4

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 173
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeOutlineWidth:I

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 174
    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_1

    .line 164
    :cond_2
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 165
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :goto_1
    return-void
.end method

.method private final prepareShapeRectangle(Landroid/graphics/RectF;FF)V
    .locals 3

    .line 151
    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 152
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getScale()F

    move-result v1

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr p2, v1

    sub-float p2, v0, p2

    div-float/2addr p3, v1

    sub-float/2addr v0, p3

    .line 155
    invoke-virtual {p1, p2, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 156
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapePreviewPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p2

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p2, p3, :cond_2

    .line 157
    iget p2, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeOutlineWidth:I

    int-to-float p3, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-virtual {p1, p3, p2}, Landroid/graphics/RectF;->inset(FF)V

    :cond_2
    return-void
.end method


# virtual methods
.method public changePaintColor(IZ)V
    .locals 0

    .line 113
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->changePaintColor(IZ)V

    if-eqz p2, :cond_0

    .line 114
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    :cond_0
    return-void
.end method

.method protected drawBitmap(Landroid/graphics/Canvas;FF)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapePreviewPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 145
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapePreviewPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->preparePaint(Landroid/graphics/Paint;)V

    .line 146
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapePreviewRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, p2, p3}, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->prepareShapeRectangle(Landroid/graphics/RectF;FF)V

    .line 147
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawable:Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapePreviewRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapePreviewPaint:Landroid/graphics/Paint;

    invoke-interface {p2, p1, p3, v0}, Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getBaseShape()Lorg/catrobat/paintroid/tools/drawable/DrawableShape;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->baseShape:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    return-object v0
.end method

.method public getDrawTime()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->drawTime:J

    return-wide v0
.end method

.method public final getShapeBitmapPaint()Landroid/graphics/Paint;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeBitmapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 70
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->SHAPE:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public handleDownAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->handleDown(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public handleUpAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->handleUp(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public onClickOnButton()V
    .locals 8

    .line 180
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

    cmpg-float v0, v0, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gtz v0, :cond_0

    cmpg-float v0, v3, v2

    if-gtz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    if-eqz v0, :cond_2

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

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    cmpg-float v0, v1, v2

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-eqz v4, :cond_2

    .line 181
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 182
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 183
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeBitmapPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->preparePaint(Landroid/graphics/Paint;)V

    .line 184
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->boxWidth:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->boxHeight:F

    invoke-direct {p0, v5, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->prepareShapeRectangle(Landroid/graphics/RectF;FF)V

    .line 185
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    .line 186
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawable:Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    .line 187
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->toolPosition:Landroid/graphics/PointF;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/helper/ConversionKt;->toPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v4

    .line 189
    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->boxRotation:F

    .line 190
    iget-object v7, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeBitmapPaint:Landroid/graphics/Paint;

    .line 185
    invoke-interface/range {v2 .. v7}, Lorg/catrobat/paintroid/command/CommandFactory;->createGeometricFillCommand(Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;Landroid/graphics/Point;Landroid/graphics/RectF;FLandroid/graphics/Paint;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 193
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->highlightBox()V

    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 127
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "BASE_SHAPE"

    .line 128
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    :goto_0
    check-cast v1, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    const-string v2, "SHAPE_DRAW_TYPE"

    .line 130
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    :goto_1
    check-cast v2, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    if-nez v2, :cond_3

    return-void

    :cond_3
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "OUTLINE_WIDTH"

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 132
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->baseShape:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawType:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    if-eq v0, v2, :cond_7

    .line 133
    :cond_6
    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->baseShape:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    .line 134
    iput-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawType:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    .line 135
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeOutlineWidth:I

    .line 136
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->drawableFactory:Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;->createDrawable(Lorg/catrobat/paintroid/tools/drawable/DrawableShape;)Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawable:Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    .line 137
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeToolOptionsView:Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;->setShapeActivated(Lorg/catrobat/paintroid/tools/drawable/DrawableShape;)V

    .line 138
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeToolOptionsView:Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;

    invoke-interface {v0, v2}, Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;->setDrawTypeActivated(Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;)V

    .line 139
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeToolOptionsView:Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;->setShapeOutlineWidth(I)V

    :cond_7
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 118
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->baseShape:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "BASE_SHAPE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 121
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawType:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "SHAPE_DRAW_TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "OUTLINE_WIDTH"

    .line 122
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeOutlineWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public final setBaseShape(Lorg/catrobat/paintroid/tools/drawable/DrawableShape;)V
    .locals 1

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->baseShape:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    .line 109
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->drawableFactory:Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;->createDrawable(Lorg/catrobat/paintroid/tools/drawable/DrawableShape;)Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->shapeDrawable:Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    return-void
.end method

.method public setDrawTime(J)V
    .locals 0

    .line 55
    iput-wide p1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->drawTime:J

    return-void
.end method

.method public toolPositionCoordinates(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
