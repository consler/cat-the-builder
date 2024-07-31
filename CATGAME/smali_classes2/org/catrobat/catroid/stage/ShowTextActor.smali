.class public Lorg/catrobat/catroid/stage/ShowTextActor;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "ShowTextActor.java"


# static fields
.field private static final DEFAULT_ALIGNMENT:I = 0x1


# instance fields
.field private alignment:I

.field private androidStringProvider:Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

.field private color:Ljava/lang/String;

.field private sprite:Lorg/catrobat/catroid/content/Sprite;

.field private textSize:F

.field private variableNameToCompare:Ljava/lang/String;

.field private variableToShow:Lorg/catrobat/catroid/formulaeditor/UserVariable;

.field private xPosition:I

.field private yPosition:I


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/UserVariable;IIFLjava/lang/String;Lorg/catrobat/catroid/content/Sprite;ILorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V
    .locals 1
    .param p1, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .param p2, "xPosition"    # I
    .param p3, "yPosition"    # I
    .param p4, "relativeSize"    # F
    .param p5, "color"    # Ljava/lang/String;
    .param p6, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p7, "alignment"    # I
    .param p8, "androidStringProvider"    # Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 73
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->variableToShow:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 75
    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->variableNameToCompare:Ljava/lang/String;

    .line 76
    iput p2, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->xPosition:I

    .line 77
    iput p3, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->yPosition:I

    .line 78
    const/high16 v0, 0x42340000    # 45.0f

    mul-float/2addr v0, p4

    iput v0, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->textSize:F

    .line 79
    iput-object p5, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->color:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 81
    iput p7, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->alignment:I

    .line 82
    iput-object p8, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->androidStringProvider:Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/UserVariable;IIFLjava/lang/String;Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V
    .locals 1
    .param p1, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .param p2, "xPosition"    # I
    .param p3, "yPosition"    # I
    .param p4, "relativeSize"    # F
    .param p5, "color"    # Ljava/lang/String;
    .param p6, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p7, "androidStringProvider"    # Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 86
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->variableToShow:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 88
    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->variableNameToCompare:Ljava/lang/String;

    .line 89
    iput p2, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->xPosition:I

    .line 90
    iput p3, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->yPosition:I

    .line 91
    const/high16 v0, 0x42340000    # 45.0f

    mul-float/2addr v0, p4

    iput v0, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->textSize:F

    .line 92
    iput-object p5, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->color:Ljava/lang/String;

    .line 93
    iput-object p6, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->alignment:I

    .line 95
    iput-object p7, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->androidStringProvider:Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 96
    return-void
.end method

