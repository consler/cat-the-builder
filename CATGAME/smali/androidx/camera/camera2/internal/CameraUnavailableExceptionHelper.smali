.class public final Landroidx/camera/camera2/internal/CameraUnavailableExceptionHelper;
.super Ljava/lang/Object;
.source "CameraUnavailableExceptionHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFrom(Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;)Landroidx/camera/core/CameraUnavailableException;
    .locals 2
    .param p0, "e"    # Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;

    .line 39
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->getReason()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_0

    .line 59
    const/4 v0, 0x0

    .local v0, "errorCode":I
    goto :goto_0

    .line 56
    .end local v0    # "errorCode":I
    :cond_0
    const/4 v0, 0x6

    .line 57
    .restart local v0    # "errorCode":I
    goto :goto_0

    .line 53
    .end local v0    # "errorCode":I
    :cond_1
    const/4 v0, 0x5

    .line 54
    .restart local v0    # "errorCode":I
    goto :goto_0

    .line 50
    .end local v0    # "errorCode":I
    :cond_2
    const/4 v0, 0x4

    .line 51
    .restart local v0    # "errorCode":I
    goto :goto_0

    .line 47
    .end local v0    # "errorCode":I
    :cond_3
    const/4 v0, 0x3

    .line 48
    .restart local v0    # "errorCode":I
    goto :goto_0

    .line 44
    .end local v0    # "errorCode":I
    :cond_4
    const/4 v0, 0x2

    .line 45
    .restart local v0    # "errorCode":I
    goto :goto_0

    .line 41
    .end local v0    # "errorCode":I
    :cond_5
    const/4 v0, 0x1

    .line 42
    .restart local v0    # "errorCode":I
    nop

    .line 61
    :goto_0
    new-instance v1, Landroidx/camera/core/CameraUnavailableException;

    invoke-direct {v1, v0, p0}, Landroidx/camera/core/CameraUnavailableException;-><init>(ILjava/lang/Throwable;)V

    return-object v1
.end method
