.class public Lorg/catrobat/catroid/content/Look;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
.source "Look.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;,
        Lorg/catrobat/catroid/content/Look$RotationStyle;
    }
.end annotation


# static fields
.field private static final COLOR_SCALE:F = 200.0f

.field public static final DEGREE_UI_OFFSET:F = 90.0f

.field public static final ROTATION_STYLE_ALL_AROUND:I = 0x1

.field public static final ROTATION_STYLE_LEFT_RIGHT_ONLY:I = 0x0

.field public static final ROTATION_STYLE_NONE:I = 0x2


# instance fields
.field protected alpha:F

.field protected brightness:F

.field public hasParticleEffect:Z

.field protected hue:F

.field public isAdditive:Z

.field private isParticleEffectPaused:Z

.field protected lookData:Lorg/catrobat/catroid/common/LookData;

.field private lookListIndexBeforeLookRequest:I

.field private lookVisible:Z

.field private particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

.field protected pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

.field private realRotation:F

.field private rotation:F

.field private rotationMode:I

.field private scheduler:Lorg/catrobat/catroid/common/ThreadScheduler;

.field private shader:Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;

.field private simultaneousMovementXY:Z

.field protected sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 5
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 98
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Look;->lookVisible:Z

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/catrobat/catroid/content/Look;->simultaneousMovementXY:Z

    .line 79
    const/4 v2, -0x1

    iput v2, p0, Lorg/catrobat/catroid/content/Look;->lookListIndexBeforeLookRequest:I

    .line 82
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lorg/catrobat/catroid/content/Look;->alpha:F

    .line 83
    iput v2, p0, Lorg/catrobat/catroid/content/Look;->brightness:F

    .line 84
    const/4 v3, 0x0

    iput v3, p0, Lorg/catrobat/catroid/content/Look;->hue:F

    .line 87
    iput v0, p0, Lorg/catrobat/catroid/content/Look;->rotationMode:I

    .line 88
    const/high16 v4, 0x42b40000    # 90.0f

    iput v4, p0, Lorg/catrobat/catroid/content/Look;->rotation:F

    .line 89
    iput v4, p0, Lorg/catrobat/catroid/content/Look;->realRotation:F

    .line 93
    iput-boolean v1, p0, Lorg/catrobat/catroid/content/Look;->hasParticleEffect:Z

    .line 94
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Look;->isAdditive:Z

    .line 96
    iput-boolean v1, p0, Lorg/catrobat/catroid/content/Look;->isParticleEffectPaused:Z

    .line 99
    iput-object p1, p0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 100
    new-instance v0, Lorg/catrobat/catroid/common/ThreadScheduler;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/common/ThreadScheduler;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Look;->scheduler:Lorg/catrobat/catroid/common/ThreadScheduler;

    .line 101
    invoke-virtual {p0, v3, v3, v3, v3}, Lorg/catrobat/catroid/content/Look;->setBounds(FFFF)V

    .line 102
    invoke-virtual {p0, v3, v3}, Lorg/catrobat/catroid/content/Look;->setOrigin(FF)V

    .line 103
    invoke-virtual {p0, v2, v2}, Lorg/catrobat/catroid/content/Look;->setScale(FF)V

    .line 104
    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/content/Look;->setRotation(F)V

    .line 105
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 106
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->addListeners()V

    .line 107
    return-void
.end method

