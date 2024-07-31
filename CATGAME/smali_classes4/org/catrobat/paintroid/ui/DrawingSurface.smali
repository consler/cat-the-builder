.class public Lorg/catrobat/paintroid/ui/DrawingSurface;
.super Landroid/view/SurfaceView;
.source "DrawingSurface.kt"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/ui/DrawingSurface$AutoScrollTaskCallbackImpl;,
        Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;,
        Lorg/catrobat/paintroid/ui/DrawingSurface$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawingSurface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawingSurface.kt\norg/catrobat/paintroid/ui/DrawingSurface\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,297:1\n1#2:298\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0016\u0018\u0000 <2\u00020\u00012\u00020\u0002:\u0003;<=B\u001b\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B\u0011\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010#\u001a\u00020$J\u0010\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\'H\u0002J\u0006\u0010(\u001a\u00020$J\u0016\u0010)\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nJ\u0008\u0010,\u001a\u00020$H\u0014J\u0008\u0010-\u001a\u00020$H\u0014J\u0006\u0010.\u001a\u00020$J.\u0010/\u001a\u00020$2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u00100\u001a\u00020$2\u0008\u00101\u001a\u0004\u0018\u000102J(\u00103\u001a\u00020$2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\n2\u0006\u00107\u001a\u00020\n2\u0006\u00108\u001a\u00020\nH\u0016J\u0010\u00109\u001a\u00020$2\u0006\u00104\u001a\u000205H\u0016J\u0010\u0010:\u001a\u00020$2\u0006\u00104\u001a\u000205H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/DrawingSurface;",
        "Landroid/view/SurfaceView;",
        "Landroid/view/SurfaceHolder$Callback;",
        "context",
        "Landroid/content/Context;",
        "attrSet",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "(Landroid/content/Context;)V",
        "bgColor",
        "",
        "canvasRect",
        "Landroid/graphics/Rect;",
        "checkeredPattern",
        "Landroid/graphics/Paint;",
        "drawingSurfaceListener",
        "Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;",
        "drawingThread",
        "Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "framePaint",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "perspective",
        "Lorg/catrobat/paintroid/ui/Perspective;",
        "surfaceDirty",
        "",
        "surfaceLock",
        "Ljava/lang/Object;",
        "surfaceReady",
        "toolOptionsViewController",
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;",
        "toolReference",
        "Lorg/catrobat/paintroid/tools/ToolReference;",
        "disableAutoScroll",
        "",
        "doDraw",
        "surfaceViewCanvas",
        "Landroid/graphics/Canvas;",
        "enableAutoScroll",
        "isPointOnCanvas",
        "pointX",
        "pointY",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "refreshDrawingSurface",
        "setArguments",
        "setBitmap",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "surfaceChanged",
        "holder",
        "Landroid/view/SurfaceHolder;",
        "format",
        "width",
        "height",
        "surfaceCreated",
        "surfaceDestroyed",
        "AutoScrollTaskCallbackImpl",
        "Companion",
        "DrawLoop",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/ui/DrawingSurface$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bgColor:I

.field private final canvasRect:Landroid/graphics/Rect;

.field private final checkeredPattern:Landroid/graphics/Paint;

.field private drawingSurfaceListener:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;

.field private drawingThread:Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;

.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final framePaint:Landroid/graphics/Paint;

.field private layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

.field private perspective:Lorg/catrobat/paintroid/ui/Perspective;

.field private surfaceDirty:Z

.field private surfaceLock:Ljava/lang/Object;

.field private surfaceReady:Z

.field private toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

