.class public final Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;
.super Landroid/view/View;
.source "HSVColorPickerView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView$OnColorChangedListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0014\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0001PB\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B#\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010,\u001a\u00020-H\u0002J \u0010.\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010/\u001a\u00020\u00102\u0006\u00100\u001a\u00020\u0010H\u0002J\u0010\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0002J\u0010\u00105\u001a\u0002022\u0006\u00103\u001a\u000204H\u0002J\u0010\u00106\u001a\u00020+2\u0006\u0010\u0015\u001a\u00020\u0010H\u0002J\u0010\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0002J\u0008\u0010;\u001a\u000202H\u0002J\u0010\u0010<\u001a\u0002022\u0006\u00103\u001a\u000204H\u0014J\u0018\u0010=\u001a\u0002022\u0006\u0010>\u001a\u00020\t2\u0006\u0010?\u001a\u00020\tH\u0014J(\u0010@\u001a\u0002022\u0006\u0010A\u001a\u00020\t2\u0006\u0010B\u001a\u00020\t2\u0006\u0010C\u001a\u00020\t2\u0006\u0010D\u001a\u00020\tH\u0014J\u0010\u0010E\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0016J\u0010\u0010F\u001a\u00020\u00102\u0006\u0010G\u001a\u00020\u0010H\u0002J\u0018\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020\u00102\u0006\u0010G\u001a\u00020\u0010H\u0002J\u0018\u0010K\u001a\u00020+2\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010L\u001a\u0002022\u0008\u0010M\u001a\u0004\u0018\u00010\u001bJ\u0008\u0010N\u001a\u000202H\u0002J\u0008\u0010O\u001a\u000202H\u0002R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010$\u001a\u00020\t2\u0006\u0010#\u001a\u00020\t8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u000e\u0010)\u001a\u00020\tX\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006Q"
    }
    d2 = {
        "Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyle",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "alpha",
        "borderColor",
        "borderPaint",
        "Landroid/graphics/Paint;",
        "brightness",
        "",
        "density",
        "drawingOffset",
        "drawingRect",
        "Landroid/graphics/RectF;",
        "hue",
        "huePaint",
        "huePanelWidth",
        "hueRect",
        "hueTrackerPaint",
        "onColorChangedListener",
        "Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView$OnColorChangedListener;",
        "paletteCircleTrackerRadius",
        "panelSpacing",
        "rectangleTrackerOffset",
        "sat",
        "satValPaint",
        "satValRect",
        "satValTrackerPaint",
        "color",
        "selectedColor",
        "getSelectedColor",
        "()I",
        "setSelectedColor",
        "(I)V",
        "sliderTrackerColor",
        "startTouchPoint",
        "Landroid/graphics/Point;",
        "buildHueColorArray",
        "",
        "clamp",
        "mn",
        "mx",
        "drawHuePanel",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawSatValPanel",
        "hueToPoint",
        "moveTrackersIfNeeded",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "onColorChanged",
        "onDraw",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "onTouchEvent",
        "pointToHue",
        "y",
        "pointToSatVal",
        "",
        "x",
        "satValToPoint",
        "setOnColorChangedListener",
        "listener",
        "setUpHueRect",
        "setUpSatValRect",
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


# instance fields
.field private alpha:I

.field private final borderColor:I

.field private borderPaint:Landroid/graphics/Paint;

.field private brightness:F

.field private density:F

.field private drawingOffset:F

.field private drawingRect:Landroid/graphics/RectF;

.field private hue:F

.field private huePaint:Landroid/graphics/Paint;

.field private huePanelWidth:F

.field private final hueRect:Landroid/graphics/RectF;

.field private hueTrackerPaint:Landroid/graphics/Paint;

.field private onColorChangedListener:Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView$OnColorChangedListener;

.field private paletteCircleTrackerRadius:F

.field private panelSpacing:F

.field private rectangleTrackerOffset:F

.field private sat:F

.field private satValPaint:Landroid/graphics/Paint;

.field private final satValRect:Landroid/graphics/RectF;

.field private satValTrackerPaint:Landroid/graphics/Paint;

.field private final sliderTrackerColor:I

.field private startTouchPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->panelSpacing:F

    .line 48
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    .line 49
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    .line 50
    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    .line 51
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    .line 52
    const/16 v1, 0xff

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->alpha:I

    .line 53
    const/high16 v1, 0x43b40000    # 360.0f

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hue:F

    .line 56
    const v1, -0xa0a0b

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->sliderTrackerColor:I

    .line 57
    const v1, -0x919192

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderColor:I

    .line 95
    nop

    .line 96
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "context.resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    .line 97
    iget v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    mul-float/2addr v2, v1

    iput v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    .line 98
    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    mul-float/2addr v3, v1

    iput v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    .line 99
    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    mul-float/2addr v3, v1

    iput v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    .line 100
    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->panelSpacing:F

    mul-float/2addr v3, v1

    iput v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->panelSpacing:F

    .line 101
    iput v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingOffset:F

    .line 102
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object v2, v1

    .local v2, "$this$apply":Landroid/graphics/Paint;
    const/4 v3, 0x0

    .line 103
    .local v3, "$i$a$-apply-HSVColorPickerView$1":I
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget v4, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    mul-float/2addr v4, v0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    nop

    .end local v2    # "$this$apply":Landroid/graphics/Paint;
    .end local v3    # "$i$a$-apply-HSVColorPickerView$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 102
    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    .line 107
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object v2, v1

    .restart local v2    # "$this$apply":Landroid/graphics/Paint;
    const/4 v3, 0x0

    .line 108
    .local v3, "$i$a$-apply-HSVColorPickerView$2":I
    iget v5, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->sliderTrackerColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget v5, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    mul-float/2addr v5, v0

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    nop

    .end local v2    # "$this$apply":Landroid/graphics/Paint;
    .end local v3    # "$i$a$-apply-HSVColorPickerView$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 107
    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueTrackerPaint:Landroid/graphics/Paint;

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValPaint:Landroid/graphics/Paint;

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePaint:Landroid/graphics/Paint;

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderPaint:Landroid/graphics/Paint;

    .line 116
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    .line 117
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    .line 118
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->panelSpacing:F

    .line 48
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    .line 49
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    .line 50
    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    .line 51
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    .line 52
    const/16 v1, 0xff

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->alpha:I

    .line 53
    const/high16 v1, 0x43b40000    # 360.0f

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hue:F

    .line 56
    const v1, -0xa0a0b

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->sliderTrackerColor:I

    .line 57
    const v1, -0x919192

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderColor:I

    .line 95
    nop

    .line 96
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "context.resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    .line 97
    iget v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    mul-float/2addr v2, v1

    iput v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    .line 98
    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    mul-float/2addr v3, v1

    iput v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    .line 99
    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    mul-float/2addr v3, v1

    iput v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    .line 100
    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->panelSpacing:F

    mul-float/2addr v3, v1

    iput v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->panelSpacing:F

    .line 101
    iput v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingOffset:F

    .line 102
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object v2, v1

    .local v2, "$this$apply":Landroid/graphics/Paint;
    const/4 v3, 0x0

    .line 103
    .local v3, "$i$a$-apply-HSVColorPickerView$1":I
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget v4, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    mul-float/2addr v4, v0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    nop

    .end local v2    # "$this$apply":Landroid/graphics/Paint;
    .end local v3    # "$i$a$-apply-HSVColorPickerView$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 102
    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    .line 107
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object v2, v1

    .restart local v2    # "$this$apply":Landroid/graphics/Paint;
    const/4 v3, 0x0

    .line 108
    .local v3, "$i$a$-apply-HSVColorPickerView$2":I
    iget v5, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->sliderTrackerColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget v5, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    mul-float/2addr v5, v0

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    nop

    .end local v2    # "$this$apply":Landroid/graphics/Paint;
    .end local v3    # "$i$a$-apply-HSVColorPickerView$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 107
    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueTrackerPaint:Landroid/graphics/Paint;

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValPaint:Landroid/graphics/Paint;

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePaint:Landroid/graphics/Paint;

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderPaint:Landroid/graphics/Paint;

    .line 116
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    .line 117
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    .line 118
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 89
    nop

    .line 90
    nop

    .line 91
    nop

    .line 92
    nop

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->panelSpacing:F

    .line 48
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    .line 49
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    .line 50
    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    .line 51
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    .line 52
    const/16 v1, 0xff

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->alpha:I

    .line 53
    const/high16 v1, 0x43b40000    # 360.0f

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hue:F

    .line 56
    const v1, -0xa0a0b

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->sliderTrackerColor:I

    .line 57
    const v1, -0x919192

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderColor:I

    .line 95
    nop

    .line 96
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "context.resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    .line 97
    iget v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    mul-float/2addr v2, v1

    iput v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    .line 98
    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    mul-float/2addr v3, v1

    iput v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    .line 99
    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    mul-float/2addr v3, v1

    iput v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    .line 100
    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->panelSpacing:F

    mul-float/2addr v3, v1

    iput v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->panelSpacing:F

    .line 101
    iput v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingOffset:F

    .line 102
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object v2, v1

    .local v2, "$this$apply":Landroid/graphics/Paint;
    const/4 v3, 0x0

    .line 103
    .local v3, "$i$a$-apply-HSVColorPickerView$1":I
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget v4, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    mul-float/2addr v4, v0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    nop

    .end local v2    # "$this$apply":Landroid/graphics/Paint;
    .end local v3    # "$i$a$-apply-HSVColorPickerView$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 102
    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    .line 107
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object v2, v1

    .restart local v2    # "$this$apply":Landroid/graphics/Paint;
    const/4 v3, 0x0

    .line 108
    .local v3, "$i$a$-apply-HSVColorPickerView$2":I
    iget v5, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->sliderTrackerColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget v5, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    mul-float/2addr v5, v0

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    nop

    .end local v2    # "$this$apply":Landroid/graphics/Paint;
    .end local v3    # "$i$a$-apply-HSVColorPickerView$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 107
    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueTrackerPaint:Landroid/graphics/Paint;

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValPaint:Landroid/graphics/Paint;

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePaint:Landroid/graphics/Paint;

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderPaint:Landroid/graphics/Paint;

    .line 116
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    .line 117
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    .line 118
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    .line 119
    return-void
.end method

.method private final buildHueColorArray()[I
    .locals 8

    .line 257
    const/16 v0, 0x169

    new-array v0, v0, [I

    .line 258
    .local v0, "hue":[I
    const/4 v1, 0x0

    .line 259
    .local v1, "count":I
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_0

    .line 260
    .local v2, "i":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "count":I
    .local v4, "count":I
    const/4 v5, 0x3

    new-array v5, v5, [F

    const/4 v6, 0x0

    int-to-float v7, v2

    aput v7, v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v3

    const/4 v7, 0x2

    aput v6, v5, v7

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    aput v5, v0, v1

    .line 259
    nop

    .end local v2    # "i":I
    add-int/lit8 v2, v2, -0x1

    move v1, v4

    goto :goto_0

    .line 262
    .end local v4    # "count":I
    .restart local v1    # "count":I
    :cond_0
    return-object v0
.end method

.method private final clamp(FFF)F
    .locals 1
    .param p1, "brightness"    # F
    .param p2, "mn"    # F
    .param p3, "mx"    # F

    .line 121
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private final drawHuePanel(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 178
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    nop

    .line 180
    iget-object v1, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v1, v2

    .line 181
    iget-object v1, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 182
    nop

    .line 181
    sub-float v4, v1, v2

    .line 183
    iget-object v1, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float v5, v1, v2

    .line 184
    iget-object v1, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v6, v1, v2

    .line 185
    iget-object v8, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderPaint:Landroid/graphics/Paint;

    .line 179
    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 187
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 188
    iget-object v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/RectF;->left:F

    .line 189
    iget-object v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v11, v2, Landroid/graphics/RectF;->top:F

    .line 190
    iget-object v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v12, v2, Landroid/graphics/RectF;->left:F

    .line 191
    iget-object v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v13, v2, Landroid/graphics/RectF;->bottom:F

    .line 192
    invoke-direct/range {p0 .. p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->buildHueColorArray()[I

    move-result-object v14

    .line 193
    nop

    .line 194
    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 187
    const/4 v15, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 196
    .local v1, "hueShader":Landroid/graphics/LinearGradient;
    iget-object v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePaint:Landroid/graphics/Paint;

    move-object v3, v1

    check-cast v3, Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 197
    iget-object v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 198
    const/4 v2, 0x2

    int-to-float v2, v2

    iget v3, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    mul-float/2addr v2, v3

    .line 199
    .local v2, "rectHeight":F
    iget v3, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hue:F

    invoke-direct {v0, v3}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueToPoint(F)Landroid/graphics/Point;

    move-result-object v3

    .local v3, "it":Landroid/graphics/Point;
    const/4 v4, 0x0

    .line 200
    .local v4, "$i$a$-let-HSVColorPickerView$drawHuePanel$1":I
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    move-object v6, v5

    .local v6, "$this$apply":Landroid/graphics/RectF;
    const/4 v8, 0x0

    .line 201
    .local v8, "$i$a$-apply-HSVColorPickerView$drawHuePanel$1$r$1":I
    iget-object v9, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    iget v10, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    sub-float/2addr v9, v10

    iput v9, v6, Landroid/graphics/RectF;->left:F

    .line 202
    iget-object v9, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget v10, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    add-float/2addr v9, v10

    iput v9, v6, Landroid/graphics/RectF;->right:F

    .line 203
    iget v9, v3, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float/2addr v9, v2

    iput v9, v6, Landroid/graphics/RectF;->top:F

    .line 204
    iget v9, v3, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    add-float/2addr v9, v2

    iput v9, v6, Landroid/graphics/RectF;->bottom:F

    .line 205
    nop

    .line 200
    .end local v6    # "$this$apply":Landroid/graphics/RectF;
    .end local v8    # "$i$a$-apply-HSVColorPickerView$drawHuePanel$1$r$1":I
    nop

    .line 206
    .local v5, "r":Landroid/graphics/RectF;
    iget-object v6, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueTrackerPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v7, v5, v8, v8, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 207
    .end local v5    # "r":Landroid/graphics/RectF;
    nop

    .line 199
    .end local v3    # "it":Landroid/graphics/Point;
    .end local v4    # "$i$a$-let-HSVColorPickerView$drawHuePanel$1":I
    nop

    .line 208
    return-void
.end method

.method private final drawSatValPanel(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 124
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    nop

    .line 126
    iget-object v1, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 127
    iget-object v1, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 128
    iget-object v1, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/high16 v8, 0x3f800000    # 1.0f

    add-float v4, v1, v8

    .line 129
    iget-object v1, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v5, v1, v8

    .line 130
    iget-object v6, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderPaint:Landroid/graphics/Paint;

    .line 125
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 132
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 133
    iget-object v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/RectF;->left:F

    .line 134
    iget-object v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v11, v2, Landroid/graphics/RectF;->top:F

    .line 135
    iget-object v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v12, v2, Landroid/graphics/RectF;->left:F

    .line 136
    iget-object v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v13, v2, Landroid/graphics/RectF;->bottom:F

    .line 137
    nop

    .line 138
    nop

    .line 139
    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 132
    const/4 v14, -0x1

    const/high16 v15, -0x1000000

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 141
    .local v1, "valShader":Landroid/graphics/LinearGradient;
    const/4 v2, 0x3

    new-array v2, v2, [F

    iget v3, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hue:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v8, v2, v3

    const/4 v3, 0x2

    aput v8, v2, v3

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    .line 142
    .local v2, "rgb":I
    new-instance v3, Landroid/graphics/LinearGradient;

    .line 143
    iget-object v4, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v10, v4, Landroid/graphics/RectF;->left:F

    .line 144
    iget-object v4, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v11, v4, Landroid/graphics/RectF;->top:F

    .line 145
    iget-object v4, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v12, v4, Landroid/graphics/RectF;->right:F

    .line 146
    iget-object v4, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v13, v4, Landroid/graphics/RectF;->bottom:F

    .line 147
    nop

    .line 148
    nop

    .line 149
    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 142
    move-object v9, v3

    move v15, v2

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 151
    .local v3, "satShader":Landroid/graphics/LinearGradient;
    iget-object v4, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValPaint:Landroid/graphics/Paint;

    .local v4, "$this$apply":Landroid/graphics/Paint;
    const/4 v5, 0x0

    .line 152
    .local v5, "$i$a$-apply-HSVColorPickerView$drawSatValPanel$1":I
    const/4 v6, 0x0

    check-cast v6, Landroid/graphics/Xfermode;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 153
    move-object v6, v1

    check-cast v6, Landroid/graphics/Shader;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 154
    iget-object v6, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 155
    move-object v6, v3

    check-cast v6, Landroid/graphics/Shader;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 156
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v6, Landroid/graphics/Xfermode;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 157
    iget-object v6, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 158
    nop

    .line 151
    .end local v4    # "$this$apply":Landroid/graphics/Paint;
    .end local v5    # "$i$a$-apply-HSVColorPickerView$drawSatValPanel$1":I
    nop

    .line 159
    iget v4, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->sat:F

    iget v5, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->brightness:F

    invoke-direct {v0, v4, v5}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValToPoint(FF)Landroid/graphics/Point;

    move-result-object v4

    .local v4, "$this$apply":Landroid/graphics/Point;
    const/4 v5, 0x0

    .line 160
    .local v5, "$i$a$-apply-HSVColorPickerView$drawSatValPanel$2":I
    iget-object v6, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    const/high16 v9, -0x1000000

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    nop

    .line 162
    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    .line 163
    iget v9, v4, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    .line 164
    iget v10, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    iget v11, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    mul-float/2addr v11, v8

    sub-float/2addr v10, v11

    .line 165
    iget-object v8, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    .line 161
    invoke-virtual {v7, v6, v9, v10, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 167
    iget-object v6, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    const v8, -0x222223

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    nop

    .line 169
    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    .line 170
    iget v8, v4, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    .line 171
    iget v9, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    .line 172
    iget-object v10, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    .line 168
    invoke-virtual {v7, v6, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 174
    nop

    .line 159
    .end local v4    # "$this$apply":Landroid/graphics/Point;
    .end local v5    # "$i$a$-apply-HSVColorPickerView$drawSatValPanel$2":I
    nop

    .line 175
    return-void
.end method

.method private final hueToPoint(F)Landroid/graphics/Point;
    .locals 6
    .param p1, "hue"    # F

    .line 235
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 236
    .local v0, "height":F
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    move-object v2, v1

    .local v2, "$this$apply":Landroid/graphics/Point;
    const/4 v3, 0x0

    .line 237
    .local v3, "$i$a$-apply-HSVColorPickerView$hueToPoint$1":I
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 238
    mul-float v4, p1, v0

    const/high16 v5, 0x43b40000    # 360.0f

    div-float/2addr v4, v5

    sub-float v4, v0, v4

    iget-object v5, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Point;->y:I

    .line 239
    nop

    .line 236
    .end local v2    # "$this$apply":Landroid/graphics/Point;
    .end local v3    # "$i$a$-apply-HSVColorPickerView$hueToPoint$1":I
    return-object v1
.end method

.method private final moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 211
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->startTouchPoint:Landroid/graphics/Point;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 212
    .local v0, "startX":I
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->startTouchPoint:Landroid/graphics/Point;

    if-eqz v2, :cond_2

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 213
    .local v2, "startY":I
    nop

    .line 214
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->pointToHue(F)F

    move-result v1

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hue:F

    goto :goto_0

    .line 215
    :cond_0
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    int-to-float v5, v0

    int-to-float v6, v2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v3, v5}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->pointToSatVal(FF)[F

    move-result-object v3

    .line 217
    .local v3, "result":[F
    aget v1, v3, v1

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->sat:F

    .line 218
    aget v1, v3, v4

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->brightness:F

    .line 221
    .end local v3    # "result":[F
    :goto_0
    nop

    .line 222
    return v4

    .line 220
    :cond_1
    return v1

    .line 212
    .end local v2    # "startY":I
    :cond_2
    return v1

    .line 211
    .end local v0    # "startX":I
    :cond_3
    return v1
.end method

.method private final onColorChanged()V
    .locals 2

    .line 286
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->onColorChangedListener:Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView$OnColorChangedListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getSelectedColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView$OnColorChangedListener;->colorChanged(I)V

    .line 287
    :cond_0
    return-void
.end method

.method private final pointToHue(F)F
    .locals 4
    .param p1, "y"    # F

    .line 251
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 252
    .local v0, "height":F
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v1, p1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->clamp(FFF)F

    move-result v1

    .line 253
    .local v1, "curY":F
    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v3, v1, v2

    div-float/2addr v3, v0

    sub-float/2addr v2, v3

    return v2
.end method

.method private final pointToSatVal(FF)[F
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 243
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 244
    .local v0, "width":F
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 245
    .local v1, "height":F
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float v2, p1, v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->clamp(FFF)F

    move-result v2

    .line 246
    .local v2, "curX":F
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float v4, p2, v4

    invoke-direct {p0, v4, v3, v1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->clamp(FFF)F

    move-result v3

    .line 247
    .local v3, "curY":F
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v6, v5, v0

    mul-float/2addr v6, v2

    const/4 v7, 0x0

    aput v6, v4, v7

    div-float v6, v5, v1

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aput v5, v4, v6

    return-object v4
.end method

.method private final satValToPoint(FF)Landroid/graphics/Point;
    .locals 7
    .param p1, "sat"    # F
    .param p2, "brightness"    # F

    .line 226
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 227
    .local v0, "height":F
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 228
    .local v1, "width":F
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    move-object v3, v2

    .local v3, "$this$apply":Landroid/graphics/Point;
    const/4 v4, 0x0

    .line 229
    .local v4, "$i$a$-apply-HSVColorPickerView$satValToPoint$1":I
    mul-float v5, p1, v1

    iget-object v6, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/graphics/Point;->x:I

    .line 230
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p2

    mul-float/2addr v5, v0

    iget-object v6, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/graphics/Point;->y:I

    .line 231
    nop

    .line 228
    .end local v3    # "$this$apply":Landroid/graphics/Point;
    .end local v4    # "$i$a$-apply-HSVColorPickerView$satValToPoint$1":I
    return-object v2
.end method

.method private final setUpHueRect()V
    .locals 5

    .line 278
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 279
    .local v0, "left":F
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    .line 280
    .local v2, "top":F
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v1

    .line 281
    .local v3, "bottom":F
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v1

    .line 282
    .local v4, "right":F
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 283
    return-void
.end method

.method private final setUpSatValRect()V
    .locals 7

    .line 266
    nop

    .line 267
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v0, v1

    .line 266
    nop

    .line 268
    .local v0, "panelContentHeight":F
    nop

    .line 269
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v2, v1

    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->panelSpacing:F

    sub-float/2addr v2, v1

    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    sub-float/2addr v2, v1

    .line 268
    move v1, v2

    .line 270
    .local v1, "panelContentWidth":F
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    .line 271
    .local v2, "left":F
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v3

    .line 272
    .local v4, "top":F
    add-float v3, v4, v0

    .line 273
    .local v3, "bottom":F
    add-float v5, v2, v1

    .line 274
    .local v5, "right":F
    iget-object v6, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v2, v4, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 275
    return-void
.end method


# virtual methods
.method public final getSelectedColor()I
    .locals 3

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hue:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->sat:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->brightness:F

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 73
    .local v0, "hsv":[F
    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->alpha:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawSatValPanel(Landroid/graphics/Canvas;)V

    .line 298
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawHuePanel(Landroid/graphics/Canvas;)V

    .line 299
    return-void

    .line 295
    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 335
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    .line 336
    .local v0, "size":I
    invoke-virtual {p0, v0, v0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->setMeasuredDimension(II)V

    .line 337
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 323
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 324
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    move-object v1, v0

    .local v1, "$this$apply":Landroid/graphics/RectF;
    const/4 v2, 0x0

    .line 325
    .local v2, "$i$a$-apply-HSVColorPickerView$onSizeChanged$1":I
    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingOffset:F

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 326
    int-to-float v3, p1

    iget v4, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingOffset:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 327
    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingOffset:F

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 328
    int-to-float v3, p2

    iget v4, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingOffset:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 329
    nop

    .end local v1    # "$this$apply":Landroid/graphics/RectF;
    .end local v2    # "$i$a$-apply-HSVColorPickerView$onSizeChanged$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 324
    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    .line 330
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->setUpSatValRect()V

    .line 331
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->setUpHueRect()V

    .line 332
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "update":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 310
    :cond_1
    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->startTouchPoint:Landroid/graphics/Point;

    .line 311
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 305
    :cond_2
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->startTouchPoint:Landroid/graphics/Point;

    .line 306
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 313
    :goto_0
    nop

    .line 314
    if-eqz v0, :cond_3

    .line 315
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->invalidate()V

    .line 316
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->onColorChanged()V

    .line 317
    return v2

    .line 319
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public final setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView$OnColorChangedListener;

    .line 290
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->onColorChangedListener:Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView$OnColorChangedListener;

    .line 291
    return-void
.end method

.method public final setSelectedColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 77
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 78
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->alpha:I

    .line 79
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hue:F

    .line 80
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->sat:F

    .line 81
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->brightness:F

    .line 82
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->invalidate()V

    .line 83
    .end local v0    # "hsv":[F
    return-void
.end method
