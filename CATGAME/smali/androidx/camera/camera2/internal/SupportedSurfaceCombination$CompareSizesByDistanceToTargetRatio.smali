.class final Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByDistanceToTargetRatio;
.super Ljava/lang/Object;
.source "SupportedSurfaceCombination.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/SupportedSurfaceCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompareSizesByDistanceToTargetRatio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Size;",
        ">;"
    }
.end annotation


# instance fields
.field private mTargetRatio:Ljava/lang/Float;


# direct methods
.method constructor <init>(Ljava/lang/Float;)V
    .locals 0

    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1189
    iput-object p1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByDistanceToTargetRatio;->mTargetRatio:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Size;Landroid/util/Size;)I
    .locals 3

    .line 1195
    new-instance v0, Landroid/util/Rational;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    invoke-static {p1, v0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->hasMatchingAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1199
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 1200
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 1202
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByDistanceToTargetRatio;->mTargetRatio:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 1203
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByDistanceToTargetRatio;->mTargetRatio:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 1205
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1185
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByDistanceToTargetRatio;->compare(Landroid/util/Size;Landroid/util/Size;)I

    move-result p1

    return p1
.end method
