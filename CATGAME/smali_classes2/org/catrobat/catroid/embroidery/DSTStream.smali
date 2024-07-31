.class public Lorg/catrobat/catroid/embroidery/DSTStream;
.super Ljava/lang/Object;
.source "DSTStream.java"

# interfaces
.implements Lorg/catrobat/catroid/embroidery/EmbroideryStream;


# instance fields
.field private colorChangeBitSet:Z

.field private header:Lorg/catrobat/catroid/embroidery/EmbroideryHeader;

.field private jumpBitSet:Z

.field private points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/catroid/embroidery/StitchPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/embroidery/EmbroideryHeader;)V
    .locals 1
    .param p1, "header"    # Lorg/catrobat/catroid/embroidery/EmbroideryHeader;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->colorChangeBitSet:Z

    .line 34
    iput-boolean v0, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->jumpBitSet:Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->points:Ljava/util/ArrayList;

    .line 39
    iput-object p1, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->header:Lorg/catrobat/catroid/embroidery/EmbroideryHeader;

    .line 40
    return-void
.end method

.method private addInterpolatedPoints(FFLcom/badlogic/gdx/graphics/Color;)V
    .locals 8
    .param p1, "currentX"    # F
    .param p2, "currentY"    # F
    .param p3, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 73
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/embroidery/StitchPoint;

    .line 75
    .local v0, "previousPoint":Lorg/catrobat/catroid/embroidery/StitchPoint;
    nop

    .line 76
    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getX()F

    move-result v1

    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getY()F

    move-result v2

    .line 75
    invoke-static {p1, p2, v1, v2}, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->getMaxDistanceBetweenPoints(FFFF)F

    move-result v1

    .line 77
    .local v1, "distance":F
    const/high16 v2, 0x42f20000    # 121.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    .line 78
    div-float v2, v1, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 79
    .local v2, "splitCount":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/embroidery/DSTStream;->addJump()V

    .line 80
    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getX()F

    move-result v3

    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getY()F

    move-result v4

    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lorg/catrobat/catroid/embroidery/DSTStream;->addStitchPoint(FFLcom/badlogic/gdx/graphics/Color;)V

    .line 82
    const/4 v3, 0x1

    .local v3, "count":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 83
    int-to-float v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 84
    .local v4, "splitFactor":F
    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getX()F

    move-result v5

    invoke-direct {p0, p1, v5, v4}, Lorg/catrobat/catroid/embroidery/DSTStream;->interpolate(FFF)F

    move-result v5

    .line 85
    .local v5, "x":F
    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getY()F

    move-result v6

    invoke-direct {p0, p2, v6, v4}, Lorg/catrobat/catroid/embroidery/DSTStream;->interpolate(FFF)F

    move-result v6

    .line 86
    .local v6, "y":F
    invoke-virtual {p0}, Lorg/catrobat/catroid/embroidery/DSTStream;->addJump()V

    .line 87
    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lorg/catrobat/catroid/embroidery/DSTStream;->addStitchPoint(FFLcom/badlogic/gdx/graphics/Color;)V

    .line 82
    .end local v4    # "splitFactor":F
    .end local v5    # "x":F
    .end local v6    # "y":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    .end local v3    # "count":I
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/embroidery/DSTStream;->addJump()V

    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/catroid/embroidery/DSTStream;->addStitchPoint(FFLcom/badlogic/gdx/graphics/Color;)V

    .line 93
    .end local v2    # "splitCount":I
    :cond_1
    return-void
.end method

.method private interpolate(FFF)F
    .locals 1
    .param p1, "endValue"    # F
    .param p2, "startValue"    # F
    .param p3, "percentage"    # F

    .line 96
    sub-float v0, p1, p2

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method


