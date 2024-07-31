.class public Lorg/catrobat/catroid/stage/Passepartout;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "Passepartout.java"


# instance fields
.field private final passepartoutColor:Lcom/badlogic/gdx/graphics/Color;

.field private passepartoutHeight:F

.field private passepartoutWidth:F

.field private texture:Lcom/badlogic/gdx/graphics/Texture;

.field private virtualScreenHeight:F

.field private virtualScreenWidth:F


# direct methods
.method constructor <init>(IIIIFF)V
    .locals 3
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I
    .param p3, "screenViewPortWidth"    # I
    .param p4, "screenViewPortHeight"    # I
    .param p5, "virtualScreenWidth"    # F
    .param p6, "virtualScreenHeight"    # F

    .line 43
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 36
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lorg/catrobat/catroid/stage/Passepartout;->passepartoutColor:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput p5, p0, Lorg/catrobat/catroid/stage/Passepartout;->virtualScreenWidth:F

    .line 46
    iput p6, p0, Lorg/catrobat/catroid/stage/Passepartout;->virtualScreenHeight:F

    .line 48
    int-to-float v0, p2

    int-to-float v1, p4

    div-float/2addr v1, p6

    div-float/2addr v0, v1

    sub-float/2addr v0, p6

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/catroid/stage/Passepartout;->passepartoutHeight:F

    .line 49
    int-to-float v0, p1

    int-to-float v2, p3

    div-float/2addr v2, p5

    div-float/2addr v0, v2

    sub-float/2addr v0, p5

    div-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/catroid/stage/Passepartout;->passepartoutWidth:F

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 52
    .local v0, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    iget-object v1, p0, Lorg/catrobat/catroid/stage/Passepartout;->passepartoutColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 53
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->fill()V

    .line 54
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    iput-object v1, p0, Lorg/catrobat/catroid/stage/Passepartout;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 55
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 9
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/stage/Passepartout;->passepartoutColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 60
    iget v0, p0, Lorg/catrobat/catroid/stage/Passepartout;->passepartoutWidth:F

    const/4 v7, 0x0

    invoke-static {v0, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 61
    iget-object v2, p0, Lorg/catrobat/catroid/stage/Passepartout;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v0, p0, Lorg/catrobat/catroid/stage/Passepartout;->virtualScreenWidth:F

    neg-float v0, v0

    div-float v3, v0, v8

    iget v6, p0, Lorg/catrobat/catroid/stage/Passepartout;->virtualScreenHeight:F

    neg-float v0, v6

    div-float v4, v0, v8

    iget v0, p0, Lorg/catrobat/catroid/stage/Passepartout;->passepartoutWidth:F

    neg-float v5, v0

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 63
    iget-object v2, p0, Lorg/catrobat/catroid/stage/Passepartout;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v0, p0, Lorg/catrobat/catroid/stage/Passepartout;->virtualScreenWidth:F

    div-float v3, v0, v8

    iget v0, p0, Lorg/catrobat/catroid/stage/Passepartout;->virtualScreenHeight:F

    div-float v4, v0, v8

    iget v5, p0, Lorg/catrobat/catroid/stage/Passepartout;->passepartoutWidth:F

    neg-float v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 66
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/stage/Passepartout;->passepartoutHeight:F

    invoke-static {v0, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v2, p0, Lorg/catrobat/catroid/stage/Passepartout;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v5, p0, Lorg/catrobat/catroid/stage/Passepartout;->virtualScreenWidth:F

    neg-float v0, v5

    div-float v3, v0, v8

    iget v0, p0, Lorg/catrobat/catroid/stage/Passepartout;->virtualScreenHeight:F

    neg-float v0, v0

    div-float v4, v0, v8

    iget v0, p0, Lorg/catrobat/catroid/stage/Passepartout;->passepartoutHeight:F

    neg-float v6, v0

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 69
    iget-object v2, p0, Lorg/catrobat/catroid/stage/Passepartout;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v0, p0, Lorg/catrobat/catroid/stage/Passepartout;->virtualScreenWidth:F

    div-float v3, v0, v8

    iget v1, p0, Lorg/catrobat/catroid/stage/Passepartout;->virtualScreenHeight:F

    div-float v4, v1, v8

    neg-float v5, v0

    iget v6, p0, Lorg/catrobat/catroid/stage/Passepartout;->passepartoutHeight:F

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 72
    :cond_1
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 73
    return-void
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "touchable"    # Z

    .line 77
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/Passepartout;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr p1, v0

    .line 78
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/Passepartout;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr p2, v0

    .line 79
    iget v0, p0, Lorg/catrobat/catroid/stage/Passepartout;->virtualScreenWidth:F

    neg-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    div-float/2addr v0, v2

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    iget v0, p0, Lorg/catrobat/catroid/stage/Passepartout;->virtualScreenHeight:F

    neg-float v1, v0

    div-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_1

    div-float/2addr v0, v2

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_1
    :goto_0
    return-object p0
.end method
