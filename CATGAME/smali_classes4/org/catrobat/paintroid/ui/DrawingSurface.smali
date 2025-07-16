.class public Lorg/catrobat/paintroid/ui/DrawingSurface;
.super Landroid/view/SurfaceView;
.source "DrawingSurface.kt"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/ui/DrawingSurface$Companion;,
        Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawingSurface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawingSurface.kt\norg/catrobat/paintroid/ui/DrawingSurface\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,288:1\n1#2:289\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 C2\u00020\u00012\u00020\u0002:\u0002CDB\u001b\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B\u0011\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\u0002J\u0010\u0010/\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\u0002J\u0012\u00100\u001a\u0004\u0018\u0001012\u0006\u0010-\u001a\u00020.H\u0002J\u0012\u00102\u001a\u00020,2\u0008\u00103\u001a\u0004\u0018\u000101H\u0002J\u0008\u00104\u001a\u00020,H\u0014J\u0008\u00105\u001a\u00020,H\u0014J\u0010\u00106\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\u0002J\u0006\u00107\u001a\u00020,JN\u00108\u001a\u00020,2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\'\u001a\u00020(2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010%\u001a\u00020&2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010)\u001a\u00020*2\u0006\u0010\u001e\u001a\u00020\u001fJ\u0010\u00109\u001a\u00020,2\u0008\u0010:\u001a\u0004\u0018\u000101J(\u0010;\u001a\u00020,2\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\n2\u0006\u0010?\u001a\u00020\n2\u0006\u0010@\u001a\u00020\nH\u0016J\u0010\u0010A\u001a\u00020,2\u0006\u0010<\u001a\u00020=H\u0016J\u0010\u0010B\u001a\u00020,2\u0006\u0010<\u001a\u00020=H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020(X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006E"
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
        "drawerLayoutViewHolder",
        "Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;",
        "drawingSurfaceListener",
        "Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;",
        "drawingThread",
        "Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "framePaint",
        "idlingResource",
        "Landroidx/test/espresso/idling/CountingIdlingResource;",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "perspective",
        "Lorg/catrobat/paintroid/ui/Perspective;",
        "sharedPreferences",
        "Lorg/catrobat/paintroid/UserPreferences;",
        "surfaceDirty",
        "",
        "surfaceLock",
        "Ljava/lang/Object;",
        "surfaceReady",
        "toolOptionsViewController",
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;",
        "toolReference",
        "Lorg/catrobat/paintroid/tools/ToolReference;",
        "zoomController",
        "Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;",
        "doDraw",
        "",
        "surfaceViewCanvas",
        "Landroid/graphics/Canvas;",
        "drawBackground",
        "drawLayers",
        "Landroid/graphics/Bitmap;",
        "handleZoomCompatibility",
        "currentBitmap",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "prepareCanvas",
        "refreshDrawingSurface",
        "setArguments",
        "setBitmap",
        "bitmap",
        "surfaceChanged",
        "holder",
        "Landroid/view/SurfaceHolder;",
        "format",
        "width",
        "height",
        "surfaceCreated",
        "surfaceDestroyed",
        "Companion",
        "DrawLoop",
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


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/ui/DrawingSurface$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bgColor:I

.field private final canvasRect:Landroid/graphics/Rect;

.field private final checkeredPattern:Landroid/graphics/Paint;

.field private drawerLayoutViewHolder:Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;

.field private drawingSurfaceListener:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;

.field private drawingThread:Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;

.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final framePaint:Landroid/graphics/Paint;

.field private idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

.field private layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

.field private perspective:Lorg/catrobat/paintroid/ui/Perspective;

.field private sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

.field private surfaceDirty:Z

.field private surfaceLock:Ljava/lang/Object;

.field private surfaceReady:Z

.field private toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

.field private toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

.field private zoomController:Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;