# virtual methods
.method public addAllStitchPoints(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/catroid/embroidery/StitchPoint;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "stitchPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/embroidery/StitchPoint;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lorg/catrobat/catroid/embroidery/DSTStream;->addJump()V

    .line 103
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/embroidery/StitchPoint;

    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->points:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/embroidery/StitchPoint;

    invoke-interface {v1}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->points:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/embroidery/StitchPoint;

    invoke-interface {v2}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    .line 103
    invoke-virtual {p0, v0, v1, v2}, Lorg/catrobat/catroid/embroidery/DSTStream;->addStitchPoint(FFLcom/badlogic/gdx/graphics/Color;)V

    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/embroidery/StitchPoint;

    .line 107
    .local v1, "stitchPoint":Lorg/catrobat/catroid/embroidery/StitchPoint;
    invoke-interface {v1}, Lorg/catrobat/catroid/embroidery/StitchPoint;->isColorChangePoint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {p0}, Lorg/catrobat/catroid/embroidery/DSTStream;->addColorChange()V

    goto :goto_1

    .line 109
    :cond_1
    invoke-interface {v1}, Lorg/catrobat/catroid/embroidery/StitchPoint;->isJumpPoint()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    invoke-virtual {p0}, Lorg/catrobat/catroid/embroidery/DSTStream;->addJump()V

    .line 112
    :cond_2
    :goto_1
    invoke-interface {v1}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getX()F

    move-result v2

    invoke-interface {v1}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getY()F

    move-result v3

    invoke-interface {v1}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/catrobat/catroid/embroidery/DSTStream;->addStitchPoint(FFLcom/badlogic/gdx/graphics/Color;)V

    .line 113
    .end local v1    # "stitchPoint":Lorg/catrobat/catroid/embroidery/StitchPoint;
    goto :goto_0

    .line 114
    :cond_3
    return-void
.end method

.method public addColorChange()V
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->header:Lorg/catrobat/catroid/embroidery/EmbroideryHeader;

    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/EmbroideryHeader;->addColorChange()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->colorChangeBitSet:Z

    .line 46
    return-void
.end method

.method public addJump()V
    .locals 1

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->jumpBitSet:Z

    .line 51
    return-void
.end method

.method public addStitchPoint(FFLcom/badlogic/gdx/graphics/Color;)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 55
    new-instance v0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;

    invoke-direct {v0, p1, p2, p3}, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;-><init>(FFLcom/badlogic/gdx/graphics/Color;)V

    .line 56
    .local v0, "point":Lorg/catrobat/catroid/embroidery/DSTStitchPoint;
    iget-boolean v1, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->colorChangeBitSet:Z

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->setColorChange(Z)V

    .line 57
    iget-boolean v1, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->jumpBitSet:Z

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->setJump(Z)V

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->colorChangeBitSet:Z

    .line 59
    iput-boolean v1, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->jumpBitSet:Z

    .line 60
    iget-object v1, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->points:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->header:Lorg/catrobat/catroid/embroidery/EmbroideryHeader;

    invoke-interface {v1, p1, p2}, Lorg/catrobat/catroid/embroidery/EmbroideryHeader;->initialize(FF)V

    .line 62
    invoke-virtual {v0, p1, p2}, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->setRelativeCoordinatesToPreviousPoint(FF)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/catrobat/catroid/embroidery/DSTStream;->addInterpolatedPoints(FFLcom/badlogic/gdx/graphics/Color;)V

    .line 65
    iget-object v1, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->header:Lorg/catrobat/catroid/embroidery/EmbroideryHeader;

    invoke-interface {v1, p1, p2}, Lorg/catrobat/catroid/embroidery/EmbroideryHeader;->update(FF)V

    .line 66
    iget-object v1, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->points:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/embroidery/StitchPoint;

    .line 67
    .local v1, "previousPoint":Lorg/catrobat/catroid/embroidery/StitchPoint;
    invoke-interface {v1}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getX()F

    move-result v2

    invoke-interface {v1}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->setRelativeCoordinatesToPreviousPoint(FF)V

    .line 69
    .end local v1    # "previousPoint":Lorg/catrobat/catroid/embroidery/StitchPoint;
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->points:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public getHeader()Lorg/catrobat/catroid/embroidery/EmbroideryHeader;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->header:Lorg/catrobat/catroid/embroidery/EmbroideryHeader;

    return-object v0
.end method

.method public getPointList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/catroid/embroidery/StitchPoint;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->points:Ljava/util/ArrayList;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->colorChangeBitSet:Z

    .line 129
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 130
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTStream;->header:Lorg/catrobat/catroid/embroidery/EmbroideryHeader;

    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/EmbroideryHeader;->reset()V

    .line 131
    return-void
.end method
