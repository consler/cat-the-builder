.class final Lorg/catrobat/catroid/sensing/ColorDetection$callPixelCopyWithSurfaceView$1;
.super Ljava/lang/Object;
.source "ColorDetection.kt"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/sensing/ColorDetection;->callPixelCopyWithSurfaceView(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "copyResult",
        "",
        "onPixelCopyFinished"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $callback:Lkotlin/jvm/functions/Function1;

.field final synthetic $pixelCopyHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Landroid/graphics/Bitmap;Landroid/os/HandlerThread;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/sensing/ColorDetection$callPixelCopyWithSurfaceView$1;->$callback:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lorg/catrobat/catroid/sensing/ColorDetection$callPixelCopyWithSurfaceView$1;->$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/catrobat/catroid/sensing/ColorDetection$callPixelCopyWithSurfaceView$1;->$pixelCopyHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 2
    .param p1, "copyResult"    # I

    .line 122
    if-nez p1, :cond_0

    .line 123
    iget-object v0, p0, Lorg/catrobat/catroid/sensing/ColorDetection$callPixelCopyWithSurfaceView$1;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lorg/catrobat/catroid/sensing/ColorDetection$callPixelCopyWithSurfaceView$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/sensing/ColorDetection$callPixelCopyWithSurfaceView$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :goto_0
    nop

    .line 127
    iget-object v0, p0, Lorg/catrobat/catroid/sensing/ColorDetection$callPixelCopyWithSurfaceView$1;->$pixelCopyHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 128
    return-void
.end method
