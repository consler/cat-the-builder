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
    value = "SMAP\nZoomableImageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZoomableImageView.kt\norg/catrobat/paintroid/colorpicker/ZoomableImageView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,368:1\n306#2:369\n318#2,4:370\n307#2:374\n*S KotlinDebug\n*F\n+ 1 ZoomableImageView.kt\norg/catrobat/paintroid/colorpicker/ZoomableImageView\n*L\n314#1:369\n314#1:370,4\n314#1:374\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
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
.method public static synthetic $r8$lambda$0OakniG9toNjDX5wXMPbwH9plz4(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->updateLP$lambda-4$lambda-3(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t8lYXnvoolYBuKgqUiS_eaQOFPY(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V
    .locals 0

    invoke-static {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->_init_$lambda-0(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->canvasRect:Landroid/graphics/Rect;

    .line 67
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->boarderPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->checkeredPattern:Landroid/graphics/Paint;

    .line 73
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    const/16 v1, 0x9

    new-array v2, v1, [F

    .line 74
    iput-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->matrixValues:[F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 76
    iput v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    .line 83
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    .line 84
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->startPoint:Landroid/graphics/PointF;

    const/16 v2, 0x8

    .line 94
    invoke-virtual {p0, v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setVisibility(I)V

    const/4 v2, 0x1

    .line 95
    invoke-super {p0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setClickable(Z)V

    .line 96
    new-instance v2, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;

    invoke-direct {v4, p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;-><init>(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V

    check-cast v4, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v2, v3, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    new-array v1, v1, [F

    .line 98
    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->matrixValues:[F

    .line 99
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 100
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 102
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->gestureDetector:Landroid/view/GestureDetector;

    .line 103
    move-object v1, p0

    check-cast v1, Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 107
    sget v2, Lorg/catrobat/paintroid/colorpicker/R$color;->pocketpaint_color_picker_surface_background:I

    .line 105
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->backgroundSurfaceColor:I

    const/high16 v1, -0x1000000

    .line 110
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v1, Landroid/graphics/Xfermode;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 115
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lorg/catrobat/paintroid/colorpicker/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 116
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 117
    check-cast v1, Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 118
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast p1, Landroid/graphics/Xfermode;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 120
    new-instance p1, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p0, p1, v0, v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->canvasRect:Landroid/graphics/Rect;

    .line 67
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->boarderPaint:Landroid/graphics/Paint;

    .line 68
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->checkeredPattern:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 74
    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->matrixValues:[F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 76
    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    .line 83
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    .line 84
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->startPoint:Landroid/graphics/PointF;

    const/16 v1, 0x8

    .line 94
    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setVisibility(I)V

    const/4 v1, 0x1

    .line 95
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

    new-array v0, v0, [F

    .line 98
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

    .line 106
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$color;->pocketpaint_color_picker_surface_background:I

    .line 105
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->backgroundSurfaceColor:I

    const/high16 v0, -0x1000000

    .line 110
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v0, Landroid/graphics/Xfermode;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 115
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/catrobat/paintroid/colorpicker/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 116
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 117
    check-cast v0, Landroid/graphics/Shader;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 118
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast p1, Landroid/graphics/Xfermode;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 120
    new-instance p1, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p0, p1, v0, v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->canvasRect:Landroid/graphics/Rect;

    .line 67
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->boarderPaint:Landroid/graphics/Paint;

    .line 68
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->checkeredPattern:Landroid/graphics/Paint;

    .line 73
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    const/16 p3, 0x9

    new-array v0, p3, [F

    .line 74
    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->matrixValues:[F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 76
    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    .line 83
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    .line 84
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->startPoint:Landroid/graphics/PointF;

    const/16 v0, 0x8

    .line 94
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 95
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setClickable(Z)V

    .line 96
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;-><init>(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V

    check-cast v2, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    new-array p3, p3, [F

    .line 98
    iput-object p3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->matrixValues:[F

    .line 99
    iget-object p3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 100
    sget-object p3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 102
    new-instance p3, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p3, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->gestureDetector:Landroid/view/GestureDetector;

    .line 103
    move-object p3, p0

    check-cast p3, Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, p3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 107
    sget v0, Lorg/catrobat/paintroid/colorpicker/R$color;->pocketpaint_color_picker_surface_background:I

    .line 105
    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->backgroundSurfaceColor:I

    const/high16 p3, -0x1000000

    .line 110
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast p3, Landroid/graphics/Xfermode;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 115
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lorg/catrobat/paintroid/colorpicker/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {p1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 116
    new-instance p3, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {p3, p1, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 117
    check-cast p3, Landroid/graphics/Shader;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 118
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast p1, Landroid/graphics/Xfermode;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 120
    new-instance p1, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V

    const-wide/16 p2, 0x96

    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final _init_$lambda-0(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic access$getMMatrix$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public static final synthetic access$getOrigHeight$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F
    .locals 0

    .line 57
    iget p0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->origHeight:F

    return p0
.end method

.method public static final synthetic access$getOrigWidth$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F
    .locals 0

    .line 57
    iget p0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->origWidth:F

    return p0
.end method

.method public static final synthetic access$getSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F
    .locals 0

    .line 57
    iget p0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    return p0
.end method

.method public static final synthetic access$getViewHeight$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F
    .locals 0

    .line 57
    iget p0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewHeight:F

    return p0
.end method

.method public static final synthetic access$getViewWidth$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F
    .locals 0

    .line 57
    iget p0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewWidth:F

    return p0
.end method

.method public static final synthetic access$setMode$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;I)V
    .locals 0

    .line 57
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mode:I

    return-void
.end method

.method public static final synthetic access$setSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;F)V
    .locals 0

    .line 57
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    return-void
.end method

.method private final fitToScreen()V
    .locals 4

    .line 167
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 171
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    .line 172
    iget v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewWidth:F

    div-float/2addr v2, v0

    .line 173
    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewHeight:F

    div-float/2addr v3, v1

    .line 174
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v2

    .line 175
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 178
    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewHeight:F

    mul-float/2addr v1, v2

    sub-float/2addr v3, v1

    .line 179
    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewWidth:F

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v3, v0

    div-float/2addr v1, v0

    .line 182
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 183
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewWidth:F

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->origWidth:F

    .line 184
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewHeight:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->origHeight:F

    .line 185
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final getCorrectTranslation(FFF)F
    .locals 2

    cmpg-float v0, p3, p2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    sub-float/2addr p2, p3

    move p3, p2

    move p2, v1

    goto :goto_0

    :cond_0
    sub-float/2addr p2, p3

    move p3, v1

    :goto_0
    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    neg-float p1, p1

    add-float v1, p1, p2

    goto :goto_1

    :cond_1
    cmpl-float p2, p1, p3

    if-lez p2, :cond_2

    neg-float p1, p1

    add-float v1, p1, p3

    :cond_2
    :goto_1
    return v1
.end method

.method private final getFixDragTrans(FFF)F
    .locals 0

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method private final performColorColorChanged(Landroid/graphics/PointF;)V
    .locals 6

    .line 338
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mBitmap"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .line 339
    :cond_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 340
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 341
    iget v4, p1, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    aput v4, v3, v5

    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x1

    aput p1, v3, v4

    .line 342
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p1, v3, v5

    float-to-int p1, p1

    aget v2, v3, v4

    float-to-int v2, v2

    if-ltz p1, :cond_1

    .line 345
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge p1, v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-eqz v3, :cond_5

    if-ltz v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_2

    move v5, v4

    :cond_2
    if-nez v5, :cond_3

    goto :goto_2

    .line 350
    :cond_3
    invoke-virtual {v0, p1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    .line 352
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 353
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 354
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 355
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 351
    invoke-static {v0, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 358
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->listener:Lorg/catrobat/paintroid/colorpicker/OnImageViewPointClickedListener;

    if-nez v0, :cond_4

    const-string v0, "listener"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/colorpicker/OnImageViewPointClickedListener;->colorChanged(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final updateLP()V
    .locals 3

    .line 314
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    .line 370
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 315
    new-instance v2, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$$ExternalSyntheticLambda1;-><init>(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->post(Ljava/lang/Runnable;)Z

    .line 372
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 370
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final updateLP$lambda-4$lambda-3(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_updateLayoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 317
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/view/WindowManager;

    .line 318
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    const-string v0, "windowManager.currentWindowMetrics"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 320
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    .line 319
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    const-string v1, "windowMetrics.windowInse\u2026t()\n                    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    iget v1, v0, Landroid/graphics/Insets;->right:I

    iget v2, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v1, v2

    .line 323
    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v2, v0

    .line 324
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    const-string v0, "windowMetrics.bounds"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 326
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p0, v2

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 317
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 328
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 329
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 330
    :goto_0
    iget p0, v0, Landroid/graphics/Point;->y:I

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 331
    iget p0, v0, Landroid/graphics/Point;->x:I

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1
    return-void
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

    const/4 v2, 0x5

    .line 191
    aget v0, v0, v2

    .line 192
    iget v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewWidth:F

    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->origWidth:F

    iget v4, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    mul-float/2addr v3, v4

    invoke-direct {p0, v1, v2, v3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getCorrectTranslation(FFF)F

    move-result v1

    .line 193
    iget v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewHeight:F

    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->origHeight:F

    iget v4, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    mul-float/2addr v3, v4

    invoke-direct {p0, v0, v2, v3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getCorrectTranslation(FFF)F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_2

    cmpg-float v2, v0, v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-nez v4, :cond_3

    .line 195
    :cond_2
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_3
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 233
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 235
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 236
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->canvasRect:Landroid/graphics/Rect;

    const-string v2, "mBitmap"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 242
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->canvasRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    .line 243
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->backgroundSurfaceColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 244
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 249
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->canvasRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->checkeredPattern:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 250
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->canvasRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->boarderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 251
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const-string p3, "mE"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mE1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 223
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 224
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewWidth:F

    .line 225
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewHeight:F

    .line 226
    iget p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 227
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->fitToScreen()V

    :cond_1
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const-string p3, "mE"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mE1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 258
    iget-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 259
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 260
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->updateLP()V

    .line 261
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p2, 0x5

    if-eq v0, p2, :cond_1

    const/4 p1, 0x6

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 307
    :cond_0
    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mode:I

    goto/16 :goto_0

    .line 268
    :cond_1
    iget-object p2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 269
    iget-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->startPoint:Landroid/graphics/PointF;

    iget-object p2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 270
    iput v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mode:I

    goto/16 :goto_0

    .line 273
    :cond_2
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mode:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    const/high16 v3, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 274
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    .line 275
    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    .line 278
    iget v4, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewWidth:F

    .line 279
    iget v5, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->origWidth:F

    iget v6, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    mul-float/2addr v5, v6

    .line 276
    invoke-direct {p0, v0, v4, v5}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getFixDragTrans(FFF)F

    move-result v0

    .line 283
    iget v4, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->viewHeight:F

    .line 284
    iget v5, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->origHeight:F

    iget v6, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->saveScale:F

    mul-float/2addr v5, v6

    .line 281
    invoke-direct {p0, v3, v4, v5}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getFixDragTrans(FFF)F

    move-result v3

    .line 286
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 287
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->correctTranslation()V

    .line 288
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 291
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v2, :cond_6

    iget p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mode:I

    if-ne p1, v2, :cond_6

    .line 292
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p1, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->performColorColorChanged(Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    .line 297
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mode:I

    .line 298
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->startPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 299
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->startPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    if-ge p1, v2, :cond_6

    if-ge v0, v2, :cond_6

    .line 301
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->performClick()Z

    .line 302
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p1, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->performColorColorChanged(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 263
    :cond_5
    iget-object p2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 264
    iget-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->startPoint:Landroid/graphics/PointF;

    iget-object p2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 265
    iput v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mode:I

    .line 309
    :cond_6
    :goto_0
    iget-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return v1
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

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

    return-void
.end method

.method public final setListener(Lorg/catrobat/paintroid/colorpicker/OnImageViewPointClickedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->listener:Lorg/catrobat/paintroid/colorpicker/OnImageViewPointClickedListener;

    return-void
.end method