.field private toolReference:Lorg/catrobat/paintroid/tools/ToolReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/ui/DrawingSurface$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/ui/DrawingSurface$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/ui/DrawingSurface;->Companion:Lorg/catrobat/paintroid/ui/DrawingSurface$Companion;

    .line 117
    const-class v0, Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/paintroid/ui/DrawingSurface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->canvasRect:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->framePaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->checkeredPattern:Landroid/graphics/Paint;

    .line 77
    nop

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceLock:Ljava/lang/Object;

    .line 79
    nop

    .line 80
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    sget v1, Lorg/catrobat/paintroid/R$color;->pocketpaint_main_drawing_surface_background:I

    .line 79
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->bgColor:I

    .line 83
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->framePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->framePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->framePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v1, Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 86
    nop

    .line 87
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    nop

    .line 88
    .local v0, "checkerboard":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 89
    .local v1, "shader":Landroid/graphics/BitmapShader;
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->checkeredPattern:Landroid/graphics/Paint;

    move-object v3, v1

    check-cast v3, Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 90
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->checkeredPattern:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v3, Landroid/graphics/Xfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 91
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 92
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;

    new-instance v4, Lorg/catrobat/paintroid/ui/DrawingSurface$AutoScrollTaskCallbackImpl;

    invoke-direct {v4, p0}, Lorg/catrobat/paintroid/ui/DrawingSurface$AutoScrollTaskCallbackImpl;-><init>(Lorg/catrobat/paintroid/ui/DrawingSurface;)V

    check-cast v4, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;

    invoke-direct {v3, v2, v4}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;-><init>(Landroid/os/Handler;Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;)V

    .line 93
    .local v3, "autoScrollTask":Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "resources"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 94
    .local v4, "density":F
    new-instance v5, Lorg/catrobat/paintroid/ui/DrawingSurface$callback$1;

    invoke-direct {v5, p0}, Lorg/catrobat/paintroid/ui/DrawingSurface$callback$1;-><init>(Lorg/catrobat/paintroid/ui/DrawingSurface;)V

    check-cast v5, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    .line 112
    .local v5, "callback":Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;
    new-instance v6, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;

    invoke-direct {v6, v3, v5, v4}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;-><init>(Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;F)V

    iput-object v6, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->drawingSurfaceListener:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;

    .line 113
    check-cast v6, Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v6}, Lorg/catrobat/paintroid/ui/DrawingSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    .end local v0    # "checkerboard":Landroid/graphics/Bitmap;
    .end local v1    # "shader":Landroid/graphics/BitmapShader;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "autoScrollTask":Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;
    .end local v4    # "density":F
    .end local v5    # "callback":Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrSet"    # Landroid/util/AttributeSet;

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->canvasRect:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->framePaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->checkeredPattern:Landroid/graphics/Paint;

    .line 77
    nop

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceLock:Ljava/lang/Object;

    .line 79
    nop

    .line 80
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    sget v1, Lorg/catrobat/paintroid/R$color;->pocketpaint_main_drawing_surface_background:I

    .line 79
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->bgColor:I

    .line 83
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->framePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->framePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->framePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v1, Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 86
    nop

    .line 87
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    nop

    .line 88
    .local v0, "checkerboard":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 89
    .local v1, "shader":Landroid/graphics/BitmapShader;
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->checkeredPattern:Landroid/graphics/Paint;

    move-object v3, v1

    check-cast v3, Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 90
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->checkeredPattern:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v3, Landroid/graphics/Xfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 91
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 92
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;

    new-instance v4, Lorg/catrobat/paintroid/ui/DrawingSurface$AutoScrollTaskCallbackImpl;

    invoke-direct {v4, p0}, Lorg/catrobat/paintroid/ui/DrawingSurface$AutoScrollTaskCallbackImpl;-><init>(Lorg/catrobat/paintroid/ui/DrawingSurface;)V

    check-cast v4, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;

    invoke-direct {v3, v2, v4}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;-><init>(Landroid/os/Handler;Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;)V

    .line 93
    .local v3, "autoScrollTask":Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "resources"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 94
    .local v4, "density":F
    new-instance v5, Lorg/catrobat/paintroid/ui/DrawingSurface$callback$1;

    invoke-direct {v5, p0}, Lorg/catrobat/paintroid/ui/DrawingSurface$callback$1;-><init>(Lorg/catrobat/paintroid/ui/DrawingSurface;)V

    check-cast v5, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    .line 112
    .local v5, "callback":Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;
    new-instance v6, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;

    invoke-direct {v6, v3, v5, v4}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;-><init>(Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;F)V

    iput-object v6, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->drawingSurfaceListener:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;

    .line 113
    check-cast v6, Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v6}, Lorg/catrobat/paintroid/ui/DrawingSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    .end local v0    # "checkerboard":Landroid/graphics/Bitmap;
    .end local v1    # "shader":Landroid/graphics/BitmapShader;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "autoScrollTask":Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;
    .end local v4    # "density":F
    .end local v5    # "callback":Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;
    return-void
.end method

