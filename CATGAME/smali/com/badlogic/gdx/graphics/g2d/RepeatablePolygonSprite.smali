.class public Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;
.super Ljava/lang/Object;
.source "RepeatablePolygonSprite.java"


# instance fields
.field private color:Lcom/badlogic/gdx/graphics/Color;

.field private cols:I

.field private density:F

.field private dirty:Z

.field private gridHeight:F

.field private gridWidth:F

.field private indices:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "[S>;"
        }
    .end annotation
.end field

.field private offset:Lcom/badlogic/gdx/math/Vector2;

.field private parts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "[F>;"
        }
    .end annotation
.end field

.field private region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private rows:I

.field private vertices:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "[F>;"
        }
    .end annotation
.end field

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->dirty:Z

    .line 39
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->parts:Lcom/badlogic/gdx/utils/Array;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->vertices:Lcom/badlogic/gdx/utils/Array;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->indices:Lcom/badlogic/gdx/utils/Array;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->x:F

    .line 48
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->y:F

    .line 49
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method private buildVertices()V
    .locals 12

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->vertices:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->parts:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_6

    .line 174
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 175
    .local v1, "verts":[F
    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 177
    :cond_0
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    .line 178
    .local v2, "fullVerts":[F
    const/4 v3, 0x0

    .line 180
    .local v3, "idx":I
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->rows:I

    div-int v5, v0, v4

    .line 181
    .local v5, "col":I
    rem-int v4, v0, v4

    .line 183
    .local v4, "row":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_5

    .line 184
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "idx":I
    .local v7, "idx":I
    aget v8, v1, v6

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v8, v9

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->x:F

    add-float/2addr v8, v9

    aput v8, v2, v3

    .line 185
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "idx":I
    .restart local v3    # "idx":I
    add-int/lit8 v8, v6, 0x1

    aget v8, v1, v8

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v8, v9

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->y:F

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 187
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "idx":I
    .restart local v7    # "idx":I
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    aput v8, v2, v3

    .line 189
    aget v3, v1, v6

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    rem-float/2addr v3, v8

    div-float/2addr v3, v8

    .line 190
    .local v3, "u":F
    add-int/lit8 v9, v6, 0x1

    aget v9, v1, v9

    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    rem-float/2addr v9, v10

    div-float/2addr v9, v10

    .line 191
    .local v9, "v":F
    aget v10, v1, v6

    int-to-float v11, v5

    mul-float/2addr v11, v8

    cmpl-float v8, v10, v11

    if-nez v8, :cond_1

    const/4 v3, 0x0

    .line 192
    :cond_1
    aget v8, v1, v6

    add-int/lit8 v10, v5, 0x1

    int-to-float v10, v10

    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    mul-float/2addr v10, v11

    cmpl-float v8, v8, v10

    if-nez v8, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 193
    :cond_2
    add-int/lit8 v8, v6, 0x1

    aget v8, v1, v8

    int-to-float v10, v4

    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    mul-float/2addr v10, v11

    cmpl-float v8, v8, v10

    if-nez v8, :cond_3

    const/4 v9, 0x0

    .line 194
    :cond_3
    add-int/lit8 v8, v6, 0x1

    aget v8, v1, v8

    add-int/lit8 v10, v4, 0x1

    int-to-float v10, v10

    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    mul-float/2addr v10, v11

    cmpl-float v8, v8, v10

    if-nez v8, :cond_4

    const/high16 v9, 0x3f800000    # 1.0f

    .line 195
    :cond_4
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v8

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v10

    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, v3

    add-float/2addr v8, v10

    .line 196
    .end local v3    # "u":F
    .local v8, "u":F
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v10

    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, v9

    add-float/2addr v3, v10

    .line 197
    .end local v9    # "v":F
    .local v3, "v":F
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "idx":I
    .local v9, "idx":I
    aput v8, v2, v7

    .line 198
    add-int/lit8 v7, v9, 0x1

    .end local v9    # "idx":I
    .restart local v7    # "idx":I
    aput v3, v2, v9

    .line 183
    .end local v3    # "v":F
    .end local v8    # "u":F
    add-int/lit8 v6, v6, 0x2

    move v3, v7

    goto/16 :goto_1

    .line 200
    .end local v6    # "j":I
    .end local v7    # "idx":I
    .local v3, "idx":I
    :cond_5
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->vertices:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 173
    .end local v1    # "verts":[F
    .end local v2    # "fullVerts":[F
    .end local v3    # "idx":I
    .end local v4    # "row":I
    .end local v5    # "col":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 202
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->dirty:Z

    .line 203
    return-void
.end method

.method private offset([F)[F
    .locals 4
    .param p1, "vertices"    # [F

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aget v3, p1, v0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    aget v3, p1, v0

    iput v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    iput v3, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 152
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 160
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 161
    aget v1, p1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    aput v1, p1, v0

    .line 162
    add-int/lit8 v1, v0, 0x1

    aget v2, p1, v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    aput v2, p1, v1

    .line 160
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 165
    .end local v0    # "i":I
    :cond_3
    return-object p1
.end method

.method private snapToGrid([F)[F
    .locals 7
    .param p1, "vertices"    # [F

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 131
    aget v1, p1, v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    rem-float/2addr v1, v2

    .line 132
    .local v1, "numX":F
    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    div-float/2addr v3, v4

    rem-float/2addr v3, v2

    .line 133
    .local v3, "numY":F
    const v2, 0x3f7d70a4    # 0.99f

    cmpl-float v4, v1, v2

    const v5, 0x3c23d70a    # 0.01f

    if-gtz v4, :cond_0

    cmpg-float v4, v1, v5

    if-gez v4, :cond_1

    .line 134
    :cond_0
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    aget v6, p1, v0

    div-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    aput v4, p1, v0

    .line 136
    :cond_1
    cmpl-float v2, v3, v2

    if-gtz v2, :cond_2

    cmpg-float v2, v3, v5

    if-gez v2, :cond_3

    .line 137
    :cond_2
    add-int/lit8 v2, v0, 0x1

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    add-int/lit8 v5, v0, 0x1

    aget v5, p1, v5

    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    aput v4, p1, v2

    .line 130
    .end local v1    # "numX":F
    .end local v3    # "numY":F
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 141
    .end local v0    # "i":I
    :cond_4
    return-object p1
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;)V
    .locals 10
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    .line 206
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->dirty:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->buildVertices()V

    .line 209
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->vertices:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->vertices:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [F

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->vertices:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    array-length v6, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->indices:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [S

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->indices:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    array-length v9, v1

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII[SII)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 218
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->dirty:Z

    .line 220
    return-void
.end method

.method public setPolygon(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[F)V
    .locals 1
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "vertices"    # [F

    .line 59
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->setPolygon(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[FF)V

    .line 60
    return-void
.end method

.method public setPolygon(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[FF)V
    .locals 16
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "vertices"    # [F
    .param p3, "density"    # F

    .line 70
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 72
    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset([F)[F

    move-result-object v2

    .line 74
    .end local p2    # "vertices":[F
    .local v2, "vertices":[F
    new-instance v3, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/math/Polygon;-><init>([F)V

    .line 75
    .local v3, "polygon":Lcom/badlogic/gdx/math/Polygon;
    new-instance v4, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v4}, Lcom/badlogic/gdx/math/Polygon;-><init>()V

    .line 76
    .local v4, "tmpPoly":Lcom/badlogic/gdx/math/Polygon;
    new-instance v5, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/Polygon;-><init>()V

    .line 77
    .local v5, "intersectionPoly":Lcom/badlogic/gdx/math/Polygon;
    new-instance v6, Lcom/badlogic/gdx/math/EarClippingTriangulator;

    invoke-direct {v6}, Lcom/badlogic/gdx/math/EarClippingTriangulator;-><init>()V

    .line 81
    .local v6, "triangulator":Lcom/badlogic/gdx/math/EarClippingTriangulator;
    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Polygon;->getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v7

    .line 83
    .local v7, "boundRect":Lcom/badlogic/gdx/math/Rectangle;
    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v8, p3, v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Lcom/badlogic/gdx/math/Rectangle;->getWidth()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .end local p3    # "density":F
    .local v8, "density":F
    goto :goto_0

    .end local v8    # "density":F
    .restart local p3    # "density":F
    :cond_0
    move/from16 v8, p3

    .line 85
    .end local p3    # "density":F
    .restart local v8    # "density":F
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 86
    .local v9, "regionAspectRatio":F
    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->cols:I

    .line 87
    invoke-virtual {v7}, Lcom/badlogic/gdx/math/Rectangle;->getWidth()F

    move-result v10

    div-float/2addr v10, v8

    iput v10, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    .line 88
    mul-float/2addr v10, v9

    iput v10, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    .line 89
    invoke-virtual {v7}, Lcom/badlogic/gdx/math/Rectangle;->getHeight()F

    move-result v10

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->rows:I

    .line 91
    const/4 v10, 0x0

    .local v10, "col":I
    :goto_1
    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->cols:I

    if-ge v10, v11, :cond_3

    .line 92
    const/4 v11, 0x0

    .local v11, "row":I
    :goto_2
    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->rows:I

    if-ge v11, v12, :cond_2

    .line 93
    const/16 v12, 0x8

    new-array v12, v12, [F

    .line 94
    .local v12, "verts":[F
    const/4 v13, 0x0

    .line 95
    .local v13, "idx":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "idx":I
    .local v14, "idx":I
    int-to-float v15, v10

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    mul-float/2addr v15, v1

    aput v15, v12, v13

    .line 96
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "idx":I
    .restart local v13    # "idx":I
    int-to-float v15, v11

    move-object/from16 p2, v2

    .end local v2    # "vertices":[F
    .restart local p2    # "vertices":[F
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    mul-float/2addr v15, v2

    aput v15, v12, v14

    .line 97
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "idx":I
    .restart local v14    # "idx":I
    int-to-float v15, v10

    mul-float/2addr v15, v1

    aput v15, v12, v13

    .line 98
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "idx":I
    .restart local v13    # "idx":I
    add-int/lit8 v15, v11, 0x1

    int-to-float v15, v15

    mul-float/2addr v15, v2

    aput v15, v12, v14

    .line 99
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "idx":I
    .restart local v14    # "idx":I
    add-int/lit8 v15, v10, 0x1

    int-to-float v15, v15

    mul-float/2addr v15, v1

    aput v15, v12, v13

    .line 100
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "idx":I
    .restart local v13    # "idx":I
    add-int/lit8 v15, v11, 0x1

    int-to-float v15, v15

    mul-float/2addr v15, v2

    aput v15, v12, v14

    .line 101
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "idx":I
    .restart local v14    # "idx":I
    add-int/lit8 v15, v10, 0x1

    int-to-float v15, v15

    mul-float/2addr v15, v1

    aput v15, v12, v13

    .line 102
    int-to-float v1, v11

    mul-float/2addr v1, v2

    aput v1, v12, v14

    .line 103
    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/math/Polygon;->setVertices([F)V

    .line 105
    invoke-static {v3, v4, v5}, Lcom/badlogic/gdx/math/Intersector;->intersectPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;)Z

    .line 106
    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v1

    .line 107
    .end local v12    # "verts":[F
    .local v1, "verts":[F
    array-length v2, v1

    if-lez v2, :cond_1

    .line 108
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->snapToGrid([F)[F

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeTriangles([F)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v2

    .line 110
    .local v2, "arr":Lcom/badlogic/gdx/utils/ShortArray;
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->indices:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ShortArray;->toArray()[S

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 111
    .end local v2    # "arr":Lcom/badlogic/gdx/utils/ShortArray;
    goto :goto_3

    .line 114
    :cond_1
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->parts:Lcom/badlogic/gdx/utils/Array;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 92
    .end local v1    # "verts":[F
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_2

    .end local v14    # "idx":I
    .end local p2    # "vertices":[F
    .local v2, "vertices":[F
    :cond_2
    move-object/from16 p2, v2

    .line 91
    .end local v2    # "vertices":[F
    .end local v11    # "row":I
    .restart local p2    # "vertices":[F
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_1

    .line 119
    .end local v10    # "col":I
    .end local p2    # "vertices":[F
    .restart local v2    # "vertices":[F
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->buildVertices()V

    .line 120
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 223
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->x:F

    .line 224
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->y:F

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->dirty:Z

    .line 226
    return-void
.end method
