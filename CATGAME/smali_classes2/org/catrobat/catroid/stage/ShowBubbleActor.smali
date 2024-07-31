.class public Lorg/catrobat/catroid/stage/ShowBubbleActor;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "ShowBubbleActor.java"


# instance fields
.field bubbleValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private drawRight:Z

.field private image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private imageLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private imageRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private pixmapLeft:Lcom/badlogic/gdx/graphics/Pixmap;

.field private pixmapRight:Lcom/badlogic/gdx/graphics/Pixmap;

.field private sprite:Lorg/catrobat/catroid/content/Sprite;

.field private textureLeft:Lcom/badlogic/gdx/graphics/Texture;

.field private textureRight:Lcom/badlogic/gdx/graphics/Texture;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p3, "type"    # I

    .line 67
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->drawRight:Z

    .line 68
    invoke-static {p1}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->formatStringForBubbleBricks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->bubbleValue:Ljava/util/ArrayList;

    .line 69
    iput-object p2, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 70
    iput p3, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->type:I

    .line 71
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->init()V

    .line 72
    return-void
.end method

.method private static concatWordsIntoLines(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "maxLineLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 309
    .local p0, "words":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v0, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .local v1, "line":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 312
    .local v3, "word":Ljava/lang/String;
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 313
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    goto :goto_1

    .line 315
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v4, p1, :cond_1

    .line 316
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 318
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 321
    .end local v3    # "word":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    return-object v0
.end method

.method private drawBubbleOnCanvas(Ljava/util/ArrayList;Z)Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 17
    .param p2, "right"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/badlogic/gdx/graphics/Pixmap;"
        }
    .end annotation

    .line 167
    .local p1, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 168
    .local v0, "paint":Landroid/graphics/Paint;
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 169
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 171
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, "width":I
    const/16 v3, 0x1e

    .line 174
    .local v3, "height":I
    const/4 v4, 0x5

    .line 175
    .local v4, "border":I
    const/high16 v5, 0x42200000    # 40.0f

    .line 176
    .local v5, "y":F
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v6, "xPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 180
    .local v7, "temp":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 181
    .local v9, "line":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x3

    .line 182
    const/4 v10, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0, v9, v10, v11, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 183
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/2addr v3, v10

    .line 184
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-ge v2, v10, :cond_0

    .line 186
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 188
    .end local v9    # "line":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 189
    :cond_1
    add-int/lit8 v2, v2, 0x37

    .line 190
    const/16 v8, 0x94

    if-ge v2, v8, :cond_2

    .line 191
    const/16 v2, 0x94

    .line 193
    :cond_2
    add-int/lit8 v8, v3, -0x1e

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    div-int/2addr v8, v9

    int-to-float v8, v8

    .line 196
    .local v8, "lineHeight":F
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 197
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 198
    .local v10, "canvas":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/RectF;

    int-to-float v12, v2

    int-to-float v13, v3

    const/4 v14, 0x0

    invoke-direct {v11, v14, v14, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 201
    .local v11, "rect":Landroid/graphics/RectF;
    const/high16 v12, 0x41a00000    # 20.0f

    invoke-virtual {v10, v11, v12, v12, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 202
    new-instance v12, Landroid/graphics/RectF;

    iget v13, v11, Landroid/graphics/RectF;->left:F

    int-to-float v14, v4

    add-float/2addr v13, v14

    iget v14, v11, Landroid/graphics/RectF;->top:F

    int-to-float v15, v4

    add-float/2addr v14, v15

    iget v15, v11, Landroid/graphics/RectF;->right:F

    int-to-float v1, v4

    sub-float/2addr v15, v1

    iget v1, v11, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v5

    .end local v5    # "y":F
    .local v16, "y":F
    int-to-float v5, v4

    sub-float/2addr v1, v5

    invoke-direct {v12, v13, v14, v15, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, v12

    .line 203
    .end local v11    # "rect":Landroid/graphics/RectF;
    .local v1, "rect":Landroid/graphics/RectF;
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v10, v1, v5, v5, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 205
    const/high16 v5, -0x1000000

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_3

    .line 209
    int-to-float v11, v2

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    .line 210
    .local v11, "x":F
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v6, v5, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 208
    .end local v11    # "x":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 214
    .end local v5    # "i":I
    :cond_3
    const/4 v5, 0x0

    .line 215
    .restart local v5    # "i":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move/from16 v12, v16

    .end local v16    # "y":F
    .local v12, "y":F
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 216
    .local v13, "line":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v10, v13, v14, v12, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 217
    add-float/2addr v12, v8

    .line 218
    nop

    .end local v13    # "line":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 219
    goto :goto_2

    .line 222
    :cond_4
    move-object/from16 v11, p0

    move/from16 v13, p2

    invoke-direct {v11, v2, v3, v9, v13}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->getFinalBubble(IILandroid/graphics/Bitmap;Z)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v14

    return-object v14
.end method

.method private drawLeft()Z
    .locals 2

    .line 162
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->imageLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getX()F

    move-result v0

    .line 163
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v1

    iget v1, v1, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0
.end method

.method private drawRight()Z
    .locals 2

    .line 157
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->imageRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->imageRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    .line 158
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v1

    iget v1, v1, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0
.end method

.method public static formatStringForBubbleBricks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 290
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v0, "words":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, " |((?<=\\n)|(?=\\n))"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x10

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 293
    .local v2, "word":Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->splitLongWordIntoSubStrings(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 294
    .end local v2    # "word":Ljava/lang/String;
    goto :goto_0

    .line 295
    :cond_0
    invoke-static {v0, v3}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->concatWordsIntoLines(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private getFinalBubble(IILandroid/graphics/Bitmap;Z)Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "right"    # Z

    .line 226
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 227
    .local v0, "paint":Landroid/graphics/Paint;
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 229
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 230
    add-int/lit8 v1, p2, 0x28

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 231
    .local v1, "tempBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 232
    .local v2, "tempCanvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p3, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 234
    iget v3, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->type:I

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 235
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-direct {p0, v3, v4, p4}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->getSayTrianglePath(IIZ)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 236
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-direct {p0, v3, v4, p4}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->getSayTrianglePathSmaller(IIZ)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 239
    :cond_0
    invoke-direct {p0, p4}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->getThinkBubbles(Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 240
    .local v3, "thinkBubbles":Landroid/graphics/Bitmap;
    if-eqz p4, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x50

    .line 241
    .local v6, "startPos":I
    :goto_0
    int-to-float v7, v6

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2, v3, v7, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 244
    .end local v3    # "thinkBubbles":Landroid/graphics/Bitmap;
    .end local v6    # "startPos":I
    :goto_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 245
    .local v3, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v1, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 246
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 247
    .local v4, "bytes":[B
    new-instance v6, Lcom/badlogic/gdx/graphics/Pixmap;

    array-length v7, v4

    invoke-direct {v6, v4, v5, v7}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>([BII)V

    return-object v6
.end method

.method private getImageForDraw()Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 6

    .line 98
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v0

    .line 100
    .local v0, "lookData":Lorg/catrobat/catroid/common/LookData;
    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {v0}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v1

    .line 103
    .local v1, "collisionInformation":Lorg/catrobat/catroid/sensing/CollisionInformation;
    invoke-virtual {v1}, Lorg/catrobat/catroid/sensing/CollisionInformation;->getLeftBubblePos()Landroidx/core/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/catrobat/catroid/sensing/CollisionInformation;->getRightBubblePos()Landroidx/core/util/Pair;

    move-result-object v2

    if-nez v2, :cond_1

    .line 104
    :cond_0
    invoke-virtual {v1}, Lorg/catrobat/catroid/sensing/CollisionInformation;->calculateBubblePositions()V

    .line 107
    :cond_1
    invoke-virtual {v1}, Lorg/catrobat/catroid/sensing/CollisionInformation;->getRightBubblePos()Landroidx/core/util/Pair;

    move-result-object v2

    .line 108
    .local v2, "bubblePosRight":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Lorg/catrobat/catroid/sensing/CollisionInformation;->getLeftBubblePos()Landroidx/core/util/Pair;

    move-result-object v3

    .line 110
    .local v3, "bubblePosLeft":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->imageLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v5, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {p0, v5}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->calculateLeftImageX(Ljava/lang/Integer;)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setX(F)V

    .line 111
    iget-object v4, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->imageLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v5, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {p0, v5}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->calculateImageY(Ljava/lang/Integer;)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setY(F)V

    .line 112
    iget-object v4, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->imageRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v5, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {p0, v5}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->calculateRightImageX(Ljava/lang/Integer;)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setX(F)V

    .line 113
    iget-object v4, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->imageRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v5, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {p0, v5}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->calculateImageY(Ljava/lang/Integer;)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setY(F)V

    .line 114
    .end local v1    # "collisionInformation":Lorg/catrobat/catroid/sensing/CollisionInformation;
    .end local v2    # "bubblePosRight":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3    # "bubblePosLeft":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_1

    .line 115
    :cond_2
    iget-object v1, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 116
    .local v1, "look":Lorg/catrobat/catroid/content/Look;
    iget-boolean v2, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->drawRight:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_3

    .line 117
    iget-object v2, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v4

    .line 118
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getWidthInUserInterfaceDimensionUnit()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    .line 117
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setX(F)V

    goto :goto_0

    .line 120
    :cond_3
    iget-object v2, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v4

    .line 121
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getWidthInUserInterfaceDimensionUnit()F

    move-result v5

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    .line 120
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setX(F)V

    .line 123
    :goto_0
    iget-object v2, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v4

    .line 124
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getHeightInUserInterfaceDimensionUnit()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    .line 123
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setY(F)V

    .line 127
    .end local v1    # "look":Lorg/catrobat/catroid/content/Look;
    :goto_1
    iget-object v1, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object v1
.end method

.method private getSayTrianglePath(IIZ)Landroid/graphics/Path;
    .locals 4
    .param p1, "bitmapHeight"    # I
    .param p2, "bitmapWidth"    # I
    .param p3, "right"    # Z

    .line 251
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    .line 252
    .local v0, "offset":I
    :goto_0
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 253
    .local v1, "path":Landroid/graphics/Path;
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 254
    int-to-float v2, v0

    int-to-float v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 255
    add-int/lit8 v2, v0, -0x1c

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    add-int/lit8 v3, p1, -0x28

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 256
    add-int/lit8 v2, v0, -0x76

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    add-int/lit8 v3, p1, -0x28

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 257
    int-to-float v2, v0

    int-to-float v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 258
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 259
    return-object v1
.end method

.method private getSayTrianglePathSmaller(IIZ)Landroid/graphics/Path;
    .locals 4
    .param p1, "bitmapHeight"    # I
    .param p2, "bitmapWidth"    # I
    .param p3, "right"    # Z

    .line 263
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    .line 264
    .local v0, "offset":I
    :goto_0
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 265
    .local v1, "path":Landroid/graphics/Path;
    add-int/lit8 v2, v0, -0xc

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    add-int/lit8 v3, p1, -0x9

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 266
    add-int/lit8 v2, v0, -0x25

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    add-int/lit8 v3, p1, -0x28

    add-int/lit8 v3, v3, -0x5

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 267
    add-int/lit8 v2, v0, -0x74

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    add-int/lit8 v3, p1, -0x28

    add-int/lit8 v3, v3, -0x5

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 268
    add-int/lit8 v2, v0, -0xc

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    add-int/lit8 v3, p1, -0x9

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 269
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 270
    return-object v1
.end method

.method private getThinkBubbles(Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "right"    # Z

    .line 274
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x46

    const/16 v2, 0x28

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 276
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 277
    .local v2, "paint":Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 278
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 279
    .local v3, "length":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/4 v5, 0x3

    if-gt v4, v5, :cond_1

    .line 280
    const/high16 v5, -0x1000000

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    mul-int/lit8 v5, v4, 0xf

    sub-int v5, v3, v5

    add-int/lit8 v5, v5, -0xa

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    mul-int/lit8 v6, v4, 0xa

    int-to-float v6, v6

    rsub-int/lit8 v7, v4, 0xa

    int-to-float v7, v7

    invoke-virtual {v1, v5, v6, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 282
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 283
    mul-int/lit8 v5, v4, 0xf

    sub-int v5, v3, v5

    add-int/lit8 v5, v5, -0xa

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    mul-int/lit8 v6, v4, 0xa

    int-to-float v6, v6

    rsub-int/lit8 v7, v4, 0x7

    int-to-float v7, v7

    invoke-virtual {v1, v5, v6, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 279
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 286
    .end local v4    # "i":I
    :cond_1
    return-object v0
.end method

.method private init()V
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->bubbleValue:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->drawBubbleOnCanvas(Ljava/util/ArrayList;Z)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->pixmapRight:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 89
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    iput-object v1, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->textureRight:Lcom/badlogic/gdx/graphics/Texture;

    .line 90
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->imageRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 91
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->bubbleValue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->drawBubbleOnCanvas(Ljava/util/ArrayList;Z)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->pixmapLeft:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 92
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    iput-object v1, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->textureLeft:Lcom/badlogic/gdx/graphics/Texture;

    .line 93
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->imageLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 94
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->imageRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 95
    return-void
.end method

.method private static splitLongWordIntoSubStrings(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 2
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "maxLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v0, "intermediateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 301
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    return-object v0
.end method

.method private switchLogic()V
    .locals 1

    .line 146
    iget-boolean v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->drawRight:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->drawRight()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->drawRight:Z

    .line 148
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->imageLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 150
    :cond_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->drawRight:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->drawLeft()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->drawRight:Z

    .line 152
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->imageRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 154
    :cond_1
    return-void
.end method


# virtual methods
.method public calculateImageY(Ljava/lang/Integer;)F
    .locals 3
    .param p1, "bubblePosY"    # Ljava/lang/Integer;

    .line 142
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v2, v2, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public calculateLeftImageX(Ljava/lang/Integer;)F
    .locals 4
    .param p1, "bubblePosX"    # Ljava/lang/Integer;

    .line 137
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Look;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public calculateRightImageX(Ljava/lang/Integer;)F
    .locals 3
    .param p1, "bubblePosX"    # Ljava/lang/Integer;

    .line 132
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v2, v2, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->pixmapRight:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 82
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->textureRight:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 83
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->pixmapLeft:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 84
    iget-object v0, p0, Lorg/catrobat/catroid/stage/ShowBubbleActor;->textureLeft:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 85
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 1
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .line 76
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->switchLogic()V

    .line 77
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->getImageForDraw()Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 78
    return-void
.end method
