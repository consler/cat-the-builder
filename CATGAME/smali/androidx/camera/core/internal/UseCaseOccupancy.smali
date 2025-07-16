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

    .line 46
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/UseCase;

    .line 47
    instance-of v4, v3, Landroidx/camera/core/ImageCapture;

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_1
    instance-of v3, v3, Landroidx/camera/core/VideoCapture;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "UseCaseOccupancy"

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    const-string v1, "Exceeded max simultaneously bound image capture use cases."

    .line 55
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    if-le v2, v3, :cond_4

    const-string v1, "Exceeded max simultaneously bound video capture use cases."

    .line 60
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    return v3
.end method
