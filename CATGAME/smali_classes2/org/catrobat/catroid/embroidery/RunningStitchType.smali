.class public abstract Lorg/catrobat/catroid/embroidery/RunningStitchType;
.super Ljava/lang/Object;
.source "RunningStitchType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getDistanceToPoint(FFFF)F
    .locals 4
    .param p1, "currentX"    # F
    .param p2, "firstX"    # F
    .param p3, "currentY"    # F
    .param p4, "firstY"    # F

    .line 36
    sub-float v0, p1, p2

    float-to-double v0, v0

    sub-float v2, p3, p4

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 37
    .local v0, "distance":D
    double-to-float v2, v0

    return v2
.end method

.method interpolate(FFF)F
    .locals 1
    .param p1, "endValue"    # F
    .param p2, "startValue"    # F
    .param p3, "percentage"    # F

    .line 31
    sub-float v0, p1, p2

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 32
    .local v0, "value":F
    return v0
.end method

.method public abstract setStartCoordinates(FF)V
.end method

.method public abstract update(FF)V
.end method
