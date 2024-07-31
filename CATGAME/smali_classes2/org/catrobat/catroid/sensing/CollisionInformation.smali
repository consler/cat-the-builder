.class public Lorg/catrobat/catroid/sensing/CollisionInformation;
.super Ljava/lang/Object;
.source "CollisionInformation.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TAG_COLLISION_POLYGON:Ljava/lang/String; = "CollisionPolygon"


# instance fields
.field public collisionPolygonCalculationThread:Ljava/lang/Thread;

.field public collisionPolygons:[Lcom/badlogic/gdx/math/Polygon;

.field private isCalculationThreadCancelled:Z

.field private leftBubblePos:Landroidx/core/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lookData:Lorg/catrobat/catroid/common/LookData;

.field private rightBubblePos:Landroidx/core/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/catrobat/catroid/sensing/CollisionInformation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/sensing/CollisionInformation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/common/LookData;)V
    .locals 1
    .param p1, "lookData"    # Lorg/catrobat/catroid/common/LookData;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->isCalculationThreadCancelled:Z

    .line 61
    iput-object p1, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->lookData:Lorg/catrobat/catroid/common/LookData;

    .line 62
    return-void
.end method

.method public static checkMetaDataString(Ljava/lang/String;)Z
    .locals 5
    .param p0, "metadata"    # Ljava/lang/String;

    .line 484
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 487
    :cond_0
    const-string v1, "((((\\d+\\.\\d+);(\\d+\\.\\d+);){2,}(\\d+\\.\\d+);(\\d+\\.\\d+))\\|)*((\\d+\\.\\d+);(\\d+\\.\\d+);){2,}(\\d+\\.\\d+);(\\d+\\.\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 488
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 489
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 490
    const/4 v0, 0x1

    return v0

    .line 492
    :cond_1
    const-string v3, "CollisionPolygon"

    const-string v4, "Invalid Metadata, creating new Polygon"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return v0

    .line 485
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    :goto_0
    return v0
.end method