# direct methods
.method public static synthetic $r8$lambda$UVilrbk7s3qIMghAuCOlnny46cM(Lorg/catrobat/paintroid/ui/DrawingSurface;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/ui/DrawingSurface;->handleZoomCompatibility$lambda-2(Lorg/catrobat/paintroid/ui/DrawingSurface;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/ui/DrawingSurface$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/ui/DrawingSurface$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/ui/DrawingSurface;->Companion:Lorg/catrobat/paintroid/ui/DrawingSurface$Companion;

    .line 118
    const-class v0, Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/paintroid/ui/DrawingSurface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 78
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->canvasRect:Landroid/graphics/Rect;

    .line 58
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->framePaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->checkeredPattern:Landroid/graphics/Paint;

    .line 81
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceLock:Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 84
    sget v2, Lorg/catrobat/paintroid/R$color;->pocketpaint_main_drawing_surface_background:I

    .line 82
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->bgColor:I

    const/high16 v1, -0x1000000

    .line 86
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v1, Landroid/graphics/Xfermode;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 90
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lorg/catrobat/paintroid/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 91
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 92
    check-cast v1, Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 93
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast p1, Landroid/graphics/Xfermode;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 94
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 95
    new-instance v0, Lorg/catrobat/paintroid/ui/DrawingSurface$callback$1;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/ui/DrawingSurface$callback$1;-><init>(Lorg/catrobat/paintroid/ui/DrawingSurface;)V

    check-cast v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    .line 113
    new-instance v1, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;

    invoke-direct {v1, v0, p1}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;-><init>(Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;F)V

    iput-object v1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->drawingSurfaceListener:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;

    .line 114
    check-cast v1, Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/ui/DrawingSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->canvasRect:Landroid/graphics/Rect;

    .line 58
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->framePaint:Landroid/graphics/Paint;

    .line 59
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->checkeredPattern:Landroid/graphics/Paint;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceLock:Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    sget v1, Lorg/catrobat/paintroid/R$color;->pocketpaint_main_drawing_surface_background:I

    .line 82
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->bgColor:I

    const/high16 v0, -0x1000000

    .line 86
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v0, Landroid/graphics/Xfermode;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 90
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/catrobat/paintroid/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 91
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 92
    check-cast v0, Landroid/graphics/Shader;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 93
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast p1, Landroid/graphics/Xfermode;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 94
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 95
    new-instance p2, Lorg/catrobat/paintroid/ui/DrawingSurface$callback$1;

    invoke-direct {p2, p0}, Lorg/catrobat/paintroid/ui/DrawingSurface$callback$1;-><init>(Lorg/catrobat/paintroid/ui/DrawingSurface;)V

    check-cast p2, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    .line 113
    new-instance v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;

    invoke-direct {v0, p2, p1}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;-><init>(Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;F)V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->drawingSurfaceListener:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;

    .line 114
    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static final synthetic access$doDraw(Lorg/catrobat/paintroid/ui/DrawingSurface;Landroid/graphics/Canvas;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/DrawingSurface;->doDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static final synthetic access$getIdlingResource$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Landroidx/test/espresso/idling/CountingIdlingResource;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    return-object p0
.end method

.method public static final synthetic access$getPerspective$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Lorg/catrobat/paintroid/ui/Perspective;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    return-object p0
.end method

.method public static final synthetic access$getSurfaceDirty$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceDirty:Z

    return p0
.end method

.method public static final synthetic access$getSurfaceLock$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Ljava/lang/Object;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getSurfaceReady$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceReady:Z

    return p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lorg/catrobat/paintroid/ui/DrawingSurface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getToolOptionsViewController$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    return-object p0
.end method

.method public static final synthetic access$getToolReference$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Lorg/catrobat/paintroid/tools/ToolReference;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    return-object p0
.end method

.method public static final synthetic access$setSurfaceDirty$p(Lorg/catrobat/paintroid/ui/DrawingSurface;Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceDirty:Z

    return-void
.end method

.method private final declared-synchronized doDraw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v0, :cond_0

    const-string v0, "layerModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    :try_start_1
    iget-boolean v1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceReady:Z

    if-eqz v1, :cond_1

    .line 148
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/DrawingSurface;->prepareCanvas(Landroid/graphics/Canvas;)V

    .line 149
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/DrawingSurface;->drawBackground(Landroid/graphics/Canvas;)V

    .line 150
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/DrawingSurface;->drawLayers(Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 151
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/DrawingSurface;->handleZoomCompatibility(Landroid/graphics/Bitmap;)V

    .line 153
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 146
    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final drawBackground(Landroid/graphics/Canvas;)V
    .locals 2

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 166
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->canvasRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    .line 167
    iget v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->bgColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 170
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->canvasRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->checkeredPattern:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 171
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->canvasRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->framePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawLayers(Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 9

    .line 175
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "toolReference"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    .line 176
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v3, "layerModel"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v2

    iget-object v4, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v4, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_2
    invoke-interface {v4}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 177
    iget-object v4, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v4, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_3
    invoke-interface {v4}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v4, v1

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v5, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_5
    invoke-interface {v5, v4}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerIndexOf(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    if-nez v0, :cond_6

    :goto_1
    move-object v5, v1

    goto :goto_2

    .line 179
    :cond_6
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v5}, Lorg/catrobat/paintroid/tools/ToolType;->name()Ljava/lang/String;

    move-result-object v5

    :goto_2
    sget-object v6, Lorg/catrobat/paintroid/tools/ToolType;->ERASER:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v6}, Lorg/catrobat/paintroid/tools/ToolType;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v5, v6, v7, v8, v1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 180
    iget-object v5, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v5, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_8
    check-cast v5, Lorg/catrobat/paintroid/model/LayerModel;

    invoke-virtual {v5, p1}, Lorg/catrobat/paintroid/model/LayerModel;->drawLayersOntoCanvas(Landroid/graphics/Canvas;)V

    .line 181
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    iget-object v5, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v5, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object v1, v5

    :goto_3
    check-cast v1, Lorg/catrobat/paintroid/model/LayerModel;

    invoke-virtual {v1, p1, v4, v0}, Lorg/catrobat/paintroid/model/LayerModel;->drawLayersOntoCanvasCorrectOrderEraser(Landroid/graphics/Canvas;Ljava/lang/Integer;Lorg/catrobat/paintroid/tools/Tool;)V

    goto :goto_5

    .line 184
    :cond_a
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 185
    iget-object v6, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v6, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    move-object v1, v6

    :goto_4
    check-cast v1, Lorg/catrobat/paintroid/model/LayerModel;

    invoke-virtual {v1, p1, v4, v5, v0}, Lorg/catrobat/paintroid/model/LayerModel;->drawLayersOntoCanvasCorrectOrder(Landroid/graphics/Canvas;Ljava/lang/Integer;Landroid/graphics/Canvas;Lorg/catrobat/paintroid/tools/Tool;)V

    :goto_5
    return-object v2
.end method

.method private final handleZoomCompatibility(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 191
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "toolReference"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    .line 192
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->zoomController:Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;

    if-nez v2, :cond_1

    const-string v2, "zoomController"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;->checkIfToolCompatibleWithZoomWindow(Lorg/catrobat/paintroid/tools/Tool;)Lorg/catrobat/paintroid/ui/zoomwindow/DefaultZoomWindowController$Constants;

    move-result-object v0

    sget-object v1, Lorg/catrobat/paintroid/ui/zoomwindow/DefaultZoomWindowController$Constants;->COMPATIBLE:Lorg/catrobat/paintroid/ui/zoomwindow/DefaultZoomWindowController$Constants;

    if-ne v0, v1, :cond_2

    .line 193
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/catrobat/paintroid/ui/DrawingSurface$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/paintroid/ui/DrawingSurface$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/ui/DrawingSurface;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private static final handleZoomCompatibility$lambda-2(Lorg/catrobat/paintroid/ui/DrawingSurface;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->zoomController:Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;

    if-nez p0, :cond_0

    const-string p0, "zoomController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0, p1}, Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private final prepareCanvas(Landroid/graphics/Canvas;)V
    .locals 5

    .line 157
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->canvasRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v2, "layerModel"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v1

    iget-object v4, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v4, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_1
    invoke-interface {v4}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 158
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    if-nez v0, :cond_2

    const-string v0, "perspective"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    invoke-virtual {v3, p1}, Lorg/catrobat/paintroid/ui/Perspective;->applyToCanvas(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 200
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 201
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 205
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 206
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public final refreshDrawingSurface()V
    .locals 2

    .line 210
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    monitor-enter v0

    const/4 v1, 0x1

    .line 212
    :try_start_0
    iput-boolean v1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceDirty:Z

    .line 213
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 214
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final setArguments(Lorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/ui/Perspective;Lorg/catrobat/paintroid/tools/ToolReference;Landroidx/test/espresso/idling/CountingIdlingResource;Landroidx/fragment/app/FragmentManager;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;Lorg/catrobat/paintroid/UserPreferences;)V
    .locals 1

    const-string v0, "layerModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "perspective"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolReference"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idlingResource"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawerLayoutViewHolder"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zoomController"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    .line 133
    iput-object p2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    .line 134
    iput-object p3, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    .line 135
    iput-object p6, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 136
    iput-object p4, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    .line 137
    iput-object p5, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 138
    iput-object p7, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->drawerLayoutViewHolder:Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;

    .line 139
    iput-object p8, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->zoomController:Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;

    .line 140
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->drawingSurfaceListener:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;

    invoke-virtual {p1, p8, p9}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->setZoomController(Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;Lorg/catrobat/paintroid/UserPreferences;)V

    .line 141
    iput-object p9, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

    return-void
.end method

.method public final declared-synchronized setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v0, :cond_0

    const-string v0, "layerModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 224
    iput-boolean p2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceReady:Z

    .line 226
    iget-object p3, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    const/4 p4, 0x0

    const-string v0, "perspective"

    if-nez p3, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, p4

    :cond_0
    invoke-virtual {p3}, Lorg/catrobat/paintroid/ui/Perspective;->getCallResetScaleAndTransformationOnStartUp()I

    move-result p3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_3

    .line 227
    iget-object p3, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    if-nez p3, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, p4

    :cond_1
    invoke-virtual {p3}, Lorg/catrobat/paintroid/ui/Perspective;->resetScaleAndTranslation()V

    .line 228
    iget-object p3, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    if-nez p3, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, p4

    :cond_2
    invoke-virtual {p3}, Lorg/catrobat/paintroid/ui/Perspective;->getCallResetScaleAndTransformationOnStartUp()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p3, v1}, Lorg/catrobat/paintroid/ui/Perspective;->setCallResetScaleAndTransformationOnStartUp(I)V

    .line 231
    :cond_3
    iget-object p2, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    if-nez p2, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object p4, p2

    :goto_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    const-string p2, "holder.surfaceFrame"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lorg/catrobat/paintroid/ui/Perspective;->setSurfaceFrame(Landroid/graphics/Rect;)V

    .line 232
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->drawingThread:Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->start()V

    .line 233
    :goto_1
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->refreshDrawingSurface()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 237
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 238
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->drawingThread:Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->stop()V

    .line 239
    :goto_0
    new-instance p1, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;

    new-instance v0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;-><init>(Lorg/catrobat/paintroid/ui/DrawingSurface;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p1, p0, v0}, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;-><init>(Lorg/catrobat/paintroid/ui/DrawingSurface;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->drawingThread:Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 243
    iput-boolean p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->surfaceReady:Z

    .line 244
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface;->drawingThread:Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->stop()V

    :goto_0
    return-void
.end method
