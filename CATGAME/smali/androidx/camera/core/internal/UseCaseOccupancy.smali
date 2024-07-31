.class public final Landroidx/camera/core/internal/UseCaseOccupancy;
.super Ljava/lang/Object;
.source "UseCaseOccupancy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UseCaseOccupancy"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static checkUseCaseLimitNotExceeded(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;)Z"
        }
    .end annotation

    .line 43
    .local p0, "useCases":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/UseCase;>;"
    const/4 v0, 0x0

    .line 44
    .local v0, "imageCaptureCount":I
    const/4 v1, 0x0

    .line 46
    .local v1, "videoCaptureCount":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/UseCase;

    .line 47
    .local v3, "useCase":Landroidx/camera/core/UseCase;
    instance-of v4, v3, Landroidx/camera/core/ImageCapture;

    if-eqz v4, :cond_0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 49
    :cond_0
    instance-of v4, v3, Landroidx/camera/core/VideoCapture;

    if-eqz v4, :cond_1

    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 52
    .end local v3    # "useCase":Landroidx/camera/core/UseCase;
    :cond_1
    :goto_1
    goto :goto_0

    .line 54
    :cond_2
    const/4 v2, 0x0

    const-string v3, "UseCaseOccupancy"

    const/4 v4, 0x1

    if-le v0, v4, :cond_3

    .line 55
    const-string v4, "Exceeded max simultaneously bound image capture use cases."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return v2

    .line 59
    :cond_3
    if-le v1, v4, :cond_4

    .line 60
    const-string v4, "Exceeded max simultaneously bound video capture use cases."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return v2

    .line 64
    :cond_4
    return v4
.end method