.method public static createBoundingPolygonVertices(Ljava/lang/String;Lorg/catrobat/catroid/common/LookData;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "absoluteBitmapPath"    # Ljava/lang/String;
    .param p1, "lookData"    # Lorg/catrobat/catroid/common/LookData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/common/LookData;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;",
            ">;>;"
        }
    .end annotation

    .line 200
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 201
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-nez v7, :cond_0

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bitmap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is null. Cannot create Collision polygon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CollisionPolygon"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 206
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v8, v0

    .line 207
    .local v8, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 208
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, v7

    move-object v5, v8

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/catrobat/catroid/sensing/CollisionInformation;->createCollisionGrid(Landroid/graphics/Bitmap;)[[Z

    move-result-object v1

    .line 212
    .local v1, "grid":[[Z
    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v2

    iget-boolean v2, v2, Lorg/catrobat/catroid/sensing/CollisionInformation;->isCalculationThreadCancelled:Z

    if-eqz v2, :cond_1

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 216
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/catrobat/catroid/sensing/CollisionInformation;->createVerticalVertices([[ZII)Ljava/util/ArrayList;

    move-result-object v2

    .line 217
    .local v2, "vertical":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;>;"
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v1, v3, v4}, Lorg/catrobat/catroid/sensing/CollisionInformation;->createHorizontalVertices([[ZII)Ljava/util/ArrayList;

    move-result-object v3

    .line 219
    .local v3, "horizontal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_4

    .line 223
    :cond_2
    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v4

    iget-boolean v4, v4, Lorg/catrobat/catroid/sensing/CollisionInformation;->isCalculationThreadCancelled:Z

    if-eqz v4, :cond_3

    .line 224
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    return-object v4

    .line 227
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v4, "finalVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    const/4 v5, 0x0

    .line 230
    .local v5, "polygonNumber":I
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 234
    :cond_4
    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v6

    iget-boolean v6, v6, Lorg/catrobat/catroid/sensing/CollisionInformation;->isCalculationThreadCancelled:Z

    if-eqz v6, :cond_5

    .line 235
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    return-object v6

    .line 238
    :cond_5
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 239
    .local v6, "currentPolygonVertex":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    .line 241
    .local v9, "end":Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;
    const/4 v10, 0x0

    .line 242
    .local v10, "found":Z
    const/4 v11, 0x0

    .local v11, "h":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_7

    .line 243
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    invoke-virtual {v9, v12}, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->isConnected(Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 244
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v9, v12

    check-cast v9, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    .line 246
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 247
    const/4 v10, 0x1

    .line 248
    goto :goto_1

    .line 242
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 252
    .end local v11    # "h":I
    :cond_7
    :goto_1
    const/4 v11, 0x0

    .local v11, "v":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_9

    .line 253
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    invoke-virtual {v9, v12}, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->isConnected(Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 254
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 256
    const/4 v10, 0x1

    .line 257
    goto :goto_3

    .line 252
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 261
    .end local v11    # "v":I
    :cond_9
    :goto_3
    if-nez v10, :cond_a

    .line 262
    add-int/lit8 v5, v5, 0x1

    .line 263
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 267
    .end local v6    # "currentPolygonVertex":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;>;"
    .end local v9    # "end":Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;
    .end local v10    # "found":Z
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_4

    .line 268
    return-object v4

    .line 220
    .end local v4    # "finalVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;>;>;"
    .end local v5    # "polygonNumber":I
    :cond_b
    :goto_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    return-object v4
.end method

.method public static createCollisionGrid(Landroid/graphics/Bitmap;)[[Z
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 424
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 425
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 426
    .local v9, "height":I
    mul-int v0, v8, v9

    new-array v10, v0, [I

    .line 427
    .local v10, "pixels":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 428
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput v9, v0, v1

    aput v8, v0, v2

    const-class v2, Z

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    .line 429
    .local v0, "grid":[[Z
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    if-ge v2, v8, :cond_2

    .line 430
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_1
    if-ge v3, v9, :cond_1

    .line 431
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v10, v4, v2, v3}, Lorg/catrobat/catroid/utils/ImageEditing;->isPixelTransparent([IIII)Z

    move-result v4

    if-nez v4, :cond_0

    .line 432
    aget-object v4, v0, v2

    aput-boolean v1, v4, v3

    .line 430
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 429
    .end local v3    # "y":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    .end local v2    # "x":I
    :cond_2
    return-object v0
.end method

.method private createCollisionPolygon(Ljava/lang/String;)V
    .locals 13
    .param p1, "path"    # Ljava/lang/String;

    .line 139
    sget-object v0, Lorg/catrobat/catroid/sensing/CollisionInformation;->TAG:Ljava/lang/String;

    const-string v1, "No Collision information from PNG file, creating new one."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v0, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->isCalculationThreadCancelled:Z

    if-eqz v0, :cond_0

    .line 141
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->lookData:Lorg/catrobat/catroid/common/LookData;

    invoke-static {p1, v0}, Lorg/catrobat/catroid/sensing/CollisionInformation;->createBoundingPolygonVertices(Ljava/lang/String;Lorg/catrobat/catroid/common/LookData;)Ljava/util/ArrayList;

    move-result-object v0

    .line 145
    .local v0, "boundingPolygon":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;>;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 146
    return-void

    .line 149
    :cond_1
    const/high16 v1, 0x41200000    # 10.0f

    .line 153
    .local v1, "epsilon":F
    :goto_0
    iget-boolean v2, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->isCalculationThreadCancelled:Z

    if-eqz v2, :cond_2

    .line 154
    return-void

    .line 157
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v2, "temporaryCollisionPolygons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/math/Polygon;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 160
    iget-boolean v4, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->isCalculationThreadCancelled:Z

    if-eqz v4, :cond_3

    .line 161
    return-void

    .line 164
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/catrobat/catroid/sensing/CollisionInformation;->getPointsFromPolygonVertices(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 165
    .local v4, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v1}, Lorg/catrobat/catroid/sensing/CollisionInformation;->simplifyPolygon(Ljava/util/ArrayList;IIF)Ljava/util/ArrayList;

    move-result-object v5

    .line 167
    .local v5, "simplified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    .line 168
    .local v7, "dx":F
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v6

    .line 170
    .local v8, "dy":F
    float-to-double v9, v7

    float-to-double v11, v8

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    float-to-double v11, v1

    cmpg-double v6, v9, v11

    if-gez v6, :cond_4

    .line 171
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 174
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v9, 0x3

    if-ge v6, v9, :cond_5

    .line 175
    goto :goto_2

    .line 178
    :cond_5
    invoke-static {v5}, Lorg/catrobat/catroid/sensing/CollisionInformation;->createPolygonFromPoints(Ljava/util/ArrayList;)Lcom/badlogic/gdx/math/Polygon;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v4    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    .end local v5    # "simplified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    .end local v7    # "dx":F
    .end local v8    # "dy":F
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 181
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/badlogic/gdx/math/Polygon;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/badlogic/gdx/math/Polygon;

    iput-object v3, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->collisionPolygons:[Lcom/badlogic/gdx/math/Polygon;

    .line 182
    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v3

    .line 183
    .end local v2    # "temporaryCollisionPolygons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/math/Polygon;>;"
    invoke-virtual {p0}, Lorg/catrobat/catroid/sensing/CollisionInformation;->getNumberOfVertices()I

    move-result v2

    const/16 v3, 0x64

    if-gt v2, v3, :cond_a

    .line 185
    iget-object v2, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->collisionPolygons:[Lcom/badlogic/gdx/math/Polygon;

    array-length v2, v2

    if-nez v2, :cond_7

    .line 186
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 187
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2}, Lorg/catrobat/catroid/sensing/CollisionInformation;->createCollisionPolygonByHitbox(Landroid/graphics/Bitmap;)[Lcom/badlogic/gdx/math/Polygon;

    move-result-object v3

    iput-object v3, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->collisionPolygons:[Lcom/badlogic/gdx/math/Polygon;

    .line 190
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    iget-boolean v2, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->isCalculationThreadCancelled:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->lookData:Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/LookData;->isValid()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    .line 194
    :cond_8
    iget-object v2, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->collisionPolygons:[Lcom/badlogic/gdx/math/Polygon;

    invoke-static {v2, p1}, Lorg/catrobat/catroid/sensing/CollisionInformation;->writeCollisionVerticesToPNGMeta([Lcom/badlogic/gdx/math/Polygon;Ljava/lang/String;)V

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Polygon size of look "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->lookData:Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/LookData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/sensing/CollisionInformation;->getNumberOfVertices()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CollisionPolygon"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void

    .line 191
    :cond_9
    :goto_3
    return-void

    .line 183
    :cond_a
    goto/16 :goto_0
.end method

.method public static createCollisionPolygonByHitbox(Landroid/graphics/Bitmap;)[Lcom/badlogic/gdx/math/Polygon;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 497
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 498
    .local v0, "width":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 499
    .local v1, "height":F
    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v6, 0x2

    aput v0, v2, v6

    const/4 v6, 0x3

    aput v4, v2, v6

    const/4 v6, 0x4

    aput v0, v2, v6

    const/4 v6, 0x5

    aput v1, v2, v6

    const/4 v6, 0x6

    aput v4, v2, v6

    const/4 v4, 0x7

    aput v1, v2, v4

    .line 500
    .local v2, "vertices":[F
    new-instance v4, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v4, v2}, Lcom/badlogic/gdx/math/Polygon;-><init>([F)V

    .line 501
    .local v4, "polygon":Lcom/badlogic/gdx/math/Polygon;
    new-array v5, v5, [Lcom/badlogic/gdx/math/Polygon;

    .line 502
    .local v5, "polygons":[Lcom/badlogic/gdx/math/Polygon;
    aput-object v4, v5, v3

    .line 503
    return-object v5
.end method

.method public static createHorizontalVertices([[ZII)Ljava/util/ArrayList;
    .locals 13
    .param p0, "grid"    # [[Z
    .param p1, "gridWidth"    # I
    .param p2, "gridHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[ZII)",
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "horizontal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;>;"
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    if-ge v1, p2, :cond_f

    .line 275
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    if-ge v2, p1, :cond_e

    .line 276
    aget-object v3, p0, v2

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_d

    .line 278
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    aget-object v5, p0, v2

    add-int/lit8 v6, v1, -0x1

    aget-boolean v5, v5, v6

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    move v5, v3

    goto :goto_3

    :cond_1
    :goto_2
    move v5, v4

    .line 279
    .local v5, "topEdge":Z
    :goto_3
    if-eqz v5, :cond_6

    .line 280
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 281
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v6, v6, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    int-to-float v7, v2

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    .line 282
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v6, v6, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    int-to-float v7, v1

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    move v6, v4

    goto :goto_4

    :cond_2
    move v6, v3

    .line 283
    .local v6, "extendPrevious":Z
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v4, :cond_3

    .line 284
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v7, v7, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    int-to-float v8, v2

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3

    .line 285
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v7, v7, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    int-to-float v8, v1

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3

    move v7, v4

    goto :goto_5

    :cond_3
    move v7, v3

    .line 287
    .local v7, "extendPreviousOtherSide":Z
    :goto_5
    if-eqz v6, :cond_4

    .line 288
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    add-int/lit8 v9, v2, 0x1

    int-to-float v9, v9

    int-to-float v10, v1

    invoke-virtual {v8, v9, v10}, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->extend(FF)V

    goto :goto_6

    .line 289
    :cond_4
    if-eqz v7, :cond_5

    .line 290
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    add-int/lit8 v9, v2, 0x1

    int-to-float v9, v9

    .line 291
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v10, v10, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    .line 290
    invoke-virtual {v8, v9, v10}, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->extend(FF)V

    goto :goto_6

    .line 293
    :cond_5
    new-instance v8, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    int-to-float v9, v2

    int-to-float v10, v1

    add-int/lit8 v11, v2, 0x1

    int-to-float v11, v11

    int-to-float v12, v1

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;-><init>(FFFF)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .end local v6    # "extendPrevious":Z
    .end local v7    # "extendPreviousOtherSide":Z
    :cond_6
    :goto_6
    add-int/lit8 v6, p2, -0x1

    if-eq v1, v6, :cond_8

    aget-object v6, p0, v2

    add-int/lit8 v7, v1, 0x1

    aget-boolean v6, v6, v7

    if-nez v6, :cond_7

    goto :goto_7

    :cond_7
    move v6, v3

    goto :goto_8

    :cond_8
    :goto_7
    move v6, v4

    .line 298
    .local v6, "bottomEdge":Z
    :goto_8
    if-eqz v6, :cond_d

    .line 299
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 300
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v7, v7, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    int-to-float v8, v2

    cmpl-float v7, v7, v8

    if-nez v7, :cond_9

    .line 301
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v7, v7, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    add-int/lit8 v8, v1, 0x1

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_9

    move v7, v4

    goto :goto_9

    :cond_9
    move v7, v3

    .line 302
    .local v7, "extendPrevious":Z
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v4, :cond_a

    .line 303
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v8, v8, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    int-to-float v9, v2

    cmpl-float v8, v8, v9

    if-nez v8, :cond_a

    .line 304
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v8, v8, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    add-int/lit8 v9, v1, 0x1

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_a

    move v3, v4

    goto :goto_a

    :cond_a
    nop

    .line 306
    .local v3, "extendPreviousOtherSide":Z
    :goto_a
    if-eqz v7, :cond_b

    .line 307
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    add-int/lit8 v8, v2, 0x1

    int-to-float v8, v8

    add-int/lit8 v9, v1, 0x1

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->extend(FF)V

    goto :goto_b

    .line 308
    :cond_b
    if-eqz v3, :cond_c

    .line 309
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    add-int/lit8 v8, v2, 0x1

    int-to-float v8, v8

    .line 310
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v9, v9, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    .line 309
    invoke-virtual {v4, v8, v9}, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->extend(FF)V

    goto :goto_b

    .line 312
    :cond_c
    new-instance v4, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    int-to-float v8, v2

    add-int/lit8 v9, v1, 0x1

    int-to-float v9, v9

    add-int/lit8 v10, v2, 0x1

    int-to-float v10, v10

    add-int/lit8 v11, v1, 0x1

    int-to-float v11, v11

    invoke-direct {v4, v8, v9, v10, v11}, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;-><init>(FFFF)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v3    # "extendPreviousOtherSide":Z
    .end local v5    # "topEdge":Z
    .end local v6    # "bottomEdge":Z
    .end local v7    # "extendPrevious":Z
    :cond_d
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 274
    .end local v2    # "x":I
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 318
    .end local v1    # "y":I
    :cond_f
    return-object v0
.end method

.method public static createPolygonFromPoints(Ljava/util/ArrayList;)Lcom/badlogic/gdx/math/Polygon;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Lcom/badlogic/gdx/math/Polygon;"
        }
    .end annotation

    .line 415
    .local p0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    .line 416
    .local v0, "polygonNodes":[F
    const/4 v1, 0x0

    .local v1, "node":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 417
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aput v3, v0, v2

    .line 418
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aput v3, v0, v2

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    .end local v1    # "node":I
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/math/Polygon;-><init>([F)V

    return-object v1
.end method

.method public static createVerticalVertices([[ZII)Ljava/util/ArrayList;
    .locals 13
    .param p0, "grid"    # [[Z
    .param p1, "gridWidth"    # I
    .param p2, "gridHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[ZII)",
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;",
            ">;"
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v0, "vertical":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;>;"
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    if-ge v1, p1, :cond_f

    .line 325
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_1
    if-ge v2, p2, :cond_e

    .line 326
    aget-object v3, p0, v1

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_d

    .line 327
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    add-int/lit8 v5, v1, -0x1

    aget-object v5, p0, v5

    aget-boolean v5, v5, v2

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    move v5, v3

    goto :goto_3

    :cond_1
    :goto_2
    move v5, v4

    .line 328
    .local v5, "leftEdge":Z
    :goto_3
    if-eqz v5, :cond_6

    .line 329
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 330
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v6, v6, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    int-to-float v7, v1

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    .line 331
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v6, v6, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    int-to-float v7, v2

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    move v6, v4

    goto :goto_4

    :cond_2
    move v6, v3

    .line 332
    .local v6, "extendPrevious":Z
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v4, :cond_3

    .line 333
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v7, v7, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    int-to-float v8, v1

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3

    .line 334
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v7, v7, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    int-to-float v8, v2

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3

    move v7, v4

    goto :goto_5

    :cond_3
    move v7, v3

    .line 336
    .local v7, "extendPreviousOtherSide":Z
    :goto_5
    if-eqz v6, :cond_4

    .line 337
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v9, v9, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    add-int/lit8 v10, v2, 0x1

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->extend(FF)V

    goto :goto_6

    .line 338
    :cond_4
    if-eqz v7, :cond_5

    .line 339
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v9, v9, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    add-int/lit8 v10, v2, 0x1

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->extend(FF)V

    goto :goto_6

    .line 341
    :cond_5
    new-instance v8, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    int-to-float v9, v1

    int-to-float v10, v2

    int-to-float v11, v1

    add-int/lit8 v12, v2, 0x1

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;-><init>(FFFF)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v6    # "extendPrevious":Z
    .end local v7    # "extendPreviousOtherSide":Z
    :cond_6
    :goto_6
    add-int/lit8 v6, p1, -0x1

    if-eq v1, v6, :cond_8

    add-int/lit8 v6, v1, 0x1

    aget-object v6, p0, v6

    aget-boolean v6, v6, v2

    if-nez v6, :cond_7

    goto :goto_7

    :cond_7
    move v6, v3

    goto :goto_8

    :cond_8
    :goto_7
    move v6, v4

    .line 346
    .local v6, "rightEdge":Z
    :goto_8
    if-eqz v6, :cond_d

    .line 347
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 348
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v7, v7, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    add-int/lit8 v8, v1, 0x1

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_9

    .line 349
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v7, v7, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    int-to-float v8, v2

    cmpl-float v7, v7, v8

    if-nez v7, :cond_9

    move v7, v4

    goto :goto_9

    :cond_9
    move v7, v3

    .line 350
    .local v7, "extendPrevious":Z
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v4, :cond_a

    .line 351
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v8, v8, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    add-int/lit8 v9, v1, 0x1

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_a

    .line 352
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v8, v8, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endY:F

    int-to-float v9, v2

    cmpl-float v8, v8, v9

    if-nez v8, :cond_a

    move v3, v4

    goto :goto_a

    :cond_a
    nop

    .line 354
    .local v3, "extendPreviousOtherSide":Z
    :goto_a
    if-eqz v7, :cond_b

    .line 355
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v4, v4, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    add-int/lit8 v9, v2, 0x1

    int-to-float v9, v9

    invoke-virtual {v8, v4, v9}, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->extend(FF)V

    goto :goto_b

    .line 356
    :cond_b
    if-eqz v3, :cond_c

    .line 357
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    iget v8, v8, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->endX:F

    add-int/lit8 v9, v2, 0x1

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->extend(FF)V

    goto :goto_b

    .line 359
    :cond_c
    new-instance v4, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    add-int/lit8 v8, v1, 0x1

    int-to-float v8, v8

    int-to-float v9, v2

    add-int/lit8 v10, v1, 0x1

    int-to-float v10, v10

    add-int/lit8 v11, v2, 0x1

    int-to-float v11, v11

    invoke-direct {v4, v8, v9, v10, v11}, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;-><init>(FFFF)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .end local v3    # "extendPreviousOtherSide":Z
    .end local v5    # "leftEdge":Z
    .end local v6    # "rightEdge":Z
    .end local v7    # "extendPrevious":Z
    :cond_d
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 324
    .end local v2    # "y":I
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 365
    .end local v1    # "x":I
    :cond_f
    return-object v0
.end method

.method public static getCollisionPolygonFromPNGMeta(Ljava/lang/String;)[Lcom/badlogic/gdx/math/Polygon;
    .locals 9
    .param p0, "absolutePath"    # Ljava/lang/String;

    .line 458
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "CollisionPolygonVertices"

    invoke-static {p0, v1}, Lorg/catrobat/catroid/utils/ImageEditing;->readMetaDataStringFromPNG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lar/com/hjg/pngj/PngjInputException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .local v1, "metadata":Ljava/lang/String;
    nop

    .line 464
    invoke-static {v1}, Lorg/catrobat/catroid/sensing/CollisionInformation;->checkMetaDataString(Ljava/lang/String;)Z

    move-result v2

    .line 465
    .local v2, "isMetadataValid":Z
    if-nez v2, :cond_0

    .line 466
    new-array v0, v0, [Lcom/badlogic/gdx/math/Polygon;

    return-object v0

    .line 469
    :cond_0
    const-string v0, "\\|"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "polygonStrings":[Ljava/lang/String;
    array-length v3, v0

    new-array v3, v3, [Lcom/badlogic/gdx/math/Polygon;

    .line 471
    .local v3, "collisionPolygon":[Lcom/badlogic/gdx/math/Polygon;
    const/4 v4, 0x0

    .local v4, "polygonString":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 472
    aget-object v5, v0, v4

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 473
    .local v5, "pointStrings":[Ljava/lang/String;
    array-length v6, v5

    new-array v6, v6, [F

    .line 474
    .local v6, "points":[F
    const/4 v7, 0x0

    .local v7, "pointString":I
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_1

    .line 475
    aget-object v8, v5, v7

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v6, v7

    .line 474
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 477
    .end local v7    # "pointString":I
    :cond_1
    new-instance v7, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v7, v6}, Lcom/badlogic/gdx/math/Polygon;-><init>([F)V

    aput-object v7, v3, v4

    .line 471
    .end local v5    # "pointStrings":[Ljava/lang/String;
    .end local v6    # "points":[F
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 479
    .end local v4    # "polygonString":I
    :cond_2
    sget-object v4, Lorg/catrobat/catroid/sensing/CollisionInformation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded CollisionPolygon from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " successfully!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-object v3

    .line 459
    .end local v0    # "polygonStrings":[Ljava/lang/String;
    .end local v1    # "metadata":Ljava/lang/String;
    .end local v2    # "isMetadataValid":Z
    .end local v3    # "collisionPolygon":[Lcom/badlogic/gdx/math/Polygon;
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Lar/com/hjg/pngj/PngjInputException;
    sget-object v2, Lorg/catrobat/catroid/sensing/CollisionInformation;->TAG:Ljava/lang/String;

    const-string v3, "Error reading metadata from png!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-array v0, v0, [Lcom/badlogic/gdx/math/Polygon;

    return-object v0
.end method

.method public static getPointsFromPolygonVertices(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 407
    .local p0, "polygon":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;

    .line 409
    .local v2, "vertex":Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;
    invoke-virtual {v2}, Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;->getStartPoint()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    .end local v2    # "vertex":Lorg/catrobat/catroid/sensing/CollisionPolygonVertex;
    goto :goto_0

    .line 411
    :cond_0
    return-object v0
.end method

.method private static pointToLineDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 5
    .param p0, "lineStart"    # Landroid/graphics/PointF;
    .param p1, "lineEnd"    # Landroid/graphics/PointF;
    .param p2, "point"    # Landroid/graphics/PointF;

    .line 369
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 371
    .local v0, "normalLength":F
    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    return v1
.end method

.method public static simplifyPolygon(Ljava/util/ArrayList;IIF)Ljava/util/ArrayList;
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "epsilon"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;IIF)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 377
    .local p0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    const/4 v0, 0x0

    .line 378
    .local v0, "dmax":F
    move v1, p1

    .line 380
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 381
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    invoke-static {v3, v4, v5}, Lorg/catrobat/catroid/sensing/CollisionInformation;->pointToLineDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v3

    .line 382
    .local v3, "d":F
    cmpl-float v4, v3, v0

    if-lez v4, :cond_0

    .line 383
    move v1, v2

    .line 384
    move v0, v3

    .line 380
    .end local v3    # "d":F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v2, "finalRes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    cmpl-float v3, v0, p3

    if-lez v3, :cond_4

    .line 390
    invoke-static {p0, p1, v1, p3}, Lorg/catrobat/catroid/sensing/CollisionInformation;->simplifyPolygon(Ljava/util/ArrayList;IIF)Ljava/util/ArrayList;

    move-result-object v3

    .line 391
    .local v3, "res1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    invoke-static {p0, v1, p2, p3}, Lorg/catrobat/catroid/sensing/CollisionInformation;->simplifyPolygon(Ljava/util/ArrayList;IIF)Ljava/util/ArrayList;

    move-result-object v4

    .line 393
    .local v4, "res2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 394
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 396
    .end local v5    # "i":I
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 397
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 399
    .end local v3    # "res1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    .end local v4    # "res2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    .end local v5    # "i":I
    :cond_3
    goto :goto_3

    .line 400
    :cond_4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :goto_3
    return-object v2
.end method

.method public static writeCollisionVerticesToPNGMeta([Lcom/badlogic/gdx/math/Polygon;Ljava/lang/String;)V
    .locals 7
    .param p0, "collisionPolygon"    # [Lcom/badlogic/gdx/math/Polygon;
    .param p1, "absolutePath"    # Ljava/lang/String;

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v0, "metaToWrite":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 443
    .local v4, "polygon":Lcom/badlogic/gdx/math/Polygon;
    const/4 v5, 0x0

    .local v5, "f":I
    :goto_1
    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 444
    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v6

    aget v6, v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v6, 0x3b

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 446
    .end local v5    # "f":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v2, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 447
    const/16 v5, 0x7c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    .end local v4    # "polygon":Lcom/badlogic/gdx/math/Polygon;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 449
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CollisionPolygonVertices"

    invoke-static {p1, v2, v1}, Lorg/catrobat/catroid/utils/ImageEditing;->writeMetaDataStringToPNG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_2
    return-void
.end method


# virtual methods
.method public calculate()V
    .locals 2

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->isCalculationThreadCancelled:Z

    .line 74
    new-instance v0, Lorg/catrobat/catroid/sensing/CollisionPolygonCreationTask;

    iget-object v1, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->lookData:Lorg/catrobat/catroid/common/LookData;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/sensing/CollisionPolygonCreationTask;-><init>(Lorg/catrobat/catroid/common/LookData;)V

    .line 75
    .local v0, "task":Lorg/catrobat/catroid/sensing/CollisionPolygonCreationTask;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->collisionPolygonCalculationThread:Ljava/lang/Thread;

    .line 76
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method

.method public calculateBubblePositions()V
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->lookData:Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 91
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/sensing/CollisionInformation;->calculateBubblePositions(Landroid/graphics/Bitmap;)V

    .line 92
    return-void
.end method

.method public calculateBubblePositions(Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    .line 97
    .local v0, "pixels":[I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 100
    .local v1, "centerX":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 102
    .local v2, "centerY":I
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 103
    iget-object v4, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->rightBubblePos:Landroidx/core/util/Pair;

    if-eqz v4, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "x":I
    :goto_1
    if-lez v4, :cond_3

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v0, v5, v4, v3}, Lorg/catrobat/catroid/utils/ImageEditing;->isPixelTransparent([IIII)Z

    move-result v5

    if-nez v5, :cond_2

    .line 108
    sub-int v5, v4, v1

    .line 109
    .local v5, "xDiff":I
    sub-int v6, v2, v3

    .line 111
    .local v6, "yDiff":I
    iget-object v7, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->rightBubblePos:Landroidx/core/util/Pair;

    if-nez v7, :cond_1

    .line 112
    new-instance v7, Landroidx/core/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v7, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->rightBubblePos:Landroidx/core/util/Pair;

    .line 115
    :cond_1
    new-instance v7, Landroidx/core/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v7, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->leftBubblePos:Landroidx/core/util/Pair;

    .line 106
    .end local v5    # "xDiff":I
    .end local v6    # "yDiff":I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 102
    .end local v4    # "x":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v3    # "y":I
    :cond_4
    return-void
.end method

.method public getLeftBubblePos()Landroidx/core/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->leftBubblePos:Landroidx/core/util/Pair;

    return-object v0
.end method

.method public getNumberOfVertices()I
    .locals 6

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "size":I
    iget-object v1, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->collisionPolygons:[Lcom/badlogic/gdx/math/Polygon;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 82
    .local v4, "polygon":Lcom/badlogic/gdx/math/Polygon;
    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v5

    array-length v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    .line 81
    .end local v4    # "polygon":Lcom/badlogic/gdx/math/Polygon;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return v0
.end method

.method public getRightBubblePos()Landroidx/core/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->rightBubblePos:Landroidx/core/util/Pair;

    return-object v0
.end method

.method public loadCollisionPolygon()V
    .locals 3

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->isCalculationThreadCancelled:Z

    .line 123
    iget-object v0, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->lookData:Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->lookData:Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v1}, Lorg/catrobat/catroid/common/LookData;->getImageMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 127
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lorg/catrobat/catroid/sensing/CollisionInformation;->createCollisionPolygonByHitbox(Landroid/graphics/Bitmap;)[Lcom/badlogic/gdx/math/Polygon;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->collisionPolygons:[Lcom/badlogic/gdx/math/Polygon;

    .line 128
    return-void

    .line 131
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/sensing/CollisionInformation;->getCollisionPolygonFromPNGMeta(Ljava/lang/String;)[Lcom/badlogic/gdx/math/Polygon;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->collisionPolygons:[Lcom/badlogic/gdx/math/Polygon;

    .line 133
    array-length v1, v1

    if-nez v1, :cond_1

    .line 134
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/sensing/CollisionInformation;->createCollisionPolygon(Ljava/lang/String;)V

    .line 136
    :cond_1
    return-void
.end method

.method public printDebugCollisionPolygons()V
    .locals 8

    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, "polygonNr":I
    iget-object v1, p0, Lorg/catrobat/catroid/sensing/CollisionInformation;->collisionPolygons:[Lcom/badlogic/gdx/math/Polygon;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 509
    .local v4, "p":Lcom/badlogic/gdx/math/Polygon;
    sget-object v5, Lorg/catrobat/catroid/sensing/CollisionInformation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Collision Polygon "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " :\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .end local v4    # "p":Lcom/badlogic/gdx/math/Polygon;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 511
    :cond_0
    return-void
.end method