.method private drawText(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/String;FFLjava/lang/String;)V
    .locals 16
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "posX"    # F
    .param p4, "posY"    # F
    .param p5, "color"    # Ljava/lang/String;

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 143
    .local v3, "paint":Landroid/graphics/Paint;
    iget v4, v0, Lorg/catrobat/catroid/stage/ShowTextActor;->textSize:F

    invoke-static {v4}, Lorg/catrobat/catroid/utils/ShowTextUtils;->sanitizeTextSize(F)F

    move-result v4

    .line 144
    .local v4, "textSizeInPx":F
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 146
    invoke-static/range {p5 .. p5}, Lorg/catrobat/catroid/utils/ShowTextUtils;->isValidColorString(Ljava/lang/String;)Z

    move-result v5

    const/high16 v6, -0x1000000

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    .line 147
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    move-object/from16 v9, p5

    invoke-virtual {v9, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 149
    .end local p5    # "color":Ljava/lang/String;
    .local v5, "color":Ljava/lang/String;
    invoke-static {v5}, Lorg/catrobat/catroid/utils/ShowTextUtils;->calculateColorRGBs(Ljava/lang/String;)[I

    move-result-object v9

    .line 150
    .local v9, "rgb":[I
    aget v10, v9, v8

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v6, v10

    aget v10, v9, v7

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v6, v10

    const/4 v10, 0x2

    aget v11, v9, v10

    or-int/2addr v6, v11

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    aget v6, v9, v8

    int-to-float v6, v6

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v6, v11

    aget v12, v9, v7

    int-to-float v12, v12

    div-float/2addr v12, v11

    aget v10, v9, v10

    int-to-float v10, v10

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-interface {v1, v6, v12, v10, v11}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 152
    .end local v9    # "rgb":[I
    goto :goto_0

    .line 153
    .end local v5    # "color":Ljava/lang/String;
    .restart local p5    # "color":Ljava/lang/String;
    :cond_0
    move-object/from16 v9, p5

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object v5, v9

    .line 156
    .end local p5    # "color":Ljava/lang/String;
    .restart local v5    # "color":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v6, v6

    .line 157
    .local v6, "baseline":F
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    sget v7, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    int-to-float v7, v7

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v10, v9

    add-float/2addr v7, v10

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    .line 160
    .local v7, "availableWidth":I
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 161
    .local v9, "bitmapWidth":I
    iget v10, v0, Lorg/catrobat/catroid/stage/ShowTextActor;->alignment:I

    invoke-static {v3, v9, v10}, Lorg/catrobat/catroid/utils/ShowTextUtils;->calculateAlignmentValuesForText(Landroid/graphics/Paint;II)I

    move-result v10

    .line 162
    .local v10, "canvasWidth":I
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v11

    add-float/2addr v11, v6

    float-to-int v11, v11

    .line 164
    .local v11, "height":I
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 165
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 166
    .local v13, "canvas":Landroid/graphics/Canvas;
    int-to-float v14, v10

    invoke-virtual {v13, v2, v14, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 168
    new-instance v14, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v14, v15, v8, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v0, v14

    .line 170
    .local v0, "tex":Lcom/badlogic/gdx/graphics/Texture;
    nop

    .line 171
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getTextureObjectHandle()I

    move-result v8

    .line 170
    const/16 v14, 0xde1

    invoke-static {v14, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 172
    const/4 v8, 0x0

    invoke-static {v14, v8, v12, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 173
    invoke-static {v14, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 174
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 176
    const/high16 v8, 0x40400000    # 3.0f

    int-to-float v14, v10

    add-float/2addr v14, v8

    .line 177
    .local v14, "xOffset":F
    sub-float v8, p3, v14

    sub-float v15, p4, v4

    invoke-interface {v1, v0, v8, v15}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FF)V

    .line 178
    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 179
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 180
    return-void
.end method

.method private drawVariables(Ljava/util/List;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 10
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            ")V"
        }
    .end annotation

    .line 106
    .local p1, "variableList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserVariable;>;"
    if-nez p1, :cond_0

    .line 107
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->variableToShow:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->isDummy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    nop

    .line 112
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1205bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v0, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->xPosition:I

    int-to-float v5, v0

    iget v0, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->yPosition:I

    int-to-float v6, v0

    iget-object v7, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->color:Ljava/lang/String;

    .line 111
    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lorg/catrobat/catroid/stage/ShowTextActor;->drawText(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/String;FFLjava/lang/String;)V

    goto/16 :goto_2

    .line 115
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 116
    .local v1, "variable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->variableToShow:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 118
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 119
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 120
    iget-object v3, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->androidStringProvider:Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;->getTrueOrFalse(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v3

    .local v3, "variableValueString":Ljava/lang/String;
    goto :goto_1

    .line 122
    .end local v3    # "variableValueString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    .restart local v3    # "variableValueString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 125
    goto :goto_0

    .line 127
    :cond_3
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 128
    invoke-static {v3}, Lorg/catrobat/catroid/utils/ShowTextUtils;->isNumberAndInteger(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    invoke-static {v3}, Lorg/catrobat/catroid/utils/ShowTextUtils;->getStringAsInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget v0, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->xPosition:I

    int-to-float v7, v0

    iget v0, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->yPosition:I

    int-to-float v8, v0

    iget-object v9, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->color:Ljava/lang/String;

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v4 .. v9}, Lorg/catrobat/catroid/stage/ShowTextActor;->drawText(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/String;FFLjava/lang/String;)V

    goto :goto_2

    .line 131
    :cond_4
    iget v0, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->xPosition:I

    int-to-float v7, v0

    iget v0, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->yPosition:I

    int-to-float v8, v0

    iget-object v9, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->color:Ljava/lang/String;

    move-object v4, p0

    move-object v5, p2

    move-object v6, v3

    invoke-direct/range {v4 .. v9}, Lorg/catrobat/catroid/stage/ShowTextActor;->drawText(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/String;FFLjava/lang/String;)V

    goto :goto_2

    .line 136
    .end local v1    # "variable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "variableValueString":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 138
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 1
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .line 100
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getUserVariables()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/stage/ShowTextActor;->drawVariables(Ljava/util/List;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 101
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getMultiplayerVariables()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/stage/ShowTextActor;->drawVariables(Ljava/util/List;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 102
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getUserVariables()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/stage/ShowTextActor;->drawVariables(Ljava/util/List;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 103
    return-void
.end method

.method public getSprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->sprite:Lorg/catrobat/catroid/content/Sprite;

    return-object v0
.end method

.method public getVariableNameToCompare()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->variableNameToCompare:Ljava/lang/String;

    return-object v0
.end method

.method public setPositionX(I)V
    .locals 0
    .param p1, "xPosition"    # I

    .line 183
    iput p1, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->xPosition:I

    .line 184
    return-void
.end method

.method public setPositionY(I)V
    .locals 0
    .param p1, "yPosition"    # I

    .line 187
    iput p1, p0, Lorg/catrobat/catroid/stage/ShowTextActor;->yPosition:I

    .line 188
    return-void
.end method
