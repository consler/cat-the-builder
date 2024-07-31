.class public final Landroidx/camera/core/impl/utils/CameraOrientationUtil;
.super Ljava/lang/Object;
.source "CameraOrientationUtil.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CameraOrientationUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-string v0, "CameraOrientationUtil"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static degreesToSurfaceRotation(I)I
    .locals 4
    .param p0, "degrees"    # I

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "surfaceRotation":I
    if-eqz p0, :cond_3

    const/16 v1, 0x5a

    if-eq p0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne p0, v1, :cond_0

    .line 126
    const/4 v0, 0x3

    .line 127
    goto :goto_0

    .line 129
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid sensor rotation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_1
    const/4 v0, 0x2

    .line 124
    goto :goto_0

    .line 120
    :cond_2
    const/4 v0, 0x1

    .line 121
    goto :goto_0

    .line 117
    :cond_3
    const/4 v0, 0x0

    .line 118
    nop

    .line 132
    :goto_0
    return v0
.end method

.method public static getRelativeImageRotation(IIZ)I
    .locals 4
    .param p0, "destRotationDegrees"    # I
    .param p1, "sourceRotationDegrees"    # I
    .param p2, "isOppositeFacing"    # Z

    .line 51
    if-eqz p2, :cond_0

    .line 52
    sub-int v0, p1, p0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .local v0, "result":I
    goto :goto_0

    .line 54
    .end local v0    # "result":I
    :cond_0
    add-int v0, p1, p0

    rem-int/lit16 v0, v0, 0x168

    .line 56
    .restart local v0    # "result":I
    :goto_0
    sget-boolean v1, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 57
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 59
    const-string v2, "getRelativeImageRotation: destRotationDegrees=%s, sourceRotationDegrees=%s, isOppositeFacing=%s, result=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v2, "CameraOrientationUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    return v0
.end method

.method public static surfaceRotationToDegrees(I)I
    .locals 3
    .param p0, "rotationEnum"    # I

    .line 81
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 92
    const/16 v0, 0x10e

    .line 93
    .local v0, "rotationDegrees":I
    goto :goto_0

    .line 95
    .end local v0    # "rotationDegrees":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported surface rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    const/16 v0, 0xb4

    .line 90
    .restart local v0    # "rotationDegrees":I
    goto :goto_0

    .line 86
    .end local v0    # "rotationDegrees":I
    :cond_2
    const/16 v0, 0x5a

    .line 87
    .restart local v0    # "rotationDegrees":I
    goto :goto_0

    .line 83
    .end local v0    # "rotationDegrees":I
    :cond_3
    const/4 v0, 0x0

    .line 84
    .restart local v0    # "rotationDegrees":I
    nop

    .line 98
    :goto_0
    return v0
.end method
