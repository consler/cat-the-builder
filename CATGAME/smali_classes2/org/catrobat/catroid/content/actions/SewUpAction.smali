.class public Lorg/catrobat/catroid/content/actions/SewUpAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SewUpAction.java"


# static fields
.field public static final STEPS:I = 0x3


# instance fields
.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 17

    .line 37
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getMotionDirectionInUserInterfaceDimensionUnit()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 39
    .local v1, "radians":D
    iget-object v3, v0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->runningStitch:Lorg/catrobat/catroid/embroidery/RunningStitch;

    invoke-virtual {v3}, Lorg/catrobat/catroid/embroidery/RunningStitch;->pause()V

    .line 41
    iget-object v3, v0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v3

    .line 42
    .local v3, "x":F
    iget-object v4, v0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v4, v4, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v10

    .line 43
    .local v10, "y":F
    sget-object v4, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v11, v4, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    new-instance v12, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;

    iget-object v4, v0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v4, v4, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 44
    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Look;->getZIndex()I

    move-result v7

    iget-object v8, v0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v8}, Lorg/catrobat/catroid/content/Sprite;->getEmbroideryThreadColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    move-object v4, v12

    move v5, v3

    move v6, v10

    invoke-direct/range {v4 .. v9}, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;-><init>(FFILorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/graphics/Color;)V

    .line 43
    invoke-interface {v11, v12}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->addStitchCommand(Lorg/catrobat/catroid/embroidery/StitchCommand;)V

    .line 46
    float-to-double v4, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    .line 47
    float-to-double v4, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    .line 48
    .end local v10    # "y":F
    .local v4, "y":F
    sget-object v5, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v5, v5, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    new-instance v6, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;

    iget-object v7, v0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v7, v7, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 49
    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Look;->getZIndex()I

    move-result v14

    iget-object v15, v0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v15}, Lorg/catrobat/catroid/content/Sprite;->getEmbroideryThreadColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v16

    move-object v11, v6

    move v12, v3

    move v13, v4

    invoke-direct/range {v11 .. v16}, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;-><init>(FFILorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/graphics/Color;)V

    .line 48
    invoke-interface {v5, v6}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->addStitchCommand(Lorg/catrobat/catroid/embroidery/StitchCommand;)V

    .line 51
    float-to-double v5, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    sub-double/2addr v5, v10

    double-to-float v3, v5

    .line 52
    float-to-double v5, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    sub-double/2addr v5, v10

    double-to-float v4, v5

    .line 53
    sget-object v5, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v5, v5, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    new-instance v6, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;

    iget-object v7, v0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v7, v7, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 54
    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Look;->getZIndex()I

    move-result v13

    iget-object v14, v0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v14}, Lorg/catrobat/catroid/content/Sprite;->getEmbroideryThreadColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v15

    move-object v10, v6

    move v11, v3

    move v12, v4

    invoke-direct/range {v10 .. v15}, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;-><init>(FFILorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/graphics/Color;)V

    .line 53
    invoke-interface {v5, v6}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->addStitchCommand(Lorg/catrobat/catroid/embroidery/StitchCommand;)V

    .line 56
    float-to-double v5, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    sub-double/2addr v5, v10

    double-to-float v3, v5

    .line 57
    float-to-double v5, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    sub-double/2addr v5, v10

    double-to-float v4, v5

    .line 58
    sget-object v5, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v5, v5, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    new-instance v6, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;

    iget-object v7, v0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v7, v7, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 59
    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Look;->getZIndex()I

    move-result v13

    iget-object v14, v0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v14}, Lorg/catrobat/catroid/content/Sprite;->getEmbroideryThreadColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v15

    move-object v10, v6

    move v11, v3

    move v12, v4

    invoke-direct/range {v10 .. v15}, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;-><init>(FFILorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/graphics/Color;)V

    .line 58
    invoke-interface {v5, v6}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->addStitchCommand(Lorg/catrobat/catroid/embroidery/StitchCommand;)V

    .line 61
    float-to-double v5, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    add-double/2addr v5, v10

    double-to-float v3, v5

    .line 62
    float-to-double v5, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    add-double/2addr v5, v10

    double-to-float v4, v5

    .line 63
    sget-object v5, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v5, v5, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    new-instance v6, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;

    iget-object v7, v0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v7, v7, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 64
    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Look;->getZIndex()I

    move-result v13

    iget-object v14, v0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v14}, Lorg/catrobat/catroid/content/Sprite;->getEmbroideryThreadColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v15

    move-object v10, v6

    move v11, v3

    move v12, v4

    invoke-direct/range {v10 .. v15}, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;-><init>(FFILorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/graphics/Color;)V

    .line 63
    invoke-interface {v5, v6}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->addStitchCommand(Lorg/catrobat/catroid/embroidery/StitchCommand;)V

    .line 66
    iget-object v5, v0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v5, v5, Lorg/catrobat/catroid/content/Sprite;->runningStitch:Lorg/catrobat/catroid/embroidery/RunningStitch;

    iget-object v6, v0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v6, v6, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v6}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v6

    iget-object v7, v0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v7, v7, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 67
    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v7

    .line 66
    invoke-virtual {v5, v6, v7}, Lorg/catrobat/catroid/embroidery/RunningStitch;->setStartCoordinates(FF)V

    .line 68
    iget-object v5, v0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v5, v5, Lorg/catrobat/catroid/content/Sprite;->runningStitch:Lorg/catrobat/catroid/embroidery/RunningStitch;

    invoke-virtual {v5}, Lorg/catrobat/catroid/embroidery/RunningStitch;->resume()V

    .line 69
    return-void
.end method

.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 72
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SewUpAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 73
    return-void
.end method

.method protected update(F)V
    .locals 0
    .param p1, "delta"    # F

    .line 77
    return-void
.end method
