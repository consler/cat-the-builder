.class public final Lorg/catrobat/catroid/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/camera/CameraManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 B2\u00020\u0001:\u0001BB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010(\u001a\u00020\u0010H\u0003J\u0008\u0010)\u001a\u00020\u0010H\u0002J\u0010\u0010*\u001a\u00020\u00102\u0006\u0010+\u001a\u00020,H\u0003J\u0006\u0010-\u001a\u00020.J\u0006\u0010/\u001a\u00020.J\u0006\u00100\u001a\u00020.J\u0008\u00101\u001a\u00020\u001fH\u0016J\u0008\u00102\u001a\u00020.H\u0002J\u0006\u00103\u001a\u00020.J\u0006\u00104\u001a\u00020.J\u0006\u00105\u001a\u00020.J\u0010\u00106\u001a\u00020.2\u0006\u00107\u001a\u000208H\u0002J\u0006\u00109\u001a\u00020\u0010J\u0006\u0010:\u001a\u00020.J\u0006\u0010;\u001a\u00020.J\u0010\u0010<\u001a\u00020\u00102\u0006\u0010=\u001a\u00020\rH\u0002J\u0006\u0010>\u001a\u00020.J\u0008\u0010?\u001a\u00020\u0010H\u0002J\u0006\u0010@\u001a\u00020.J\u0008\u0010A\u001a\u00020.H\u0003R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u0011\u0010\u0016\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013R\u0011\u0010\u0018\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0013R\u0011\u0010\u001a\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0013R\u0011\u0010\u001c\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0013R\u0011\u0010\u001d\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0013R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\"\u001a\u00020#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u001e\u0010&\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006C"
    }
    d2 = {
        "Lorg/catrobat/catroid/camera/CameraManager;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "stageActivity",
        "Lorg/catrobat/catroid/stage/StageActivity;",
        "(Lorg/catrobat/catroid/stage/StageActivity;)V",
        "analysisUseCase",
        "Landroidx/camera/core/ImageAnalysis;",
        "cameraProvider",
        "Landroidx/camera/lifecycle/ProcessCameraProvider;",
        "kotlin.jvm.PlatformType",
        "currentCamera",
        "Landroidx/camera/core/Camera;",
        "currentCameraSelector",
        "Landroidx/camera/core/CameraSelector;",
        "defaultCameraSelector",
        "<set-?>",
        "",
        "detectionOn",
        "getDetectionOn",
        "()Z",
        "flashOn",
        "getFlashOn",
        "hasBackCamera",
        "getHasBackCamera",
        "hasFlash",
        "getHasFlash",
        "hasFrontCamera",
        "getHasFrontCamera",
        "isCameraActive",
        "isCameraFacingFront",
        "lifecycle",
        "Landroidx/lifecycle/LifecycleRegistry;",
        "previewUseCase",
        "Landroidx/camera/core/Preview;",
        "previewView",
        "Lorg/catrobat/catroid/camera/PreviewView;",
        "getPreviewView",
        "()Lorg/catrobat/catroid/camera/PreviewView;",
        "previewVisible",
        "getPreviewVisible",
        "bindFaceAndTextDetector",
        "bindPreview",
        "bindUseCase",
        "useCase",
        "Landroidx/camera/core/UseCase;",
        "destroy",
        "",
        "disableFlash",
        "enableFlash",
        "getLifecycle",
        "handleError",
        "pause",
        "reset",
        "resume",
        "runInMainThreadAndWait",
        "runnable",
        "Ljava/lang/Runnable;",
        "startDetection",
        "startPreview",
        "stopPreview",
        "switchCamera",
        "cameraSelector",
        "switchToBackCamera",
        "switchToDefaultCamera",
        "switchToFrontCamera",
        "unbindPreview",
        "Companion",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/catroid/camera/CameraManager$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final analysisUseCase:Landroidx/camera/core/ImageAnalysis;

.field private final cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

.field private currentCamera:Landroidx/camera/core/Camera;

.field private currentCameraSelector:Landroidx/camera/core/CameraSelector;

.field private final defaultCameraSelector:Landroidx/camera/core/CameraSelector;

.field private detectionOn:Z

.field private flashOn:Z

.field private final hasBackCamera:Z

.field private final hasFlash:Z

.field private final hasFrontCamera:Z

.field private final lifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field private final previewUseCase:Landroidx/camera/core/Preview;

.field private final previewView:Lorg/catrobat/catroid/camera/PreviewView;

.field private previewVisible:Z

.field private final stageActivity:Lorg/catrobat/catroid/stage/StageActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/camera/CameraManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/camera/CameraManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/camera/CameraManager;->Companion:Lorg/catrobat/catroid/camera/CameraManager$Companion;

    .line 76
    const-class v0, Lorg/catrobat/catroid/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/camera/CameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/stage/StageActivity;)V
    .locals 4
    .param p1, "stageActivity"    # Lorg/catrobat/catroid/stage/StageActivity;

    const-string v0, "stageActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/camera/CameraManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    .line 49
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    iput-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 50
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 51
    new-instance v0, Lorg/catrobat/catroid/camera/PreviewView;

    iget-object v1, p0, Lorg/catrobat/catroid/camera/CameraManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/camera/PreviewView;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$apply":Lorg/catrobat/catroid/camera/PreviewView;
    const/4 v2, 0x0

    .line 52
    .local v2, "$i$a$-apply-CameraManager$previewView$1":I
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/camera/PreviewView;->setVisibility(I)V

    .line 53
    nop

    .end local v1    # "$this$apply":Lorg/catrobat/catroid/camera/PreviewView;
    .end local v2    # "$i$a$-apply-CameraManager$previewView$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 51
    iput-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewView:Lorg/catrobat/catroid/camera/PreviewView;

    .line 55
    new-instance v0, Landroidx/camera/core/Preview$Builder;

    invoke-direct {v0}, Landroidx/camera/core/Preview$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/camera/core/Preview$Builder;->build()Landroidx/camera/core/Preview;

    move-result-object v0

    const-string v1, "Preview.Builder().build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewUseCase:Landroidx/camera/core/Preview;

    .line 56
    new-instance v0, Landroidx/camera/core/ImageAnalysis$Builder;

    invoke-direct {v0}, Landroidx/camera/core/ImageAnalysis$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis$Builder;->build()Landroidx/camera/core/ImageAnalysis;

    move-result-object v0

    const-string v1, "ImageAnalysis.Builder().build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->analysisUseCase:Landroidx/camera/core/ImageAnalysis;

    .line 62
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    sget-object v1, Landroidx/camera/core/CameraSelector;->DEFAULT_FRONT_CAMERA:Landroidx/camera/core/CameraSelector;

    invoke-virtual {v0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->hasCamera(Landroidx/camera/core/CameraSelector;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->hasFrontCamera:Z

    .line 63
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    sget-object v1, Landroidx/camera/core/CameraSelector;->DEFAULT_BACK_CAMERA:Landroidx/camera/core/CameraSelector;

    invoke-virtual {v0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->hasCamera(Landroidx/camera/core/CameraSelector;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->hasBackCamera:Z

    .line 64
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->hasFlash:Z

    .line 79
    nop

    .line 80
    iget-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->hasFrontCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->hasBackCamera:Z

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    .line 82
    iget-object v1, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewView:Lorg/catrobat/catroid/camera/PreviewView;

    check-cast v1, Landroid/view/View;

    .line 83
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    .line 81
    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/stage/StageActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    :cond_1
    iget-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->hasFrontCamera:Z

    if-eqz v0, :cond_2

    .line 88
    sget-object v0, Landroidx/camera/core/CameraSelector;->DEFAULT_FRONT_CAMERA:Landroidx/camera/core/CameraSelector;

    const-string v1, "CameraSelector.DEFAULT_FRONT_CAMERA"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_2
    sget-object v0, Landroidx/camera/core/CameraSelector;->DEFAULT_BACK_CAMERA:Landroidx/camera/core/CameraSelector;

    const-string v1, "CameraSelector.DEFAULT_BACK_CAMERA"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    :goto_0
    iput-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->defaultCameraSelector:Landroidx/camera/core/CameraSelector;

    .line 92
    iput-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->currentCameraSelector:Landroidx/camera/core/CameraSelector;

    .line 93
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 94
    return-void
.end method

.method public static final synthetic access$bindPreview(Lorg/catrobat/catroid/camera/CameraManager;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/camera/CameraManager;

    .line 48
    invoke-direct {p0}, Lorg/catrobat/catroid/camera/CameraManager;->bindPreview()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getCameraProvider$p(Lorg/catrobat/catroid/camera/CameraManager;)Landroidx/camera/lifecycle/ProcessCameraProvider;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/camera/CameraManager;

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    return-object v0
.end method

.method public static final synthetic access$getFlashOn$p(Lorg/catrobat/catroid/camera/CameraManager;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/camera/CameraManager;

    .line 48
    iget-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->flashOn:Z

    return v0
.end method

.method public static final synthetic access$getPreviewUseCase$p(Lorg/catrobat/catroid/camera/CameraManager;)Landroidx/camera/core/Preview;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/camera/CameraManager;

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewUseCase:Landroidx/camera/core/Preview;

    return-object v0
.end method

.method public static final synthetic access$setFlashOn$p(Lorg/catrobat/catroid/camera/CameraManager;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/camera/CameraManager;
    .param p1, "<set-?>"    # Z

    .line 48
    iput-boolean p1, p0, Lorg/catrobat/catroid/camera/CameraManager;->flashOn:Z

    return-void
.end method

.method public static final synthetic access$switchCamera(Lorg/catrobat/catroid/camera/CameraManager;Landroidx/camera/core/CameraSelector;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/camera/CameraManager;
    .param p1, "cameraSelector"    # Landroidx/camera/core/CameraSelector;

    .line 48
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/camera/CameraManager;->switchCamera(Landroidx/camera/core/CameraSelector;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$unbindPreview(Lorg/catrobat/catroid/camera/CameraManager;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/camera/CameraManager;

    .line 48
    invoke-direct {p0}, Lorg/catrobat/catroid/camera/CameraManager;->unbindPreview()V

    return-void
.end method

.method private final bindFaceAndTextDetector()Z
    .locals 7

    .line 236
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->analysisUseCase:Landroidx/camera/core/ImageAnalysis;

    check-cast v0, Landroidx/camera/core/UseCase;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/camera/CameraManager;->bindUseCase(Landroidx/camera/core/UseCase;)Z

    move-result v0

    move v1, v0

    .local v1, "it":Z
    const/4 v2, 0x0

    .line 237
    .local v2, "$i$a$-also-CameraManager$bindFaceAndTextDetector$1":I
    const-class v3, Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v3, v4, v4, v5, v4}, Lorg/koin/java/KoinJavaComponent;->get$default(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    .line 238
    .local v3, "mobileServiceAvailability":Lorg/catrobat/catroid/utils/MobileServiceAvailability;
    iget-object v4, p0, Lorg/catrobat/catroid/camera/CameraManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/utils/MobileServiceAvailability;->isGmsAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 239
    sget-object v4, Lorg/catrobat/catroid/camera/CatdroidImageAnalyzer;->INSTANCE:Lorg/catrobat/catroid/camera/CatdroidImageAnalyzer;

    iget-object v5, p0, Lorg/catrobat/catroid/camera/CameraManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v5}, Lorg/catrobat/catroid/stage/StageActivity;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/camera/CatdroidImageAnalyzer;->setActiveDetectorsWithContext(Landroid/content/Context;)V

    .line 240
    iget-object v4, p0, Lorg/catrobat/catroid/camera/CameraManager;->analysisUseCase:Landroidx/camera/core/ImageAnalysis;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    sget-object v6, Lorg/catrobat/catroid/camera/CatdroidImageAnalyzer;->INSTANCE:Lorg/catrobat/catroid/camera/CatdroidImageAnalyzer;

    check-cast v6, Landroidx/camera/core/ImageAnalysis$Analyzer;

    invoke-virtual {v4, v5, v6}, Landroidx/camera/core/ImageAnalysis;->setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    goto :goto_0

    .line 241
    :cond_0
    iget-object v4, p0, Lorg/catrobat/catroid/camera/CameraManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/utils/MobileServiceAvailability;->isHmsAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    iget-object v4, p0, Lorg/catrobat/catroid/camera/CameraManager;->analysisUseCase:Landroidx/camera/core/ImageAnalysis;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    sget-object v6, Lorg/catrobat/catroid/camera/FaceTextPoseDetectorHuawei;->INSTANCE:Lorg/catrobat/catroid/camera/FaceTextPoseDetectorHuawei;

    check-cast v6, Landroidx/camera/core/ImageAnalysis$Analyzer;

    invoke-virtual {v4, v5, v6}, Landroidx/camera/core/ImageAnalysis;->setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    .line 243
    .end local v3    # "mobileServiceAvailability":Lorg/catrobat/catroid/utils/MobileServiceAvailability;
    :cond_1
    :goto_0
    nop

    .line 244
    nop

    .line 236
    .end local v1    # "it":Z
    .end local v2    # "$i$a$-also-CameraManager$bindFaceAndTextDetector$1":I
    nop

    .line 244
    return v0
.end method

.method private final bindPreview()Z
    .locals 5

    .line 218
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewView:Lorg/catrobat/catroid/camera/PreviewView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/camera/PreviewView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewUseCase:Landroidx/camera/core/Preview;

    check-cast v0, Landroidx/camera/core/UseCase;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/camera/CameraManager;->bindUseCase(Landroidx/camera/core/UseCase;)Z

    move-result v0

    move v1, v0

    .local v1, "it":Z
    const/4 v2, 0x0

    .line 220
    .local v2, "$i$a$-also-CameraManager$bindPreview$1":I
    iget-object v3, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewUseCase:Landroidx/camera/core/Preview;

    iget-object v4, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewView:Lorg/catrobat/catroid/camera/PreviewView;

    invoke-virtual {v4}, Lorg/catrobat/catroid/camera/PreviewView;->createSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 221
    iget-boolean v3, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewVisible:Z

    if-nez v3, :cond_0

    .line 222
    iget-object v3, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewView:Lorg/catrobat/catroid/camera/PreviewView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/camera/PreviewView;->setVisibility(I)V

    .line 224
    :cond_0
    nop

    .line 219
    .end local v1    # "it":Z
    .end local v2    # "$i$a$-also-CameraManager$bindPreview$1":I
    return v0
.end method

.method private final bindUseCase(Landroidx/camera/core/UseCase;)Z
    .locals 6
    .param p1, "useCase"    # Landroidx/camera/core/UseCase;

    .line 248
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->isBound(Landroidx/camera/core/UseCase;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    new-array v3, v1, [Landroidx/camera/core/UseCase;

    aput-object p1, v3, v2

    invoke-virtual {v0, v3}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbind([Landroidx/camera/core/UseCase;)V

    .line 251
    :cond_0
    nop

    .line 252
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 253
    move-object v3, p0

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    .line 254
    iget-object v4, p0, Lorg/catrobat/catroid/camera/CameraManager;->currentCameraSelector:Landroidx/camera/core/CameraSelector;

    new-array v5, v1, [Landroidx/camera/core/UseCase;

    .line 255
    aput-object p1, v5, v2

    .line 252
    invoke-virtual {v0, v3, v4, v5}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->currentCamera:Landroidx/camera/core/Camera;

    .line 257
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lorg/catrobat/catroid/camera/CameraManager;->flashOn:Z

    invoke-interface {v0, v3}, Landroidx/camera/core/CameraControl;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 258
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lorg/catrobat/catroid/camera/CameraManager;->TAG:Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "No suitable camera found."

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    invoke-direct {p0}, Lorg/catrobat/catroid/camera/CameraManager;->handleError()V

    .line 267
    move v1, v2

    goto :goto_0

    .line 260
    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 261
    .local v0, "exception":Ljava/lang/IllegalStateException;
    sget-object v1, Lorg/catrobat/catroid/camera/CameraManager;->TAG:Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Could not bind use case."

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    invoke-direct {p0}, Lorg/catrobat/catroid/camera/CameraManager;->handleError()V

    .line 263
    move v1, v2

    .line 251
    .end local v0    # "exception":Ljava/lang/IllegalStateException;
    :goto_0
    return v1
.end method

.method private final handleError()V
    .locals 3

    .line 281
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f1201b6

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lorg/catrobat/catroid/camera/CameraManager;->destroy()V

    .line 283
    return-void
.end method

.method private final runInMainThreadAndWait(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 272
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 273
    .local v0, "executionLatch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lorg/catrobat/catroid/camera/CameraManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    new-instance v2, Lorg/catrobat/catroid/camera/CameraManager$runInMainThreadAndWait$1;

    invoke-direct {v2, p1, v0}, Lorg/catrobat/catroid/camera/CameraManager$runInMainThreadAndWait$1;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/stage/StageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 278
    return-void
.end method

.method private final switchCamera(Landroidx/camera/core/CameraSelector;)Z
    .locals 2
    .param p1, "cameraSelector"    # Landroidx/camera/core/CameraSelector;

    .line 145
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->currentCameraSelector:Landroidx/camera/core/CameraSelector;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 146
    iput-object p1, p0, Lorg/catrobat/catroid/camera/CameraManager;->currentCameraSelector:Landroidx/camera/core/CameraSelector;

    .line 147
    const/4 v0, 0x0

    check-cast v0, Landroidx/camera/core/Camera;

    iput-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->currentCamera:Landroidx/camera/core/Camera;

    .line 148
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 149
    invoke-direct {p0}, Lorg/catrobat/catroid/camera/CameraManager;->bindPreview()Z

    .line 150
    invoke-direct {p0}, Lorg/catrobat/catroid/camera/CameraManager;->bindFaceAndTextDetector()Z

    .line 151
    return v1

    .line 153
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final switchToDefaultCamera()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->defaultCameraSelector:Landroidx/camera/core/CameraSelector;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/camera/CameraManager;->switchCamera(Landroidx/camera/core/CameraSelector;)Z

    move-result v0

    return v0
.end method

.method private final unbindPreview()V
    .locals 4

    .line 229
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/camera/core/UseCase;

    iget-object v2, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewUseCase:Landroidx/camera/core/Preview;

    check-cast v2, Landroidx/camera/core/UseCase;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbind([Landroidx/camera/core/UseCase;)V

    .line 230
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    iget-object v1, p0, Lorg/catrobat/catroid/camera/CameraManager;->analysisUseCase:Landroidx/camera/core/ImageAnalysis;

    check-cast v1, Landroidx/camera/core/UseCase;

    invoke-virtual {v0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->isBound(Landroidx/camera/core/UseCase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    check-cast v0, Landroidx/camera/core/Camera;

    iput-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->currentCamera:Landroidx/camera/core/Camera;

    .line 233
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 113
    .end local p0    # "this":Lorg/catrobat/catroid/camera/CameraManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized disableFlash()V
    .locals 2

    monitor-enter p0

    .line 199
    :try_start_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->flashOn:Z

    if-eqz v0, :cond_1

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->flashOn:Z

    .line 201
    iget-object v1, p0, Lorg/catrobat/catroid/camera/CameraManager;->currentCamera:Landroidx/camera/core/Camera;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Landroidx/camera/core/CameraControl;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 202
    .end local p0    # "this":Lorg/catrobat/catroid/camera/CameraManager;
    :cond_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewVisible:Z

    if-nez v0, :cond_1

    .line 203
    new-instance v0, Lorg/catrobat/catroid/camera/CameraManager$disableFlash$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/camera/CameraManager$disableFlash$1;-><init>(Lorg/catrobat/catroid/camera/CameraManager;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/camera/CameraManager;->runInMainThreadAndWait(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_1
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized enableFlash()V
    .locals 3

    monitor-enter p0

    .line 184
    :try_start_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->flashOn:Z

    if-nez v0, :cond_3

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->flashOn:Z

    .line 186
    iget-object v1, p0, Lorg/catrobat/catroid/camera/CameraManager;->currentCamera:Landroidx/camera/core/Camera;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/camera/core/CameraInfo;->hasFlashUnit()Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_1

    .end local p0    # "this":Lorg/catrobat/catroid/camera/CameraManager;
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/camera/CameraManager;->isCameraFacingFront()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {p0}, Lorg/catrobat/catroid/camera/CameraManager;->switchToBackCamera()V

    .line 189
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/camera/CameraManager;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    iget-object v2, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewUseCase:Landroidx/camera/core/Preview;

    check-cast v2, Landroidx/camera/core/UseCase;

    invoke-virtual {v1, v2}, Landroidx/camera/lifecycle/ProcessCameraProvider;->isBound(Landroidx/camera/core/UseCase;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 190
    new-instance v0, Lorg/catrobat/catroid/camera/CameraManager$enableFlash$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/camera/CameraManager$enableFlash$1;-><init>(Lorg/catrobat/catroid/camera/CameraManager;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/camera/CameraManager;->runInMainThreadAndWait(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v1, p0, Lorg/catrobat/catroid/camera/CameraManager;->currentCamera:Landroidx/camera/core/Camera;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Landroidx/camera/core/CameraControl;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_3
    :goto_0
    nop

    .line 195
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getDetectionOn()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->detectionOn:Z

    return v0
.end method

.method public final getFlashOn()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->flashOn:Z

    return v0
.end method

.method public final getHasBackCamera()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->hasBackCamera:Z

    return v0
.end method

.method public final getHasFlash()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->hasFlash:Z

    return v0
.end method

.method public final getHasFrontCamera()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->hasFrontCamera:Z

    return v0
.end method

.method public bridge synthetic getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/catrobat/catroid/camera/CameraManager;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle;

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/LifecycleRegistry;
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public final getPreviewView()Lorg/catrobat/catroid/camera/PreviewView;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewView:Lorg/catrobat/catroid/camera/PreviewView;

    return-object v0
.end method

.method public final getPreviewVisible()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewVisible:Z

    return v0
.end method

.method public final isCameraActive()Z
    .locals 4

    .line 100
    nop

    .line 101
    nop

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/camera/CameraManager;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v1}, Landroidx/lifecycle/LifecycleRegistry;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    iget-object v1, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewUseCase:Landroidx/camera/core/Preview;

    check-cast v1, Landroidx/camera/core/UseCase;

    invoke-virtual {v0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->isBound(Landroidx/camera/core/UseCase;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    iget-object v1, p0, Lorg/catrobat/catroid/camera/CameraManager;->analysisUseCase:Landroidx/camera/core/ImageAnalysis;

    check-cast v1, Landroidx/camera/core/UseCase;

    invoke-virtual {v0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->isBound(Landroidx/camera/core/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v2
.end method

.method public final isCameraFacingFront()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->currentCameraSelector:Landroidx/camera/core/CameraSelector;

    sget-object v1, Landroidx/camera/core/CameraSelector;->DEFAULT_FRONT_CAMERA:Landroidx/camera/core/CameraSelector;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 118
    .end local p0    # "this":Lorg/catrobat/catroid/camera/CameraManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 105
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->flashOn:Z

    .line 106
    iput-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewVisible:Z

    .line 107
    iput-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->detectionOn:Z

    .line 108
    invoke-direct {p0}, Lorg/catrobat/catroid/camera/CameraManager;->unbindPreview()V

    .line 109
    invoke-direct {p0}, Lorg/catrobat/catroid/camera/CameraManager;->switchToDefaultCamera()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 104
    .end local p0    # "this":Lorg/catrobat/catroid/camera/CameraManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resume()V
    .locals 2

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 125
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->currentCamera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/catrobat/catroid/camera/CameraManager;->flashOn:Z

    invoke-interface {v0, v1}, Landroidx/camera/core/CameraControl;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local p0    # "this":Lorg/catrobat/catroid/camera/CameraManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startDetection()Z
    .locals 2

    monitor-enter p0

    .line 210
    :try_start_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->detectionOn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 211
    iput-boolean v1, p0, Lorg/catrobat/catroid/camera/CameraManager;->detectionOn:Z

    .line 212
    invoke-direct {p0}, Lorg/catrobat/catroid/camera/CameraManager;->bindFaceAndTextDetector()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .end local p0    # "this":Lorg/catrobat/catroid/camera/CameraManager;
    :cond_0
    monitor-exit p0

    return v1

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startPreview()V
    .locals 1

    monitor-enter p0

    .line 158
    :try_start_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewVisible:Z

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewVisible:Z

    .line 160
    new-instance v0, Lorg/catrobat/catroid/camera/CameraManager$startPreview$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/camera/CameraManager$startPreview$1;-><init>(Lorg/catrobat/catroid/camera/CameraManager;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/camera/CameraManager;->runInMainThreadAndWait(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .end local p0    # "this":Lorg/catrobat/catroid/camera/CameraManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stopPreview()V
    .locals 1

    monitor-enter p0

    .line 171
    :try_start_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewVisible:Z

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->previewVisible:Z

    .line 173
    new-instance v0, Lorg/catrobat/catroid/camera/CameraManager$stopPreview$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/camera/CameraManager$stopPreview$1;-><init>(Lorg/catrobat/catroid/camera/CameraManager;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/camera/CameraManager;->runInMainThreadAndWait(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local p0    # "this":Lorg/catrobat/catroid/camera/CameraManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized switchToBackCamera()V
    .locals 1

    monitor-enter p0

    .line 137
    :try_start_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->hasBackCamera:Z

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Lorg/catrobat/catroid/camera/CameraManager$switchToBackCamera$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/camera/CameraManager$switchToBackCamera$1;-><init>(Lorg/catrobat/catroid/camera/CameraManager;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/camera/CameraManager;->runInMainThreadAndWait(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local p0    # "this":Lorg/catrobat/catroid/camera/CameraManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized switchToFrontCamera()V
    .locals 1

    monitor-enter p0

    .line 130
    :try_start_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/camera/CameraManager;->hasFrontCamera:Z

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lorg/catrobat/catroid/camera/CameraManager$switchToFrontCamera$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/camera/CameraManager$switchToFrontCamera$1;-><init>(Lorg/catrobat/catroid/camera/CameraManager;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/camera/CameraManager;->runInMainThreadAndWait(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local p0    # "this":Lorg/catrobat/catroid/camera/CameraManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
