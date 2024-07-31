.class final Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;
.super Ljava/lang/Object;
.source "DrawingSurfaceListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchEventData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;",
        "",
        "timeStamp",
        "",
        "xCoordinate",
        "",
        "yCoordinate",
        "(JFF)V",
        "getTimeStamp",
        "()J",
        "getXCoordinate",
        "()F",
        "getYCoordinate",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final timeStamp:J

.field private final xCoordinate:F

.field private final yCoordinate:F


# direct methods
.method public constructor <init>(JFF)V
    .locals 0
    .param p1, "timeStamp"    # J
    .param p3, "xCoordinate"    # F
    .param p4, "yCoordinate"    # F

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->timeStamp:J

    iput p3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->xCoordinate:F

    iput p4, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->yCoordinate:F

    return-void
.end method

.method public static synthetic copy$default(Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;JFFILjava/lang/Object;)Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->timeStamp:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->xCoordinate:F

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget p4, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->yCoordinate:F

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->copy(JFF)Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->timeStamp:J

    return-wide v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->xCoordinate:F

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->yCoordinate:F

    return v0
.end method

.method public final copy(JFF)Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;
    .locals 1

    new-instance v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;-><init>(JFF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;

    iget-wide v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->timeStamp:J

    iget-wide v2, p1, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->timeStamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->xCoordinate:F

    iget v1, p1, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->xCoordinate:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->yCoordinate:F

    iget p1, p1, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->yCoordinate:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getTimeStamp()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->timeStamp:J

    return-wide v0
.end method

.method public final getXCoordinate()F
    .locals 1

    .line 62
    iget v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->xCoordinate:F

    return v0
.end method

.method public final getYCoordinate()F
    .locals 1

    .line 62
    iget v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->yCoordinate:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->timeStamp:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->xCoordinate:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->yCoordinate:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchEventData(timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", xCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->xCoordinate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->yCoordinate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
