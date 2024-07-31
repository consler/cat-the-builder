.class public Lorg/catrobat/catroid/stage/PenActor;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "PenActor.java"


# instance fields
.field private buffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

.field private bufferBatch:Lcom/badlogic/gdx/graphics/g2d/Batch;

.field private camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field private screenRatio:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 51
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 52
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v0

    .line 53
    .local v0, "header":Lorg/catrobat/catroid/content/XmlHeader;
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iget v3, v0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    iget v4, v0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenHeight:I

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V

    iput-object v1, p0, Lorg/catrobat/catroid/stage/PenActor;->buffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    .line 54
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/stage/PenActor;->bufferBatch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 55
    new-instance v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget v2, v0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    int-to-float v2, v2

    iget v3, v0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenHeight:I

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>(FF)V

    iput-object v1, p0, Lorg/catrobat/catroid/stage/PenActor;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .line 56
    iget-object v2, p0, Lorg/catrobat/catroid/stage/PenActor;->bufferBatch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 57
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/PenActor;->calculateScreenRatio()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/stage/PenActor;->screenRatio:Ljava/lang/Float;

    .line 58
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/PenActor;->reset()V

    .line 59
    return-void
.end method

.method private calculateScreenRatio()F
    .locals 9

    .line 111
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 112
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 114
    .local v1, "deviceDiagonalPixel":F
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v2

    .line 115
    .local v2, "header":Lorg/catrobat/catroid/content/XmlHeader;
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/XmlHeader;->getVirtualScreenWidth()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    .line 116
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/XmlHeader;->getVirtualScreenHeight()I

    move-result v7

    int-to-double v7, v7

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v5, v3

    .line 115
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 117
    .local v3, "creatorDiagonalPixel":F
    div-float v4, v3, v1

    return v4
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/catrobat/catroid/stage/PenActor;->buffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->dispose()V

    .line 102
    iput-object v1, p0, Lorg/catrobat/catroid/stage/PenActor;->buffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/stage/PenActor;->bufferBatch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    if-eqz v0, :cond_1

    .line 105
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->dispose()V

    .line 106
    iput-object v1, p0, Lorg/catrobat/catroid/stage/PenActor;->bufferBatch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 108
    :cond_1
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 5
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .line 63
    iget-object v0, p0, Lorg/catrobat/catroid/stage/PenActor;->buffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->begin()V

    .line 64
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageListener;->getSpritesFromStage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 65
    .local v1, "sprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v2, v1, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    .line 66
    .local v2, "pen":Lorg/catrobat/catroid/content/PenConfiguration;
    iget-object v3, p0, Lorg/catrobat/catroid/stage/PenActor;->screenRatio:Ljava/lang/Float;

    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/PenActor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/content/PenConfiguration;->drawLinesForSprite(Ljava/lang/Float;Lcom/badlogic/gdx/graphics/Camera;)V

    .line 67
    .end local v1    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    .end local v2    # "pen":Lorg/catrobat/catroid/content/PenConfiguration;
    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/stage/PenActor;->buffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->end()V

    .line 70
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    .line 71
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, p0, Lorg/catrobat/catroid/stage/PenActor;->buffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getColorBufferTexture()Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 72
    .local v0, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 73
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 74
    .local v1, "image":Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    iget-object v2, p0, Lorg/catrobat/catroid/stage/PenActor;->buffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/catrobat/catroid/stage/PenActor;->buffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setPosition(FF)V

    .line 75
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    .line 76
    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 77
    return-void
.end method

.method public reset()V
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/catrobat/catroid/stage/PenActor;->buffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->begin()V

    .line 81
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    .line 82
    iget-object v0, p0, Lorg/catrobat/catroid/stage/PenActor;->buffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->end()V

    .line 83
    return-void
.end method

.method public stampToFrameBuffer()V
    .locals 6

    .line 86
    iget-object v0, p0, Lorg/catrobat/catroid/stage/PenActor;->bufferBatch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    .line 87
    iget-object v0, p0, Lorg/catrobat/catroid/stage/PenActor;->buffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->begin()V

    .line 88
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageListener;->getSpritesFromStage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 89
    .local v1, "sprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v2, v1, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    .line 90
    .local v2, "pen":Lorg/catrobat/catroid/content/PenConfiguration;
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/PenConfiguration;->hasStamp()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    iget-object v3, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    iget-object v4, p0, Lorg/catrobat/catroid/stage/PenActor;->bufferBatch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Lorg/catrobat/catroid/content/Look;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 92
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/PenConfiguration;->setStamp(Z)V

    .line 94
    .end local v1    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    .end local v2    # "pen":Lorg/catrobat/catroid/content/PenConfiguration;
    :cond_0
    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/stage/PenActor;->buffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->end()V

    .line 96
    iget-object v0, p0, Lorg/catrobat/catroid/stage/PenActor;->bufferBatch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    .line 97
    return-void
.end method
