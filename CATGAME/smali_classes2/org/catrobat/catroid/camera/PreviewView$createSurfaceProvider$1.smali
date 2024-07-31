.class final Lorg/catrobat/catroid/camera/PreviewView$createSurfaceProvider$1;
.super Ljava/lang/Object;
.source "PreviewView.kt"

# interfaces
.implements Landroidx/camera/core/Preview$SurfaceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/camera/PreviewView;->createSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "request",
        "Landroidx/camera/core/SurfaceRequest;",
        "onSurfaceRequested"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/camera/PreviewView;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/camera/PreviewView;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/camera/PreviewView$createSurfaceProvider$1;->this$0:Lorg/catrobat/catroid/camera/PreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;)V
    .locals 5
    .param p1, "request"    # Landroidx/camera/core/SurfaceRequest;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getResolution()Landroid/util/Size;

    move-result-object v0

    .local v0, "$this$with":Landroid/util/Size;
    const/4 v1, 0x0

    .line 43
    .local v1, "$i$a$-with-PreviewView$createSurfaceProvider$1$1":I
    iget-object v2, p0, Lorg/catrobat/catroid/camera/PreviewView$createSurfaceProvider$1;->this$0:Lorg/catrobat/catroid/camera/PreviewView;

    invoke-virtual {v2}, Lorg/catrobat/catroid/camera/PreviewView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 44
    iget-object v2, p0, Lorg/catrobat/catroid/camera/PreviewView$createSurfaceProvider$1;->this$0:Lorg/catrobat/catroid/camera/PreviewView;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/catrobat/catroid/camera/PreviewView;->access$scaleView(Lorg/catrobat/catroid/camera/PreviewView;II)V

    .line 45
    nop

    .line 42
    .end local v0    # "$this$with":Landroid/util/Size;
    .end local v1    # "$i$a$-with-PreviewView$createSurfaceProvider$1$1":I
    nop

    .line 46
    nop

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/camera/PreviewView$createSurfaceProvider$1;->this$0:Lorg/catrobat/catroid/camera/PreviewView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/camera/PreviewView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const-string v1, "surfaceView.holder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 49
    sget-object v2, Lorg/catrobat/catroid/camera/PreviewView$createSurfaceProvider$1$2;->INSTANCE:Lorg/catrobat/catroid/camera/PreviewView$createSurfaceProvider$1$2;

    check-cast v2, Landroidx/core/util/Consumer;

    .line 46
    invoke-virtual {p1, v0, v1, v2}, Landroidx/camera/core/SurfaceRequest;->provideSurface(Landroid/view/Surface;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 51
    return-void
.end method
