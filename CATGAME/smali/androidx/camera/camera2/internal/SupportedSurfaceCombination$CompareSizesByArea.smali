.class final Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByArea;
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
    name = "CompareSizesByArea"
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
.field private mReverse:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1159
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByArea;->mReverse:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 1164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1165
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByArea;->mReverse:Z

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Size;Landroid/util/Size;)I
    .locals 4

    .line 1173
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 1174
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-long p1, p1

    mul-long/2addr v2, p1

    sub-long/2addr v0, v2

    .line 1172
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p1

    .line 1176
    iget-boolean p2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByArea;->mReverse:Z

    if-eqz p2, :cond_0

    mul-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1158
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByArea;->compare(Landroid/util/Size;Landroid/util/Size;)I

    move-result p1

    return p1
.end method
