.class final Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;
.super Ljava/lang/Object;
.source "UseCaseAttachState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/UseCaseAttachState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UseCaseAttachInfo"
.end annotation


# instance fields
.field private mActive:Z

.field private mAttached:Z

.field private final mSessionConfig:Landroidx/camera/core/impl/SessionConfig;


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/SessionConfig;)V
    .locals 1
    .param p1, "sessionConfig"    # Landroidx/camera/core/impl/SessionConfig;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->mAttached:Z

    .line 230
    iput-boolean v0, p0, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->mActive:Z

    .line 233
    iput-object p1, p0, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->mSessionConfig:Landroidx/camera/core/impl/SessionConfig;

    .line 234
    return-void
.end method


# virtual methods
.method getActive()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->mActive:Z

    return v0
.end method

.method getAttached()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->mAttached:Z

    return v0
.end method

.method getSessionConfig()Landroidx/camera/core/impl/SessionConfig;
    .locals 1

    .line 238
    iget-object v0, p0, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->mSessionConfig:Landroidx/camera/core/impl/SessionConfig;

    return-object v0
.end method

.method setActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .line 254
    iput-boolean p1, p0, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->mActive:Z

    .line 255
    return-void
.end method

.method setAttached(Z)V
    .locals 0
    .param p1, "attached"    # Z

    .line 246
    iput-boolean p1, p0, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->mAttached:Z

    .line 247
    return-void
.end method
