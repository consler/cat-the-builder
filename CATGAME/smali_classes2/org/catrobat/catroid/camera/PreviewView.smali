.class public final Lorg/catrobat/catroid/camera/PreviewView;
.super Landroid/widget/FrameLayout;
.source "PreviewView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/catroid/camera/PreviewView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "surfaceView",
        "Landroid/view/SurfaceView;",
        "getSurfaceView",
        "()Landroid/view/SurfaceView;",
        "createSurfaceProvider",
        "Landroidx/camera/core/Preview$SurfaceProvider;",
        "scaleView",
        "",
        "imageWidth",
        "",
        "imageHeight",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final surfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/catrobat/catroid/camera/PreviewView;->surfaceView:Landroid/view/SurfaceView;

    .line 37
    nop

    .line 38
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/camera/PreviewView;->addView(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method public static final synthetic access$scaleView(Lorg/catrobat/catroid/camera/PreviewView;II)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/camera/PreviewView;
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/camera/PreviewView;->scaleView(II)V

    return-void
.end method

.method private final scaleView(II)V
    .locals 5
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .line 54
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 55
    .local v0, "imageAspectRatio":F
    invoke-virtual {p0}, Lorg/catrobat/catroid/camera/PreviewView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/camera/PreviewView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 57
    .local v1, "screenAspectRatio":F
    const/4 v2, 0x1

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    const/16 v3, 0x17

    if-gez v2, :cond_1

    .line 58
    div-float v2, v0, v1

    .line 59
    .local v2, "scalingFactor":F
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v4, v3, :cond_0

    .line 60
    iget-object v3, p0, Lorg/catrobat/catroid/camera/PreviewView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lorg/catrobat/catroid/camera/PreviewView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 62
    :cond_0
    iget-object v3, p0, Lorg/catrobat/catroid/camera/PreviewView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v2}, Landroid/view/SurfaceView;->setScaleX(F)V

    .end local v2    # "scalingFactor":F
    goto :goto_0

    .line 64
    :cond_1
    mul-float v2, v0, v1

    .line 65
    .restart local v2    # "scalingFactor":F
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v4, v3, :cond_2

    .line 66
    iget-object v3, p0, Lorg/catrobat/catroid/camera/PreviewView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lorg/catrobat/catroid/camera/PreviewView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    :cond_2
    iget-object v3, p0, Lorg/catrobat/catroid/camera/PreviewView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v2}, Landroid/view/SurfaceView;->setScaleY(F)V

    .line 69
    .end local v2    # "scalingFactor":F
    :goto_0
    nop

    .line 70
    return-void
.end method


# virtual methods
.method public final createSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;
    .locals 1

    .line 41
    new-instance v0, Lorg/catrobat/catroid/camera/PreviewView$createSurfaceProvider$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/camera/PreviewView$createSurfaceProvider$1;-><init>(Lorg/catrobat/catroid/camera/PreviewView;)V

    check-cast v0, Landroidx/camera/core/Preview$SurfaceProvider;

    .line 51
    return-object v0
.end method

.method public final getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/camera/PreviewView;->surfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method