.method private adjustSimultaneousMovementXY(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 445
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Look;->simultaneousMovementXY:Z

    .line 446
    return-void
.end method

.method private createShaderIfNotExisting()V
    .locals 1

    .line 646
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->shader:Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;

    if-nez v0, :cond_0

    .line 647
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->createBrightnessContrastHueShader()V

    .line 649
    :cond_0
    return-void
.end method

.method private fadeInParticles()V
    .locals 3

    .line 258
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getParticleEmitter()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    move-result-object v0

    .line 259
    .local v0, "particleEmitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/Look;->setupParticleEffects(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;)V

    .line 260
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setContinuous(Z)V

    .line 261
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getLife()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v1

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHighMax(F)V

    .line 263
    iget-object v1, p0, Lorg/catrobat/catroid/content/Look;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->update(F)V

    .line 264
    return-void
.end method

.method private fadeOutParticles()V
    .locals 3

    .line 267
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getParticleEmitter()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    move-result-object v0

    .line 268
    .local v0, "particleEmitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/Look;->setupParticleEffects(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;)V

    .line 269
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setContinuous(Z)V

    .line 270
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getLife()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v1

    const v2, 0x459c4000    # 5000.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHighMax(F)V

    .line 272
    iget-object v1, p0, Lorg/catrobat/catroid/content/Look;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->update(F)V

    .line 273
    return-void
.end method

.method private flipLookDataIfNeeded(I)V
    .locals 6
    .param p1, "mode"    # I

    .line 487
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getMotionDirectionInUserInterfaceDimensionUnit()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 488
    .local v0, "orientedLeft":Z
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->isFlipped()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 489
    .local v3, "differentModeButFlipped":Z
    :goto_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->isFlipped()Z

    move-result v4

    xor-int/2addr v4, v0

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 490
    .local v4, "facingWrongDirection":Z
    :goto_2
    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    .line 491
    :cond_3
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/common/LookData;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 493
    :cond_4
    return-void
.end method

.method private initialiseParticleEffect()V
    .locals 4

    .line 209
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Look;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    .line 210
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "particles"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, ""

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 211
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->start()V

    .line 212
    return-void
.end method

.method private isAngleInCatroidInterval(F)Z
    .locals 1
    .param p1, "catroidAngle"    # F

    .line 656
    const/high16 v0, -0x3ccc0000    # -180.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private refreshShader()V
    .locals 2

    .line 365
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Look;->createShaderIfNotExisting()V

    .line 366
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->shader:Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;

    iget v1, p0, Lorg/catrobat/catroid/content/Look;->brightness:F

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;->setBrightness(F)V

    .line 367
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->shader:Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;

    iget v1, p0, Lorg/catrobat/catroid/content/Look;->hue:F

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;->setHue(F)V

    .line 368
    return-void
.end method

.method private rotatePointAroundPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 5
    .param p1, "center"    # Landroid/graphics/PointF;
    .param p2, "point"    # Landroid/graphics/PointF;
    .param p3, "rotation"    # F

    .line 500
    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 501
    .local v0, "sin":F
    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 502
    .local v1, "cos":F
    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iput v2, p2, Landroid/graphics/PointF;->x:F

    .line 503
    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iput v2, p2, Landroid/graphics/PointF;->y:F

    .line 504
    iget v2, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v1

    iget v3, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    .line 505
    .local v2, "xNew":F
    iget v3, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v0

    iget v4, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    .line 506
    .local v3, "yNew":F
    iget v4, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v2

    iput v4, p2, Landroid/graphics/PointF;->x:F

    .line 507
    iget v4, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v3

    iput v4, p2, Landroid/graphics/PointF;->y:F

    .line 508
    return-object p2
.end method

.method private setupParticleEffects(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;)V
    .locals 4
    .param p1, "particleEmitter"    # Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    .line 239
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 240
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 241
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getY()F

    move-result v1

    iget-object v3, p0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Look;->getHeight()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 239
    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setPosition(FF)V

    .line 243
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getSizeInUserInterfaceDimensionUnit()F

    move-result v0

    div-float/2addr v0, v2

    .line 245
    .local v0, "spriteSize":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 246
    .local v1, "pScale":F
    iget-object v2, p0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 247
    const/high16 v2, 0x42000000    # 32.0f

    div-float v1, v0, v2

    .line 250
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    .line 251
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    const/high16 v3, 0x42f00000    # 120.0f

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHighMin(F)V

    .line 252
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    const/high16 v3, 0x43960000    # 300.0f

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHighMax(F)V

    .line 253
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getGravity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Scene;->getPhysicsWorld()Lorg/catrobat/catroid/physics/PhysicsWorld;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/physics/PhysicsWorld;->getGravity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    .line 254
    iget-boolean v2, p0, Lorg/catrobat/catroid/content/Look;->isAdditive:Z

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setAdditive(Z)V

    .line 255
    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 1
    .param p1, "delta"    # F

    .line 302
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->scheduler:Lorg/catrobat/catroid/common/ThreadScheduler;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/common/ThreadScheduler;->tick(F)V

    .line 303
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->runningStitch:Lorg/catrobat/catroid/embroidery/RunningStitch;

    invoke-virtual {v0}, Lorg/catrobat/catroid/embroidery/RunningStitch;->update()V

    .line 305
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->evaluateConditionScriptTriggers()V

    .line 307
    :cond_0
    return-void
.end method

.method protected addListeners()V
    .locals 1

    .line 110
    new-instance v0, Lorg/catrobat/catroid/content/Look$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/Look$1;-><init>(Lorg/catrobat/catroid/content/Look;)V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 125
    new-instance v0, Lorg/catrobat/catroid/content/EventWrapperListener;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/EventWrapperListener;-><init>(Lorg/catrobat/catroid/content/Look;)V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 126
    return-void
.end method

.method public breakDownCatroidAngle(F)F
    .locals 3
    .param p1, "catroidAngle"    # F

    .line 660
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    .line 661
    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_0

    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/Look;->isAngleInCatroidInterval(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 662
    sub-float v0, p1, v0

    return v0

    .line 663
    :cond_0
    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/Look;->isAngleInCatroidInterval(F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 664
    add-float/2addr v0, p1

    return v0

    .line 666
    :cond_1
    return p1
.end method

.method public changeBrightnessInUserInterfaceDimensionUnit(F)V
    .locals 1
    .param p1, "changePercent"    # F

    .line 629
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getBrightnessInUserInterfaceDimensionUnit()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->setBrightnessInUserInterfaceDimensionUnit(F)V

    .line 630
    return-void
.end method

.method public changeColorInUserInterfaceDimensionUnit(F)V
    .locals 1
    .param p1, "val"    # F

    .line 652
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getColorInUserInterfaceDimensionUnit()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->setColorInUserInterfaceDimensionUnit(F)V

    .line 653
    return-void
.end method

.method public changeDirectionInUserInterfaceDimensionUnit(F)V
    .locals 2
    .param p1, "changeDegrees"    # F

    .line 571
    nop

    .line 572
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getMotionDirectionInUserInterfaceDimensionUnit()F

    move-result v0

    add-float/2addr v0, p1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    .line 571
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->setMotionDirectionInUserInterfaceDimensionUnit(F)V

    .line 573
    return-void
.end method

.method public changeSizeInUserInterfaceDimensionUnit(F)V
    .locals 1
    .param p1, "changePercent"    # F

    .line 588
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getSizeInUserInterfaceDimensionUnit()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->setSizeInUserInterfaceDimensionUnit(F)V

    .line 589
    return-void
.end method

.method public changeTransparencyInUserInterfaceDimensionUnit(F)V
    .locals 1
    .param p1, "changePercent"    # F

    .line 610
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getTransparencyInUserInterfaceDimensionUnit()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->setTransparencyInUserInterfaceDimensionUnit(F)V

    .line 611
    return-void
.end method

.method public changeXInUserInterfaceDimensionUnit(F)V
    .locals 1
    .param p1, "changeX"    # F

    .line 449
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->setX(F)V

    .line 450
    return-void
.end method

.method public changeYInUserInterfaceDimensionUnit(F)V
    .locals 1
    .param p1, "changeY"    # F

    .line 453
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getY()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->setY(F)V

    .line 454
    return-void
.end method

.method public clearParticleEffect()V
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->dispose()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/content/Look;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    .line 232
    :cond_0
    return-void
.end method

.method public convertCatroidAngleToStageAngle(F)F
    .locals 2
    .param p1, "catroidAngle"    # F

    .line 670
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/Look;->breakDownCatroidAngle(F)F

    move-result p1

    .line 671
    neg-float v0, p1

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    return v0
.end method

.method public convertStageAngleToCatroidAngle(F)F
    .locals 2
    .param p1, "stageAngle"    # F

    .line 675
    neg-float v0, p1

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    .line 676
    .local v0, "catroidAngle":F
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->breakDownCatroidAngle(F)F

    move-result v1

    return v1
.end method

.method public copyTo(Lorg/catrobat/catroid/content/Look;)V
    .locals 2
    .param p1, "destination"    # Lorg/catrobat/catroid/content/Look;

    .line 160
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->isLookVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/Look;->setLookVisible(Z)V

    .line 161
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v0

    .line 162
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v1

    .line 161
    invoke-virtual {p1, v0, v1}, Lorg/catrobat/catroid/content/Look;->setPositionInUserInterfaceDimensionUnit(FF)V

    .line 163
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getSizeInUserInterfaceDimensionUnit()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/Look;->setSizeInUserInterfaceDimensionUnit(F)V

    .line 164
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getTransparencyInUserInterfaceDimensionUnit()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/Look;->setTransparencyInUserInterfaceDimensionUnit(F)V

    .line 165
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getColorInUserInterfaceDimensionUnit()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/Look;->setColorInUserInterfaceDimensionUnit(F)V

    .line 167
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getRotationMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/Look;->setRotationMode(I)V

    .line 168
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getMotionDirectionInUserInterfaceDimensionUnit()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/Look;->setMotionDirectionInUserInterfaceDimensionUnit(F)V

    .line 169
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getBrightnessInUserInterfaceDimensionUnit()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/Look;->setBrightnessInUserInterfaceDimensionUnit(F)V

    .line 170
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/Look;->hasParticleEffect:Z

    iput-boolean v0, p1, Lorg/catrobat/catroid/content/Look;->hasParticleEffect:Z

    .line 171
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/Look;->isAdditive:Z

    iput-boolean v0, p1, Lorg/catrobat/catroid/content/Look;->isAdditive:Z

    .line 172
    return-void
.end method

.method public declared-synchronized createBrightnessContrastHueShader()V
    .locals 2

    monitor-enter p0

    .line 196
    :try_start_0
    new-instance v0, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;-><init>(Lorg/catrobat/catroid/content/Look;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Look;->shader:Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;

    .line 197
    iget v1, p0, Lorg/catrobat/catroid/content/Look;->brightness:F

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;->setBrightness(F)V

    .line 198
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->shader:Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;

    iget v1, p0, Lorg/catrobat/catroid/content/Look;->hue:F

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;->setHue(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 195
    .end local p0    # "this":Lorg/catrobat/catroid/content/Look;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doTouchDown(FFI)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .line 175
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->isLookVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 176
    return v1

    .line 178
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->isFlipped()Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getWidth()F

    move-result v0

    sub-float/2addr v0, v2

    sub-float p1, v0, p1

    .line 183
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getHeight()F

    move-result v0

    sub-float/2addr v0, v2

    sub-float/2addr v0, p2

    .line 185
    .end local p2    # "y":F
    .local v0, "y":F
    const/4 p2, 0x0

    cmpl-float v2, p1, p2

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getWidth()F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    cmpl-float p2, v0, p2

    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getHeight()F

    move-result p2

    cmpg-float p2, v0, p2

    if-gez p2, :cond_2

    iget-object p2, p0, Lorg/catrobat/catroid/content/Look;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    if-eqz p2, :cond_2

    float-to-int v2, p1

    float-to-int v3, v0

    .line 186
    invoke-virtual {p2, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/16 v2, 0xa

    if-le p2, v2, :cond_2

    .line 187
    new-instance p2, Lorg/catrobat/catroid/content/EventWrapper;

    new-instance v2, Lorg/catrobat/catroid/content/eventids/EventId;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/content/eventids/EventId;-><init>(I)V

    invoke-direct {p2, v2, v1}, Lorg/catrobat/catroid/content/EventWrapper;-><init>(Lorg/catrobat/catroid/content/eventids/EventId;Z)V

    .line 188
    .local p2, "event":Lorg/catrobat/catroid/content/EventWrapper;
    iget-object v1, p0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v1, p2}, Lorg/catrobat/catroid/content/Look;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 189
    return v3

    .line 192
    .end local p2    # "event":Lorg/catrobat/catroid/content/EventWrapper;
    :cond_2
    return v1
.end method

.method public declared-synchronized draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 2
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    monitor-enter p0

    .line 277
    :try_start_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/Look;->isParticleEffectPaused:Z

    if-nez v0, :cond_1

    .line 278
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/Look;->hasParticleEffect:Z

    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Look;->fadeInParticles()V

    goto :goto_0

    .line 281
    .end local p0    # "this":Lorg/catrobat/catroid/content/Look;
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    if-eqz v0, :cond_1

    .line 282
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Look;->fadeOutParticles()V

    .line 287
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 291
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->shader:Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 292
    iget v0, p0, Lorg/catrobat/catroid/content/Look;->alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setVisible(Z)V

    .line 294
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->isLookVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 295
    iget v0, p0, Lorg/catrobat/catroid/content/Look;->alpha:F

    invoke-super {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 297
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 276
    .end local p1    # "batch":Lcom/badlogic/gdx/graphics/g2d/Batch;
    .end local p2    # "parentAlpha":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAlpha()F
    .locals 1

    .line 791
    iget v0, p0, Lorg/catrobat/catroid/content/Look;->alpha:F

    return v0
.end method

.method public getAngularVelocityInUserInterfaceDimensionUnit()F
    .locals 1

    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public getBrightness()F
    .locals 1

    .line 796
    iget v0, p0, Lorg/catrobat/catroid/content/Look;->brightness:F

    return v0
.end method

.method public getBrightnessInUserInterfaceDimensionUnit()F
    .locals 2

    .line 614
    iget v0, p0, Lorg/catrobat/catroid/content/Look;->brightness:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getColorInUserInterfaceDimensionUnit()F
    .locals 2

    .line 633
    iget v0, p0, Lorg/catrobat/catroid/content/Look;->hue:F

    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getCurrentCollisionPolygon()[Lcom/badlogic/gdx/math/Polygon;
    .locals 6

    .line 758
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 759
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/badlogic/gdx/math/Polygon;

    .local v0, "originalPolygons":[Lcom/badlogic/gdx/math/Polygon;
    goto :goto_0

    .line 761
    .end local v0    # "originalPolygons":[Lcom/badlogic/gdx/math/Polygon;
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v0

    .line 762
    .local v0, "collisionInformation":Lorg/catrobat/catroid/sensing/CollisionInformation;
    iget-object v1, v0, Lorg/catrobat/catroid/sensing/CollisionInformation;->collisionPolygons:[Lcom/badlogic/gdx/math/Polygon;

    if-nez v1, :cond_1

    .line 763
    invoke-virtual {v0}, Lorg/catrobat/catroid/sensing/CollisionInformation;->loadCollisionPolygon()V

    .line 765
    :cond_1
    iget-object v1, v0, Lorg/catrobat/catroid/sensing/CollisionInformation;->collisionPolygons:[Lcom/badlogic/gdx/math/Polygon;

    move-object v0, v1

    .line 768
    .local v0, "originalPolygons":[Lcom/badlogic/gdx/math/Polygon;
    :goto_0
    array-length v1, v0

    new-array v1, v1, [Lcom/badlogic/gdx/math/Polygon;

    .line 770
    .local v1, "transformedPolygons":[Lcom/badlogic/gdx/math/Polygon;
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 771
    new-instance v3, Lcom/badlogic/gdx/math/Polygon;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/math/Polygon;-><init>([F)V

    .line 772
    .local v3, "poly":Lcom/badlogic/gdx/math/Polygon;
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getX()F

    move-result v4

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/math/Polygon;->translate(FF)V

    .line 773
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getRotation()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Polygon;->setRotation(F)V

    .line 774
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getScaleX()F

    move-result v4

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getScaleY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/math/Polygon;->setScale(FF)V

    .line 775
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getOriginX()F

    move-result v4

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getOriginY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/math/Polygon;->setOrigin(FF)V

    .line 776
    aput-object v3, v1, v2

    .line 770
    .end local v3    # "poly":Lcom/badlogic/gdx/math/Polygon;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 778
    .end local v2    # "p":I
    :cond_2
    return-object v1
.end method

.method public getDistanceToTouchPositionInUserInterfaceDimensions()F
    .locals 7

    .line 410
    invoke-static {}, Lorg/catrobat/catroid/utils/TouchUtil;->getLastTouchIndex()I

    move-result v0

    .line 412
    .local v0, "touchIndex":I
    invoke-static {v0}, Lorg/catrobat/catroid/utils/TouchUtil;->getX(I)F

    move-result v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v2

    sub-float/2addr v1, v2

    .line 413
    .local v1, "dx":F
    invoke-static {v0}, Lorg/catrobat/catroid/utils/TouchUtil;->getY(I)F

    move-result v2

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v3

    sub-float/2addr v2, v3

    .line 415
    .local v2, "dy":F
    float-to-double v3, v1

    float-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method public getHeightInUserInterfaceDimensionUnit()F
    .locals 2

    .line 461
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getHeight()F

    move-result v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getSizeInUserInterfaceDimensionUnit()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getHitbox()Lcom/badlogic/gdx/math/Rectangle;
    .locals 17

    .line 512
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/content/Look;->getWidthInUserInterfaceDimensionUnit()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 513
    .local v1, "x":F
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/content/Look;->getHeightInUserInterfaceDimensionUnit()F

    move-result v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    .line 514
    .local v2, "y":F
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/content/Look;->getWidthInUserInterfaceDimensionUnit()F

    move-result v4

    .line 515
    .local v4, "width":F
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/content/Look;->getHeightInUserInterfaceDimensionUnit()F

    move-result v5

    .line 517
    .local v5, "height":F
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/content/Look;->getRotation()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x8

    if-nez v6, :cond_0

    .line 518
    new-array v3, v15, [F

    aput v1, v3, v14

    aput v2, v3, v13

    aput v1, v3, v12

    add-float v6, v2, v5

    aput v6, v3, v11

    add-float v6, v1, v4

    aput v6, v3, v10

    add-float v6, v2, v5

    aput v6, v3, v9

    add-float v6, v1, v4

    aput v6, v3, v8

    aput v2, v3, v7

    .local v3, "vertices":[F
    goto :goto_0

    .line 525
    .end local v3    # "vertices":[F
    :cond_0
    new-instance v6, Landroid/graphics/PointF;

    div-float v16, v4, v3

    add-float v7, v1, v16

    div-float v3, v5, v3

    add-float/2addr v3, v2

    invoke-direct {v6, v7, v3}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v3, v6

    .line 526
    .local v3, "center":Landroid/graphics/PointF;
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/content/Look;->getRotation()F

    move-result v7

    invoke-direct {v0, v3, v6, v7}, Lorg/catrobat/catroid/content/Look;->rotatePointAroundPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v6

    .line 527
    .local v6, "upperLeft":Landroid/graphics/PointF;
    new-instance v7, Landroid/graphics/PointF;

    add-float v8, v2, v5

    invoke-direct {v7, v1, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/content/Look;->getRotation()F

    move-result v8

    invoke-direct {v0, v3, v7, v8}, Lorg/catrobat/catroid/content/Look;->rotatePointAroundPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v7

    .line 528
    .local v7, "upperRight":Landroid/graphics/PointF;
    new-instance v8, Landroid/graphics/PointF;

    add-float v9, v1, v4

    add-float v10, v2, v5

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/content/Look;->getRotation()F

    move-result v9

    invoke-direct {v0, v3, v8, v9}, Lorg/catrobat/catroid/content/Look;->rotatePointAroundPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v8

    .line 529
    .local v8, "lowerRight":Landroid/graphics/PointF;
    new-instance v9, Landroid/graphics/PointF;

    add-float v10, v1, v4

    invoke-direct {v9, v10, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/content/Look;->getRotation()F

    move-result v10

    invoke-direct {v0, v3, v9, v10}, Lorg/catrobat/catroid/content/Look;->rotatePointAroundPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v9

    .line 530
    .local v9, "lowerLeft":Landroid/graphics/PointF;
    new-array v10, v15, [F

    iget v15, v6, Landroid/graphics/PointF;->x:F

    aput v15, v10, v14

    iget v14, v6, Landroid/graphics/PointF;->y:F

    aput v14, v10, v13

    iget v13, v7, Landroid/graphics/PointF;->x:F

    aput v13, v10, v12

    iget v12, v7, Landroid/graphics/PointF;->y:F

    aput v12, v10, v11

    iget v11, v8, Landroid/graphics/PointF;->x:F

    const/4 v12, 0x4

    aput v11, v10, v12

    iget v11, v8, Landroid/graphics/PointF;->y:F

    const/4 v12, 0x5

    aput v11, v10, v12

    iget v11, v9, Landroid/graphics/PointF;->x:F

    const/4 v12, 0x6

    aput v11, v10, v12

    iget v11, v9, Landroid/graphics/PointF;->y:F

    const/4 v12, 0x7

    aput v11, v10, v12

    move-object v3, v10

    .line 538
    .end local v6    # "upperLeft":Landroid/graphics/PointF;
    .end local v7    # "upperRight":Landroid/graphics/PointF;
    .end local v8    # "lowerRight":Landroid/graphics/PointF;
    .end local v9    # "lowerLeft":Landroid/graphics/PointF;
    .local v3, "vertices":[F
    :goto_0
    new-instance v6, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v6, v3}, Lcom/badlogic/gdx/math/Polygon;-><init>([F)V

    .line 540
    .local v6, "p":Lcom/badlogic/gdx/math/Polygon;
    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Polygon;->getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v7

    return-object v7
.end method

.method public declared-synchronized getImagePath()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 385
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->lookData:Lorg/catrobat/catroid/common/LookData;

    if-nez v0, :cond_0

    .line 386
    const-string v0, ""

    .local v0, "path":Ljava/lang/String;
    goto :goto_0

    .line 388
    .end local v0    # "path":Ljava/lang/String;
    .end local p0    # "this":Lorg/catrobat/catroid/content/Look;
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->lookData:Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    .restart local v0    # "path":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 384
    .end local v0    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLookData()Lorg/catrobat/catroid/common/LookData;
    .locals 1

    monitor-enter p0

    .line 371
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->lookData:Lorg/catrobat/catroid/common/LookData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 371
    .end local p0    # "this":Lorg/catrobat/catroid/content/Look;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLookDirectionInUserInterfaceDimensionUnit()F
    .locals 3

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "direction":F
    iget v1, p0, Lorg/catrobat/catroid/content/Look;->rotationMode:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 471
    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    .line 472
    goto :goto_1

    .line 473
    :cond_1
    iget v0, p0, Lorg/catrobat/catroid/content/Look;->realRotation:F

    .line 474
    goto :goto_1

    .line 475
    :cond_2
    nop

    .line 476
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->isFlipped()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, -0x3d4c0000    # -90.0f

    goto :goto_0

    :cond_3
    const/high16 v1, 0x42b40000    # 90.0f

    :goto_0
    move v0, v1

    .line 478
    :goto_1
    return v0
.end method

.method public declared-synchronized getLookListIndexBeforeLookRequest()I
    .locals 1

    monitor-enter p0

    .line 137
    :try_start_0
    iget v0, p0, Lorg/catrobat/catroid/content/Look;->lookListIndexBeforeLookRequest:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 137
    .end local p0    # "this":Lorg/catrobat/catroid/content/Look;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMotionDirectionInUserInterfaceDimensionUnit()F
    .locals 1

    .line 465
    iget v0, p0, Lorg/catrobat/catroid/content/Look;->realRotation:F

    return v0
.end method

.method public getParticleEffect()Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    if-nez v0, :cond_0

    .line 203
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Look;->initialiseParticleEffect()V

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    return-object v0
.end method

.method public getParticleEmitter()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    .locals 1

    .line 235
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getParticleEffect()Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    return-object v0
.end method

.method public getRotationMode()I
    .locals 1

    .line 496
    iget v0, p0, Lorg/catrobat/catroid/content/Look;->rotationMode:I

    return v0
.end method

.method public getSizeInUserInterfaceDimensionUnit()F
    .locals 2

    .line 576
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getScaleX()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getTransparencyInUserInterfaceDimensionUnit()F
    .locals 2

    .line 592
    iget v0, p0, Lorg/catrobat/catroid/content/Look;->alpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    return v1
.end method

.method public getWidthInUserInterfaceDimensionUnit()F
    .locals 2

    .line 457
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getSizeInUserInterfaceDimensionUnit()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getXInUserInterfaceDimensionUnit()F
    .locals 3

    .line 394
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getX()F

    move-result v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getXVelocityInUserInterfaceDimensionUnit()F
    .locals 1

    .line 424
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->isGliding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getGlidingVelocityX()F

    move-result v0

    return v0

    .line 427
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getYInUserInterfaceDimensionUnit()F
    .locals 3

    .line 402
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getY()F

    move-result v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getHeight()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getYVelocityInUserInterfaceDimensionUnit()F
    .locals 1

    .line 431
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->isGliding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getGlidingVelocityY()F

    move-result v0

    return v0

    .line 434
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public haveAllThreadsFinished()Z
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->scheduler:Lorg/catrobat/catroid/common/ThreadScheduler;

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/ThreadScheduler;->haveAllThreadsFinished()Z

    move-result v0

    return v0
.end method

.method public isFlipped()Z
    .locals 1

    .line 567
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->lookData:Lorg/catrobat/catroid/common/LookData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/LookData;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->isFlipX()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized isLookVisible()Z
    .locals 1

    monitor-enter p0

    .line 129
    :try_start_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/Look;->lookVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 129
    .end local p0    # "this":Lorg/catrobat/catroid/content/Look;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isParticleEffectPaused()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/Look;->isParticleEffectPaused:Z

    return v0
.end method

.method notifyAllWaiters()V
    .locals 3

    .line 782
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getActions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 783
    .local v1, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    instance-of v2, v1, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;

    if-eqz v2, :cond_0

    .line 784
    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;->notifyWaiter()V

    .line 786
    .end local v1    # "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    :cond_0
    goto :goto_0

    .line 787
    :cond_1
    return-void
.end method

.method public pauseParticleEffect()V
    .locals 1

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Look;->isParticleEffectPaused:Z

    .line 216
    return-void
.end method

.method protected positionChanged()V
    .locals 4

    .line 311
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/PenConfiguration;->isPenDown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/catrobat/catroid/content/Look;->simultaneousMovementXY:Z

    if-nez v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v0

    .line 314
    .local v0, "x":F
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v1

    .line 315
    .local v1, "y":F
    iget-object v2, p0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v2, v2, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/PenConfiguration;->addPosition(Landroid/graphics/PointF;)V

    .line 317
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    return-void
.end method

.method public declared-synchronized refreshTextures(Z)V
    .locals 5
    .param p1, "refreshShader"    # Z

    monitor-enter p0

    .line 342
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->lookData:Lorg/catrobat/catroid/common/LookData;

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getX()F

    move-result v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getWidth()F

    move-result v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getY()F

    move-result v2

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getHeight()F

    move-result v3

    div-float/2addr v3, v1

    add-float/2addr v2, v3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1, v1}, Lorg/catrobat/catroid/content/Look;->setBounds(FFFF)V

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    monitor-exit p0

    return-void

    .line 347
    .end local p0    # "this":Lorg/catrobat/catroid/content/Look;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->lookData:Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/LookData;->getPixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/Look;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 348
    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/catrobat/catroid/content/Look;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 350
    .local v0, "newX":F
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/Look;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    .line 351
    .local v2, "newY":F
    iget-object v3, p0, Lorg/catrobat/catroid/content/Look;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/catrobat/catroid/content/Look;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4}, Lorg/catrobat/catroid/content/Look;->setSize(FF)V

    .line 352
    invoke-virtual {p0, v0, v2}, Lorg/catrobat/catroid/content/Look;->setPosition(FF)V

    .line 353
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getWidth()F

    move-result v3

    div-float/2addr v3, v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getHeight()F

    move-result v4

    div-float/2addr v4, v1

    invoke-virtual {p0, v3, v4}, Lorg/catrobat/catroid/content/Look;->setOrigin(FF)V

    .line 354
    iget-object v1, p0, Lorg/catrobat/catroid/content/Look;->lookData:Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v1}, Lorg/catrobat/catroid/common/LookData;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 355
    .local v1, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-direct {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 356
    .local v3, "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;
    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/content/Look;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 357
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getRotationMode()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/catrobat/catroid/content/Look;->flipLookDataIfNeeded(I)V

    .line 358
    if-eqz p1, :cond_1

    .line 359
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Look;->refreshShader()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    .end local v0    # "newX":F
    .end local v1    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v2    # "newY":F
    .end local v3    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;
    :cond_1
    monitor-exit p0

    return-void

    .line 341
    .end local p1    # "refreshShader":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public remove()Z
    .locals 3

    .line 146
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->notifyAllWaiters()V

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->setLookVisible(Z)V

    .line 148
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->remove()Z

    move-result v0

    .line 149
    .local v0, "returnValue":Z
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getListeners()Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 150
    .local v2, "listener":Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/Look;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 151
    .end local v2    # "listener":Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getActions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 153
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/catrobat/catroid/content/Look;->scheduler:Lorg/catrobat/catroid/common/ThreadScheduler;

    .line 154
    iput-object v1, p0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 155
    iput-object v1, p0, Lorg/catrobat/catroid/content/Look;->lookData:Lorg/catrobat/catroid/common/LookData;

    .line 156
    return v0
.end method

.method public resumeParticleEffect()V
    .locals 1

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Look;->isParticleEffectPaused:Z

    .line 220
    return-void
.end method

.method public declared-synchronized setBrightnessInUserInterfaceDimensionUnit(F)V
    .locals 1
    .param p1, "percent"    # F

    monitor-enter p0

    .line 618
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 619
    const/4 p1, 0x0

    goto :goto_0

    .line 620
    :cond_0
    const/high16 v0, 0x43480000    # 200.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 621
    const/high16 p1, 0x43480000    # 200.0f

    .line 624
    :cond_1
    :goto_0
    const/high16 v0, 0x42c80000    # 100.0f

    div-float v0, p1, v0

    :try_start_0
    iput v0, p0, Lorg/catrobat/catroid/content/Look;->brightness:F

    .line 625
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->refreshTextures(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    monitor-exit p0

    return-void

    .line 617
    .end local p0    # "this":Lorg/catrobat/catroid/content/Look;
    .end local p1    # "percent":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setColorInUserInterfaceDimensionUnit(F)V
    .locals 2
    .param p1, "val"    # F

    monitor-enter p0

    .line 637
    const/high16 v0, 0x43480000    # 200.0f

    rem-float/2addr p1, v0

    .line 638
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 639
    add-float/2addr p1, v0

    .line 641
    :cond_0
    div-float v0, p1, v0

    :try_start_0
    iput v0, p0, Lorg/catrobat/catroid/content/Look;->hue:F

    .line 642
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->refreshTextures(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    monitor-exit p0

    return-void

    .line 636
    .end local p0    # "this":Lorg/catrobat/catroid/content/Look;
    .end local p1    # "val":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLookData(Lorg/catrobat/catroid/common/LookData;)V
    .locals 1
    .param p1, "lookData"    # Lorg/catrobat/catroid/common/LookData;

    monitor-enter p0

    .line 375
    :try_start_0
    iput-object p1, p0, Lorg/catrobat/catroid/content/Look;->lookData:Lorg/catrobat/catroid/common/LookData;

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->refreshTextures(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    monitor-exit p0

    return-void

    .line 374
    .end local p0    # "this":Lorg/catrobat/catroid/content/Look;
    .end local p1    # "lookData":Lorg/catrobat/catroid/common/LookData;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLookListIndexBeforeLookRequest(I)V
    .locals 0
    .param p1, "lookListIndexBeforeLookRequest"    # I

    monitor-enter p0

    .line 141
    :try_start_0
    iput p1, p0, Lorg/catrobat/catroid/content/Look;->lookListIndexBeforeLookRequest:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 140
    .end local p0    # "this":Lorg/catrobat/catroid/content/Look;
    .end local p1    # "lookListIndexBeforeLookRequest":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLookVisible(Z)V
    .locals 0
    .param p1, "lookVisible"    # Z

    monitor-enter p0

    .line 133
    :try_start_0
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/Look;->lookVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 132
    .end local p0    # "this":Lorg/catrobat/catroid/content/Look;
    .end local p1    # "lookVisible":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMotionDirectionInUserInterfaceDimensionUnit(F)V
    .locals 6
    .param p1, "degrees"    # F

    .line 544
    neg-float v0, p1

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/catroid/content/Look;->rotation:F

    .line 545
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->convertStageAngleToCatroidAngle(F)F

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/content/Look;->realRotation:F

    .line 547
    iget v0, p0, Lorg/catrobat/catroid/content/Look;->rotationMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_3

    .line 561
    :cond_0
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/Look;->setRotation(F)V

    goto :goto_3

    .line 558
    :cond_1
    iget v0, p0, Lorg/catrobat/catroid/content/Look;->rotation:F

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->setRotation(F)V

    .line 559
    goto :goto_3

    .line 549
    :cond_2
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/Look;->setRotation(F)V

    .line 550
    iget v0, p0, Lorg/catrobat/catroid/content/Look;->realRotation:F

    cmpl-float v0, v0, v1

    const/4 v3, 0x0

    if-ltz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    .line 551
    .local v0, "orientedRight":Z
    :goto_0
    iget v4, p0, Lorg/catrobat/catroid/content/Look;->realRotation:F

    cmpg-float v1, v4, v1

    if-gez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    .line 552
    .local v1, "orientedLeft":Z
    :goto_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->isFlipped()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->isFlipped()Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz v1, :cond_7

    :cond_6
    move v4, v2

    goto :goto_2

    :cond_7
    move v4, v3

    .line 553
    .local v4, "needsFlipping":Z
    :goto_2
    if-eqz v4, :cond_8

    iget-object v5, p0, Lorg/catrobat/catroid/content/Look;->lookData:Lorg/catrobat/catroid/common/LookData;

    if-eqz v5, :cond_8

    .line 554
    invoke-virtual {v5}, Lorg/catrobat/catroid/common/LookData;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 564
    .end local v0    # "orientedRight":Z
    .end local v1    # "orientedLeft":Z
    .end local v4    # "needsFlipping":Z
    :cond_8
    :goto_3
    return-void
.end method

.method public setPositionInUserInterfaceDimensionUnit(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 438
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/content/Look;->adjustSimultaneousMovementXY(FF)V

    .line 439
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/Look;->setXInUserInterfaceDimensionUnit(F)V

    .line 440
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v0

    invoke-direct {p0, v0, p2}, Lorg/catrobat/catroid/content/Look;->adjustSimultaneousMovementXY(FF)V

    .line 441
    invoke-virtual {p0, p2}, Lorg/catrobat/catroid/content/Look;->setYInUserInterfaceDimensionUnit(F)V

    .line 442
    return-void
.end method

.method public setRotationMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 482
    iput p1, p0, Lorg/catrobat/catroid/content/Look;->rotationMode:I

    .line 483
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/Look;->flipLookDataIfNeeded(I)V

    .line 484
    return-void
.end method

.method public setSchedulerState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 338
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->scheduler:Lorg/catrobat/catroid/common/ThreadScheduler;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/common/ThreadScheduler;->setState(I)V

    .line 339
    return-void
.end method

.method public setSizeInUserInterfaceDimensionUnit(F)V
    .locals 2
    .param p1, "percent"    # F

    .line 580
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 581
    const/4 p1, 0x0

    .line 584
    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    div-float v1, p1, v0

    div-float v0, p1, v0

    invoke-virtual {p0, v1, v0}, Lorg/catrobat/catroid/content/Look;->setScale(FF)V

    .line 585
    return-void
.end method

.method public setTransparencyInUserInterfaceDimensionUnit(F)V
    .locals 2
    .param p1, "percent"    # F

    .line 596
    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 597
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 598
    const/4 p1, 0x0

    .line 600
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/Look;->setVisible(Z)V

    goto :goto_0

    .line 602
    :cond_1
    const/high16 p1, 0x42c80000    # 100.0f

    .line 603
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/Look;->setVisible(Z)V

    .line 606
    :goto_0
    sub-float v1, v0, p1

    div-float/2addr v1, v0

    iput v1, p0, Lorg/catrobat/catroid/content/Look;->alpha:F

    .line 607
    return-void
.end method

.method public setXInUserInterfaceDimensionUnit(F)V
    .locals 2
    .param p1, "x"    # F

    .line 398
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->setX(F)V

    .line 399
    return-void
.end method

.method public setYInUserInterfaceDimensionUnit(F)V
    .locals 2
    .param p1, "y"    # F

    .line 406
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Look;->setY(F)V

    .line 407
    return-void
.end method

.method public startThread(Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 1
    .param p1, "sequenceAction"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 320
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->scheduler:Lorg/catrobat/catroid/common/ThreadScheduler;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/common/ThreadScheduler;->startThread(Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V

    .line 323
    :cond_0
    return-void
.end method

.method public stopThreadWithScript(Lorg/catrobat/catroid/content/Script;)V
    .locals 1
    .param p1, "script"    # Lorg/catrobat/catroid/content/Script;

    .line 332
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->scheduler:Lorg/catrobat/catroid/common/ThreadScheduler;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/common/ThreadScheduler;->stopThreadsWithScript(Lorg/catrobat/catroid/content/Script;)V

    .line 335
    :cond_0
    return-void
.end method

.method public stopThreads(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;)V"
        }
    .end annotation

    .line 326
    .local p1, "threads":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look;->scheduler:Lorg/catrobat/catroid/common/ThreadScheduler;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/common/ThreadScheduler;->stopThreads(Lcom/badlogic/gdx/utils/Array;)V

    .line 329
    :cond_0
    return-void
.end method
