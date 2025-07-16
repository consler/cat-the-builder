.class public final Lorg/catrobat/paintroid/tools/common/PointScrollBehavior;
.super Ljava/lang/Object;
.source "PointScrollBehavior.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/common/ScrollBehavior;


# annotations
.annotation runtime Lkotlin/Metadata;
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
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final scrollTolerance:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/catrobat/paintroid/tools/common/PointScrollBehavior;->scrollTolerance:I

    return-void
.end method


# virtual methods
.method public getScrollDirection(FFII)Landroid/graphics/Point;
    .locals 4

    .line 32
    iget v0, p0, Lorg/catrobat/paintroid/tools/common/PointScrollBehavior;->scrollTolerance:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sub-int/2addr p3, v0

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    const/4 p3, -0x1

    if-lez p1, :cond_1

    move v1, p3

    :cond_1
    int-to-float p1, v0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    sub-int/2addr p4, v0

    int-to-float p1, p4

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    move p3, v2

    .line 44
    :goto_2
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v1, p3}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method
