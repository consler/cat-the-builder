.class Landroidx/camera/camera2/internal/SupportedSizeConstraints$1;
.super Ljava/lang/Object;
.source "SupportedSizeConstraints.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/SupportedSizeConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/camera/camera2/internal/CameraDeviceId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/camera/camera2/internal/CameraDeviceId;Landroidx/camera/camera2/internal/CameraDeviceId;)I
    .locals 4
    .param p1, "lhs"    # Landroidx/camera/camera2/internal/CameraDeviceId;
    .param p2, "rhs"    # Landroidx/camera/camera2/internal/CameraDeviceId;

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 59
    return v1

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 65
    .local v0, "cmp":I
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/CameraDeviceId;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/camera/camera2/internal/CameraDeviceId;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    if-eqz v2, :cond_1

    .line 67
    return v0

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/CameraDeviceId;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/camera/camera2/internal/CameraDeviceId;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    if-eqz v2, :cond_2

    .line 73
    return v0

    .line 77
    :cond_2
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/CameraDeviceId;->getModel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "allmodels"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroidx/camera/camera2/internal/CameraDeviceId;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 78
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/CameraDeviceId;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/camera/camera2/internal/CameraDeviceId;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    if-eqz v2, :cond_3

    .line 79
    return v0

    .line 83
    :cond_3
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/CameraDeviceId;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/camera/camera2/internal/CameraDeviceId;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    if-eqz v2, :cond_4

    .line 84
    return v0

    .line 87
    :cond_4
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 55
    check-cast p1, Landroidx/camera/camera2/internal/CameraDeviceId;

    check-cast p2, Landroidx/camera/camera2/internal/CameraDeviceId;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/internal/SupportedSizeConstraints$1;->compare(Landroidx/camera/camera2/internal/CameraDeviceId;Landroidx/camera/camera2/internal/CameraDeviceId;)I

    move-result p1

    return p1
.end method
