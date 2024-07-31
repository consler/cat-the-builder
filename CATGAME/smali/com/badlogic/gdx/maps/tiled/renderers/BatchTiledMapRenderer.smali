.class public abstract Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.super Ljava/lang/Object;
.source "BatchTiledMapRenderer.java"

# interfaces
.implements Lcom/badlogic/gdx/maps/tiled/TiledMapRenderer;
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field protected static final NUM_VERTICES:I = 0x14


# instance fields
.field protected batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

.field protected imageBounds:Lcom/badlogic/gdx/math/Rectangle;

.field protected map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

.field protected ownsBatch:Z

.field protected unitScale:F

.field protected vertices:[F

.field protected viewBounds:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 97
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 74
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->vertices:[F

    .line 101
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 102
    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    .line 103
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 104
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->ownsBatch:Z

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F
    .param p3, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 74
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->vertices:[F

    .line 113
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 114
    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    .line 115
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 116
    iput-object p3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->ownsBatch:Z

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 109
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 110
    return-void
.end method


# virtual methods
.method protected beginRender()V
    .locals 1

    .line 248
    invoke-static {}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->updateAnimationBaseTime()V

    .line 249
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    .line 250
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->ownsBatch:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->dispose()V

    .line 262
    :cond_0
    return-void
.end method

.method protected endRender()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    .line 255
    return-void
.end method

.method public getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    return-object v0
.end method

.method public getMap()Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    return-object v0
.end method

.method public getUnitScale()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    return v0
.end method

.method public getViewBounds()Lcom/badlogic/gdx/math/Rectangle;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public render()V
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->beginRender()V

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapLayers;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/maps/MapLayer;

    .line 140
    .local v1, "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderMapLayer(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 141
    .end local v1    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->endRender()V

    .line 143
    return-void
.end method

.method public render([I)V
    .locals 4
    .param p1, "layers"    # [I

    .line 147
    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->beginRender()V

    .line 148
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 149
    .local v2, "layerIdx":I
    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object v3

    .line 150
    .local v3, "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderMapLayer(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 148
    .end local v2    # "layerIdx":I
    .end local v3    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->endRender()V

    .line 153
    return-void
.end method

.method public renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V
    .locals 19
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 190
    .local v1, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getOpacity()F

    move-result v6

    mul-float/2addr v5, v6

    .line 190
    invoke-static {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v2

    .line 195
    .local v2, "color":F
    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->vertices:[F

    .line 197
    .local v3, "vertices":[F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    .line 199
    .local v4, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-nez v4, :cond_0

    .line 200
    return-void

    .line 203
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getX()F

    move-result v5

    .line 204
    .local v5, "x":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getY()F

    move-result v6

    .line 205
    .local v6, "y":F
    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    mul-float v8, v5, v7

    .line 206
    .local v8, "x1":F
    mul-float/2addr v7, v6

    .line 207
    .local v7, "y1":F
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v8

    .line 208
    .local v9, "x2":F
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v7

    .line 210
    .local v10, "y2":F
    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v12, v9, v8

    sub-float v13, v10, v7

    invoke-virtual {v11, v8, v7, v12, v13}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 212
    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/math/Rectangle;->contains(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v17, v1

    move/from16 v18, v2

    goto :goto_1

    .line 213
    :cond_2
    :goto_0
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v11

    .line 214
    .local v11, "u1":F
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v12

    .line 215
    .local v12, "v1":F
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v13

    .line 216
    .local v13, "u2":F
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v14

    .line 218
    .local v14, "v2":F
    const/4 v15, 0x0

    aput v8, v3, v15

    .line 219
    const/16 v16, 0x1

    aput v7, v3, v16

    .line 220
    const/16 v16, 0x2

    aput v2, v3, v16

    .line 221
    const/16 v16, 0x3

    aput v11, v3, v16

    .line 222
    const/16 v16, 0x4

    aput v12, v3, v16

    .line 224
    const/16 v16, 0x5

    aput v8, v3, v16

    .line 225
    const/16 v16, 0x6

    aput v10, v3, v16

    .line 226
    const/16 v16, 0x7

    aput v2, v3, v16

    .line 227
    const/16 v16, 0x8

    aput v11, v3, v16

    .line 228
    const/16 v16, 0x9

    aput v14, v3, v16

    .line 230
    const/16 v16, 0xa

    aput v9, v3, v16

    .line 231
    const/16 v16, 0xb

    aput v10, v3, v16

    .line 232
    const/16 v16, 0xc

    aput v2, v3, v16

    .line 233
    const/16 v16, 0xd

    aput v13, v3, v16

    .line 234
    const/16 v16, 0xe

    aput v14, v3, v16

    .line 236
    const/16 v16, 0xf

    aput v9, v3, v16

    .line 237
    const/16 v16, 0x10

    aput v7, v3, v16

    .line 238
    const/16 v16, 0x11

    aput v2, v3, v16

    .line 239
    const/16 v16, 0x12

    aput v13, v3, v16

    .line 240
    const/16 v16, 0x13

    aput v12, v3, v16

    .line 242
    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    move-object/from16 v17, v1

    .end local v1    # "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .local v17, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    const/16 v1, 0x14

    move/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "color":F
    .local v18, "color":F
    invoke-interface {v15, v0, v3, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 244
    .end local v11    # "u1":F
    .end local v12    # "v1":F
    .end local v13    # "u2":F
    .end local v14    # "v2":F
    :goto_1
    return-void
.end method

.method protected renderMapLayer(Lcom/badlogic/gdx/maps/MapLayer;)V
    .locals 4
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/MapLayer;

    .line 156
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/MapLayer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    instance-of v0, p1, Lcom/badlogic/gdx/maps/MapGroupLayer;

    if-eqz v0, :cond_3

    .line 158
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/maps/MapGroupLayer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapGroupLayer;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v0

    .line 159
    .local v0, "childLayers":Lcom/badlogic/gdx/maps/MapLayers;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapLayers;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 160
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object v2

    .line 161
    .local v2, "childLayer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/MapLayer;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 162
    :cond_1
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderMapLayer(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 159
    .end local v2    # "childLayer":Lcom/badlogic/gdx/maps/MapLayer;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "childLayers":Lcom/badlogic/gdx/maps/MapLayers;
    .end local v1    # "i":I
    :cond_2
    goto :goto_2

    .line 165
    :cond_3
    instance-of v0, p1, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    if-eqz v0, :cond_4

    .line 166
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V

    goto :goto_2

    .line 167
    :cond_4
    instance-of v0, p1, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    if-eqz v0, :cond_5

    .line 168
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V

    goto :goto_2

    .line 170
    :cond_5
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 173
    :goto_2
    return-void
.end method

.method public renderObject(Lcom/badlogic/gdx/maps/MapObject;)V
    .locals 0
    .param p1, "object"    # Lcom/badlogic/gdx/maps/MapObject;

    .line 185
    return-void
.end method

.method public renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V
    .locals 2
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/MapLayer;

    .line 177
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/MapLayer;->getObjects()Lcom/badlogic/gdx/maps/MapObjects;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapObjects;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/maps/MapObject;

    .line 178
    .local v1, "object":Lcom/badlogic/gdx/maps/MapObject;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderObject(Lcom/badlogic/gdx/maps/MapObject;)V

    .line 179
    .end local v1    # "object":Lcom/badlogic/gdx/maps/MapObject;
    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method public setMap(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 81
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 82
    return-void
.end method

.method public setView(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V
    .locals 8
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 123
    iget v0, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float/2addr v0, v1

    .line 124
    .local v0, "width":F
    iget v1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float/2addr v1, v2

    .line 125
    .local v1, "height":F
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->up:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v0

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->up:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    .line 126
    .local v2, "w":F
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->up:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v1

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->up:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    .line 127
    .local v3, "h":F
    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v2, v6

    sub-float/2addr v5, v7

    iget-object v7, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v6, v3, v6

    sub-float/2addr v7, v6

    invoke-virtual {v4, v5, v7, v2, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 128
    return-void
.end method

.method public setView(Lcom/badlogic/gdx/math/Matrix4;FFFF)V
    .locals 1
    .param p1, "projection"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 134
    return-void
.end method
