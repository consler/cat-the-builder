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
        "colorpicker_signedRelease"
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
    .locals 4

    .line 85
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 47
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->panelSpacing:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 48
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 49
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    const/high16 v0, 0x41f00000    # 30.0f

    .line 50
    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 51
    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    const/16 v0, 0xff

    .line 52
    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->alpha:I

    const/high16 v0, 0x43b40000    # 360.0f

    .line 53
    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hue:F

    const v0, -0xa0a0b

    .line 56
    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->sliderTrackerColor:I

    const v1, -0x919192

    .line 57
    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderColor:I

    .line 96
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

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

    .line 103
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v2, 0x1

    .line 105
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 102
    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    .line 107
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 108
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    mul-float/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 107
    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueTrackerPaint:Landroid/graphics/Paint;

    .line 113
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValPaint:Landroid/graphics/Paint;

    .line 114
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePaint:Landroid/graphics/Paint;

    .line 115
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderPaint:Landroid/graphics/Paint;

    .line 116
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    .line 117
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    .line 118
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 47
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->panelSpacing:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 48
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 49
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    const/high16 p2, 0x41f00000    # 30.0f

    .line 50
    iput p2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 51
    iput p2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    const/16 p2, 0xff

    .line 52
    iput p2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->alpha:I

    const/high16 p2, 0x43b40000    # 360.0f

    .line 53
    iput p2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hue:F

    const p2, -0xa0a0b

    .line 56
    iput p2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->sliderTrackerColor:I

    const v0, -0x919192

    .line 57
    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderColor:I

    .line 96
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    .line 97
    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    mul-float/2addr v1, v0

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    .line 98
    iget v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    mul-float/2addr v2, v0

    iput v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    .line 99
    iget v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    mul-float/2addr v2, v0

    iput v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    .line 100
    iget v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->panelSpacing:F

    mul-float/2addr v2, v0

    iput v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->panelSpacing:F

    .line 101
    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingOffset:F

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 103
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 102
    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 108
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget p2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    mul-float/2addr p2, p1

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 107
    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueTrackerPaint:Landroid/graphics/Paint;

    .line 113
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValPaint:Landroid/graphics/Paint;

    .line 114
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePaint:Landroid/graphics/Paint;

    .line 115
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderPaint:Landroid/graphics/Paint;

    .line 116
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    .line 117
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    .line 118
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 47
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->panelSpacing:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 48
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 49
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    const/high16 p2, 0x41f00000    # 30.0f

    .line 50
    iput p2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 51
    iput p2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    const/16 p2, 0xff

    .line 52
    iput p2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->alpha:I

    const/high16 p2, 0x43b40000    # 360.0f

    .line 53
    iput p2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hue:F

    const p2, -0xa0a0b

    .line 56
    iput p2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->sliderTrackerColor:I

    const p3, -0x919192

    .line 57
    iput p3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderColor:I

    .line 96
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    iput p3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    .line 97
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    mul-float/2addr v0, p3

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    .line 98
    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    mul-float/2addr v1, p3

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    .line 99
    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    mul-float/2addr v1, p3

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    .line 100
    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->panelSpacing:F

    mul-float/2addr v1, p3

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->panelSpacing:F

    .line 101
    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingOffset:F

    .line 102
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 103
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    mul-float/2addr v0, p1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 102
    iput-object p3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    .line 107
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 108
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget p2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    mul-float/2addr p2, p1

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 107
    iput-object p3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueTrackerPaint:Landroid/graphics/Paint;

    .line 113
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValPaint:Landroid/graphics/Paint;

    .line 114
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePaint:Landroid/graphics/Paint;

    .line 115
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderPaint:Landroid/graphics/Paint;

    .line 116
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    .line 117
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    .line 118
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    return-void
.end method

