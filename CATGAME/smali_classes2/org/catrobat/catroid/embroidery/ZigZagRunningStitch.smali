.class public Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;
.super Lorg/catrobat/catroid/embroidery/RunningStitchType;
.source "ZigZagRunningStitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch$Listener;
    }
.end annotation


# instance fields
.field private direction:I

.field private first:Z

.field private firstX:F

.field private firstY:F

.field private length:F

.field private listener:Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch$Listener;

.field private sprite:Lorg/catrobat/catroid/content/Sprite;

.field private width:F


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/content/Sprite;FF)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "length"    # F
    .param p3, "width"    # F

    .line 39
    invoke-direct {p0}, Lorg/catrobat/catroid/embroidery/RunningStitchType;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->firstX:F

    .line 34
    iput v0, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->firstY:F

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->direction:I

    .line 36
    iput-boolean v0, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->first:Z

    .line 40
    iput-object p1, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 41
    iput p2, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->length:F

    .line 42
    iput p3, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->width:F

    .line 43
    iget-object v0, p1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v0

    iget-object v1, p1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 44
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v1

    .line 43
    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->setStartCoordinates(FF)V

    .line 45
    return-void
.end method

.method private addPointInDirection(FFF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "degrees"    # F

    .line 92
    float-to-double v0, p1

    iget v2, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->width:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v4, v2

    const/high16 v2, 0x42b40000    # 90.0f

    add-float v6, p3, v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget v6, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->direction:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    sub-double/2addr v0, v4

    double-to-float v0, v0

    .line 93
    .local v0, "xCoord":F
    float-to-double v4, p2

    iget v1, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->width:F

    div-float/2addr v1, v3

    float-to-double v6, v1

    add-float/2addr v2, p3

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v6, v1

    iget v1, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->direction:I

    int-to-double v2, v1

    mul-double/2addr v6, v2

    sub-double/2addr v4, v6

    double-to-float v2, v4

    .line 94
    .local v2, "yCoord":F
    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->direction:I

    .line 95
    sget-object v1, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v1, v1, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    new-instance v3, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;

    iget-object v4, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v4, v4, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 96
    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Look;->getZIndex()I

    move-result v7

    iget-object v8, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v8}, Lorg/catrobat/catroid/content/Sprite;->getEmbroideryThreadColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    move-object v4, v3

    move v5, v0

    move v6, v2

    invoke-direct/range {v4 .. v9}, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;-><init>(FFILorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/graphics/Color;)V

    .line 95
    invoke-interface {v1, v3}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->addStitchCommand(Lorg/catrobat/catroid/embroidery/StitchCommand;)V

    .line 97
    iget-object v1, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->listener:Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch$Listener;

    if-eqz v1, :cond_0

    .line 98
    invoke-interface {v1, v0, v2}, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch$Listener;->onAdd(FF)V

    .line 100
    :cond_0
    return-void
.end method

.method private interpolateStitches(IFF)V
    .locals 5
    .param p1, "interpolationCount"    # I
    .param p2, "currentX"    # F
    .param p3, "currentY"    # F

    .line 75
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getMotionDirectionInUserInterfaceDimensionUnit()F

    move-result v0

    .line 77
    .local v0, "degrees":F
    iget-boolean v1, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->first:Z

    if-eqz v1, :cond_0

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->first:Z

    .line 79
    iget v1, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->firstX:F

    iget v2, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->firstY:F

    invoke-direct {p0, v1, v2, v0}, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->addPointInDirection(FFF)V

    .line 82
    :cond_0
    const/4 v1, 0x1

    .local v1, "count":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 83
    int-to-float v2, v1

    int-to-float v3, p1

    div-float/2addr v2, v3

    .line 84
    .local v2, "splitFactor":F
    iget v3, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->firstX:F

    invoke-virtual {p0, p2, v3, v2}, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->interpolate(FFF)F

    move-result v3

    .line 85
    .local v3, "x":F
    iget v4, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->firstY:F

    invoke-virtual {p0, p3, v4, v2}, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->interpolate(FFF)F

    move-result v4

    .line 86
    .local v4, "y":F
    invoke-direct {p0, v3, v4, v0}, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->addPointInDirection(FFF)V

    .line 82
    .end local v2    # "splitFactor":F
    .end local v3    # "x":F
    .end local v4    # "y":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "count":I
    :cond_1
    invoke-direct {p0, p2, p3, v0}, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->addPointInDirection(FFF)V

    .line 89
    return-void
.end method


# virtual methods
.method public setListener(Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch$Listener;)V
    .locals 0
    .param p1, "listener"    # Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch$Listener;

    .line 54
    iput-object p1, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->listener:Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch$Listener;

    .line 55
    return-void
.end method

.method public setStartCoordinates(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 49
    iput p1, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->firstX:F

    .line 50
    iput p2, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->firstY:F

    .line 51
    return-void
.end method

.method public update(FF)V
    .locals 5
    .param p1, "currentX"    # F
    .param p2, "currentY"    # F

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-eqz v0, :cond_0

    .line 60
    iget v0, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->firstX:F

    iget v1, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->firstY:F

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->getDistanceToPoint(FFFF)F

    move-result v0

    .line 61
    .local v0, "distance":F
    iget v1, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->length:F

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    .line 62
    rem-float v2, v0, v1

    sub-float v2, v0, v2

    div-float/2addr v2, v0

    .line 63
    .local v2, "surplusPercentage":F
    iget v3, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->firstX:F

    sub-float v4, p1, v3

    mul-float/2addr v4, v2

    add-float p1, v3, v4

    .line 64
    iget v3, p0, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->firstY:F

    sub-float v4, p2, v3

    mul-float/2addr v4, v2

    add-float p2, v3, v4

    .line 65
    rem-float v3, v0, v1

    sub-float/2addr v0, v3

    .line 67
    div-float v1, v0, v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 68
    .local v1, "interpolationCount":I
    invoke-direct {p0, v1, p1, p2}, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->interpolateStitches(IFF)V

    .line 69
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;->setStartCoordinates(FF)V

    .line 72
    .end local v0    # "distance":F
    .end local v1    # "interpolationCount":I
    .end local v2    # "surplusPercentage":F
    :cond_0
    return-void
.end method
