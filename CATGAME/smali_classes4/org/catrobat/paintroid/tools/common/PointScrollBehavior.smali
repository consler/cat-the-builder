.class public final Lorg/catrobat/paintroid/tools/common/PointScrollBehavior;
.super Ljava/lang/Object;
.source "PointScrollBehavior.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/common/ScrollBehavior;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J(\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/common/PointScrollBehavior;",
        "Lorg/catrobat/paintroid/tools/common/ScrollBehavior;",
        "scrollTolerance",
        "",
        "(I)V",
        "getScrollDirection",
        "Landroid/graphics/Point;",
        "pointX",
        "",
        "pointY",
        "viewWidth",
        "viewHeight",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final scrollTolerance:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "scrollTolerance"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/catrobat/paintroid/tools/common/PointScrollBehavior;->scrollTolerance:I

    return-void
.end method


# virtual methods
.method public getScrollDirection(FFII)Landroid/graphics/Point;
    .locals 3
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "deltaX":I
    const/4 v1, 0x0

    .line 32
    .local v1, "deltaY":I
    iget v2, p0, Lorg/catrobat/paintroid/tools/common/PointScrollBehavior;->scrollTolerance:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 35
    :cond_0
    iget v2, p0, Lorg/catrobat/paintroid/tools/common/PointScrollBehavior;->scrollTolerance:I

    sub-int v2, p3, v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 36
    const/4 v0, -0x1

    .line 38
    :cond_1
    iget v2, p0, Lorg/catrobat/paintroid/tools/common/PointScrollBehavior;->scrollTolerance:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_2

    .line 39
    const/4 v1, 0x1

    .line 41
    :cond_2
    iget v2, p0, Lorg/catrobat/paintroid/tools/common/PointScrollBehavior;->scrollTolerance:I

    sub-int v2, p4, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    .line 42
    const/4 v1, -0x1

    .line 44
    :cond_3
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method
