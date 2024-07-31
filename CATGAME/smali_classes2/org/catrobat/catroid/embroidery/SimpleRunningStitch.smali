.class public Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;
.super Lorg/catrobat/catroid/embroidery/RunningStitchType;
.source "SimpleRunningStitch.java"


# instance fields
.field private first:Z

.field private firstX:F

.field private firstY:F

.field private length:I

.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/content/Sprite;I)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "length"    # I

    .line 36
    invoke-direct {p0}, Lorg/catrobat/catroid/embroidery/RunningStitchType;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->firstX:F

    .line 34
    iput v0, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->firstY:F

    .line 37
    iput-object p1, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 38
    iput p2, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->length:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->first:Z

    .line 40
    iget-object v0, p1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v0

    iget-object v1, p1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 41
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v1

    .line 40
    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->setStartCoordinates(FF)V

    .line 42
    return-void
.end method

.method private interpolateStitches(IFF)V
    .locals 12
    .param p1, "interpolationCount"    # I
    .param p2, "currentX"    # F
    .param p3, "currentY"    # F

    .line 66
    iget-boolean v0, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->first:Z

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->first:Z

    .line 68
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    new-instance v7, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;

    iget v2, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->firstX:F

    iget v3, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->firstY:F

    iget-object v1, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 69
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getZIndex()I

    move-result v4

    iget-object v5, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Sprite;->getEmbroideryThreadColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;-><init>(FFILorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/graphics/Color;)V

    .line 68
    invoke-interface {v0, v7}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->addStitchCommand(Lorg/catrobat/catroid/embroidery/StitchCommand;)V

    .line 72
    :cond_0
    const/4 v0, 0x1

    .local v0, "count":I
    :goto_0
    if-gt v0, p1, :cond_1

    .line 73
    int-to-float v1, v0

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 74
    .local v1, "splitFactor":F
    iget v2, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->firstX:F

    invoke-virtual {p0, p2, v2, v1}, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->interpolate(FFF)F

    move-result v2

    .line 75
    .local v2, "x":F
    iget v3, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->firstY:F

    invoke-virtual {p0, p3, v3, v1}, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->interpolate(FFF)F

    move-result v9

    .line 76
    .local v9, "y":F
    sget-object v3, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v10, v3, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    new-instance v11, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;

    iget-object v3, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 77
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Look;->getZIndex()I

    move-result v6

    iget-object v7, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Sprite;->getEmbroideryThreadColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    move-object v3, v11

    move v4, v2

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;-><init>(FFILorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/graphics/Color;)V

    .line 76
    invoke-interface {v10, v11}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->addStitchCommand(Lorg/catrobat/catroid/embroidery/StitchCommand;)V

    .line 72
    .end local v1    # "splitFactor":F
    .end local v2    # "x":F
    .end local v9    # "y":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "count":I
    :cond_1
    return-void
.end method


# virtual methods
.method public setStartCoordinates(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 46
    iput p1, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->firstX:F

    .line 47
    iput p2, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->firstY:F

    .line 48
    return-void
.end method

.method public update(FF)V
    .locals 5
    .param p1, "currentX"    # F
    .param p2, "currentY"    # F

    .line 52
    iget v0, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->firstX:F

    iget v1, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->firstY:F

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->getDistanceToPoint(FFFF)F

    move-result v0

    .line 53
    .local v0, "distance":F
    iget v1, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->length:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    .line 54
    int-to-float v2, v1

    rem-float v2, v0, v2

    sub-float v2, v0, v2

    div-float/2addr v2, v0

    .line 55
    .local v2, "surplusPercentage":F
    iget v3, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->firstX:F

    sub-float v4, p1, v3

    mul-float/2addr v4, v2

    add-float p1, v3, v4

    .line 56
    iget v3, p0, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->firstY:F

    sub-float v4, p2, v3

    mul-float/2addr v4, v2

    add-float p2, v3, v4

    .line 57
    int-to-float v3, v1

    rem-float v3, v0, v3

    sub-float/2addr v0, v3

    .line 59
    int-to-float v1, v1

    div-float v1, v0, v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 60
    .local v1, "interpolationCount":I
    invoke-direct {p0, v1, p1, p2}, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->interpolateStitches(IFF)V

    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/embroidery/SimpleRunningStitch;->setStartCoordinates(FF)V

    .line 63
    .end local v1    # "interpolationCount":I
    .end local v2    # "surplusPercentage":F
    :cond_0
    return-void
.end method
