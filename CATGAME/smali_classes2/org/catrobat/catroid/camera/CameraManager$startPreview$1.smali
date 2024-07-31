.class final Lorg/catrobat/catroid/camera/CameraManager$startPreview$1;
.super Ljava/lang/Object;
.source "CameraManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/camera/CameraManager;->startPreview()V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/camera/CameraManager;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/camera/CameraManager;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/camera/CameraManager$startPreview$1;->this$0:Lorg/catrobat/catroid/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 161
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager$startPreview$1;->this$0:Lorg/catrobat/catroid/camera/CameraManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/camera/CameraManager;->getPreviewView()Lorg/catrobat/catroid/camera/PreviewView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/camera/PreviewView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager$startPreview$1;->this$0:Lorg/catrobat/catroid/camera/CameraManager;

    invoke-static {v0}, Lorg/catrobat/catroid/camera/CameraManager;->access$getCameraProvider$p(Lorg/catrobat/catroid/camera/CameraManager;)Landroidx/camera/lifecycle/ProcessCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/camera/CameraManager$startPreview$1;->this$0:Lorg/catrobat/catroid/camera/CameraManager;

    invoke-static {v1}, Lorg/catrobat/catroid/camera/CameraManager;->access$getPreviewUseCase$p(Lorg/catrobat/catroid/camera/CameraManager;)Landroidx/camera/core/Preview;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/UseCase;

    invoke-virtual {v0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->isBound(Landroidx/camera/core/UseCase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager$startPreview$1;->this$0:Lorg/catrobat/catroid/camera/CameraManager;

    invoke-static {v0}, Lorg/catrobat/catroid/camera/CameraManager;->access$bindPreview(Lorg/catrobat/catroid/camera/CameraManager;)Z

    .line 165
    :cond_0
    return-void
.end method
