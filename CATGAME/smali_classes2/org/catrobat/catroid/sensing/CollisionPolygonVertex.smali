.class public Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;
.super Ljava/lang/Object;
.source "CollisionPolygonVertex.java"


# instance fields
.field public endX:F

.field public endY:F

.field public startX:F

.field public startY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->startX:F

    .line 36
    iput p2, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->startY:F

    .line 37
    iput p3, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    .line 38
    iput p4, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    .line 39
    return-void
.end method

.method private isConnectedBackwards(Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;)Z
    .locals 2
    .param p1, "other"    # Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    .line 98
    iget v0, p1, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    iget v1, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    iget v1, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 43
    instance-of v0, p1, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 44
    return v1

    .line 46
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    .line 47
    return v0

    .line 50
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    .line 51
    .local v2, "other":Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;
    iget v3, v2, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->startX:F

    iget v4, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->startX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, v2, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->startY:F

    iget v4, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->startY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, v2, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    iget v4, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, v2, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    iget v4, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public extend(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 60
    iput p1, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    .line 61
    iput p2, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    .line 62
    return-void
.end method

.method public flip()V
    .locals 3

    .line 69
    iget v0, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->startX:F

    .line 70
    .local v0, "xTemp":F
    iget v1, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->startY:F

    .line 71
    .local v1, "yTemp":F
    iget v2, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    iput v2, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->startX:F

    .line 72
    iget v2, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    iput v2, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->startY:F

    .line 73
    iput v0, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    .line 74
    iput v1, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    .line 75
    return-void
.end method

.method public getEndPoint()Landroid/graphics/PointF;
    .locals 3

    .line 82
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    iget v2, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getStartPoint()Landroid/graphics/PointF;
    .locals 3

    .line 78
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->startX:F

    iget v2, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->startY:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isConnected(Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;)Z
    .locals 4
    .param p1, "other"    # Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    .line 86
    iget v0, p1, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->startX:F

    iget v1, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget v0, p1, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->startY:F

    iget v3, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 88
    .local v0, "connected":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 89
    return v2

    .line 90
    :cond_1
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->isConnectedBackwards(Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    invoke-virtual {p1}, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->flip()V

    .line 92
    return v2

    .line 94
    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->startX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->startY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
