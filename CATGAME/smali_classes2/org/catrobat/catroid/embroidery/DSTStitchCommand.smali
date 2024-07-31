.class public Lorg/catrobat/catroid/embroidery/DSTStitchCommand;
.super Ljava/lang/Object;
.source "DSTStitchCommand.java"

# interfaces
.implements Lorg/catrobat/catroid/embroidery/StitchCommand;


# instance fields
.field private layer:I

.field private final sprite:Lorg/catrobat/catroid/content/Sprite;

.field threadColor:Lcom/badlogic/gdx/graphics/Color;

.field private final xCoord:F

.field private final yCoord:F


# direct methods
.method public constructor <init>(FFILorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "layer"    # I
    .param p4, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p5, "threadColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->xCoord:F

    .line 39
    iput p2, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->yCoord:F

    .line 40
    iput p3, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->layer:I

    .line 41
    iput-object p4, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 42
    iput-object p5, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->threadColor:Lcom/badlogic/gdx/graphics/Color;

    .line 43
    return-void
.end method


# virtual methods
.method public act(Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;Lorg/catrobat/catroid/embroidery/EmbroideryStream;Lorg/catrobat/catroid/embroidery/StitchCommand;)V
    .locals 5
    .param p1, "workSpace"    # Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;
    .param p2, "stream"    # Lorg/catrobat/catroid/embroidery/EmbroideryStream;
    .param p3, "previousCommandOfSprite"    # Lorg/catrobat/catroid/embroidery/StitchCommand;

    .line 72
    iget v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->xCoord:F

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;->getCurrentX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->yCoord:F

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;->getCurrentY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;->getLastSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Sprite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    return-void

    .line 76
    :cond_0
    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;->getLastSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    const/high16 v1, 0x42f20000    # 121.0f

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;->getLastSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/Sprite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    invoke-interface {p2}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->addColorChange()V

    .line 78
    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;->getCurrentX()F

    move-result v0

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;->getCurrentY()F

    move-result v2

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-interface {p2, v0, v2, v3}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->addStitchPoint(FFLcom/badlogic/gdx/graphics/Color;)V

    .line 79
    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;->getCurrentX()F

    move-result v0

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;->getCurrentY()F

    move-result v2

    iget v3, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->xCoord:F

    iget v4, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->yCoord:F

    invoke-static {v0, v2, v3, v4}, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->getMaxDistanceBetweenPoints(FFFF)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 81
    invoke-interface {p2}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->addJump()V

    .line 83
    :cond_1
    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;->getCurrentX()F

    move-result v0

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;->getCurrentY()F

    move-result v2

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-interface {p2, v0, v2, v3}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->addStitchPoint(FFLcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-interface {p2}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->getPointList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    invoke-interface {p3}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getLayer()I

    move-result v0

    iget v2, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->layer:I

    if-eq v0, v2, :cond_4

    .line 85
    invoke-interface {p2}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->addColorChange()V

    .line 86
    invoke-interface {p3}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getX()F

    move-result v0

    .line 87
    invoke-interface {p3}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getY()F

    move-result v2

    iget v3, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->xCoord:F

    iget v4, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->yCoord:F

    .line 86
    invoke-static {v0, v2, v3, v4}, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->getMaxDistanceBetweenPoints(FFFF)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 88
    iget v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->xCoord:F

    iget v2, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->yCoord:F

    iget-object v3, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->threadColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {p2, v0, v2, v3}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->addStitchPoint(FFLcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    .line 90
    :cond_3
    invoke-interface {p3}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getX()F

    move-result v0

    .line 91
    invoke-interface {p3}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getY()F

    move-result v2

    invoke-interface {p3}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    .line 90
    invoke-interface {p2, v0, v2, v3}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->addStitchPoint(FFLcom/badlogic/gdx/graphics/Color;)V

    .line 92
    invoke-interface {p2}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->addJump()V

    .line 93
    invoke-interface {p3}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getX()F

    move-result v0

    .line 94
    invoke-interface {p3}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getY()F

    move-result v2

    invoke-interface {p3}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    .line 93
    invoke-interface {p2, v0, v2, v3}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->addStitchPoint(FFLcom/badlogic/gdx/graphics/Color;)V

    .line 98
    :cond_4
    :goto_0
    if-eqz p3, :cond_5

    invoke-interface {p3}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getLayer()I

    move-result v0

    iget v2, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->layer:I

    if-eq v0, v2, :cond_5

    invoke-interface {p3}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getX()F

    move-result v0

    invoke-interface {p3}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getY()F

    move-result v2

    iget v3, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->xCoord:F

    iget v4, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->yCoord:F

    invoke-static {v0, v2, v3, v4}, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->getMaxDistanceBetweenPoints(FFFF)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 99
    invoke-interface {p3}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getX()F

    move-result v0

    invoke-interface {p3}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getY()F

    move-result v1

    .line 100
    invoke-interface {p3}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    .line 99
    invoke-interface {p2, v0, v1, v2}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->addStitchPoint(FFLcom/badlogic/gdx/graphics/Color;)V

    .line 102
    :cond_5
    iget v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->xCoord:F

    iget v1, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->yCoord:F

    iget-object v2, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->threadColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {p2, v0, v1, v2}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->addStitchPoint(FFLcom/badlogic/gdx/graphics/Color;)V

    .line 103
    iget v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->xCoord:F

    iget v1, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->yCoord:F

    iget-object v2, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-interface {p1, v0, v1, v2}, Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;->set(FFLorg/catrobat/catroid/content/Sprite;)V

    .line 104
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 107
    instance-of v0, p1, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 108
    return v1

    .line 110
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;

    .line 111
    .local v0, "command":Lorg/catrobat/catroid/embroidery/StitchCommand;
    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getLayer()I

    move-result v2

    iget v3, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->layer:I

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/Sprite;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getX()F

    move-result v2

    iget v3, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->xCoord:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getY()F

    move-result v2

    iget v3, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->yCoord:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->threadColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getLayer()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->layer:I

    return v0
.end method

.method public getSprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->sprite:Lorg/catrobat/catroid/content/Sprite;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .line 47
    iget v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->xCoord:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 52
    iget v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->yCoord:F

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 115
    iget v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->xCoord:F

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0x3fff

    .line 116
    .local v0, "xPart":I
    iget v1, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->yCoord:F

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x3fff

    shl-int/lit8 v1, v1, 0xf

    .line 117
    .local v1, "yPart":I
    iget v2, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->layer:I

    shl-int/lit8 v2, v2, 0x10

    .line 118
    .local v2, "layerPart":I
    iget-object v3, p0, Lorg/catrobat/catroid/embroidery/DSTStitchCommand;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->hashCode()I

    move-result v3

    .line 119
    .local v3, "spritePart":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    xor-int/2addr v4, v3

    return v4
.end method