.method private final buildHueColorArray()[I
    .locals 8

    const/16 v0, 0x169

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x168

    move v3, v1

    :goto_0
    add-int/lit8 v4, v2, -0x1

    add-int/lit8 v5, v3, 0x1

    const/4 v6, 0x3

    new-array v6, v6, [F

    int-to-float v2, v2

    aput v2, v6, v1

    const/4 v2, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v2

    const/4 v2, 0x2

    aput v7, v6, v2

    .line 260
    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    aput v2, v0, v3

    if-gez v4, :cond_0

    return-object v0

    :cond_0
    move v2, v4

    move v3, v5

    goto :goto_0
.end method

.method private final clamp(FFF)F
    .locals 0

    .line 121
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private final drawHuePanel(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 178
    iget-object v1, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v1, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v1, v2

    .line 181
    iget-object v1, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

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

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    .line 179
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

    const/4 v15, 0x0

    .line 194
    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v1

    .line 187
    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 196
    iget-object v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePaint:Landroid/graphics/Paint;

    check-cast v1, Landroid/graphics/Shader;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 197
    iget-object v1, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v1, 0x2

    int-to-float v1, v1

    .line 198
    iget v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    mul-float/2addr v1, v2

    .line 199
    iget v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hue:F

    invoke-direct {v0, v2}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueToPoint(F)Landroid/graphics/Point;

    move-result-object v2

    .line 200
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 201
    iget-object v4, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 202
    iget-object v4, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->rectangleTrackerOffset:F

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 203
    iget v4, v2, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 204
    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    const/high16 v1, 0x40000000    # 2.0f

    .line 206
    iget-object v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawSatValPanel(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 124
    iget-object v1, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->borderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

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

    move-object/from16 v1, p1

    .line 125
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

    const/4 v14, -0x1

    const/high16 v15, -0x1000000

    .line 139
    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v1

    .line 132
    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 141
    iget v4, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hue:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v8, v2, v3

    const/4 v3, 0x2

    aput v8, v2, v3

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v15

    .line 142
    new-instance v2, Landroid/graphics/LinearGradient;

    .line 143
    iget-object v3, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v10, v3, Landroid/graphics/RectF;->left:F

    .line 144
    iget-object v3, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v11, v3, Landroid/graphics/RectF;->top:F

    .line 145
    iget-object v3, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v12, v3, Landroid/graphics/RectF;->right:F

    .line 146
    iget-object v3, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v13, v3, Landroid/graphics/RectF;->bottom:F

    .line 149
    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v2

    .line 142
    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 151
    iget-object v3, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    .line 152
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 153
    check-cast v1, Landroid/graphics/Shader;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 154
    iget-object v1, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 155
    check-cast v2, Landroid/graphics/Shader;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 156
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v1, Landroid/graphics/Xfermode;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 157
    iget-object v1, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 159
    iget v1, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->sat:F

    iget v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->brightness:F

    invoke-direct {v0, v1, v2}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValToPoint(FF)Landroid/graphics/Point;

    move-result-object v1

    .line 160
    iget-object v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    .line 163
    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    .line 164
    iget v4, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    iget v5, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->density:F

    mul-float/2addr v5, v8

    sub-float/2addr v4, v5

    .line 165
    iget-object v5, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    .line 161
    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 167
    iget-object v2, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    const v3, -0x222223

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    .line 170
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    .line 171
    iget v3, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->paletteCircleTrackerRadius:F

    .line 172
    iget-object v4, v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    .line 168
    invoke-virtual {v7, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final hueToPoint(F)Landroid/graphics/Point;
    .locals 3

    .line 235
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 236
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 237
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    mul-float/2addr p1, v0

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr p1, v2

    sub-float/2addr v0, p1

    .line 238
    iget-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, v1, Landroid/graphics/Point;->y:I

    return-object v1
.end method

.method private final moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 211
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->startTouchPoint:Landroid/graphics/Point;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 212
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->startTouchPoint:Landroid/graphics/Point;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget v1, v3, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 214
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->pointToHue(F)F

    move-result p1

    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hue:F

    goto :goto_2

    .line 215
    :cond_4
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->pointToSatVal(FF)[F

    move-result-object p1

    .line 217
    aget v0, p1, v2

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->sat:F

    .line 218
    aget p1, p1, v4

    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->brightness:F

    :goto_2
    return v4

    :cond_5
    return v2
.end method

.method private final onColorChanged()V
    .locals 2

    .line 286
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->onColorChangedListener:Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView$OnColorChangedListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getSelectedColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView$OnColorChangedListener;->colorChanged(I)V

    :goto_0
    return-void
.end method

.method private final pointToHue(F)F
    .locals 2

    .line 251
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 252
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->clamp(FFF)F

    move-result p1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    sub-float/2addr v1, p1

    return v1
.end method

.method private final pointToSatVal(FF)[F
    .locals 4

    .line 243
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 244
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 245
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->clamp(FFF)F

    move-result p1

    .line 246
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v3

    invoke-direct {p0, p2, v2, v1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->clamp(FFF)F

    move-result p2

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v0, v3, v0

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    aput v0, v2, p1

    div-float p1, v3, v1

    mul-float/2addr p1, p2

    sub-float/2addr v3, p1

    const/4 p1, 0x1

    aput v3, v2, p1

    return-object v2
.end method

.method private final satValToPoint(FF)Landroid/graphics/Point;
    .locals 3

    .line 226
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 227
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 228
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    mul-float/2addr p1, v1

    .line 229
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v2, Landroid/graphics/Point;->x:I

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    mul-float/2addr p1, v0

    .line 230
    iget-object p2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v2, Landroid/graphics/Point;->y:I

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
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    .line 280
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v1

    .line 281
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v1

    .line 282
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hueRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private final setUpSatValRect()V
    .locals 5

    .line 267
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v0, v1

    .line 269
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v2, v1

    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->panelSpacing:F

    sub-float/2addr v2, v1

    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->huePanelWidth:F

    sub-float/2addr v2, v1

    .line 270
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    .line 271
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v3

    add-float/2addr v0, v4

    add-float/2addr v2, v1

    .line 274
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->satValRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v4, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public final getSelectedColor()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 72
    iget v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hue:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->sat:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->brightness:F

    aput v2, v0, v1

    .line 73
    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->alpha:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

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

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 335
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getPaddingStart()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getPaddingEnd()I

    move-result p2

    sub-int/2addr p1, p2

    .line 336
    invoke-virtual {p0, p1, p1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 323
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 324
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    .line 325
    iget p4, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingOffset:F

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p4, v0

    iput p4, p3, Landroid/graphics/RectF;->left:F

    int-to-float p1, p1

    .line 326
    iget p4, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingOffset:F

    sub-float/2addr p1, p4

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getPaddingRight()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p1, p4

    iput p1, p3, Landroid/graphics/RectF;->right:F

    .line 327
    iget p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingOffset:F

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getPaddingTop()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p1, p4

    iput p1, p3, Landroid/graphics/RectF;->top:F

    int-to-float p1, p2

    .line 328
    iget p2, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingOffset:F

    sub-float/2addr p1, p2

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->getPaddingBottom()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, p3, Landroid/graphics/RectF;->bottom:F

    .line 329
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 324
    iput-object p3, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->drawingRect:Landroid/graphics/RectF;

    .line 330
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->setUpSatValRect()V

    .line 331
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->setUpHueRect()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 308
    :cond_0
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 310
    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->startTouchPoint:Landroid/graphics/Point;

    .line 311
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 305
    :cond_2
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->startTouchPoint:Landroid/graphics/Point;

    .line 306
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    .line 315
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->invalidate()V

    .line 316
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->onColorChanged()V

    return v1

    .line 319
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView$OnColorChangedListener;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->onColorChangedListener:Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView$OnColorChangedListener;

    return-void
.end method

.method public final setSelectedColor(I)V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 77
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 78
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->alpha:I

    const/4 p1, 0x0

    aget p1, v0, p1

    .line 79
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->hue:F

    const/4 p1, 0x1

    aget p1, v0, p1

    .line 80
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->sat:F

    const/4 p1, 0x2

    aget p1, v0, p1

    .line 81
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->brightness:F

    .line 82
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->invalidate()V

    return-void
.end method
