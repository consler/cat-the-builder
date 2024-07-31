.class public final Lorg/catrobat/paintroid/ui/tools/BrushToolView;
.super Landroid/view/View;
.source "BrushToolView.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/BrushToolPreview;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrushToolView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrushToolView.kt\norg/catrobat/paintroid/ui/tools/BrushToolView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n1#2:141\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
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
.field private callback:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

.field private final canvasPaint:Landroid/graphics/Paint;

.field private final checkeredPattern:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    nop

    .line 50
    nop

    .line 51
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    nop

    .line 52
    .local v0, "checkerboard":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapShader;

    .line 53
    nop

    .line 54
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 52
    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 56
    .local v1, "shader":Landroid/graphics/BitmapShader;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->checkeredPattern:Landroid/graphics/Paint;

    .line 58
    move-object v3, v1

    check-cast v3, Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 59
    .end local v0    # "checkerboard":Landroid/graphics/Bitmap;
    .end local v1    # "shader":Landroid/graphics/BitmapShader;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    nop

    .line 50
    nop

    .line 51
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    nop

    .line 52
    .local v0, "checkerboard":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapShader;

    .line 53
    nop

    .line 54
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 52
    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 56
    .local v1, "shader":Landroid/graphics/BitmapShader;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->checkeredPattern:Landroid/graphics/Paint;

    .line 58
    move-object v3, v1

    check-cast v3, Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 59
    .end local v0    # "checkerboard":Landroid/graphics/Bitmap;
    .end local v1    # "shader":Landroid/graphics/BitmapShader;
    return-void
.end method

.method private final changePaintColor(I)V
    .locals 6
    .param p1, "color"    # I

    .line 62
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->callback:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;->getStrokeWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 63
    .local v0, "strokeWidth":Ljava/lang/Float;
    :goto_0
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->callback:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v1

    .line 64
    .local v1, "strokeCap":Landroid/graphics/Paint$Cap;
    :cond_1
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    .local v2, "$this$apply":Landroid/graphics/Paint;
    const/4 v3, 0x0

    .line 65
    .local v3, "$i$a$-apply-BrushToolView$changePaintColor$1":I
    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    .line 66
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    if-eqz v0, :cond_2

    move-object v4, v0

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .line 141
    .local v4, "it":F
    const/4 v5, 0x0

    .line 67
    .local v5, "$i$a$-let-BrushToolView$changePaintColor$1$1":I
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    .end local v4    # "it":F
    .end local v5    # "$i$a$-let-BrushToolView$changePaintColor$1$1":I
    :cond_2
    if-eqz v1, :cond_3

    move-object v4, v1

    .line 141
    .local v4, "it":Landroid/graphics/Paint$Cap;
    const/4 v5, 0x0

    .line 68
    .local v5, "$i$a$-let-BrushToolView$changePaintColor$1$2":I
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 69
    .end local v4    # "it":Landroid/graphics/Paint$Cap;
    .end local v5    # "$i$a$-let-BrushToolView$changePaintColor$1$2":I
    :cond_3
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-nez v4, :cond_4

    .line 71
    iget-object v4, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->checkeredPattern:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 72
    const/high16 v4, -0x1000000

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 74
    :cond_4
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    :goto_1
    nop

    .line 76
    nop

    .line 64
    .end local v2    # "$this$apply":Landroid/graphics/Paint;
    .end local v3    # "$i$a$-apply-BrushToolView$changePaintColor$1":I
    nop

    .line 77
    return-void
.end method

.method private final drawEraserPreview(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 80
    const/4 v0, 0x0

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

    sub-float/2addr v0, v1

    .line 82
    .local v0, "startX":F
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42600000    # 56.0f

    sub-float/2addr v1, v2

    .line 83
    .local v1, "startY":F
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41800000    # 16.0f

    div-float/2addr v4, v5

    sub-float v8, v3, v4

    .line 84
    .local v8, "endX":F
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float v9, v3, v2

    .line 85
    .local v9, "endY":F
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v7, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v0

    move v4, v1

    move v5, v8

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 87
    return-void
.end method

.method private final drawLineOnCanvas(FFFFLandroid/graphics/Canvas;)V
    .locals 6
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F
    .param p5, "canvas"    # Landroid/graphics/Canvas;

    .line 96
    iget-object v5, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 97
    return-void
.end method

.method private final drawLinePreview(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 100
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->callback:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 101
    .local v0, "currentColor":Ljava/lang/Integer;
    :goto_0
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->changePaintColor(I)V

    .line 105
    :cond_1
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->callback:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_4

    .line 106
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->callback:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v1

    :cond_3
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 109
    :cond_4
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getRight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 110
    .local v1, "startX":F
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x42600000    # 56.0f

    sub-float/2addr v2, v3

    .line 111
    .local v2, "startY":F
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getRight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41800000    # 16.0f

    div-float/2addr v5, v6

    sub-float v9, v4, v5

    .line 112
    .local v9, "endX":F
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v10, v4, v3

    .line 113
    .local v10, "endY":F
    iget-object v3, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    if-nez v3, :cond_5

    .line 114
    iget-object v3, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    move-object v3, p0

    move v4, v1

    move v5, v2

    move v6, v9

    move v7, v10

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->drawLineOnCanvas(FFFFLandroid/graphics/Canvas;)V

    .line 116
    iget-object v3, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->canvasPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 118
    :cond_5
    move-object v3, p0

    move v4, v1

    move v5, v2

    move v6, v9

    move v7, v10

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->drawLineOnCanvas(FFFFLandroid/graphics/Canvas;)V

    .line 119
    :goto_2
    nop

    .line 120
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 124
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->callback:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/catrobat/paintroid/ui/tools/BrushToolView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/ToolType;->ordinal()I

    move-result v0

    aget v0, v1, v0

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

    :goto_1
    goto :goto_2

    .line 126
    :cond_2
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->drawEraserPreview(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 125
    :cond_3
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->drawLinePreview(Landroid/graphics/Canvas;)V

    .line 127
    :goto_2
    nop

    .line 128
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 131
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 133
    .local v0, "widthSize":I
    int-to-double v1, v0

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->setMeasuredDimension(II)V

    .line 134
    return-void
.end method

.method public setListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;)V
    .locals 1
    .param p1, "callback"    # Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/BrushToolView;->callback:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    .line 138
    return-void
.end method
