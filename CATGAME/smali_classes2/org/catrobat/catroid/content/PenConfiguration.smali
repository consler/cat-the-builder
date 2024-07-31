.class public Lorg/catrobat/catroid/content/PenConfiguration;
.super Ljava/lang/Object;
.source "PenConfiguration.java"


# instance fields
.field private penColor:Lorg/catrobat/catroid/content/PenColor;

.field private penDown:Z

.field private penSize:D

.field private positions:Lcom/badlogic/gdx/utils/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Queue<",
            "Lcom/badlogic/gdx/utils/Queue<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation
.end field

.field private queuesToFinish:I

.field private stamp:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/utils/Queue;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Queue;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->positions:Lcom/badlogic/gdx/utils/Queue;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->penDown:Z

    .line 40
    const-wide v1, 0x4009333333333333L    # 3.15

    iput-wide v1, p0, Lorg/catrobat/catroid/content/PenConfiguration;->penSize:D

    .line 41
    new-instance v1, Lorg/catrobat/catroid/content/PenColor;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3, v3}, Lorg/catrobat/catroid/content/PenColor;-><init>(FFFF)V

    iput-object v1, p0, Lorg/catrobat/catroid/content/PenConfiguration;->penColor:Lorg/catrobat/catroid/content/PenColor;

    .line 42
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->stamp:Z

    .line 43
    iput v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->queuesToFinish:I

    .line 46
    return-void
.end method