.method public static final synthetic access$doDraw(Lorg/catrobat/paintroid/ui/DrawingSurface;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/DrawingSurface;
    .param p1, "surfaceViewCanvas"    # Landroid/graphics/Canvas;

    .line 57
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/DrawingSurface;->doDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static final synthetic access$getPerspective$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Lorg/catrobat/paintroid/ui/Perspective;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/DrawingSurface;

    .line 57
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    if-nez v0, :cond_0

    const-string v1, "perspective"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getSurfaceDirty$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/DrawingSurface;

    .line 57
    iget-boolean v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceDirty:Z

    return v0
.end method

.method public static final synthetic access$getSurfaceLock$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/DrawingSurface;

    .line 57
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getSurfaceReady$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/DrawingSurface;

    .line 57
    iget-boolean v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceReady:Z

    return v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lorg/catrobat/paintroid/ui/DrawingSurface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getToolOptionsViewController$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/DrawingSurface;

    .line 57
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    if-nez v0, :cond_0

    const-string v1, "toolOptionsViewController"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getToolReference$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Lorg/catrobat/paintroid/tools/ToolReference;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/DrawingSurface;

    .line 57
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    if-nez v0, :cond_0

    const-string v1, "toolReference"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$setPerspective$p(Lorg/catrobat/paintroid/ui/DrawingSurface;Lorg/catrobat/paintroid/ui/Perspective;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/DrawingSurface;
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/ui/Perspective;

    .line 57
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    return-void
.end method

.method public static final synthetic access$setSurfaceDirty$p(Lorg/catrobat/paintroid/ui/DrawingSurface;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/DrawingSurface;
    .param p1, "<set-?>"    # Z

    .line 57
    iput-boolean p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceDirty:Z

    return-void
.end method

.method public static final synthetic access$setSurfaceLock$p(Lorg/catrobat/paintroid/ui/DrawingSurface;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/DrawingSurface;
    .param p1, "<set-?>"    # Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceLock:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$setSurfaceReady$p(Lorg/catrobat/paintroid/ui/DrawingSurface;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/DrawingSurface;
    .param p1, "<set-?>"    # Z

    .line 57
    iput-boolean p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceReady:Z

    return-void
.end method

.method public static final synthetic access$setToolOptionsViewController$p(Lorg/catrobat/paintroid/ui/DrawingSurface;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/DrawingSurface;
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 57
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    return-void
.end method

.method public static final synthetic access$setToolReference$p(Lorg/catrobat/paintroid/ui/DrawingSurface;Lorg/catrobat/paintroid/tools/ToolReference;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/DrawingSurface;
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/tools/ToolReference;

    .line 57
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    return-void
.end method

.method private final declared-synchronized doDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "surfaceViewCanvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v0, :cond_0

    const-string v1, "layerModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/catrobat/paintroid/ui/DrawingSurface;
    :cond_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 137
    .local v1, "$i$a$-synchronized-DrawingSurface$doDraw$1":I
    :try_start_1
    iget-boolean v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceReady:Z

    if-eqz v2, :cond_a

    .line 138
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->canvasRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v3, :cond_1

    const-string v4, "layerModel"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v3}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v4, :cond_2

    const-string v5, "layerModel"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v4}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 139
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    if-nez v2, :cond_3

    const-string v3, "perspective"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2, p1}, Lorg/catrobat/paintroid/ui/Perspective;->applyToCanvas(Landroid/graphics/Canvas;)V

    .line 141
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_4

    .line 142
    iget v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->bgColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 145
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->canvasRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    .line 146
    iget v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->bgColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 148
    :goto_0
    nop

    .line 150
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->canvasRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->checkeredPattern:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 151
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->canvasRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->framePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 153
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v2, :cond_5

    const-string v3, "layerModel"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v3, :cond_6

    const-string v4, "layerModel"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-interface {v3}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerCount()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 155
    .local v2, "iterator":Ljava/util/ListIterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 156
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    invoke-interface {v3}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_7

    .local v3, "it":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 157
    .local v4, "$i$a$-let-DrawingSurface$doDraw$1$1":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 158
    nop

    .line 156
    .end local v3    # "it":Landroid/graphics/Bitmap;
    .end local v4    # "$i$a$-let-DrawingSurface$doDraw$1$1":I
    :cond_7
    nop

    .line 155
    goto :goto_1

    .line 161
    :cond_8
    iget-object v3, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    if-nez v3, :cond_9

    const-string v4, "toolReference"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v3

    .line 162
    .local v3, "tool":Lorg/catrobat/paintroid/tools/Tool;
    if-eqz v3, :cond_a

    invoke-interface {v3, p1}, Lorg/catrobat/paintroid/tools/Tool;->draw(Landroid/graphics/Canvas;)V

    .line 164
    .end local v2    # "iterator":Ljava/util/ListIterator;
    .end local v3    # "tool":Lorg/catrobat/paintroid/tools/Tool;
    :cond_a
    nop

    .end local v1    # "$i$a$-synchronized-DrawingSurface$doDraw$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    .end local p1    # "surfaceViewCanvas":Landroid/graphics/Canvas;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final disableAutoScroll()V
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->drawingSurfaceListener:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->disableAutoScroll()V

    .line 192
    return-void
.end method

.method public final enableAutoScroll()V
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->drawingSurfaceListener:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->enableAutoScroll()V

    .line 188
    return-void
.end method

.method public final isPointOnCanvas(II)Z
    .locals 2
    .param p1, "pointX"    # I
    .param p2, "pointY"    # I

    .line 200
    if-lez p1, :cond_2

    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v1, "layerModel"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_2

    if-lez p2, :cond_2

    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 168
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 169
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 170
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 173
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 174
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 175
    return-void
.end method

.method public final refreshDrawingSurface()V
    .locals 4

    .line 178
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceLock:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 179
    .local v1, "$i$a$-let-DrawingSurface$refreshDrawingSurface$1":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 180
    .local v2, "$i$a$-synchronized-DrawingSurface$refreshDrawingSurface$1$1":I
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceDirty:Z

    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 182
    nop

    .end local v2    # "$i$a$-synchronized-DrawingSurface$refreshDrawingSurface$1$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit v0

    .line 183
    nop

    .line 178
    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-DrawingSurface$refreshDrawingSurface$1":I
    goto :goto_0

    .line 179
    .restart local v0    # "it":Ljava/lang/Object;
    .restart local v1    # "$i$a$-let-DrawingSurface$refreshDrawingSurface$1":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2

    .line 184
    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-DrawingSurface$refreshDrawingSurface$1":I
    :cond_0
    :goto_0
    return-void
.end method

.method public final setArguments(Lorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/ui/Perspective;Lorg/catrobat/paintroid/tools/ToolReference;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .param p1, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;
    .param p2, "perspective"    # Lorg/catrobat/paintroid/ui/Perspective;
    .param p3, "toolReference"    # Lorg/catrobat/paintroid/tools/ToolReference;
    .param p4, "toolOptionsViewController"    # Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
    .param p5, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;

    const-string v0, "layerModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "perspective"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolReference"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    .line 128
    iput-object p2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    .line 129
    iput-object p3, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    .line 130
    iput-object p4, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 131
    iput-object p5, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 132
    return-void
.end method

.method public final declared-synchronized setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v0, :cond_0

    const-string v1, "layerModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/catrobat/paintroid/ui/DrawingSurface;
    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_1
    monitor-exit p0

    return-void

    .line 195
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceReady:Z

    .line 204
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    if-nez v0, :cond_0

    const-string v1, "toolReference"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 205
    .local v0, "currentToolType":Lorg/catrobat/paintroid/tools/ToolType;
    :goto_0
    const/4 v1, 0x0

    .line 206
    .local v1, "isColorPickerDialogAdded":Z
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez v2, :cond_2

    const-string v3, "fragmentManager"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const-string v3, "ColorPickerDialogTag"

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 298
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    const/4 v3, 0x0

    .line 206
    .local v3, "$i$a$-let-DrawingSurface$surfaceChanged$1":I
    if-eqz v2, :cond_3

    move-object v4, v2

    check-cast v4, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    invoke-virtual {v4}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->isAdded()Z

    move-result v1

    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v3    # "$i$a$-let-DrawingSurface$surfaceChanged$1":I
    goto :goto_1

    .restart local v2    # "fragment":Landroidx/fragment/app/Fragment;
    .restart local v3    # "$i$a$-let-DrawingSurface$surfaceChanged$1":I
    :cond_3
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type org.catrobat.paintroid.colorpicker.ColorPickerDialog"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 207
    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v3    # "$i$a$-let-DrawingSurface$surfaceChanged$1":I
    :cond_4
    :goto_1
    sget-object v2, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    const-string v3, "perspective"

    if-eq v0, v2, :cond_6

    sget-object v2, Lorg/catrobat/paintroid/tools/ToolType;->TRANSFORM:Lorg/catrobat/paintroid/tools/ToolType;

    if-eq v0, v2, :cond_6

    sget-object v2, Lorg/catrobat/paintroid/tools/ToolType;->TEXT:Lorg/catrobat/paintroid/tools/ToolType;

    if-eq v0, v2, :cond_6

    if-nez v1, :cond_6

    .line 208
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    if-nez v2, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v2}, Lorg/catrobat/paintroid/ui/Perspective;->resetScaleAndTranslation()V

    .line 210
    :cond_6
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    if-nez v2, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    const-string v4, "holder.surfaceFrame"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/catrobat/paintroid/ui/Perspective;->setSurfaceFrame(Landroid/graphics/Rect;)V

    .line 211
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->drawingThread:Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->start()V

    .line 212
    :cond_8
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->refreshDrawingSurface()V

    .line 213
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 217
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->drawingThread:Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->stop()V

    .line 218
    :cond_0
    new-instance v0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;

    new-instance v1, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;-><init>(Lorg/catrobat/paintroid/ui/DrawingSurface;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, p0, v1}, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;-><init>(Lorg/catrobat/paintroid/ui/DrawingSurface;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->drawingThread:Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;

    .line 219
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceReady:Z

    .line 223
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->drawingThread:Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->stop()V

    .line 224
    :cond_0
    return-void
.end method
