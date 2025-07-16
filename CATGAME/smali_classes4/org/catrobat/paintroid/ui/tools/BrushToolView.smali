.class public final Lorg/catrobat/paintroid/ui/tools/BrushToolView;
.super Landroid/view/View;
.source "BrushToolView.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/BrushToolPreview;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/ui/tools/BrushToolView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrushToolView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrushToolView.kt\norg/catrobat/paintroid/ui/tools/BrushToolView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n1#2:141\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\n\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005B\u001b\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J0\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\u0018\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u0011H\u0014J\u0010\u0010 \u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\nH\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/tools/BrushToolView;",
        "Landroid/view/View;",
        "Lorg/catrobat/paintroid/tools/options/BrushToolPreview;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "callback",
        "Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;",
        "canvasPaint",
        "Landroid/graphics/Paint;",
        "checkeredPattern",
        "changePaintColor",
        "",
        "color",
        "",
        "drawEraserPreview",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawLineOnCanvas",
        "startX",
        "",
        "startY",
        "endX",
        "endY",
        "drawLinePreview",
        "onDraw",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "setListener",
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
.field private callback:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

.field private final canvasPaint:Landroid/graphics/Paint;

.field private final checkeredPattern:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/catrobat/paintroid/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 52
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 54
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 52
    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 56
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->checkeredPattern:Landroid/graphics/Paint;

    .line 58
    check-cast v0, Landroid/graphics/Shader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/catrobat/paintroid/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 52
    new-instance p2, Landroid/graphics/BitmapShader;

    .line 54
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 52
    invoke-direct {p2, p1, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 56
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->checkeredPattern:Landroid/graphics/Paint;

    .line 58
    check-cast p2, Landroid/graphics/Shader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private final changePaintColor(I)V
    .locals 4

    .line 62
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->callback:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;->getStrokeWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 63
    :goto_0
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->callback:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v1

    .line 64
    :goto_1
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    .line 65
    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    .line 66
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-nez v0, :cond_2

    goto :goto_2

    .line 67
    :cond_2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_2
    if-nez v1, :cond_3

    goto :goto_3

    .line 68
    :cond_3
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :goto_3
    const/4 v0, 0x1

    .line 69
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 71
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->checkeredPattern:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 p1, -0x1000000

    .line 72
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    .line 74
    :cond_4
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    return-void
.end method

.method private final drawEraserPreview(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->changePaintColor(I)V

    .line 81
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getRight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    sub-float v3, v0, v1

    .line 82
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42600000    # 56.0f

    sub-float v4, v0, v1

    .line 83
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getRight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x41800000    # 16.0f

    div-float/2addr v2, v5

    sub-float v5, v0, v2

    .line 84
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    sub-float v6, v0, v1

    .line 85
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v7, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawLineOnCanvas(FFFFLandroid/graphics/Canvas;)V
    .locals 6

    .line 96
    iget-object v5, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawLinePreview(Landroid/graphics/Canvas;)V
    .locals 8

    .line 100
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->callback:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->changePaintColor(I)V

    .line 105
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->callback:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 106
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->callback:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 109
    :cond_4
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getRight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    sub-float v3, v0, v1

    .line 110
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42600000    # 56.0f

    sub-float v4, v0, v1

    .line 111
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getRight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x41800000    # 16.0f

    div-float/2addr v2, v5

    sub-float v5, v0, v2

    .line 112
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    sub-float v6, v0, v1

    .line 113
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_5

    .line 114
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object v2, p0

    move-object v7, p1

    .line 115
    invoke-direct/range {v2 .. v7}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->drawLineOnCanvas(FFFFLandroid/graphics/Canvas;)V

    .line 116
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_5
    move-object v2, p0

    move-object v7, p1

    .line 118
    invoke-direct/range {v2 .. v7}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->drawLineOnCanvas(FFFFLandroid/graphics/Canvas;)V

    :goto_3
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 124
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->callback:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/catrobat/paintroid/ui/tools/BrushToolView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/ToolType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 126
    :cond_2
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->drawEraserPreview(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 125
    :cond_3
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->drawLinePreview(Landroid/graphics/Canvas;)V

    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 131
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v2

    double-to-int p2, v0

    .line 133
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->callback:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    return-void
.end method
