.class public Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
.super Ljava/lang/Exception;
.source "CameraAccessExceptionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat$AccessError;
    }
.end annotation


# static fields
.field public static final CAMERA_DEPRECATED_HAL:I = 0x3e8

.field public static final CAMERA_DISABLED:I = 0x1

.field public static final CAMERA_DISCONNECTED:I = 0x2

.field public static final CAMERA_ERROR:I = 0x3

.field public static final CAMERA_IN_USE:I = 0x4

.field public static final CAMERA_UNAVAILABLE_DO_NOT_DISTURB:I = 0x2711

.field static final COMPAT_ERRORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_CAMERAS_IN_USE:I = 0x5

.field static final PLATFORM_ERRORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCameraAccessException:Landroid/hardware/camera2/CameraAccessException;

.field private final mReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 96
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x4

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x3

    aput-object v1, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    .line 97
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->PLATFORM_ERRORS:Ljava/util/Set;

    .line 119
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v4, [Ljava/lang/Integer;

    const/16 v2, 0x2711

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 119
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->COMPAT_ERRORS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 146
    invoke-static {p1}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 147
    iput p1, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mReason:I

    .line 148
    sget-object v0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->PLATFORM_ERRORS:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v0, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mCameraAccessException:Landroid/hardware/camera2/CameraAccessException;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 153
    invoke-static {p1, p2}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 154
    iput p1, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mReason:I

    .line 155
    sget-object v0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->PLATFORM_ERRORS:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mCameraAccessException:Landroid/hardware/camera2/CameraAccessException;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 161
    invoke-static {p1, p2}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    iput p1, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mReason:I

    .line 163
    sget-object v0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->PLATFORM_ERRORS:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mCameraAccessException:Landroid/hardware/camera2/CameraAccessException;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 2

    .line 168
    invoke-static {p1}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    iput p1, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mReason:I

    .line 170
    sget-object v0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->PLATFORM_ERRORS:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v0, p1, v1, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    :cond_0
    iput-object v1, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mCameraAccessException:Landroid/hardware/camera2/CameraAccessException;

    return-void
.end method

.method private constructor <init>(Landroid/hardware/camera2/CameraAccessException;)V
    .locals 2

    .line 175
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    iput v0, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mReason:I

    .line 177
    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mCameraAccessException:Landroid/hardware/camera2/CameraAccessException;

    return-void
.end method

.method private static getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 242
    invoke-static {p0}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->getProblemString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    .line 243
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const/4 p0, 0x2

    aput-object p1, v1, p0

    const-string p0, "%s (%d): %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultMessage(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2711

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "Some API 28 devices cannot access the camera when the device is in \"Do Not Disturb\" mode. The camera will not be accessible until \"Do Not Disturb\" mode is disabled."

    return-object p0

    :cond_1
    const-string p0, "The system-wide limit for number of open cameras has been reached, and more camera devices cannot be opened until previous instances are closed."

    return-object p0

    :cond_2
    const-string p0, "The camera device is in use already"

    return-object p0

    :cond_3
    const-string p0, "The camera device is currently in the error state; no further calls to it will succeed."

    return-object p0

    :cond_4
    const-string p0, "The camera device is removable and has been disconnected from the Android device, or the camera service has shut down the connection due to a higher-priority access request for the camera device."

    return-object p0

    :cond_5
    const-string p0, "The camera is disabled due to a device policy, and cannot be opened."

    return-object p0
.end method

.method private static getProblemString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2711

    if-eq p0, v0, :cond_0

    const-string p0, "<UNKNOWN ERROR>"

    goto :goto_0

    :cond_0
    const-string p0, "CAMERA_UNAVAILABLE_DO_NOT_DISTURB"

    goto :goto_0

    :cond_1
    const-string p0, "CAMERA_DEPRECATED_HAL"

    goto :goto_0

    :cond_2
    const-string p0, "MAX_CAMERAS_IN_USE"

    goto :goto_0

    :cond_3
    const-string p0, "CAMERA_IN_USE"

    goto :goto_0

    :cond_4
    const-string p0, "CAMERA_ERROR"

    goto :goto_0

    :cond_5
    const-string p0, "CAMERA_DISCONNECTED"

    goto :goto_0

    :cond_6
    const-string p0, "CAMERA_DISABLED"

    :goto_0
    return-object p0
.end method

.method public static toCameraAccessExceptionCompat(Landroid/hardware/camera2/CameraAccessException;)Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
    .locals 1

    if-eqz p0, :cond_0

    .line 210
    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    return-object v0

    .line 208
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "cameraAccessException should not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getReason()I
    .locals 1

    .line 185
    iget v0, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mReason:I

    return v0
.end method

.method public toCameraAccessException()Landroid/hardware/camera2/CameraAccessException;
    .locals 1

    .line 195
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mCameraAccessException:Landroid/hardware/camera2/CameraAccessException;

    return-object v0
.end method
