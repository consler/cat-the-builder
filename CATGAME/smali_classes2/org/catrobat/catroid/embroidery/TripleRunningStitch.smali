.class public Lorg/catrobat/catroid/embroidery/TripleRunningStitch;
.super Lorg/catrobat/catroid/embroidery/RunningStitchType;
.source "TripleRunningStitch.java"


# instance fields
.field private first:Z

.field private firstX:F

.field private firstY:F

.field private sprite:Lorg/catrobat/catroid/content/Sprite;

.field private steps:I


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/content/Sprite;I)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "steps"    # I

    .line 36
    invoke-direct {p0}, Lorg/catrobat/catroid/embroidery/RunningStitchType;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->firstX:F

    .line 34
    iput v0, p0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->firstY:F

    .line 37
    iput-object p1, p0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 38
    iput p2, p0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->steps:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->first:Z

    .line 40
    iget-object v0, p1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v0

    iget-object v1, p1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 41
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v1

    .line 40
    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->setStartCoordinates(FF)V

    .line 42
    return-void
.end method

.method private interpolateStitches(IFF)V
    .locals 21
    .param p1, "interpolationCount"    # I
    .param p2, "currentX"    # F
    .param p3, "currentY"    # F

    .line 66
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->first:Z

    if-eqz v2, :cond_0

    .line 67
    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->first:Z

    .line 68
    sget-object v2, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v2, v2, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    new-instance v9, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;

    iget v4, v0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->firstX:F

    iget v5, v0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->firstY:F

    iget-object v3, v0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 69
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Look;->getZIndex()I

    move-result v6

    iget-object v7, v0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Sprite;->getEmbroideryThreadColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;-><init>(FFILorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/graphics/Color;)V

    .line 68
    invoke-interface {v2, v9}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->addStitchCommand(Lorg/catrobat/catroid/embroidery/StitchCommand;)V

    .line 71
    :cond_0
    iget v2, v0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->firstX:F

    .line 72
    .local v2, "previousX":F
    iget v3, v0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->firstY:F

    .line 74
    .local v3, "previousY":F
    const/4 v4, 0x1

    .local v4, "count":I
    :goto_0
    if-gt v4, v1, :cond_1

    .line 75
    int-to-float v5, v4

    int-to-float v6, v1

    div-float v11, v5, v6

    .line 76
    .local v11, "splitFactor":F
    iget v5, v0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->firstX:F

    move/from16 v12, p2

    invoke-virtual {v0, v12, v5, v11}, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->interpolate(FFF)F

    move-result v19

    .line 77
    .local v19, "x":F
    iget v5, v0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->firstY:F

    move/from16 v10, p3

    invoke-virtual {v0, v10, v5, v11}, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->interpolate(FFF)F

    move-result v20

    .line 78
    .local v20, "y":F
    sget-object v5, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v5, v5, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    new-instance v6, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;

    iget-object v7, v0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v7, v7, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 79
    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Look;->getZIndex()I

    move-result v16

    iget-object v7, v0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Sprite;->getEmbroideryThreadColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v18

    move-object v13, v6

    move/from16 v14, v19

    move/from16 v15, v20

    move-object/from16 v17, v7

    invoke-direct/range {v13 .. v18}, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;-><init>(FFILorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/graphics/Color;)V

    .line 78
    invoke-interface {v5, v6}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->addStitchCommand(Lorg/catrobat/catroid/embroidery/StitchCommand;)V

    .line 80
    sget-object v5, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v13, v5, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    new-instance v14, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;

    iget-object v5, v0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v5, v5, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 81
    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Look;->getZIndex()I

    move-result v8

    iget-object v9, v0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v9}, Lorg/catrobat/catroid/content/Sprite;->getEmbroideryThreadColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v15

    move-object v5, v14

    move v6, v2

    move v7, v3

    move-object v10, v15

    invoke-direct/range {v5 .. v10}, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;-><init>(FFILorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/graphics/Color;)V

    .line 80
    invoke-interface {v13, v14}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->addStitchCommand(Lorg/catrobat/catroid/embroidery/StitchCommand;)V

    .line 82
    sget-object v5, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v5, v5, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    new-instance v6, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;

    iget-object v7, v0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v7, v7, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 83
    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Look;->getZIndex()I

    move-result v16

    iget-object v7, v0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Sprite;->getEmbroideryThreadColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v18

    move-object v13, v6

    move/from16 v14, v19

    move/from16 v15, v20

    move-object/from16 v17, v7

    invoke-direct/range {v13 .. v18}, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;-><init>(FFILorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/graphics/Color;)V

    .line 82
    invoke-interface {v5, v6}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->addStitchCommand(Lorg/catrobat/catroid/embroidery/StitchCommand;)V

    .line 84
    move/from16 v2, v19

    .line 85
    move/from16 v3, v20

    .line 74
    .end local v11    # "splitFactor":F
    .end local v19    # "x":F
    .end local v20    # "y":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move/from16 v12, p2

    .line 87
    .end local v4    # "count":I
    return-void
.end method


# virtual methods
.method public setStartCoordinates(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 46
    iput p1, p0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->firstX:F

    .line 47
    iput p2, p0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->firstY:F

    .line 48
    return-void
.end method

.method public update(FF)V
    .locals 5
    .param p1, "currentX"    # F
    .param p2, "currentY"    # F

    .line 52
    iget v0, p0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->firstX:F

    iget v1, p0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->firstY:F

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->getDistanceToPoint(FFFF)F

    move-result v0

    .line 53
    .local v0, "distance":F
    iget v1, p0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->steps:I

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
    iget v3, p0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->firstX:F

    sub-float v4, p1, v3

    mul-float/2addr v4, v2

    add-float p1, v3, v4

    .line 56
    iget v3, p0, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->firstY:F

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
    invoke-direct {p0, v1, p1, p2}, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->interpolateStitches(IFF)V

    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;->setStartCoordinates(FF)V

    .line 63
    .end local v1    # "interpolationCount":I
    .end local v2    # "surplusPercentage":F
    :cond_0
    return-void
.end method
