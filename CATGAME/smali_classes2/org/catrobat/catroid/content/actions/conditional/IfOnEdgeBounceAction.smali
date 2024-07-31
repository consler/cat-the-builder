.class public Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "IfOnEdgeBounceAction.java"


# instance fields
.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method

.method private fireBounceEvent()V
    .locals 5

    .line 79
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    new-instance v1, Lorg/catrobat/catroid/content/EventWrapper;

    new-instance v2, Lorg/catrobat/catroid/content/eventids/BounceOffEventId;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/catrobat/catroid/content/eventids/BounceOffEventId;-><init>(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/EventWrapper;-><init>(Lorg/catrobat/catroid/content/eventids/EventId;Z)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Look;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 80
    return-void
.end method

.method private isLookingDown(F)Z
    .locals 1
    .param p1, "direction"    # F

    .line 87
    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const/high16 v0, -0x3d4c0000    # -90.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isLookingLeft(F)Z
    .locals 1
    .param p1, "direction"    # F

    .line 91
    const/high16 v0, -0x3ccc0000    # -180.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLookingRight(F)Z
    .locals 1
    .param p1, "direction"    # F

    .line 95
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLookingUp(F)Z
    .locals 1
    .param p1, "direction"    # F

    .line 83
    const/high16 v0, -0x3d4c0000    # -90.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 99
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 100
    return-void
.end method

.method protected update(F)V
    .locals 11
    .param p1, "percent"    # F

    .line 37
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getWidthInUserInterfaceDimensionUnit()F

    move-result v0

    .line 38
    .local v0, "width":F
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getHeightInUserInterfaceDimensionUnit()F

    move-result v1

    .line 39
    .local v1, "height":F
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v2, v2, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v2

    .line 40
    .local v2, "xPosition":F
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v3

    .line 42
    .local v3, "yPosition":F
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v4

    iget v4, v4, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    div-int/lit8 v4, v4, 0x2

    .line 43
    .local v4, "halfVirtualScreenWidth":I
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v5

    iget v5, v5, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenHeight:I

    div-int/lit8 v5, v5, 0x2

    .line 44
    .local v5, "halfVirtualScreenHeight":I
    iget-object v6, p0, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v6, v6, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v6}, Lorg/catrobat/catroid/content/Look;->getMotionDirectionInUserInterfaceDimensionUnit()F

    move-result v6

    .line 46
    .local v6, "newDirection":F
    neg-int v7, v4

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v0, v8

    add-float/2addr v7, v9

    cmpg-float v7, v2, v7

    if-gez v7, :cond_1

    .line 47
    invoke-direct {p0, v6}, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->isLookingLeft(F)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 48
    neg-float v6, v6

    .line 49
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->fireBounceEvent()V

    .line 51
    :cond_0
    neg-int v7, v4

    int-to-float v7, v7

    div-float v9, v0, v8

    add-float v2, v7, v9

    goto :goto_0

    .line 52
    :cond_1
    int-to-float v7, v4

    div-float v9, v0, v8

    sub-float/2addr v7, v9

    cmpl-float v7, v2, v7

    if-lez v7, :cond_3

    .line 53
    invoke-direct {p0, v6}, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->isLookingRight(F)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 54
    neg-float v6, v6

    .line 55
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->fireBounceEvent()V

    .line 57
    :cond_2
    int-to-float v7, v4

    div-float v9, v0, v8

    sub-float v2, v7, v9

    .line 60
    :cond_3
    :goto_0
    neg-int v7, v5

    int-to-float v7, v7

    div-float v9, v1, v8

    add-float/2addr v7, v9

    cmpg-float v7, v3, v7

    const/high16 v9, 0x43340000    # 180.0f

    if-gez v7, :cond_5

    .line 61
    invoke-direct {p0, v6}, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->isLookingDown(F)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 62
    sub-float v6, v9, v6

    .line 63
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->fireBounceEvent()V

    .line 65
    :cond_4
    neg-int v7, v5

    int-to-float v7, v7

    div-float v8, v1, v8

    add-float v3, v7, v8

    goto :goto_1

    .line 66
    :cond_5
    int-to-float v7, v5

    div-float v10, v1, v8

    sub-float/2addr v7, v10

    cmpl-float v7, v3, v7

    if-lez v7, :cond_7

    .line 67
    invoke-direct {p0, v6}, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->isLookingUp(F)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 68
    sub-float/2addr v9, v6

    .line 69
    .end local v6    # "newDirection":F
    .local v9, "newDirection":F
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->fireBounceEvent()V

    move v6, v9

    .line 71
    .end local v9    # "newDirection":F
    .restart local v6    # "newDirection":F
    :cond_6
    int-to-float v7, v5

    div-float v8, v1, v8

    sub-float v3, v7, v8

    .line 74
    :cond_7
    :goto_1
    iget-object v7, p0, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v7, v7, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v7, v6}, Lorg/catrobat/catroid/content/Look;->setMotionDirectionInUserInterfaceDimensionUnit(F)V

    .line 75
    iget-object v7, p0, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v7, v7, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v7, v2, v3}, Lorg/catrobat/catroid/content/Look;->setPositionInUserInterfaceDimensionUnit(FF)V

    .line 76
    return-void
.end method
