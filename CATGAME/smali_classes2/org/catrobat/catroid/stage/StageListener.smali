.class public Lorg/catrobat/catroid/stage/StageListener;
.super Ljava/lang/Object;
.source "StageListener.java"

# interfaces
.implements Lcom/badlogic/gdx/ApplicationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/stage/StageListener$StageBackup;
    }
.end annotation


# static fields
.field private static final ACTIONS_COMPUTATION_TIME_MAXIMUM:I = 0x8

.field private static final AXIS_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field private static final AXIS_FONT_SIZE_SCALE_FACTOR:F = 0.025f

.field private static final AXIS_WIDTH:I = 0x4

.field private static final DELTA_ACTIONS_DIVIDER_MAXIMUM:F = 50.0f

.field private static final Z_LAYER_EMBROIDERY_ACTOR:I = 0x2

.field private static final Z_LAYER_PEN_ACTOR:I = 0x1


# instance fields
.field private axes:Lcom/badlogic/gdx/graphics/Texture;

.field public axesOn:Z

.field private batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

.field private bubbleActorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/catrobat/catroid/content/Sprite;",
            "Lorg/catrobat/catroid/stage/ShowBubbleActor;",
            ">;"
        }
    .end annotation
.end field

.field private camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field public cameraPositioner:Lorg/catrobat/catroid/stage/CameraPositioner;

.field private deltaActionTimeDivisor:F

.field public embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

.field private finished:Z

.field public firstFrameDrawn:Z

.field private font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field private inputListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

.field private makeScreenshot:Z

.field private makeTestPixels:Z

.field maxViewPortHeight:I

.field maxViewPortWidth:I

.field maxViewPortX:I

.field maxViewPortY:I

.field private passepartout:Lorg/catrobat/catroid/stage/Passepartout;

.field private paused:Z

.field private penActor:Lorg/catrobat/catroid/stage/PenActor;

.field private physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

.field private project:Lorg/catrobat/catroid/content/Project;

.field private reloadProject:Z

.field private scene:Lorg/catrobat/catroid/content/Scene;

.field private screenshotHeight:I

.field private screenshotName:Ljava/lang/String;

.field private screenshotSaver:Lorg/catrobat/catroid/stage/ScreenshotSaver;

.field private screenshotSaverCallback:Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;

.field private screenshotWidth:I

.field private screenshotX:I

.field private screenshotY:I

.field public shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

.field private sprites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field private stageBackupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/stage/StageListener$StageBackup;",
            ">;"
        }
    .end annotation
.end field

.field private stageDialog:Lorg/catrobat/catroid/ui/dialogs/StageDialog;

.field private testHeight:I

