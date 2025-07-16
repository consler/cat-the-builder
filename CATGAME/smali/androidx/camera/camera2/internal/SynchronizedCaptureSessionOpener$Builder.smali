.class Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$Builder;
.super Ljava/lang/Object;
.source "SynchronizedCaptureSessionOpener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private final mCaptureSessionRepository:Landroidx/camera/camera2/internal/CaptureSessionRepository;

.field private final mCompatHandler:Landroid/os/Handler;

.field private final mEnableFeature:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mSupportedHardwareLevel:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;Landroidx/camera/camera2/internal/CaptureSessionRepository;I)V
    .locals 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$Builder;->mEnableFeature:Ljava/util/Set;

    .line 230
    iput-object p1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 231
    iput-object p2, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$Builder;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 232
    iput-object p3, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$Builder;->mCompatHandler:Landroid/os/Handler;

    .line 233
    iput-object p4, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$Builder;->mCaptureSessionRepository:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    .line 234
    iput p5, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$Builder;->mSupportedHardwareLevel:I

    const/4 p1, 0x2

    if-eq p5, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "deferrableSurface_close"

    .line 243
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ne p5, p1, :cond_1

    const-string p1, "wait_for_request"

    .line 248
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method build()Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener;
    .locals 8

    .line 254
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$Builder;->mEnableFeature:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener;

    new-instance v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iget-object v2, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$Builder;->mCaptureSessionRepository:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v3, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$Builder;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$Builder;->mCompatHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;-><init>(Landroidx/camera/camera2/internal/CaptureSessionRepository;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener;-><init>(Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$OpenerImpl;)V

    return-object v0

    .line 260
    :cond_0
    new-instance v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener;

    new-instance v7, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

    iget-object v2, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$Builder;->mEnableFeature:Ljava/util/Set;

    iget-object v3, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$Builder;->mCaptureSessionRepository:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v4, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$Builder;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$Builder;->mCompatHandler:Landroid/os/Handler;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;-><init>(Ljava/util/Set;Landroidx/camera/camera2/internal/CaptureSessionRepository;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;)V

    invoke-direct {v0, v7}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener;-><init>(Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener$OpenerImpl;)V

    return-object v0
.end method
