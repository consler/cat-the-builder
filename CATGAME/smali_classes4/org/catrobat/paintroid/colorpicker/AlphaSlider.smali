.class public final Lorg/catrobat/paintroid/colorpicker/AlphaSlider;
.super Landroid/view/View;
.source "AlphaSlider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/colorpicker/AlphaSlider$OnColorChangedListener;,
        Lorg/catrobat/paintroid/colorpicker/AlphaSlider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 72\u00020\u0001:\u000278B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0012H\u0002J \u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u000eH\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0006\u0010\u001f\u001a\u00020\u0012J\u0006\u0010 \u001a\u00020\u0012J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0002J\u0008\u0010%\u001a\u00020\u001cH\u0002J\u0010\u0010&\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0014J(\u0010\'\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u00122\u0006\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u0012H\u0014J\u0010\u0010,\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0017J\u0010\u0010-\u001a\u00020\u00122\u0006\u0010.\u001a\u00020\u0012H\u0002J\u000e\u0010/\u001a\u00020\u001c2\u0006\u00100\u001a\u00020\u0012J\u000e\u00101\u001a\u00020\u001c2\u0006\u00102\u001a\u000203J\u000e\u00104\u001a\u00020\u001c2\u0006\u00105\u001a\u00020\u0012J\u0008\u00106\u001a\u00020\u001cH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lorg/catrobat/paintroid/colorpicker/AlphaSlider;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "alphaPaint",
        "Landroid/graphics/Paint;",
        "alphaRectangle",
        "Landroid/graphics/RectF;",
        "alphaShader",
        "Landroid/graphics/Shader;",
        "boardPaint",
        "checkeredPaint",
        "density",
        "",
        "drawingRect",
        "hueTrackerPaint",
        "sliderTrackerColor",
        "",
        "startTouchPoint",
        "Landroid/graphics/Point;",
        "alphaToPoint",
        "alpha",
        "clamp",
        "curr",
        "min",
        "max",
        "drawAlphaRect",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getAlphaValue",
        "getSelectedColor",
        "moveTrackersIfNeeded",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "onColorChanged",
        "onDraw",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "onTouchEvent",
        "pointToAlpha",
        "y",
        "setAlphaValue",
        "value",
        "setOnColorChangedListener",
        "listener",
        "Lorg/catrobat/paintroid/colorpicker/AlphaSlider$OnColorChangedListener;",
        "setSelectedColor",
        "color",
        "setUpAlphaRect",
        "Companion",
        "OnColorChangedListener",
        "colorpicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/colorpicker/AlphaSlider$Companion;

.field private static alphaValue:I

.field private static currentColor:I

.field private static onColorChangedListener:Lorg/catrobat/paintroid/colorpicker/AlphaSlider$OnColorChangedListener;

.field private static selectedColor:I


# instance fields
.field private alphaPaint:Landroid/graphics/Paint;

.field private alphaRectangle:Landroid/graphics/RectF;

.field private alphaShader:Landroid/graphics/Shader;

.field private boardPaint:Landroid/graphics/Paint;

.field private checkeredPaint:Landroid/graphics/Paint;

.field private density:F

.field private drawingRect:Landroid/graphics/RectF;

.field private hueTrackerPaint:Landroid/graphics/Paint;

.field private final sliderTrackerColor:I

.field private startTouchPoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->Companion:Lorg/catrobat/paintroid/colorpicker/AlphaSlider$Companion;

    .line 76
    const/16 v0, 0xff

    sput v0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    nop

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->boardPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->checkeredPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->hueTrackerPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->drawingRect:Landroid/graphics/RectF;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaRectangle:Landroid/graphics/RectF;

    .line 57
    const v0, -0xa0a0b

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->sliderTrackerColor:I

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->density:F

    .line 60
    nop

    .line 61
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "getContext().resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->density:F

    .line 63
    nop

    .line 64
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/colorpicker/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    nop

    .line 65
    .local v0, "checkerboard":Landroid/graphics/Bitmap;
    nop

    .line 66
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 65
    nop

    .line 67
    .local v1, "checkeredShader":Landroid/graphics/BitmapShader;
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->checkeredPaint:Landroid/graphics/Paint;

    move-object v3, v1

    check-cast v3, Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 69
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->hueTrackerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->sliderTrackerColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->hueTrackerPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->hueTrackerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->density:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->hueTrackerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    .end local v0    # "checkerboard":Landroid/graphics/Bitmap;
    .end local v1    # "checkeredShader":Landroid/graphics/BitmapShader;
    return-void
.end method

.method public static final synthetic access$getAlphaValue$cp()I
    .locals 1

    .line 46
    sget v0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaValue:I

    return v0
.end method

.method public static final synthetic access$setAlphaValue$cp(I)V
    .locals 0
    .param p0, "<set-?>"    # I

    .line 46
    sput p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaValue:I

    return-void
.end method

.method private final alphaToPoint(I)Landroid/graphics/Point;
    .locals 5
    .param p1, "alpha"    # I

    .line 146
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaRectangle:Landroid/graphics/RectF;

    .line 147
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 148
    .local v1, "width":F
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 149
    .local v2, "p":Landroid/graphics/Point;
    int-to-float v3, p1

    mul-float/2addr v3, v1

    const/16 v4, 0xff

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v3, v1, v3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 150
    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 151
    return-object v2
.end method

.method private final clamp(FFF)F
    .locals 1
    .param p1, "curr"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .line 195
    invoke-static {p3, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v0

    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    return v0
.end method

.method private final drawAlphaRect(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 111
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaRectangle:Landroid/graphics/RectF;

    .line 113
    .local v0, "rect":Landroid/graphics/RectF;
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->boardPaint:Landroid/graphics/Paint;

    const v2, -0x919192

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    nop

    .line 115
    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v1, v2

    .line 116
    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v2

    .line 117
    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    .line 118
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float v7, v1, v2

    .line 119
    iget-object v8, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->boardPaint:Landroid/graphics/Paint;

    .line 114
    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 122
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->checkeredPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 123
    sget v1, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->currentColor:I

    .line 125
    .local v1, "color":I
    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 126
    .local v2, "hsv":[F
    invoke-static {v1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 127
    const/16 v3, 0xff

    invoke-static {v3, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    .line 129
    new-instance v3, Landroid/graphics/LinearGradient;

    .line 130
    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, v0, Landroid/graphics/RectF;->right:F

    .line 131
    iget v8, v0, Landroid/graphics/RectF;->top:F

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 129
    const/4 v10, 0x0

    move-object v4, v3

    move v9, v1

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    check-cast v3, Landroid/graphics/Shader;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaShader:Landroid/graphics/Shader;

    .line 133
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 134
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 135
    const/4 v3, 0x4

    int-to-float v3, v3

    iget v4, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->density:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 136
    .local v3, "rectWidth":F
    sget v5, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaValue:I

    invoke-direct {p0, v5}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaToPoint(I)Landroid/graphics/Point;

    move-result-object v5

    .line 137
    .local v5, "p":Landroid/graphics/Point;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 138
    .local v6, "r":Landroid/graphics/RectF;
    iget v7, v5, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float/2addr v7, v3

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 139
    iget v7, v5, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    add-float/2addr v7, v3

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 140
    iget v7, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v4

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 141
    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v4

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 142
    iget-object v7, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->hueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v4, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 143
    return-void
.end method

.method private final moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "update":Z
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->startTouchPoint:Landroid/graphics/Point;

    if-eqz v1, :cond_1

    .local v1, "$this$apply":Landroid/graphics/Point;
    const/4 v2, 0x0

    .line 179
    .local v2, "$i$a$-apply-AlphaSlider$moveTrackersIfNeeded$1":I
    const/4 v0, 0x1

    .line 180
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 181
    .local v3, "startX":I
    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 182
    .local v4, "startY":I
    iget-object v5, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaRectangle:Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->pointToAlpha(I)I

    move-result v5

    sput v5, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaValue:I

    goto :goto_0

    .line 185
    :cond_0
    const/4 v0, 0x0

    .line 186
    .end local v3    # "startX":I
    .end local v4    # "startY":I
    :goto_0
    nop

    .line 187
    nop

    .line 178
    .end local v1    # "$this$apply":Landroid/graphics/Point;
    .end local v2    # "$i$a$-apply-AlphaSlider$moveTrackersIfNeeded$1":I
    nop

    .line 188
    :cond_1
    return v0
.end method

.method private final onColorChanged()V
    .locals 2

    .line 222
    sget-object v0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->onColorChangedListener:Lorg/catrobat/paintroid/colorpicker/AlphaSlider$OnColorChangedListener;

    if-nez v0, :cond_0

    const-string v1, "onColorChangedListener"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->getSelectedColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider$OnColorChangedListener;->colorChanged(I)V

    .line 223
    :cond_1
    return-void
.end method

.method private final pointToAlpha(I)I
    .locals 6
    .param p1, "y"    # I

    .line 198
    move v0, p1

    .line 199
    .local v0, "x":I
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaRectangle:Landroid/graphics/RectF;

    .line 200
    .local v1, "rect":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    .line 201
    .local v2, "width":I
    int-to-float v3, v0

    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    int-to-float v4, v2

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v4}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->clamp(FFF)F

    move-result v3

    float-to-int v0, v3

    .line 202
    mul-int/lit16 v3, v0, 0xff

    div-int/2addr v3, v2

    rsub-int v3, v3, 0xff

    return v3
.end method

.method private final setUpAlphaRect()V
    .locals 6

    .line 102
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->drawingRect:Landroid/graphics/RectF;

    .line 103
    .local v0, "dRect":Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x41700000    # 15.0f

    add-float/2addr v1, v2

    .line 104
    .local v1, "left":F
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x428c0000    # 70.0f

    sub-float/2addr v3, v4

    .line 105
    .local v3, "top":F
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    .line 106
    .local v4, "bottom":F
    iget v5, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v2

    .line 107
    .local v5, "right":F
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaRectangle:Landroid/graphics/RectF;

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 108
    return-void
.end method


# virtual methods
.method public final getAlphaValue()I
    .locals 1

    .line 234
    sget v0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaValue:I

    return v0
.end method

.method public final getSelectedColor()I
    .locals 2

    .line 214
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 215
    .local v0, "hsv":[F
    sget v1, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->selectedColor:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 216
    sget v1, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaValue:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    sput v1, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->selectedColor:I

    .line 218
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->drawAlphaRect(Landroid/graphics/Canvas;)V

    .line 89
    return-void

    .line 85
    :cond_1
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 93
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->drawingRect:Landroid/graphics/RectF;

    .line 94
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 95
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->drawingRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 96
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 97
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->drawingRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 98
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->setUpAlphaRect()V

    .line 99
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "update":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 164
    :cond_1
    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->startTouchPoint:Landroid/graphics/Point;

    .line 165
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 159
    :cond_2
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->startTouchPoint:Landroid/graphics/Point;

    .line 160
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 167
    :goto_0
    nop

    .line 168
    if-eqz v0, :cond_3

    .line 169
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->invalidate()V

    .line 170
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->onColorChanged()V

    .line 171
    return v2

    .line 173
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public final setAlphaValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 237
    sput p1, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaValue:I

    .line 238
    return-void
.end method

.method public final setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/AlphaSlider$OnColorChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/catrobat/paintroid/colorpicker/AlphaSlider$OnColorChangedListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    sput-object p1, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->onColorChangedListener:Lorg/catrobat/paintroid/colorpicker/AlphaSlider$OnColorChangedListener;

    .line 207
    return-void
.end method

.method public final setSelectedColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 226
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 227
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 228
    sget v1, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->alphaValue:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    sput v1, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->selectedColor:I

    .line 229
    sput p1, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->currentColor:I

    .line 231
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->invalidate()V

    .line 232
    return-void
.end method
