.class public Lorg/catrobat/catroid/content/actions/StitchAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "StitchAction.java"


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
.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 47
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/StitchAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 48
    return-void
.end method

.method protected update(F)V
    .locals 10
    .param p1, "delta"    # F

    .line 37
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StitchAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->runningStitch:Lorg/catrobat/catroid/embroidery/RunningStitch;

    invoke-virtual {v0}, Lorg/catrobat/catroid/embroidery/RunningStitch;->pause()V

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StitchAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v0

    .line 39
    .local v0, "x":F
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/StitchAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v7

    .line 40
    .local v7, "y":F
    sget-object v1, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v8, v1, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    new-instance v9, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/StitchAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 41
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getZIndex()I

    move-result v4

    iget-object v5, p0, Lorg/catrobat/catroid/content/actions/StitchAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Sprite;->getEmbroideryThreadColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object v1, v9

    move v2, v0

    move v3, v7

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;-><init>(FFILorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/graphics/Color;)V

    .line 40
    invoke-interface {v8, v9}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->addStitchCommand(Lorg/catrobat/catroid/embroidery/StitchCommand;)V

    .line 42
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/StitchAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->runningStitch:Lorg/catrobat/catroid/embroidery/RunningStitch;

    invoke-virtual {v1, v0, v7}, Lorg/catrobat/catroid/embroidery/RunningStitch;->setStartCoordinates(FF)V

    .line 43
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/StitchAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->runningStitch:Lorg/catrobat/catroid/embroidery/RunningStitch;

    invoke-virtual {v1}, Lorg/catrobat/catroid/embroidery/RunningStitch;->resume()V

    .line 44
    return-void
.end method