.field private testPixels:[B

.field private testWidth:I

.field private testX:I

.field private testY:I

.field private viewPort:Lcom/badlogic/gdx/utils/viewport/Viewport;

.field private virtualHeight:F

.field private virtualHeightHalf:F

.field private virtualWidth:F

.field private virtualWidthHalf:F

.field public webConnectionHolder:Lorg/catrobat/catroid/web/WebConnectionHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 159
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, -0xfff301

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lorg/catrobat/catroid/stage/StageListener;->AXIS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/catrobat/catroid/stage/StageListener;->deltaActionTimeDivisor:F

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/catrobat/catroid/stage/StageListener;->paused:Z

    .line 109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/catrobat/catroid/stage/StageListener;->finished:Z

    .line 110
    iput-boolean v1, p0, Lorg/catrobat/catroid/stage/StageListener;->reloadProject:Z

    .line 111
    iput-boolean v1, p0, Lorg/catrobat/catroid/stage/StageListener;->firstFrameDrawn:Z

    .line 113
    iput-boolean v1, p0, Lorg/catrobat/catroid/stage/StageListener;->makeScreenshot:Z

    .line 125
    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 144
    iput-boolean v1, p0, Lorg/catrobat/catroid/stage/StageListener;->makeTestPixels:Z

    .line 146
    iput v1, p0, Lorg/catrobat/catroid/stage/StageListener;->testX:I

    .line 147
    iput v1, p0, Lorg/catrobat/catroid/stage/StageListener;->testY:I

    .line 148
    iput v1, p0, Lorg/catrobat/catroid/stage/StageListener;->testWidth:I

    .line 149
    iput v1, p0, Lorg/catrobat/catroid/stage/StageListener;->testHeight:I

    .line 153
    iput v1, p0, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortX:I

    .line 154
    iput v1, p0, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortY:I

    .line 155
    iput v1, p0, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortHeight:I

    .line 156
    iput v1, p0, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortWidth:I

    .line 158
    iput-boolean v1, p0, Lorg/catrobat/catroid/stage/StageListener;->axesOn:Z

    .line 164
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->stageBackupMap:Ljava/util/Map;

    .line 166
    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->inputListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    .line 168
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->bubbleActorMap:Ljava/util/Map;

    .line 170
    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotSaverCallback:Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;

    .line 174
    new-instance v0, Lorg/catrobat/catroid/web/WebConnectionHolder;

    invoke-direct {v0}, Lorg/catrobat/catroid/web/WebConnectionHolder;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->webConnectionHolder:Lorg/catrobat/catroid/web/WebConnectionHolder;

    .line 175
    return-void
.end method

.method private calculateScreenRatio()F
    .locals 10

    .line 945
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 946
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v1

    .line 947
    .local v1, "header":Lorg/catrobat/catroid/content/XmlHeader;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v6, v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 948
    .local v2, "deviceDiagonalPixel":F
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/XmlHeader;->getVirtualScreenWidth()I

    move-result v3

    int-to-double v6, v3

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 949
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/XmlHeader;->getVirtualScreenHeight()I

    move-result v3

    int-to-double v8, v3

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v6, v3

    .line 948
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 950
    .local v3, "creatorDiagonalPixel":F
    div-float v4, v3, v2

    return v4
.end method

.method private createNewStage()V
    .locals 4

    .line 238
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v0

    iget v0, v0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    int-to-float v0, v0

    iput v0, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualWidth:F

    .line 239
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v0

    iget v0, v0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenHeight:I

    int-to-float v0, v0

    iput v0, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualHeight:F

    .line 241
    iget v1, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualWidthHalf:F

    .line 242
    div-float/2addr v0, v2

    iput v0, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualHeightHalf:F

    .line 244
    new-instance v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .line 245
    new-instance v0, Lorg/catrobat/catroid/stage/CameraPositioner;

    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget v2, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualHeightHalf:F

    iget v3, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualWidthHalf:F

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/stage/CameraPositioner;-><init>(Lcom/badlogic/gdx/graphics/OrthographicCamera;FF)V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->cameraPositioner:Lorg/catrobat/catroid/stage/CameraPositioner;

    .line 246
    new-instance v0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;

    iget v1, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualWidth:F

    iget v2, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualHeight:F

    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageListener;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;-><init>(FFLcom/badlogic/gdx/graphics/Camera;)V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->viewPort:Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 247
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    goto :goto_0

    .line 250
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const/16 v2, 0x3e8

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    iput-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 253
    :goto_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->viewPort:Lcom/badlogic/gdx/utils/viewport/Viewport;

    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    sput-wide v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->timerReferenceValue:D

    .line 255
    return-void
.end method

.method private disposeClonedSprites()V
    .locals 2

    .line 345
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 346
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->removeClonedSprites()V

    .line 347
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    goto :goto_0

    .line 348
    :cond_0
    return-void
.end method

.method private disposeStageButKeepActors()V
    .locals 1

    .line 777
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocusAll()V

    .line 778
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->dispose()V

    .line 779
    return-void
.end method

.method private disposeTextures()V
    .locals 6

    .line 767
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 768
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 769
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/common/LookData;

    .line 770
    .local v5, "lookData":Lorg/catrobat/catroid/common/LookData;
    invoke-virtual {v5}, Lorg/catrobat/catroid/common/LookData;->dispose()V

    .line 771
    .end local v5    # "lookData":Lorg/catrobat/catroid/common/LookData;
    goto :goto_2

    .line 772
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_0
    goto :goto_1

    .line 773
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_1
    goto :goto_0

    .line 774
    :cond_2
    return-void
.end method

.method private drawAxes()V
    .locals 14

    .line 629
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;-><init>()V

    .line 630
    .local v0, "layout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget v2, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualWidthHalf:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 632
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 633
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    .line 634
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageListener;->axes:Lcom/badlogic/gdx/graphics/Texture;

    iget v1, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualWidthHalf:F

    neg-float v4, v1

    iget v6, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualWidth:F

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v7, 0x40800000    # 4.0f

    invoke-interface/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 635
    iget-object v8, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    iget-object v9, p0, Lorg/catrobat/catroid/stage/StageListener;->axes:Lcom/badlogic/gdx/graphics/Texture;

    iget v1, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualHeightHalf:F

    neg-float v11, v1

    iget v13, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualHeight:F

    const/high16 v10, -0x40000000    # -2.0f

    const/high16 v12, 0x40800000    # 4.0f

    invoke-interface/range {v8 .. v13}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 637
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 639
    .local v1, "fontOffset":F
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualWidthHalf:F

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualWidthHalf:F

    neg-float v6, v6

    add-float/2addr v6, v1

    neg-float v7, v1

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 640
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    iget v4, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualWidthHalf:F

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualWidthHalf:F

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    sub-float/2addr v6, v7

    sub-float/2addr v6, v1

    neg-float v7, v1

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 643
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualHeightHalf:F

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualHeightHalf:F

    neg-float v5, v5

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    add-float/2addr v5, v6

    add-float/2addr v5, v1

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 644
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    iget v4, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualHeightHalf:F

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualHeightHalf:F

    sub-float/2addr v5, v1

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 646
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    neg-float v4, v1

    const-string v5, "0"

    invoke-virtual {v2, v3, v5, v1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 647
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    .line 648
    return-void
.end method

.method private getLabelFont(Lorg/catrobat/catroid/content/Project;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 3
    .param p1, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 216
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>()V

    .line 217
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    sget-object v1, Lorg/catrobat/catroid/stage/StageListener;->AXIS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 218
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;-><init>()V

    .line 219
    invoke-virtual {p0, p1, v0, v2}, Lorg/catrobat/catroid/stage/StageListener;->getFontScaleFactor(Lorg/catrobat/catroid/content/Project;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;)F

    move-result v2

    .line 218
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 220
    return-object v0
.end method

.method private initActors(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;)V"
        }
    .end annotation

    .line 258
    .local p1, "sprites":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    return-void

    .line 262
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 263
    .local v1, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->resetSprite()V

    .line 264
    iget-object v2, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->createBrightnessContrastHueShader()V

    .line 265
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v3, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 266
    .end local v1    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_0

    .line 268
    :cond_1
    new-instance v0, Lorg/catrobat/catroid/stage/PenActor;

    invoke-direct {v0}, Lorg/catrobat/catroid/stage/PenActor;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->penActor:Lorg/catrobat/catroid/stage/PenActor;

    .line 269
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 270
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->penActor:Lorg/catrobat/catroid/stage/PenActor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/stage/PenActor;->setZIndex(I)Z

    .line 272
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageListener;->calculateScreenRatio()F

    move-result v0

    .line 273
    .local v0, "screenRatio":F
    new-instance v1, Lorg/catrobat/catroid/stage/EmbroideryActor;

    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageListener;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-direct {v1, v0, v2, v3}, Lorg/catrobat/catroid/stage/EmbroideryActor;-><init>(FLorg/catrobat/catroid/embroidery/EmbroideryPatternManager;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 274
    .local v1, "embroideryActor":Lorg/catrobat/catroid/stage/EmbroideryActor;
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 275
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/stage/EmbroideryActor;->setZIndex(I)Z

    .line 276
    return-void
.end method

.method private initScreenMode()V
    .locals 7

    .line 730
    sget-object v0, Lorg/catrobat/catroid/stage/StageListener$2;->$SwitchMap$org$catrobat$catroid$common$ScreenModes:[I

    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getScreenMode()Lorg/catrobat/catroid/common/ScreenModes;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/common/ScreenModes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 732
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->project:Lorg/catrobat/catroid/content/Project;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ScreenValues;->getScreenWidthForProject(Lorg/catrobat/catroid/content/Project;)I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotWidth:I

    .line 733
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->project:Lorg/catrobat/catroid/content/Project;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ScreenValues;->getScreenHeightForProject(Lorg/catrobat/catroid/content/Project;)I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotHeight:I

    .line 734
    iput v2, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotX:I

    .line 735
    iput v2, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotY:I

    .line 736
    new-instance v0, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    iget v3, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualWidth:F

    iget v4, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualHeight:F

    iget-object v5, p0, Lorg/catrobat/catroid/stage/StageListener;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;-><init>(Lcom/badlogic/gdx/utils/Scaling;FFLcom/badlogic/gdx/graphics/Camera;)V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->viewPort:Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 737
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->identity()V

    .line 738
    goto :goto_0

    .line 740
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 741
    .local v0, "yScale":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 742
    .local v1, "xScale":F
    iget v3, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotWidth:I

    iget v4, p0, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortWidth:I

    if-eq v3, v4, :cond_2

    if-lez v4, :cond_2

    .line 743
    int-to-float v3, v3

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 745
    :cond_2
    iget v3, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotHeight:I

    iget v4, p0, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortHeight:I

    if-eq v3, v4, :cond_3

    if-lez v4, :cond_3

    .line 746
    int-to-float v3, v3

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 749
    :cond_3
    iget v3, p0, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortWidth:I

    iput v3, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotWidth:I

    .line 750
    iget v3, p0, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortHeight:I

    iput v3, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotHeight:I

    .line 751
    iget v3, p0, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortX:I

    iput v3, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotX:I

    .line 752
    iget v3, p0, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortY:I

    iput v3, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotY:I

    .line 754
    new-instance v3, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;

    iget v4, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualWidth:F

    iget v5, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualHeight:F

    iget-object v6, p0, Lorg/catrobat/catroid/stage/StageListener;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v3, v4, v5, v6}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;-><init>(FFLcom/badlogic/gdx/graphics/Camera;)V

    iput-object v3, p0, Lorg/catrobat/catroid/stage/StageListener;->viewPort:Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 755
    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageListener;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v1, v0, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->scale(FFF)V

    .line 756
    nop

    .line 760
    .end local v0    # "yScale":F
    .end local v1    # "xScale":F
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->viewPort:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    sget v3, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(IIZ)V

    .line 761
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 762
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->update()V

    .line 763
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->updateMatrices()V

    .line 764
    return-void
.end method

.method private initStageInputListener()V
    .locals 2

    .line 351
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->inputListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Lorg/catrobat/catroid/stage/StageListener$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/stage/StageListener$1;-><init>(Lorg/catrobat/catroid/stage/StageListener;)V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->inputListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    .line 370
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->inputListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 371
    return-void
.end method

.method public static synthetic lambda$fbHNcTw_JZTlOfvePjGT3YIPg14(Lorg/catrobat/catroid/stage/StageListener;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/catrobat/catroid/stage/StageListener;->notifyScreenshotCallbackAndCleanup(Ljava/lang/Boolean;)V

    return-void
.end method

.method private notifyScreenshotCallbackAndCleanup(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .line 690
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotSaverCallback:Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;->screenshotSaved(Z)V

    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotSaverCallback:Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;

    goto :goto_0

    .line 694
    :cond_0
    const-string v0, "StageListener"

    const-string v1, "Lost reference to screenshot callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :goto_0
    return-void
.end method

.method private printPhysicsLabelOnScreen()V
    .locals 11

    .line 609
    const/4 v0, 0x5

    .line 610
    .local v0, "fontOffset":I
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 611
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    .line 612
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->sprites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    .line 613
    .local v2, "sprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v3, v2, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    instance-of v3, v3, Lorg/catrobat/catroid/physics/PhysicsLook;

    if-eqz v3, :cond_0

    .line 614
    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageListener;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/physics/PhysicsWorld;->getPhysicsObject(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/physics/PhysicsObject;

    move-result-object v3

    .line 615
    .local v3, "tempPhysicsObject":Lorg/catrobat/catroid/physics/PhysicsObject;
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v5, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "velocity_x: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/catrobat/catroid/physics/PhysicsObject;->getVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/catrobat/catroid/physics/PhysicsObject;->getX()F

    move-result v7

    .line 616
    invoke-virtual {v3}, Lorg/catrobat/catroid/physics/PhysicsObject;->getY()F

    move-result v8

    .line 615
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 617
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v5, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "velocity_y: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/catrobat/catroid/physics/PhysicsObject;->getVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/catrobat/catroid/physics/PhysicsObject;->getX()F

    move-result v7

    .line 618
    invoke-virtual {v3}, Lorg/catrobat/catroid/physics/PhysicsObject;->getY()F

    move-result v8

    iget-object v9, p0, Lorg/catrobat/catroid/stage/StageListener;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getXHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40a00000    # 5.0f

    add-float/2addr v8, v9

    .line 617
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 619
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v5, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "angular velocity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/catrobat/catroid/physics/PhysicsObject;->getRotationSpeed()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/catrobat/catroid/physics/PhysicsObject;->getX()F

    move-result v7

    .line 620
    invoke-virtual {v3}, Lorg/catrobat/catroid/physics/PhysicsObject;->getY()F

    move-result v8

    iget-object v9, p0, Lorg/catrobat/catroid/stage/StageListener;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getXHeight()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x41200000    # 10.0f

    add-float/2addr v8, v9

    .line 619
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 621
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v5, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "direction: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/catrobat/catroid/physics/PhysicsObject;->getDirection()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/catrobat/catroid/physics/PhysicsObject;->getX()F

    move-result v7

    .line 622
    invoke-virtual {v3}, Lorg/catrobat/catroid/physics/PhysicsObject;->getY()F

    move-result v8

    iget-object v9, p0, Lorg/catrobat/catroid/stage/StageListener;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getXHeight()F

    move-result v9

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x41700000    # 15.0f

    add-float/2addr v8, v9

    .line 621
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 624
    .end local v2    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    .end local v3    # "tempPhysicsObject":Lorg/catrobat/catroid/physics/PhysicsObject;
    :cond_0
    goto/16 :goto_0

    .line 625
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    .line 626
    return-void
.end method

.method private removeAllClonedSpritesFromStage()V
    .locals 4

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->sprites:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 317
    .local v0, "spritesCopy":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    .line 318
    .local v2, "sprite":Lorg/catrobat/catroid/content/Sprite;
    iget-boolean v3, v2, Lorg/catrobat/catroid/content/Sprite;->isClone:Z

    if-eqz v3, :cond_0

    .line 319
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/stage/StageListener;->removeClonedSpriteFromStage(Lorg/catrobat/catroid/content/Sprite;)Z

    .line 321
    .end local v2    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_0
    goto :goto_0

    .line 322
    :cond_1
    invoke-static {}, Lorg/catrobat/catroid/stage/StageActivity;->resetNumberOfClonedSprites()V

    .line 323
    return-void
.end method

.method private restoreFromBackup(Lorg/catrobat/catroid/stage/StageListener$StageBackup;)V
    .locals 8
    .param p1, "backup"    # Lorg/catrobat/catroid/stage/StageListener$StageBackup;

    .line 895
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->sprites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 896
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->sprites:Ljava/util/List;

    iget-object v1, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->sprites:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 897
    invoke-static {}, Lorg/catrobat/catroid/stage/StageActivity;->getActiveCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v0

    .line 898
    .local v0, "cameraManager":Lorg/catrobat/catroid/camera/CameraManager;
    invoke-static {}, Lorg/catrobat/catroid/stage/StageActivity;->getActiveVibrationManager()Lorg/catrobat/catroid/utils/VibrationManager;

    move-result-object v1

    .line 900
    .local v1, "vibrationManager":Lorg/catrobat/catroid/utils/VibrationManager;
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->clear()V

    .line 901
    iget-object v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->actors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 902
    .local v3, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 903
    .end local v3    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    goto :goto_0

    .line 905
    :cond_0
    iget-object v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->penActor:Lorg/catrobat/catroid/stage/PenActor;

    iput-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->penActor:Lorg/catrobat/catroid/stage/PenActor;

    .line 907
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->bubbleActorMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 908
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->bubbleActorMap:Ljava/util/Map;

    iget-object v3, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->bubbleActorMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 910
    iget-object v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    iput-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    .line 912
    iget-boolean v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->paused:Z

    iput-boolean v2, p0, Lorg/catrobat/catroid/stage/StageListener;->paused:Z

    .line 913
    iget-boolean v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->finished:Z

    iput-boolean v2, p0, Lorg/catrobat/catroid/stage/StageListener;->finished:Z

    .line 914
    iget-boolean v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->reloadProject:Z

    iput-boolean v2, p0, Lorg/catrobat/catroid/stage/StageListener;->reloadProject:Z

    .line 915
    iget-boolean v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->flashState:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 916
    invoke-virtual {v0}, Lorg/catrobat/catroid/camera/CameraManager;->enableFlash()V

    .line 918
    :cond_1
    iget-wide v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->timeToVibrate:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    if-eqz v1, :cond_2

    .line 919
    iget-wide v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->timeToVibrate:J

    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/utils/VibrationManager;->setTimeToVibrate(J)V

    .line 920
    invoke-virtual {v1}, Lorg/catrobat/catroid/utils/VibrationManager;->resume()V

    goto :goto_1

    .line 921
    :cond_2
    if-eqz v1, :cond_3

    .line 922
    invoke-virtual {v1}, Lorg/catrobat/catroid/utils/VibrationManager;->pause()V

    .line 924
    :cond_3
    :goto_1
    iget-object v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    iput-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    .line 925
    iget-object v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iput-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .line 926
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->cameraPositioner:Lorg/catrobat/catroid/stage/CameraPositioner;

    iget-object v3, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->spriteToFocusOn:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/CameraPositioner;->setSpriteToFocusOn(Lorg/catrobat/catroid/content/Sprite;)V

    .line 927
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->cameraPositioner:Lorg/catrobat/catroid/stage/CameraPositioner;

    invoke-virtual {v2}, Lorg/catrobat/catroid/stage/CameraPositioner;->updateCameraPositionForFocusedSprite()V

    .line 928
    iget-object v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    iput-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 929
    iget-object v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 930
    iget-object v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->passepartout:Lorg/catrobat/catroid/stage/Passepartout;

    iput-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->passepartout:Lorg/catrobat/catroid/stage/Passepartout;

    .line 931
    iget-object v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->viewPort:Lcom/badlogic/gdx/utils/viewport/Viewport;

    iput-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->viewPort:Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 932
    iget-boolean v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->axesOn:Z

    iput-boolean v2, p0, Lorg/catrobat/catroid/stage/StageListener;->axesOn:Z

    .line 933
    iget v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->deltaActionTimeDivisor:F

    iput v2, p0, Lorg/catrobat/catroid/stage/StageListener;->deltaActionTimeDivisor:F

    .line 934
    iget-boolean v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->cameraRunning:Z

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 935
    invoke-virtual {v0}, Lorg/catrobat/catroid/camera/CameraManager;->resume()V

    .line 937
    :cond_4
    iget-object v2, p1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->soundBackupList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/SoundBackup;

    .line 938
    .local v3, "soundBackup":Lorg/catrobat/catroid/content/SoundBackup;
    invoke-static {}, Lorg/catrobat/catroid/io/SoundManager;->getInstance()Lorg/catrobat/catroid/io/SoundManager;

    move-result-object v4

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/SoundBackup;->getPathToSoundFile()Ljava/lang/String;

    move-result-object v5

    .line 939
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/SoundBackup;->getStartedBySprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v6

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/SoundBackup;->getCurrentPosition()I

    move-result v7

    .line 938
    invoke-virtual {v4, v5, v6, v7}, Lorg/catrobat/catroid/io/SoundManager;->playSoundFileWithStartTime(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;I)V

    .line 940
    .end local v3    # "soundBackup":Lorg/catrobat/catroid/content/SoundBackup;
    goto :goto_2

    .line 941
    :cond_5
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageListener;->initStageInputListener()V

    .line 942
    return-void
.end method

.method private saveToBackup()Lorg/catrobat/catroid/stage/StageListener$StageBackup;
    .locals 7

    .line 852
    new-instance v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/stage/StageListener$StageBackup;-><init>(Lorg/catrobat/catroid/stage/StageListener;Lorg/catrobat/catroid/stage/StageListener$1;)V

    .line 853
    .local v0, "backup":Lorg/catrobat/catroid/stage/StageListener$StageBackup;
    invoke-static {}, Lorg/catrobat/catroid/stage/StageActivity;->getActiveCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v1

    .line 854
    .local v1, "cameraManager":Lorg/catrobat/catroid/camera/CameraManager;
    invoke-static {}, Lorg/catrobat/catroid/stage/StageActivity;->getActiveVibrationManager()Lorg/catrobat/catroid/utils/VibrationManager;

    move-result-object v2

    .line 856
    .local v2, "vibrationManager":Lorg/catrobat/catroid/utils/VibrationManager;
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->sprites:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->sprites:Ljava/util/List;

    .line 857
    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iput-object v3, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->actors:Lcom/badlogic/gdx/utils/Array;

    .line 858
    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageListener;->penActor:Lorg/catrobat/catroid/stage/PenActor;

    iput-object v3, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->penActor:Lorg/catrobat/catroid/stage/PenActor;

    .line 859
    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->bubbleActorMap:Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v3, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->bubbleActorMap:Ljava/util/Map;

    .line 860
    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    iput-object v3, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    .line 862
    iget-boolean v3, p0, Lorg/catrobat/catroid/stage/StageListener;->paused:Z

    iput-boolean v3, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->paused:Z

    .line 863
    iget-boolean v3, p0, Lorg/catrobat/catroid/stage/StageListener;->finished:Z

    iput-boolean v3, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->finished:Z

    .line 864
    iget-boolean v3, p0, Lorg/catrobat/catroid/stage/StageListener;->reloadProject:Z

    iput-boolean v3, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->reloadProject:Z

    .line 865
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/catrobat/catroid/camera/CameraManager;->getFlashOn()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    iput-boolean v5, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->flashState:Z

    .line 866
    iget-boolean v5, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->flashState:Z

    if-eqz v5, :cond_1

    .line 867
    invoke-virtual {v1}, Lorg/catrobat/catroid/camera/CameraManager;->disableFlash()V

    .line 869
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/catrobat/catroid/utils/VibrationManager;->hasActiveVibration()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 870
    invoke-virtual {v2}, Lorg/catrobat/catroid/utils/VibrationManager;->pause()V

    .line 871
    invoke-virtual {v2}, Lorg/catrobat/catroid/utils/VibrationManager;->getTimeToVibrate()J

    move-result-wide v5

    iput-wide v5, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->timeToVibrate:J

    .line 872
    invoke-virtual {v2}, Lorg/catrobat/catroid/utils/VibrationManager;->reset()V

    .line 874
    :cond_2
    iget-object v5, p0, Lorg/catrobat/catroid/stage/StageListener;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    iput-object v5, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    .line 875
    iget-object v5, p0, Lorg/catrobat/catroid/stage/StageListener;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iput-object v5, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .line 876
    iget-object v5, p0, Lorg/catrobat/catroid/stage/StageListener;->cameraPositioner:Lorg/catrobat/catroid/stage/CameraPositioner;

    invoke-virtual {v5}, Lorg/catrobat/catroid/stage/CameraPositioner;->getSpriteToFocusOn()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v5

    iput-object v5, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->spriteToFocusOn:Lorg/catrobat/catroid/content/Sprite;

    .line 877
    iget-object v5, p0, Lorg/catrobat/catroid/stage/StageListener;->cameraPositioner:Lorg/catrobat/catroid/stage/CameraPositioner;

    invoke-virtual {v5}, Lorg/catrobat/catroid/stage/CameraPositioner;->reset()V

    .line 878
    iget-object v5, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    iput-object v5, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 879
    iget-object v5, p0, Lorg/catrobat/catroid/stage/StageListener;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v5, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 880
    iget-object v5, p0, Lorg/catrobat/catroid/stage/StageListener;->passepartout:Lorg/catrobat/catroid/stage/Passepartout;

    iput-object v5, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->passepartout:Lorg/catrobat/catroid/stage/Passepartout;

    .line 881
    iget-object v5, p0, Lorg/catrobat/catroid/stage/StageListener;->viewPort:Lcom/badlogic/gdx/utils/viewport/Viewport;

    iput-object v5, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->viewPort:Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 883
    iget-boolean v5, p0, Lorg/catrobat/catroid/stage/StageListener;->axesOn:Z

    iput-boolean v5, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->axesOn:Z

    .line 884
    iget v5, p0, Lorg/catrobat/catroid/stage/StageListener;->deltaActionTimeDivisor:F

    iput v5, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->deltaActionTimeDivisor:F

    .line 885
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/catrobat/catroid/camera/CameraManager;->isCameraActive()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    iput-boolean v3, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->cameraRunning:Z

    .line 886
    iget-boolean v3, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->cameraRunning:Z

    if-eqz v3, :cond_4

    .line 887
    invoke-virtual {v1}, Lorg/catrobat/catroid/camera/CameraManager;->pause()V

    .line 889
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->soundBackupList:Ljava/util/List;

    .line 890
    iget-object v3, v0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->soundBackupList:Ljava/util/List;

    invoke-static {}, Lorg/catrobat/catroid/io/SoundManager;->getInstance()Lorg/catrobat/catroid/io/SoundManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/io/SoundManager;->getPlayingSoundBackups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 891
    return-object v0
.end method

.method private setSchedulerStateForAllLooks(I)V
    .locals 3
    .param p1, "state"    # I

    .line 796
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 797
    .local v1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v2, v1, Lorg/catrobat/catroid/content/Look;

    if-eqz v2, :cond_0

    .line 798
    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/content/Look;

    .line 799
    .local v2, "look":Lorg/catrobat/catroid/content/Look;
    invoke-virtual {v2, p1}, Lorg/catrobat/catroid/content/Look;->setSchedulerState(I)V

    .line 801
    .end local v1    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v2    # "look":Lorg/catrobat/catroid/content/Look;
    :cond_0
    goto :goto_0

    .line 802
    :cond_1
    return-void
.end method

.method private spriteIsCloneOfSprite(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "cloneSprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 336
    iget-boolean v0, p2, Lorg/catrobat/catroid/content/Sprite;->isClone:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 337
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 339
    :cond_0
    const-string v0, "\\-c\\d+$"

    .line 340
    .local v0, "cloneNameExtensionRegexPattern":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "splitCloneNameStrings":[Ljava/lang/String;
    aget-object v1, v2, v1

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 788
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 789
    return-void
.end method

.method public addCloneActorToStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/Group;Lorg/catrobat/catroid/content/Look;Lorg/catrobat/catroid/content/Look;)V
    .locals 2
    .param p1, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .param p2, "rootGroup"    # Lcom/badlogic/gdx/scenes/scene2d/Group;
    .param p3, "cloneMeLook"    # Lorg/catrobat/catroid/content/Look;
    .param p4, "copyLook"    # Lorg/catrobat/catroid/content/Look;

    .line 297
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 300
    :cond_0
    invoke-virtual {p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 301
    return-void
.end method

.method public clearBackground()V
    .locals 1

    .line 726
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->penActor:Lorg/catrobat/catroid/stage/PenActor;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/PenActor;->reset()V

    .line 727
    return-void
.end method

.method public cloneSpriteAndAddToStage(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 5
    .param p1, "cloneMe"    # Lorg/catrobat/catroid/content/Sprite;

    .line 279
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;-><init>()V

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->copyForCloneBrick(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    .line 280
    .local v0, "copy":Lorg/catrobat/catroid/content/Sprite;
    iget-boolean v1, p1, Lorg/catrobat/catroid/content/Sprite;->isClone:Z

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p1, Lorg/catrobat/catroid/content/Sprite;->myOriginal:Lorg/catrobat/catroid/content/Sprite;

    iput-object v1, v0, Lorg/catrobat/catroid/content/Sprite;->myOriginal:Lorg/catrobat/catroid/content/Sprite;

    goto :goto_0

    .line 283
    :cond_0
    iput-object p1, v0, Lorg/catrobat/catroid/content/Sprite;->myOriginal:Lorg/catrobat/catroid/content/Sprite;

    .line 285
    :goto_0
    iget-object v1, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->createBrightnessContrastHueShader()V

    .line 286
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    iget-object v3, p1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    iget-object v4, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/catrobat/catroid/stage/StageListener;->addCloneActorToStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/Group;Lorg/catrobat/catroid/content/Look;Lorg/catrobat/catroid/content/Look;)V

    .line 287
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->sprites:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 290
    .local v1, "currentLookDataIndex":I
    iget-object v2, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/Look;->setLookData(Lorg/catrobat/catroid/common/LookData;)V

    .line 292
    .end local v1    # "currentLookDataIndex":I
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Sprite;->initializeEventThreads(I)V

    .line 293
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->initConditionScriptTriggers()V

    .line 294
    return-void
.end method

.method public create()V
    .locals 8

    .line 179
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/catrobat/catroid/stage/StageListener;->deltaActionTimeDivisor:F

    .line 181
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 183
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->project:Lorg/catrobat/catroid/content/Project;

    .line 184
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    .line 186
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageListener;->createNewStage()V

    .line 188
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    .line 192
    :goto_0
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageListener;->initScreenMode()V

    .line 193
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageListener;->initStageInputListener()V

    .line 194
    new-instance v0, Lorg/catrobat/catroid/stage/ScreenshotSaver;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageListener;->getScreenshotPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotWidth:I

    iget v4, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotHeight:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/catrobat/catroid/stage/ScreenshotSaver;-><init>(Lcom/badlogic/gdx/Files;Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotSaver:Lorg/catrobat/catroid/stage/ScreenshotSaver;

    .line 197
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->project:Lorg/catrobat/catroid/content/Project;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/stage/StageListener;->getLabelFont(Lorg/catrobat/catroid/content/Project;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 199
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scene;->resetPhysicsWorld()Lorg/catrobat/catroid/physics/PhysicsWorld;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->sprites:Ljava/util/List;

    .line 202
    new-instance v0, Lorg/catrobat/catroid/embroidery/DSTPatternManager;

    invoke-direct {v0}, Lorg/catrobat/catroid/embroidery/DSTPatternManager;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    .line 203
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->sprites:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/stage/StageListener;->initActors(Ljava/util/List;)V

    .line 205
    new-instance v0, Lorg/catrobat/catroid/stage/Passepartout;

    sget v2, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    sget v3, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    iget v4, p0, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortWidth:I

    iget v5, p0, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortHeight:I

    iget v6, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualWidth:F

    iget v7, p0, Lorg/catrobat/catroid/stage/StageListener;->virtualHeight:F

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/catrobat/catroid/stage/Passepartout;-><init>(IIIIFF)V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->passepartout:Lorg/catrobat/catroid/stage/Passepartout;

    .line 206
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 208
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "stage/red_pixel.bmp"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->axes:Lcom/badlogic/gdx/graphics/Texture;

    .line 209
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 660
    iget-boolean v0, p0, Lorg/catrobat/catroid/stage/StageListener;->finished:Z

    if-nez v0, :cond_0

    .line 661
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageListener;->finish()V

    .line 663
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageListener;->disposeStageButKeepActors()V

    .line 664
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V

    .line 665
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->axes:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 667
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageListener;->disposeTextures()V

    .line 668
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageListener;->disposeClonedSprites()V

    .line 670
    invoke-static {}, Lorg/catrobat/catroid/io/SoundManager;->getInstance()Lorg/catrobat/catroid/io/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/io/SoundManager;->clear()V

    .line 671
    invoke-static {}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->getInstance()Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->reset()V

    .line 672
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    .line 673
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->penActor:Lorg/catrobat/catroid/stage/PenActor;

    if-eqz v0, :cond_1

    .line 674
    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/PenActor;->dispose()V

    .line 676
    :cond_1
    return-void
.end method

.method public finish()V
    .locals 1

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/stage/StageListener;->finished:Z

    .line 680
    return-void
.end method

.method public gamepadPressed(Ljava/lang/String;)V
    .locals 3
    .param p1, "buttonType"    # Ljava/lang/String;

    .line 782
    new-instance v0, Lorg/catrobat/catroid/content/eventids/GamepadEventId;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/content/eventids/GamepadEventId;-><init>(Ljava/lang/String;)V

    .line 783
    .local v0, "eventId":Lorg/catrobat/catroid/content/eventids/EventId;
    new-instance v1, Lorg/catrobat/catroid/content/EventWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/catrobat/catroid/content/EventWrapper;-><init>(Lorg/catrobat/catroid/content/eventids/EventId;Z)V

    .line 784
    .local v1, "gamepadEvent":Lorg/catrobat/catroid/content/EventWrapper;
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/content/Project;->fireToAllSprites(Lorg/catrobat/catroid/content/EventWrapper;)V

    .line 785
    return-void
.end method

.method public getAllClonesOfSprite(Lorg/catrobat/catroid/content/Sprite;)Ljava/util/List;
    .locals 4
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Sprite;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v0, "clonesOfSprite":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->sprites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    .line 328
    .local v2, "spriteOfStage":Lorg/catrobat/catroid/content/Sprite;
    invoke-direct {p0, p1, v2}, Lorg/catrobat/catroid/stage/StageListener;->spriteIsCloneOfSprite(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v2    # "spriteOfStage":Lorg/catrobat/catroid/content/Sprite;
    :cond_0
    goto :goto_0

    .line 332
    :cond_1
    return-object v0
.end method

.method public getBubbleActorForSprite(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/stage/ShowBubbleActor;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 816
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->bubbleActorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/stage/ShowBubbleActor;

    return-object v0
.end method

.method public getFontScaleFactor(Lorg/catrobat/catroid/content/Project;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;)F
    .locals 3
    .param p1, "project"    # Lorg/catrobat/catroid/content/Project;
    .param p2, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p3, "tempAxisLabelLayout"    # Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 225
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v0

    iget v0, v0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/XmlHeader;->islandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v0

    iget v0, v0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenHeight:I

    int-to-float v0, v0

    .local v0, "shortDisplaySide":F
    goto :goto_0

    .line 231
    .end local v0    # "shortDisplaySide":F
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v0

    iget v0, v0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    int-to-float v0, v0

    .line 234
    .restart local v0    # "shortDisplaySide":F
    :goto_0
    const v1, 0x3ccccccd    # 0.025f

    mul-float/2addr v1, v0

    iget v2, p3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    div-float/2addr v1, v2

    return v1
.end method

.method public getPenActor()Lorg/catrobat/catroid/stage/PenActor;
    .locals 1

    .line 651
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->penActor:Lorg/catrobat/catroid/stage/PenActor;

    return-object v0
.end method

.method public getPixels(IIII)[B
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 699
    iput p1, p0, Lorg/catrobat/catroid/stage/StageListener;->testX:I

    .line 700
    iput p2, p0, Lorg/catrobat/catroid/stage/StageListener;->testY:I

    .line 701
    iput p3, p0, Lorg/catrobat/catroid/stage/StageListener;->testWidth:I

    .line 702
    iput p4, p0, Lorg/catrobat/catroid/stage/StageListener;->testHeight:I

    .line 703
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/stage/StageListener;->makeTestPixels:Z

    .line 704
    :goto_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/stage/StageListener;->makeTestPixels:Z

    if-eqz v0, :cond_0

    .line 705
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 707
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->testPixels:[B

    array-length v1, v0

    new-array v1, v1, [B

    .line 708
    .local v1, "copyOfTestPixels":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    return-object v1
.end method

.method public getScreenshotPath()Ljava/lang/String;
    .locals 2

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpritesFromStage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation

    .line 820
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->sprites:Ljava/util/List;

    return-object v0
.end method

.method public getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .locals 1

    .line 792
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-object v0
.end method

.method menuPause()V
    .locals 1

    .line 381
    iget-boolean v0, p0, Lorg/catrobat/catroid/stage/StageListener;->finished:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/catrobat/catroid/stage/StageListener;->reloadProject:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/stage/StageListener;->paused:Z

    .line 386
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->webConnectionHolder:Lorg/catrobat/catroid/web/WebConnectionHolder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/web/WebConnectionHolder;->onPause()V

    .line 387
    return-void

    .line 382
    :cond_1
    :goto_0
    return-void
.end method

.method menuResume()V
    .locals 1

    .line 374
    iget-boolean v0, p0, Lorg/catrobat/catroid/stage/StageListener;->reloadProject:Z

    if-eqz v0, :cond_0

    .line 375
    return-void

    .line 377
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/stage/StageListener;->paused:Z

    .line 378
    return-void
.end method

.method public pause()V
    .locals 1

    .line 488
    iget-boolean v0, p0, Lorg/catrobat/catroid/stage/StageListener;->finished:Z

    if-eqz v0, :cond_0

    .line 489
    return-void

    .line 491
    :cond_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/stage/StageListener;->paused:Z

    if-nez v0, :cond_1

    .line 492
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/stage/StageListener;->setSchedulerStateForAllLooks(I)V

    .line 493
    invoke-static {}, Lorg/catrobat/catroid/io/SoundManager;->getInstance()Lorg/catrobat/catroid/io/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/io/SoundManager;->pause()V

    .line 495
    :cond_1
    return-void
.end method

.method public reloadProject(Lorg/catrobat/catroid/ui/dialogs/StageDialog;)V
    .locals 5
    .param p1, "stageDialog"    # Lorg/catrobat/catroid/ui/dialogs/StageDialog;

    .line 444
    iget-boolean v0, p0, Lorg/catrobat/catroid/stage/StageListener;->reloadProject:Z

    if-eqz v0, :cond_0

    .line 445
    return-void

    .line 447
    :cond_0
    iput-object p1, p0, Lorg/catrobat/catroid/stage/StageListener;->stageDialog:Lorg/catrobat/catroid/ui/dialogs/StageDialog;

    .line 448
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getStartScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 449
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getStartScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/stage/StageListener;->transitionToScene(Ljava/lang/String;)V

    .line 451
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->stageBackupMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 452
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->clear()V

    .line 454
    invoke-static {}, Lorg/catrobat/catroid/stage/StageActivity;->getActiveCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v0

    .line 455
    .local v0, "cameraManager":Lorg/catrobat/catroid/camera/CameraManager;
    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {v0}, Lorg/catrobat/catroid/camera/CameraManager;->reset()V

    .line 458
    :cond_2
    invoke-static {}, Lorg/catrobat/catroid/stage/StageActivity;->getActiveVibrationManager()Lorg/catrobat/catroid/utils/VibrationManager;

    move-result-object v1

    .line 459
    .local v1, "vibrationManager":Lorg/catrobat/catroid/utils/VibrationManager;
    if-eqz v1, :cond_3

    .line 460
    invoke-virtual {v1}, Lorg/catrobat/catroid/utils/VibrationManager;->reset()V

    .line 462
    :cond_3
    invoke-static {}, Lorg/catrobat/catroid/utils/TouchUtil;->reset()V

    .line 463
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getInstance()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->reset()V

    .line 464
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageListener;->removeAllClonedSpritesFromStage()V

    .line 466
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-static {v2}, Lorg/catrobat/catroid/formulaeditor/UserDataWrapper;->resetAllUserData(Lorg/catrobat/catroid/content/Project;)V

    .line 468
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Scene;

    .line 469
    .local v3, "scene":Lorg/catrobat/catroid/content/Scene;
    iput-boolean v4, v3, Lorg/catrobat/catroid/content/Scene;->firstStart:Z

    .line 470
    .end local v3    # "scene":Lorg/catrobat/catroid/content/Scene;
    goto :goto_0

    .line 471
    :cond_4
    iput-boolean v4, p0, Lorg/catrobat/catroid/stage/StageListener;->reloadProject:Z

    .line 472
    return-void
.end method

.method public removeBubbleActorForSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 810
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/stage/StageListener;->getBubbleActorForSprite(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/stage/ShowBubbleActor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->close()V

    .line 811
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageListener;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/stage/StageListener;->getBubbleActorForSprite(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/stage/ShowBubbleActor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 812
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->bubbleActorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    return-void
.end method

.method public removeClonedSpriteFromStage(Lorg/catrobat/catroid/content/Sprite;)Z
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 304
    iget-boolean v0, p1, Lorg/catrobat/catroid/content/Sprite;->isClone:Z

    if-nez v0, :cond_0

    .line 305
    const/4 v0, 0x0

    return v0

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->sprites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 308
    .local v0, "removedSprite":Z
    if-eqz v0, :cond_1

    .line 309
    iget-object v1, p1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->remove()Z

    .line 310
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->invalidate()V

    .line 312
    :cond_1
    return v0
.end method

.method public render()V
    .locals 14

    .line 499
    invoke-static {}, Lorg/catrobat/catroid/stage/StageActivity;->getActiveCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v0

    .line 500
    .local v0, "cameraManager":Lorg/catrobat/catroid/camera/CameraManager;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/camera/CameraManager;->getPreviewVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 501
    .local v3, "color":F
    :goto_0
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v4, v3, v3, v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    .line 502
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v5, 0x4000

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    .line 504
    iget-boolean v4, p0, Lorg/catrobat/catroid/stage/StageListener;->reloadProject:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 505
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->clear()V

    .line 506
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->penActor:Lorg/catrobat/catroid/stage/PenActor;

    if-eqz v4, :cond_1

    .line 507
    invoke-virtual {v4}, Lorg/catrobat/catroid/stage/PenActor;->dispose()V

    .line 510
    :cond_1
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    invoke-interface {v4}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->clear()V

    .line 512
    invoke-static {}, Lorg/catrobat/catroid/io/SoundManager;->getInstance()Lorg/catrobat/catroid/io/SoundManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/io/SoundManager;->clear()V

    .line 514
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Scene;->resetPhysicsWorld()Lorg/catrobat/catroid/physics/PhysicsWorld;

    move-result-object v4

    iput-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    .line 516
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->sprites:Ljava/util/List;

    invoke-direct {p0, v4}, Lorg/catrobat/catroid/stage/StageListener;->initActors(Ljava/util/List;)V

    .line 517
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v7, p0, Lorg/catrobat/catroid/stage/StageListener;->passepartout:Lorg/catrobat/catroid/stage/Passepartout;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 519
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageListener;->initStageInputListener()V

    .line 521
    iput-boolean v5, p0, Lorg/catrobat/catroid/stage/StageListener;->paused:Z

    .line 522
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    iput-boolean v5, v4, Lorg/catrobat/catroid/content/Scene;->firstStart:Z

    .line 523
    iput-boolean v6, p0, Lorg/catrobat/catroid/stage/StageListener;->reloadProject:Z

    .line 525
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->cameraPositioner:Lorg/catrobat/catroid/stage/CameraPositioner;

    invoke-virtual {v4}, Lorg/catrobat/catroid/stage/CameraPositioner;->reset()V

    .line 527
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->stageDialog:Lorg/catrobat/catroid/ui/dialogs/StageDialog;

    if-eqz v4, :cond_2

    .line 528
    monitor-enter v4

    .line 529
    :try_start_0
    iget-object v7, p0, Lorg/catrobat/catroid/stage/StageListener;->stageDialog:Lorg/catrobat/catroid/ui/dialogs/StageDialog;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 530
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 534
    :cond_2
    :goto_1
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    iget-object v7, p0, Lorg/catrobat/catroid/stage/StageListener;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {v4, v7}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 535
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v7, p0, Lorg/catrobat/catroid/stage/StageListener;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 537
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    iget-boolean v4, v4, Lorg/catrobat/catroid/content/Scene;->firstStart:Z

    if-eqz v4, :cond_5

    .line 538
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->sprites:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/content/Sprite;

    .line 539
    .local v7, "sprite":Lorg/catrobat/catroid/content/Sprite;
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lorg/catrobat/catroid/content/Sprite;->initializeEventThreads(I)V

    .line 540
    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Sprite;->initConditionScriptTriggers()V

    .line 541
    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 542
    iget-object v8, v7, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v8, v9}, Lorg/catrobat/catroid/content/Look;->setLookData(Lorg/catrobat/catroid/common/LookData;)V

    .line 544
    .end local v7    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_3
    goto :goto_2

    .line 545
    :cond_4
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    iput-boolean v6, v4, Lorg/catrobat/catroid/content/Scene;->firstStart:Z

    .line 548
    :cond_5
    iget-boolean v4, p0, Lorg/catrobat/catroid/stage/StageListener;->paused:Z

    if-nez v4, :cond_8

    .line 549
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v4

    .line 551
    .local v4, "deltaTime":F
    iget v7, p0, Lorg/catrobat/catroid/stage/StageListener;->deltaActionTimeDivisor:F

    div-float v7, v4, v7

    .line 552
    .local v7, "optimizedDeltaTime":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 554
    .local v8, "timeBeforeActionsUpdate":J
    :goto_3
    cmpl-float v10, v4, v1

    if-lez v10, :cond_6

    .line 555
    iget-object v10, p0, Lorg/catrobat/catroid/stage/StageListener;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    invoke-virtual {v10, v7}, Lorg/catrobat/catroid/physics/PhysicsWorld;->step(F)V

    .line 556
    iget-object v10, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    .line 557
    sub-float/2addr v4, v7

    goto :goto_3

    .line 560
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    .line 561
    .local v10, "executionTimeOfActionsUpdate":J
    const-wide/16 v12, 0x8

    cmp-long v1, v10, v12

    if-gtz v1, :cond_7

    .line 562
    iget v1, p0, Lorg/catrobat/catroid/stage/StageListener;->deltaActionTimeDivisor:F

    add-float/2addr v1, v2

    iput v1, p0, Lorg/catrobat/catroid/stage/StageListener;->deltaActionTimeDivisor:F

    .line 563
    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lorg/catrobat/catroid/stage/StageListener;->deltaActionTimeDivisor:F

    goto :goto_4

    .line 565
    :cond_7
    iget v1, p0, Lorg/catrobat/catroid/stage/StageListener;->deltaActionTimeDivisor:F

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/catrobat/catroid/stage/StageListener;->deltaActionTimeDivisor:F

    .line 566
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lorg/catrobat/catroid/stage/StageListener;->deltaActionTimeDivisor:F

    .line 570
    .end local v4    # "deltaTime":F
    .end local v7    # "optimizedDeltaTime":F
    .end local v8    # "timeBeforeActionsUpdate":J
    .end local v10    # "executionTimeOfActionsUpdate":J
    :cond_8
    :goto_4
    iget-boolean v1, p0, Lorg/catrobat/catroid/stage/StageListener;->finished:Z

    if-nez v1, :cond_9

    .line 571
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->draw()V

    .line 572
    iput-boolean v5, p0, Lorg/catrobat/catroid/stage/StageListener;->firstFrameDrawn:Z

    .line 575
    :cond_9
    iget-boolean v1, p0, Lorg/catrobat/catroid/stage/StageListener;->makeScreenshot:Z

    if-eqz v1, :cond_a

    .line 576
    iget v1, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotX:I

    iget v2, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotY:I

    iget v4, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotWidth:I

    iget v7, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotHeight:I

    .line 577
    invoke-static {v1, v2, v4, v7, v5}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixels(IIIIZ)[B

    move-result-object v1

    .line 578
    .local v1, "screenshot":[B
    iput-boolean v6, p0, Lorg/catrobat/catroid/stage/StageListener;->makeScreenshot:Z

    .line 579
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotSaver:Lorg/catrobat/catroid/stage/ScreenshotSaver;

    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotName:Ljava/lang/String;

    new-instance v5, Lorg/catrobat/catroid/stage/-$$Lambda$StageListener$fbHNcTw_JZTlOfvePjGT3YIPg14;

    invoke-direct {v5, p0}, Lorg/catrobat/catroid/stage/-$$Lambda$StageListener$fbHNcTw_JZTlOfvePjGT3YIPg14;-><init>(Lorg/catrobat/catroid/stage/StageListener;)V

    sget-object v7, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-virtual {v2, v1, v4, v5, v7}, Lorg/catrobat/catroid/stage/ScreenshotSaver;->saveScreenshotAndNotify([BLjava/lang/String;Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;Lkotlinx/coroutines/CoroutineScope;)V

    .line 587
    .end local v1    # "screenshot":[B
    :cond_a
    iget-boolean v1, p0, Lorg/catrobat/catroid/stage/StageListener;->axesOn:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lorg/catrobat/catroid/stage/StageListener;->finished:Z

    if-nez v1, :cond_b

    .line 588
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageListener;->drawAxes()V

    .line 599
    :cond_b
    iget-boolean v1, p0, Lorg/catrobat/catroid/stage/StageListener;->makeTestPixels:Z

    if-eqz v1, :cond_c

    .line 600
    iget v1, p0, Lorg/catrobat/catroid/stage/StageListener;->testX:I

    iget v2, p0, Lorg/catrobat/catroid/stage/StageListener;->testY:I

    iget v4, p0, Lorg/catrobat/catroid/stage/StageListener;->testWidth:I

    iget v5, p0, Lorg/catrobat/catroid/stage/StageListener;->testHeight:I

    invoke-static {v1, v2, v4, v5, v6}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixels(IIIIZ)[B

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->testPixels:[B

    .line 601
    iput-boolean v6, p0, Lorg/catrobat/catroid/stage/StageListener;->makeTestPixels:Z

    .line 604
    :cond_c
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->cameraPositioner:Lorg/catrobat/catroid/stage/CameraPositioner;

    invoke-virtual {v1}, Lorg/catrobat/catroid/stage/CameraPositioner;->updateCameraPositionForFocusedSprite()V

    .line 605
    return-void
.end method

.method public requestTakingScreenshot(Ljava/lang/String;Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;)V
    .locals 1
    .param p1, "screenshotName"    # Ljava/lang/String;
    .param p2, "screenshotCallback"    # Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;

    .line 684
    iput-object p1, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotName:Ljava/lang/String;

    .line 685
    iput-object p2, p0, Lorg/catrobat/catroid/stage/StageListener;->screenshotSaverCallback:Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;

    .line 686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/stage/StageListener;->makeScreenshot:Z

    .line 687
    return-void
.end method

.method public resize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 656
    return-void
.end method

.method public resume()V
    .locals 4

    .line 476
    iget-boolean v0, p0, Lorg/catrobat/catroid/stage/StageListener;->paused:Z

    if-nez v0, :cond_0

    .line 477
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/stage/StageListener;->setSchedulerStateForAllLooks(I)V

    .line 478
    invoke-static {}, Lorg/catrobat/catroid/io/SoundManager;->getInstance()Lorg/catrobat/catroid/io/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/io/SoundManager;->resume()V

    .line 481
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->sprites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 482
    .local v1, "sprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v2, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/Look;->refreshTextures(Z)V

    .line 483
    .end local v1    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_0

    .line 484
    :cond_1
    return-void
.end method

.method public setBubbleActorForSprite(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/stage/ShowBubbleActor;)V
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "showBubbleActor"    # Lorg/catrobat/catroid/stage/ShowBubbleActor;

    .line 805
    invoke-virtual {p0, p2}, Lorg/catrobat/catroid/stage/StageListener;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 806
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->bubbleActorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    return-void
.end method

.method public setPaused(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .line 212
    iput-boolean p1, p0, Lorg/catrobat/catroid/stage/StageListener;->paused:Z

    .line 213
    return-void
.end method

.method public startScene(Ljava/lang/String;)V
    .locals 4
    .param p1, "sceneName"    # Ljava/lang/String;

    .line 415
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/Project;->getSceneByName(Ljava/lang/String;)Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    .line 417
    .local v0, "newScene":Lorg/catrobat/catroid/content/Scene;
    if-nez v0, :cond_0

    .line 418
    return-void

    .line 421
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->stageBackupMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageListener;->saveToBackup()Lorg/catrobat/catroid/stage/StageListener$StageBackup;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageListener;->pause()V

    .line 424
    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    .line 425
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ProjectManager;->setCurrentlyPlayingScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 427
    invoke-static {}, Lorg/catrobat/catroid/stage/StageActivity;->getActiveCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v1

    .line 428
    .local v1, "cameraManager":Lorg/catrobat/catroid/camera/CameraManager;
    if-eqz v1, :cond_1

    .line 429
    invoke-virtual {v1}, Lorg/catrobat/catroid/camera/CameraManager;->resume()V

    .line 432
    :cond_1
    invoke-static {}, Lorg/catrobat/catroid/io/SoundManager;->getInstance()Lorg/catrobat/catroid/io/SoundManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/io/SoundManager;->clear()V

    .line 435
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->stageBackupMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 439
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/catrobat/catroid/content/Scene;->firstStart:Z

    .line 440
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageListener;->create()V

    .line 441
    return-void
.end method

.method public toggleScreenMode()V
    .locals 2

    .line 713
    sget-object v0, Lorg/catrobat/catroid/stage/StageListener$2;->$SwitchMap$org$catrobat$catroid$common$ScreenModes:[I

    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getScreenMode()Lorg/catrobat/catroid/common/ScreenModes;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/common/ScreenModes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 718
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->project:Lorg/catrobat/catroid/content/Project;

    sget-object v1, Lorg/catrobat/catroid/common/ScreenModes;->MAXIMIZE:Lorg/catrobat/catroid/common/ScreenModes;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Project;->setScreenMode(Lorg/catrobat/catroid/common/ScreenModes;)V

    goto :goto_0

    .line 715
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->project:Lorg/catrobat/catroid/content/Project;

    sget-object v1, Lorg/catrobat/catroid/common/ScreenModes;->STRETCH:Lorg/catrobat/catroid/common/ScreenModes;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Project;->setScreenMode(Lorg/catrobat/catroid/common/ScreenModes;)V

    .line 716
    nop

    .line 722
    :goto_0
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageListener;->initScreenMode()V

    .line 723
    return-void
.end method

.method public transitionToScene(Ljava/lang/String;)V
    .locals 4
    .param p1, "sceneName"    # Ljava/lang/String;

    .line 390
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/Project;->getSceneByName(Ljava/lang/String;)Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    .line 392
    .local v0, "newScene":Lorg/catrobat/catroid/content/Scene;
    if-nez v0, :cond_0

    .line 393
    return-void

    .line 396
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->stageBackupMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageListener;->saveToBackup()Lorg/catrobat/catroid/stage/StageListener$StageBackup;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageListener;->pause()V

    .line 399
    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    .line 400
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ProjectManager;->setCurrentlyPlayingScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 402
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->stageBackupMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->stageBackupMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/stage/StageListener$StageBackup;

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/stage/StageListener;->restoreFromBackup(Lorg/catrobat/catroid/stage/StageListener$StageBackup;)V

    .line 406
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageListener;->scene:Lorg/catrobat/catroid/content/Scene;

    iget-boolean v1, v1, Lorg/catrobat/catroid/content/Scene;->firstStart:Z

    if-eqz v1, :cond_2

    .line 407
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageListener;->create()V

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageListener;->resume()V

    .line 411
    :goto_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageListener;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 412
    return-void
.end method