.method private currentQueueHasJobToHandle()Z
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->positions:Lcom/badlogic/gdx/utils/Queue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Queue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->positions:Lcom/badlogic/gdx/utils/Queue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Queue;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Queue;

    iget v0, v0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->queuesToFinish:I

    if-lez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private drawLine(Ljava/lang/Float;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 13
    .param p1, "screenRatio"    # Ljava/lang/Float;
    .param p2, "renderer"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;
    .param p3, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .line 68
    move-object v0, p0

    move-object v7, p2

    move-object/from16 v8, p3

    iget-object v1, v0, Lorg/catrobat/catroid/content/PenConfiguration;->positions:Lcom/badlogic/gdx/utils/Queue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Queue;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Queue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Queue;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/graphics/PointF;

    .line 69
    .local v9, "currentPosition":Landroid/graphics/PointF;
    iget-object v1, v0, Lorg/catrobat/catroid/content/PenConfiguration;->positions:Lcom/badlogic/gdx/utils/Queue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Queue;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Queue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Queue;->first()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/graphics/PointF;

    .line 70
    .local v10, "nextPosition":Landroid/graphics/PointF;
    iget v1, v9, Landroid/graphics/PointF;->x:F

    iget-object v2, v8, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v1, v2

    iput v1, v9, Landroid/graphics/PointF;->x:F

    .line 71
    iget v1, v9, Landroid/graphics/PointF;->y:F

    iget-object v2, v8, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v1, v2

    iput v1, v9, Landroid/graphics/PointF;->y:F

    .line 72
    iget v1, v10, Landroid/graphics/PointF;->x:F

    iget-object v2, v8, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v1, v2

    iput v1, v10, Landroid/graphics/PointF;->x:F

    .line 73
    iget v1, v10, Landroid/graphics/PointF;->y:F

    iget-object v2, v8, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v1, v2

    iput v1, v10, Landroid/graphics/PointF;->y:F

    .line 74
    iget v1, v9, Landroid/graphics/PointF;->x:F

    iget v2, v10, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v9, Landroid/graphics/PointF;->y:F

    iget v2, v10, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    iget-wide v1, v0, Lorg/catrobat/catroid/content/PenConfiguration;->penSize:D

    double-to-float v1, v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 76
    .local v11, "penSize":Ljava/lang/Float;
    iget v1, v9, Landroid/graphics/PointF;->x:F

    iget v2, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v3, v12

    invoke-virtual {p2, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->circle(FFF)V

    .line 77
    iget v2, v9, Landroid/graphics/PointF;->x:F

    iget v3, v9, Landroid/graphics/PointF;->y:F

    iget v4, v10, Landroid/graphics/PointF;->x:F

    iget v5, v10, Landroid/graphics/PointF;->y:F

    .line 78
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 77
    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rectLine(FFFFF)V

    .line 79
    iget v1, v10, Landroid/graphics/PointF;->x:F

    iget v2, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v12

    invoke-virtual {p2, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->circle(FFF)V

    .line 81
    .end local v11    # "penSize":Ljava/lang/Float;
    :cond_1
    iget v1, v10, Landroid/graphics/PointF;->x:F

    iget-object v2, v8, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v1, v2

    iput v1, v10, Landroid/graphics/PointF;->x:F

    .line 82
    iget v1, v10, Landroid/graphics/PointF;->y:F

    iget-object v2, v8, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v2

    iput v1, v10, Landroid/graphics/PointF;->y:F

    .line 83
    return-void
.end method

.method private updateQueues()V
    .locals 2

    .line 86
    iget v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->queuesToFinish:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->positions:Lcom/badlogic/gdx/utils/Queue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Queue;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Queue;

    iget v0, v0, Lcom/badlogic/gdx/utils/Queue;->size:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->positions:Lcom/badlogic/gdx/utils/Queue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Queue;->removeFirst()Ljava/lang/Object;

    .line 88
    iget v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->queuesToFinish:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->queuesToFinish:I

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public addPosition(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "position"    # Landroid/graphics/PointF;

    .line 97
    iget-object v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->positions:Lcom/badlogic/gdx/utils/Queue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Queue;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Queue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Queue;->addLast(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public addQueue()V
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->positions:Lcom/badlogic/gdx/utils/Queue;

    new-instance v1, Lcom/badlogic/gdx/utils/Queue;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Queue;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Queue;->addLast(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public drawLinesForSprite(Ljava/lang/Float;Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 6
    .param p1, "screenRatio"    # Ljava/lang/Float;
    .param p2, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .line 50
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageListener;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 51
    .local v0, "renderer":Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Lorg/catrobat/catroid/content/PenConfiguration;->penColor:Lorg/catrobat/catroid/content/PenColor;

    iget v2, v2, Lorg/catrobat/catroid/content/PenColor;->r:F

    iget-object v3, p0, Lorg/catrobat/catroid/content/PenConfiguration;->penColor:Lorg/catrobat/catroid/content/PenColor;

    iget v3, v3, Lorg/catrobat/catroid/content/PenColor;->g:F

    iget-object v4, p0, Lorg/catrobat/catroid/content/PenConfiguration;->penColor:Lorg/catrobat/catroid/content/PenColor;

    iget v4, v4, Lorg/catrobat/catroid/content/PenColor;->b:F

    iget-object v5, p0, Lorg/catrobat/catroid/content/PenConfiguration;->penColor:Lorg/catrobat/catroid/content/PenColor;

    iget v5, v5, Lorg/catrobat/catroid/content/PenColor;->a:F

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 52
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 54
    :goto_0
    invoke-direct {p0}, Lorg/catrobat/catroid/content/PenConfiguration;->currentQueueHasJobToHandle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-direct {p0, p1, v0, p2}, Lorg/catrobat/catroid/content/PenConfiguration;->drawLine(Ljava/lang/Float;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/graphics/Camera;)V

    .line 56
    invoke-direct {p0}, Lorg/catrobat/catroid/content/PenConfiguration;->updateQueues()V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 60
    return-void
.end method

.method public getPositions()Lcom/badlogic/gdx/utils/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Queue<",
            "Lcom/badlogic/gdx/utils/Queue<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->positions:Lcom/badlogic/gdx/utils/Queue;

    return-object v0
.end method

.method public hasStamp()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->stamp:Z

    return v0
.end method

.method public incrementQueuesToFinish()V
    .locals 1

    .line 101
    iget v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->queuesToFinish:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->queuesToFinish:I

    .line 102
    return-void
.end method

.method public isPenDown()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/PenConfiguration;->penDown:Z

    return v0
.end method

.method public setPenColor(Lorg/catrobat/catroid/content/PenColor;)V
    .locals 0
    .param p1, "penColor"    # Lorg/catrobat/catroid/content/PenColor;

    .line 117
    iput-object p1, p0, Lorg/catrobat/catroid/content/PenConfiguration;->penColor:Lorg/catrobat/catroid/content/PenColor;

    .line 118
    return-void
.end method

.method public setPenDown(Z)V
    .locals 0
    .param p1, "penDown"    # Z

    .line 105
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/PenConfiguration;->penDown:Z

    .line 106
    return-void
.end method

.method public setPenSize(D)V
    .locals 0
    .param p1, "penSize"    # D

    .line 113
    iput-wide p1, p0, Lorg/catrobat/catroid/content/PenConfiguration;->penSize:D

    .line 114
    return-void
.end method

.method public setStamp(Z)V
    .locals 0
    .param p1, "stamp"    # Z

    .line 121
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/PenConfiguration;->stamp:Z

    .line 122
    return-void
.end method
