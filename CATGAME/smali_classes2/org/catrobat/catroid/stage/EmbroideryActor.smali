.class public Lorg/catrobat/catroid/stage/EmbroideryActor;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "EmbroideryActor.java"


# instance fields
.field private final embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

.field private final shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

.field private final stitchSize:F


# direct methods
.method public constructor <init>(FLorg/catrobat/catroid/embroidery/EmbroideryPatternManager;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 1
    .param p1, "screenRatio"    # F
    .param p2, "embroideryPatternManager"    # Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;
    .param p3, "shapeRenderer"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 45
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 46
    const v0, 0x4049999a    # 3.15f

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/catrobat/catroid/stage/EmbroideryActor;->stitchSize:F

    .line 47
    iput-object p2, p0, Lorg/catrobat/catroid/stage/EmbroideryActor;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    .line 48
    iput-object p3, p0, Lorg/catrobat/catroid/stage/EmbroideryActor;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 49
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 7
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/stage/EmbroideryActor;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->getEmbroideryPatternList()Ljava/util/List;

    move-result-object v0

    .line 55
    .local v0, "stitchPoints":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/embroidery/StitchPoint;>;"
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 57
    .local v1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/catrobat/catroid/embroidery/StitchPoint;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 58
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    .line 61
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/embroidery/StitchPoint;

    .line 63
    .local v2, "stitchPoint":Lorg/catrobat/catroid/embroidery/StitchPoint;
    iget-object v3, p0, Lorg/catrobat/catroid/stage/EmbroideryActor;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-interface {v2}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 64
    iget-object v3, p0, Lorg/catrobat/catroid/stage/EmbroideryActor;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    sget-object v4, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 66
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/stage/EmbroideryActor;->drawCircle(Lorg/catrobat/catroid/embroidery/StitchPoint;)V

    .line 67
    const/4 v3, 0x0

    .line 69
    .local v3, "colorChange":Z
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 70
    move-object v4, v2

    .line 71
    .local v4, "previousStitchPoint":Lorg/catrobat/catroid/embroidery/StitchPoint;
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lorg/catrobat/catroid/embroidery/StitchPoint;

    .line 73
    invoke-interface {v2}, Lorg/catrobat/catroid/embroidery/StitchPoint;->isColorChangePoint()Z

    move-result v5

    or-int/2addr v3, v5

    .line 75
    if-nez v3, :cond_1

    .line 76
    iget-object v5, p0, Lorg/catrobat/catroid/stage/EmbroideryActor;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-interface {v4}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 77
    invoke-virtual {p0, v4, v2}, Lorg/catrobat/catroid/stage/EmbroideryActor;->drawLine(Lorg/catrobat/catroid/embroidery/StitchPoint;Lorg/catrobat/catroid/embroidery/StitchPoint;)V

    .line 79
    :cond_1
    invoke-interface {v2}, Lorg/catrobat/catroid/embroidery/StitchPoint;->isConnectingPoint()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    iget-object v5, p0, Lorg/catrobat/catroid/stage/EmbroideryActor;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-interface {v2}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 81
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/stage/EmbroideryActor;->drawCircle(Lorg/catrobat/catroid/embroidery/StitchPoint;)V

    .line 82
    const/4 v3, 0x0

    goto :goto_0

    .line 85
    .end local v4    # "previousStitchPoint":Lorg/catrobat/catroid/embroidery/StitchPoint;
    :cond_2
    iget-object v4, p0, Lorg/catrobat/catroid/stage/EmbroideryActor;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 86
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    .line 88
    .end local v2    # "stitchPoint":Lorg/catrobat/catroid/embroidery/StitchPoint;
    .end local v3    # "colorChange":Z
    :cond_3
    return-void
.end method

.method drawCircle(Lorg/catrobat/catroid/embroidery/StitchPoint;)V
    .locals 4
    .param p1, "stitchPoint"    # Lorg/catrobat/catroid/embroidery/StitchPoint;

    .line 92
    iget-object v0, p0, Lorg/catrobat/catroid/stage/EmbroideryActor;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getX()F

    move-result v1

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getY()F

    move-result v2

    iget v3, p0, Lorg/catrobat/catroid/stage/EmbroideryActor;->stitchSize:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->circle(FFF)V

    .line 93
    return-void
.end method

.method drawLine(Lorg/catrobat/catroid/embroidery/StitchPoint;Lorg/catrobat/catroid/embroidery/StitchPoint;)V
    .locals 6
    .param p1, "stitchPoint1"    # Lorg/catrobat/catroid/embroidery/StitchPoint;
    .param p2, "stitchPoint2"    # Lorg/catrobat/catroid/embroidery/StitchPoint;

    .line 97
    iget-object v0, p0, Lorg/catrobat/catroid/stage/EmbroideryActor;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getX()F

    move-result v1

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getY()F

    move-result v2

    .line 98
    invoke-interface {p2}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getX()F

    move-result v3

    invoke-interface {p2}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getY()F

    move-result v4

    iget v5, p0, Lorg/catrobat/catroid/stage/EmbroideryActor;->stitchSize:F

    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rectLine(FFFFF)V

    .line 99
    return-void
.end method

.method public getStitchSize()F
    .locals 1

    .line 103
    iget v0, p0, Lorg/catrobat/catroid/stage/EmbroideryActor;->stitchSize:F

    return v0
.end method
