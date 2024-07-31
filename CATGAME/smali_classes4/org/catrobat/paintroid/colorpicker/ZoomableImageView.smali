.class public final Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ZoomableImageView.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZoomableImageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZoomableImageView.kt\norg/catrobat/paintroid/colorpicker/ZoomableImageView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,368:1\n306#2:369\n318#2,4:370\n307#2:374\n*E\n*S KotlinDebug\n*F\n+ 1 ZoomableImageView.kt\norg/catrobat/paintroid/colorpicker/ZoomableImageView\n*L\n314#1:369\n314#1,4:370\n314#1:374\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001OB\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0019\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tB!\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0006\u0010)\u001a\u00020*J\u0008\u0010+\u001a\u00020*H\u0002J \u0010,\u001a\u00020!2\u0006\u0010-\u001a\u00020!2\u0006\u0010.\u001a\u00020!2\u0006\u0010/\u001a\u00020!H\u0002J \u00100\u001a\u00020!2\u0006\u00101\u001a\u00020!2\u0006\u0010.\u001a\u00020!2\u0006\u0010/\u001a\u00020!H\u0002J\u0010\u00102\u001a\u0002032\u0006\u00104\u001a\u000205H\u0016J\u0010\u00106\u001a\u00020*2\u0006\u00107\u001a\u000208H\u0014J(\u00109\u001a\u0002032\u0006\u0010:\u001a\u0002052\u0006\u0010;\u001a\u0002052\u0006\u0010<\u001a\u00020!2\u0006\u0010=\u001a\u00020!H\u0016J\u0010\u0010>\u001a\u00020*2\u0006\u00104\u001a\u000205H\u0016J\u0018\u0010?\u001a\u00020*2\u0006\u0010@\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020\u000bH\u0014J(\u0010B\u001a\u0002032\u0006\u0010:\u001a\u0002052\u0006\u0010;\u001a\u0002052\u0006\u0010<\u001a\u00020!2\u0006\u0010=\u001a\u00020!H\u0016J\u0010\u0010C\u001a\u00020*2\u0006\u00104\u001a\u000205H\u0016J\u0010\u0010D\u001a\u0002032\u0006\u00104\u001a\u000205H\u0016J\u001a\u0010E\u001a\u0002032\u0008\u0010F\u001a\u0004\u0018\u00010G2\u0006\u0010H\u001a\u000205H\u0016J\u0010\u0010I\u001a\u00020*2\u0006\u0010J\u001a\u00020\u0016H\u0002J\u0010\u0010K\u001a\u00020*2\u0006\u0010L\u001a\u00020\u001aH\u0016J\u000e\u0010M\u001a\u00020*2\u0006\u0010\u0017\u001a\u00020\u0018J\u0008\u0010N\u001a\u00020*H\u0002R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006P"
    }
    d2 = {
        "Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/view/GestureDetector$OnGestureListener;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "backgroundSurfaceColor",
        "boarderPaint",
        "Landroid/graphics/Paint;",
        "canvasRect",
        "Landroid/graphics/Rect;",
        "checkeredPattern",
        "gestureDetector",
        "Landroid/view/GestureDetector;",
        "lastPoint",
        "Landroid/graphics/PointF;",
        "listener",
        "Lorg/catrobat/paintroid/colorpicker/OnImageViewPointClickedListener;",
        "mBitmap",
        "Landroid/graphics/Bitmap;",
        "mMatrix",
        "Landroid/graphics/Matrix;",
        "matrixValues",
        "",
        "mode",
        "origHeight",
        "",
        "origWidth",
        "saveScale",
        "scaleDetector",
        "Landroid/view/ScaleGestureDetector;",
        "startPoint",
        "viewHeight",
        "viewWidth",
        "correctTranslation",
        "",
        "fitToScreen",
        "getCorrectTranslation",
        "trans",
        "viewSize",
        "contentSize",
        "getFixDragTrans",
        "delta",
        "onDown",
        "",
        "motionEvent",
        "Landroid/view/MotionEvent;",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onFling",
        "mE",
        "mE1",
        "v",
        "v1",
        "onLongPress",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onScroll",
        "onShowPress",
        "onSingleTapUp",
        "onTouch",
        "view",
        "Landroid/view/View;",
        "event",
        "performColorColorChanged",
        "point",
        "setImageBitmap",
        "bitmap",
        "setListener",
        "updateLP",
        "ScaleListener",
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
.field private backgroundSurfaceColor:I

.field private final boarderPaint:Landroid/graphics/Paint;

.field private final canvasRect:Landroid/graphics/Rect;

.field private final checkeredPattern:Landroid/graphics/Paint;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private lastPoint:Landroid/graphics/PointF;

.field private listener:Lorg/catrobat/paintroid/colorpicker/OnImageViewPointClickedListener;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mMatrix:Landroid/graphics/Matrix;

.field private matrixValues:[F

.field private mode:I

.field private origHeight:F

.field private origWidth:F

.field private saveScale:F

.field private scaleDetector:Landroid/view/ScaleGestureDetector;

.field private startPoint:Landroid/graphics/PointF;

.field private viewHeight:F

.field private viewWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->canvasRect:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->boarderPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->checkeredPattern:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 74
    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->matrixValues:[F

    .line 76
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    .line 83
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    .line 84
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->startPoint:Landroid/graphics/PointF;

    .line 93
    nop

    .line 94
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setVisibility(I)V

    .line 95
    const/4 v1, 0x1

    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setClickable(Z)V

    .line 96
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;-><init>(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V

    check-cast v3, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    .line 98
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->matrixValues:[F

    .line 99
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 100
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 102
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->gestureDetector:Landroid/view/GestureDetector;

    .line 103
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    nop

    .line 106
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$color;->pocketpaint_color_picker_surface_background:I

    .line 105
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->backgroundSurfaceColor:I

    .line 110
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->boarderPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->boarderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->boarderPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v1, Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 114
    nop

    .line 115
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/colorpicker/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    nop

    .line 116
    .local v0, "checkerboard":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 117
    .local v1, "shader":Landroid/graphics/BitmapShader;
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->checkeredPattern:Landroid/graphics/Paint;

    move-object v3, v1

    check-cast v3, Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 118
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->checkeredPattern:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v3, Landroid/graphics/Xfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 120
    new-instance v2, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$1;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$1;-><init>(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v3, 0x96

    invoke-virtual {p0, v2, v3, v4}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    .end local v0    # "checkerboard":Landroid/graphics/Bitmap;
    .end local v1    # "shader":Landroid/graphics/BitmapShader;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->canvasRect:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->boarderPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->checkeredPattern:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 74
    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->matrixValues:[F

    .line 76
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    .line 83
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    .line 84
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->startPoint:Landroid/graphics/PointF;

    .line 93
    nop

    .line 94
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setVisibility(I)V

    .line 95
    const/4 v1, 0x1

    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setClickable(Z)V

    .line 96
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;-><init>(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V

    check-cast v3, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    .line 98
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->matrixValues:[F

    .line 99
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 100
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 102
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->gestureDetector:Landroid/view/GestureDetector;

    .line 103
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    nop

    .line 106
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$color;->pocketpaint_color_picker_surface_background:I

    .line 105
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->backgroundSurfaceColor:I

    .line 110
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->boarderPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->boarderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->boarderPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v1, Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 114
    nop

    .line 115
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/colorpicker/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    nop

    .line 116
    .local v0, "checkerboard":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 117
    .local v1, "shader":Landroid/graphics/BitmapShader;
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->checkeredPattern:Landroid/graphics/Paint;

    move-object v3, v1

    check-cast v3, Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 118
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->checkeredPattern:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v3, Landroid/graphics/Xfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 120
    new-instance v2, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$1;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$1;-><init>(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v3, 0x96

    invoke-virtual {p0, v2, v3, v4}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    .end local v0    # "checkerboard":Landroid/graphics/Bitmap;
    .end local v1    # "shader":Landroid/graphics/BitmapShader;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    nop

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->canvasRect:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->boarderPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->checkeredPattern:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 74
    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->matrixValues:[F

    .line 76
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    .line 83
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    .line 84
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->startPoint:Landroid/graphics/PointF;

    .line 93
    nop

    .line 94
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setVisibility(I)V

    .line 95
    const/4 v1, 0x1

    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setClickable(Z)V

    .line 96
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;-><init>(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V

    check-cast v3, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    .line 98
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->matrixValues:[F

    .line 99
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 100
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 102
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->gestureDetector:Landroid/view/GestureDetector;

    .line 103
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    nop

    .line 106
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$color;->pocketpaint_color_picker_surface_background:I

    .line 105
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->backgroundSurfaceColor:I

    .line 110
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->boarderPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->boarderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->boarderPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v1, Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 114
    nop

    .line 115
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/colorpicker/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    nop

    .line 116
    .local v0, "checkerboard":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 117
    .local v1, "shader":Landroid/graphics/BitmapShader;
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->checkeredPattern:Landroid/graphics/Paint;

    move-object v3, v1

    check-cast v3, Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 118
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->checkeredPattern:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v3, Landroid/graphics/Xfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 120
    new-instance v2, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$1;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$1;-><init>(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v3, 0x96

    invoke-virtual {p0, v2, v3, v4}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    .end local v0    # "checkerboard":Landroid/graphics/Bitmap;
    .end local v1    # "shader":Landroid/graphics/BitmapShader;
    return-void
.end method

.method public static final synthetic access$getMBitmap$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    .line 57
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string v1, "mBitmap"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getMMatrix$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    .line 57
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public static final synthetic access$getMode$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)I
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    .line 57
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mode:I

    return v0
.end method

.method public static final synthetic access$getOrigHeight$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    .line 57
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->origHeight:F

    return v0
.end method

.method public static final synthetic access$getOrigWidth$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    .line 57
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->origWidth:F

    return v0
.end method

.method public static final synthetic access$getSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    .line 57
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    return v0
.end method

.method public static final synthetic access$getViewHeight$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    .line 57
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewHeight:F

    return v0
.end method

.method public static final synthetic access$getViewWidth$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    .line 57
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewWidth:F

    return v0
.end method

.method public static final synthetic access$setMBitmap$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;
    .param p1, "<set-?>"    # Landroid/graphics/Bitmap;

    .line 57
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic access$setMMatrix$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;Landroid/graphics/Matrix;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;
    .param p1, "<set-?>"    # Landroid/graphics/Matrix;

    .line 57
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public static final synthetic access$setMode$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;
    .param p1, "<set-?>"    # I

    .line 57
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mode:I

    return-void
.end method

.method public static final synthetic access$setOrigHeight$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;F)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;
    .param p1, "<set-?>"    # F

    .line 57
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->origHeight:F

    return-void
.end method

.method public static final synthetic access$setOrigWidth$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;F)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;
    .param p1, "<set-?>"    # F

    .line 57
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->origWidth:F

    return-void
.end method

.method public static final synthetic access$setSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;F)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;
    .param p1, "<set-?>"    # F

    .line 57
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    return-void
.end method

.method public static final synthetic access$setViewHeight$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;F)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;
    .param p1, "<set-?>"    # F

    .line 57
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewHeight:F

    return-void
.end method

.method public static final synthetic access$setViewWidth$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;F)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;
    .param p1, "<set-?>"    # F

    .line 57
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewWidth:F

    return-void
.end method

.method private final fitToScreen()V
    .locals 10

    .line 167
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "drawable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 171
    .local v0, "imageWidth":F
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    .line 172
    .local v1, "imageHeight":F
    iget v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewWidth:F

    div-float/2addr v2, v0

    .line 173
    .local v2, "scaleX":F
    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewHeight:F

    div-float/2addr v3, v1

    .line 174
    .local v3, "scaleY":F
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v4

    .line 175
    .local v4, "scale":F
    iget-object v5, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 178
    iget v5, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewHeight:F

    mul-float v6, v4, v1

    sub-float/2addr v5, v6

    .line 179
    .local v5, "redundantYSpace":F
    iget v6, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewWidth:F

    mul-float v7, v4, v0

    sub-float/2addr v6, v7

    .line 180
    .local v6, "redundantXSpace":F
    const/4 v7, 0x2

    int-to-float v7, v7

    div-float/2addr v5, v7

    .line 181
    div-float/2addr v6, v7

    .line 182
    iget-object v8, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v6, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 183
    iget v8, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewWidth:F

    mul-float v9, v7, v6

    sub-float/2addr v8, v9

    iput v8, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->origWidth:F

    .line 184
    iget v8, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewHeight:F

    mul-float/2addr v7, v5

    sub-float/2addr v8, v7

    iput v8, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->origHeight:F

    .line 185
    iget-object v7, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v7}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 186
    return-void

    .line 168
    .end local v0    # "imageWidth":F
    .end local v1    # "imageHeight":F
    .end local v2    # "scaleX":F
    .end local v3    # "scaleY":F
    .end local v4    # "scale":F
    .end local v5    # "redundantYSpace":F
    .end local v6    # "redundantXSpace":F
    :cond_1
    :goto_0
    return-void
.end method

.method private final getCorrectTranslation(FFF)F
    .locals 3
    .param p1, "trans"    # F
    .param p2, "viewSize"    # F
    .param p3, "contentSize"    # F

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "minTrans":F
    const/4 v1, 0x0

    .line 202
    .local v1, "maxTrans":F
    cmpg-float v2, p3, p2

    if-gtz v2, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 204
    sub-float v1, p2, p3

    goto :goto_0

    .line 206
    :cond_0
    sub-float v0, p2, p3

    .line 207
    const/4 v1, 0x0

    .line 208
    :goto_0
    nop

    .line 209
    nop

    .line 210
    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    neg-float v2, p1

    add-float/2addr v2, v0

    goto :goto_1

    .line 211
    :cond_1
    cmpl-float v2, p1, v1

    if-lez v2, :cond_2

    neg-float v2, p1

    add-float/2addr v2, v1

    goto :goto_1

    .line 212
    :cond_2
    const/4 v2, 0x0

    .line 209
    :goto_1
    return v2
.end method

.method private final getFixDragTrans(FFF)F
    .locals 1
    .param p1, "delta"    # F
    .param p2, "viewSize"    # F
    .param p3, "contentSize"    # F

    .line 217
    cmpg-float v0, p3, p2

    if-gtz v0, :cond_0

    .line 218
    const/4 v0, 0x0

    goto :goto_0

    .line 219
    :cond_0
    move v0, p1

    .line 217
    :goto_0
    return v0
.end method

.method private final performColorColorChanged(Landroid/graphics/PointF;)V
    .locals 10
    .param p1, "point"    # Landroid/graphics/PointF;

    .line 338
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string v1, "mBitmap"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 339
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 340
    .local v1, "inverse":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 341
    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p1, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x1

    aput v3, v2, v5

    .line 342
    .local v2, "touchPoint":[F
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 343
    aget v3, v2, v4

    float-to-int v3, v3

    .line 344
    .local v3, "xPixel":I
    aget v4, v2, v5

    float-to-int v4, v4

    .line 345
    .local v4, "yPixel":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    if-le v5, v3, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ltz v4, :cond_4

    if-gt v5, v4, :cond_2

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    .line 351
    .local v5, "touchedPixelRGB":I
    nop

    .line 352
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    .line 353
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 354
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 355
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    .line 351
    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 358
    .local v6, "colorValue":I
    iget-object v7, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->listener:Lorg/catrobat/paintroid/colorpicker/OnImageViewPointClickedListener;

    if-nez v7, :cond_3

    const-string v8, "listener"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v7, v6}, Lorg/catrobat/paintroid/colorpicker/OnImageViewPointClickedListener;->colorChanged(I)V

    .line 359
    return-void

    .line 347
    .end local v5    # "touchedPixelRGB":I
    .end local v6    # "colorValue":I
    :cond_4
    :goto_0
    return-void
.end method

.method private final updateLP()V
    .locals 8

    .line 314
    move-object v0, p0

    .local v0, "$this$updateLayoutParams$iv":Landroid/view/View;
    const/4 v1, 0x0

    .line 369
    .local v1, "$i$f$updateLayoutParams":I
    move-object v2, v0

    .local v2, "$this$updateLayoutParams$iv$iv":Landroid/view/View;
    const/4 v3, 0x0

    .line 370
    .local v3, "$i$f$updateLayoutParamsTyped":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 371
    .local v4, "params$iv$iv":Landroid/view/ViewGroup$LayoutParams;
    move-object v5, v4

    .local v5, "$this$updateLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, 0x0

    .line 315
    .local v6, "$i$a$-updateLayoutParams-ZoomableImageView$updateLP$1":I
    new-instance v7, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$updateLP$$inlined$updateLayoutParams$lambda$1;

    invoke-direct {v7, v5, p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$updateLP$$inlined$updateLayoutParams$lambda$1;-><init>(Landroid/view/ViewGroup$LayoutParams;Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V

    check-cast v7, Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->post(Ljava/lang/Runnable;)Z

    .line 334
    nop

    .line 372
    .end local v5    # "$this$updateLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "$i$a$-updateLayoutParams-ZoomableImageView$updateLP$1":I
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    nop

    .line 374
    .end local v2    # "$this$updateLayoutParams$iv$iv":Landroid/view/View;
    .end local v3    # "$i$f$updateLayoutParamsTyped":I
    .end local v4    # "params$iv$iv":Landroid/view/ViewGroup$LayoutParams;
    nop

    .line 335
    .end local v0    # "$this$updateLayoutParams$iv":Landroid/view/View;
    .end local v1    # "$i$f$updateLayoutParams":I
    return-void

    .line 370
    .restart local v0    # "$this$updateLayoutParams$iv":Landroid/view/View;
    .restart local v1    # "$i$f$updateLayoutParams":I
    .restart local v2    # "$this$updateLayoutParams$iv$iv":Landroid/view/View;
    .restart local v3    # "$i$f$updateLayoutParamsTyped":I
    :cond_0
    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public final correctTranslation()V
    .locals 6

    .line 189
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->matrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 190
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->matrixValues:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    .line 191
    .local v1, "transX":F
    const/4 v2, 0x5

    aget v0, v0, v2

    .line 192
    .local v0, "transY":F
    iget v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewWidth:F

    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->origWidth:F

    iget v4, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    mul-float/2addr v3, v4

    invoke-direct {p0, v1, v2, v3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getCorrectTranslation(FFF)F

    move-result v2

    .line 193
    .local v2, "fixTransX":F
    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewHeight:F

    iget v4, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->origHeight:F

    iget v5, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    mul-float/2addr v4, v5

    invoke-direct {p0, v0, v3, v4}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getCorrectTranslation(FFF)F

    move-result v3

    .line 194
    .local v3, "fixTransY":F
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-nez v5, :cond_0

    cmpg-float v4, v3, v4

    if-eqz v4, :cond_1

    .line 195
    :cond_0
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 197
    :cond_1
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 233
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 235
    move-object v0, p0

    check-cast v0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    iget-object v0, v0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 236
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->canvasRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    const-string v2, "mBitmap"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_2

    .line 238
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->backgroundSurfaceColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 240
    :cond_2
    move-object v0, p1

    .local v0, "$this$apply":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    .line 241
    .local v1, "$i$a$-apply-ZoomableImageView$onDraw$2":I
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 242
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->canvasRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    .line 243
    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->backgroundSurfaceColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 244
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 245
    nop

    .line 240
    .end local v0    # "$this$apply":Landroid/graphics/Canvas;
    .end local v1    # "$i$a$-apply-ZoomableImageView$onDraw$2":I
    nop

    .line 246
    :goto_0
    nop

    .line 248
    move-object v0, p1

    .restart local v0    # "$this$apply":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    .line 249
    .local v1, "$i$a$-apply-ZoomableImageView$onDraw$3":I
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->canvasRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->checkeredPattern:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 250
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->canvasRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->boarderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 251
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 252
    nop

    .line 254
    .end local v0    # "$this$apply":Landroid/graphics/Canvas;
    .end local v1    # "$i$a$-apply-ZoomableImageView$onDraw$3":I
    :cond_4
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "mE"    # Landroid/view/MotionEvent;
    .param p2, "mE1"    # Landroid/view/MotionEvent;
    .param p3, "v"    # F
    .param p4, "v1"    # F

    const-string v0, "mE"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mE1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 223
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 224
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewWidth:F

    .line 225
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewHeight:F

    .line 226
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->fitToScreen()V

    .line 229
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "mE"    # Landroid/view/MotionEvent;
    .param p2, "mE1"    # Landroid/view/MotionEvent;
    .param p3, "v"    # F
    .param p4, "v1"    # F

    const-string v0, "mE"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mE1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 258
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 259
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 260
    .local v0, "currentPoint":Landroid/graphics/PointF;
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->updateLP()V

    .line 261
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    goto/16 :goto_0

    .line 307
    :cond_0
    iput v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mode:I

    goto/16 :goto_0

    .line 268
    :cond_1
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 269
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->startPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 270
    iput v4, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mode:I

    goto/16 :goto_0

    .line 273
    :cond_2
    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mode:I

    if-ne v1, v4, :cond_3

    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    const/high16 v4, 0x3f400000    # 0.75f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 274
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    .line 275
    .local v1, "dx":F
    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    .line 276
    .local v4, "dy":F
    nop

    .line 277
    nop

    .line 278
    iget v5, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewWidth:F

    .line 279
    iget v6, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->origWidth:F

    iget v7, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    mul-float/2addr v6, v7

    .line 276
    invoke-direct {p0, v1, v5, v6}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getFixDragTrans(FFF)F

    move-result v5

    .line 281
    .local v5, "fixTransX":F
    nop

    .line 282
    nop

    .line 283
    iget v6, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewHeight:F

    .line 284
    iget v7, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->origHeight:F

    iget v8, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    mul-float/2addr v7, v8

    .line 281
    invoke-direct {p0, v4, v6, v7}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getFixDragTrans(FFF)F

    move-result v6

    .line 286
    .local v6, "fixTransY":F
    iget-object v7, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 287
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->correctTranslation()V

    .line 288
    iget-object v7, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    iget v8, v0, Landroid/graphics/PointF;->x:F

    iget v9, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 291
    .end local v1    # "dx":F
    .end local v4    # "dy":F
    .end local v5    # "fixTransX":F
    .end local v6    # "fixTransY":F
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v3, :cond_6

    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mode:I

    if-ne v1, v3, :cond_6

    .line 292
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->performColorColorChanged(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 297
    :cond_4
    const/4 v1, 0x3

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mode:I

    .line 298
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->startPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 299
    .local v1, "xDiff":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->startPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 300
    .local v4, "yDiff":I
    if-ge v1, v3, :cond_6

    if-ge v4, v3, :cond_6

    .line 301
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->performClick()Z

    .line 302
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->performColorColorChanged(Landroid/graphics/PointF;)V

    .end local v1    # "xDiff":I
    .end local v4    # "yDiff":I
    goto :goto_0

    .line 263
    :cond_5
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 264
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->startPoint:Landroid/graphics/PointF;

    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 265
    iput v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mode:I

    .line 308
    :cond_6
    :goto_0
    nop

    .line 309
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 310
    return v2
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 129
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->invalidate()V

    .line 130
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->updateLP()V

    .line 131
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    return-void
.end method

.method public final setListener(Lorg/catrobat/paintroid/colorpicker/OnImageViewPointClickedListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/catrobat/paintroid/colorpicker/OnImageViewPointClickedListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->listener:Lorg/catrobat/paintroid/colorpicker/OnImageViewPointClickedListener;

    .line 125
    return-void
.end method
