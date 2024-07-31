.class public Lorg/catrobat/catroid/content/actions/PointToAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "PointToAction.java"


# instance fields
.field private pointedSprite:Lorg/catrobat/catroid/content/Sprite;

.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setPointedSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "pointedSprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 78
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PointToAction;->pointedSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 79
    return-void
.end method

.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 74
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PointToAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 75
    return-void
.end method

.method protected update(F)V
    .locals 10
    .param p1, "percent"    # F

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PointToAction;->pointedSprite:Lorg/catrobat/catroid/content/Sprite;

    if-eqz v0, :cond_7

    .line 39
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/PointToAction;->pointedSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PointToAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v0

    .line 44
    .local v0, "spriteXPosition":F
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/PointToAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v1

    .line 45
    .local v1, "spriteYPosition":F
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/PointToAction;->pointedSprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v2, v2, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v2

    .line 46
    .local v2, "pointedSpriteXPosition":F
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/PointToAction;->pointedSprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v3

    .line 49
    .local v3, "pointedSpriteYPosition":F
    cmpl-float v4, v0, v2

    if-nez v4, :cond_1

    cmpl-float v4, v1, v3

    if-nez v4, :cond_1

    .line 50
    const-wide v4, 0x4056800000000000L    # 90.0

    .local v4, "rotationDegrees":D
    goto :goto_0

    .line 51
    .end local v4    # "rotationDegrees":D
    :cond_1
    cmpl-float v4, v0, v2

    if-nez v4, :cond_3

    .line 52
    cmpg-float v4, v1, v3

    if-gez v4, :cond_2

    .line 53
    const-wide/16 v4, 0x0

    .restart local v4    # "rotationDegrees":D
    goto :goto_0

    .line 55
    .end local v4    # "rotationDegrees":D
    :cond_2
    const-wide v4, 0x4066800000000000L    # 180.0

    .restart local v4    # "rotationDegrees":D
    goto :goto_0

    .line 57
    .end local v4    # "rotationDegrees":D
    :cond_3
    cmpl-float v4, v1, v3

    if-nez v4, :cond_5

    .line 58
    cmpg-float v4, v0, v2

    if-gez v4, :cond_4

    .line 59
    const-wide v4, 0x4056800000000000L    # 90.0

    .restart local v4    # "rotationDegrees":D
    goto :goto_0

    .line 61
    .end local v4    # "rotationDegrees":D
    :cond_4
    const-wide v4, -0x3fa9800000000000L    # -90.0

    .restart local v4    # "rotationDegrees":D
    goto :goto_0

    .line 64
    .end local v4    # "rotationDegrees":D
    :cond_5
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-float v6, v3, v1

    float-to-double v6, v6

    sub-float v8, v2, v0

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 67
    .restart local v4    # "rotationDegrees":D
    :goto_0
    iget-object v6, p0, Lorg/catrobat/catroid/content/actions/PointToAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v6, v6, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    instance-of v6, v6, Lorg/catrobat/catroid/physics/PhysicsLook;

    if-eqz v6, :cond_6

    .line 68
    iget-object v6, p0, Lorg/catrobat/catroid/content/actions/PointToAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v6, v6, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    check-cast v6, Lorg/catrobat/catroid/physics/PhysicsLook;

    double-to-float v7, v4

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/physics/PhysicsLook;->setFlippedByDirection(F)V

    .line 70
    :cond_6
    iget-object v6, p0, Lorg/catrobat/catroid/content/actions/PointToAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v6, v6, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    double-to-float v7, v4

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/content/Look;->setMotionDirectionInUserInterfaceDimensionUnit(F)V

    .line 71
    return-void

    .line 40
    .end local v0    # "spriteXPosition":F
    .end local v1    # "spriteYPosition":F
    .end local v2    # "pointedSpriteXPosition":F
    .end local v3    # "pointedSpriteYPosition":F
    .end local v4    # "rotationDegrees":D
    :cond_7
    :goto_1
    return-void
.end method
