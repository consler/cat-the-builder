.class public Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;
.super Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.source "HexagonalTiledMapRenderer.java"


# instance fields
.field private hexSideLength:F

.field private staggerAxisX:Z

.field private staggerIndexEven:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 42
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->staggerAxisX:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->staggerIndexEven:Z

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->hexSideLength:F

    .line 43
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->init(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->staggerAxisX:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->staggerIndexEven:Z

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->hexSideLength:F

    .line 48
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->init(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F
    .param p3, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->staggerAxisX:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->staggerIndexEven:Z

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->hexSideLength:F

    .line 58
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->init(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->staggerAxisX:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->staggerIndexEven:Z

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->hexSideLength:F

    .line 53
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->init(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    .line 54
    return-void
.end method

.method private init(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 8
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 62
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const-string v2, "staggeraxis"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    .local v0, "axis":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 64
    const-string/jumbo v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    iput-boolean v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->staggerAxisX:Z

    goto :goto_0

    .line 67
    :cond_0
    iput-boolean v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->staggerAxisX:Z

    .line 71
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    const-string v5, "staggerindex"

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 72
    .local v3, "index":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 73
    const-string v4, "even"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    iput-boolean v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->staggerIndexEven:Z

    goto :goto_1

    .line 76
    :cond_2
    iput-boolean v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->staggerIndexEven:Z

    .line 80
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v1

    const-class v4, Ljava/lang/Integer;

    const-string v5, "hexsidelength"

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 81
    .local v1, "length":Ljava/lang/Integer;
    if-eqz v1, :cond_4

    .line 82
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->hexSideLength:F

    goto :goto_2

    .line 84
    :cond_4
    iget-boolean v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->staggerAxisX:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_6

    .line 85
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v4

    const-class v6, Ljava/lang/Integer;

    const-string/jumbo v7, "tilewidth"

    invoke-virtual {v4, v7, v6}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/lang/Integer;

    .line 86
    if-eqz v1, :cond_5

    .line 87
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    iput v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->hexSideLength:F

    goto :goto_2

    .line 89
    :cond_5
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    .line 90
    .local v2, "tmtl":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;
    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()F

    move-result v4

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->hexSideLength:F

    .line 91
    .end local v2    # "tmtl":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;
    goto :goto_2

    .line 93
    :cond_6
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v4

    const-class v6, Ljava/lang/Integer;

    const-string/jumbo v7, "tileheight"

    invoke-virtual {v4, v7, v6}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/lang/Integer;

    .line 94
    if-eqz v1, :cond_7

    .line 95
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    iput v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->hexSideLength:F

    goto :goto_2

    .line 97
    :cond_7
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    .line 98
    .restart local v2    # "tmtl":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;
    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()F

    move-result v4

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->hexSideLength:F

    .line 102
    .end local v2    # "tmtl":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;
    :goto_2
    return-void
.end method

.method private renderCell(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;FFF)V
    .locals 26
    .param p1, "cell"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "color"    # F

    .line 178
    move-object/from16 v0, p0

    if-eqz p1, :cond_5

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v1

    .line 180
    .local v1, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    if-eqz v1, :cond_4

    .line 181
    instance-of v2, v1, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    if-eqz v2, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipHorizontally()Z

    move-result v2

    .line 184
    .local v2, "flipX":Z
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipVertically()Z

    move-result v3

    .line 185
    .local v3, "flipY":Z
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getRotation()I

    move-result v4

    .line 187
    .local v4, "rotations":I
    invoke-interface {v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    .line 189
    .local v5, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-interface {v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v6

    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v6, v7

    add-float v6, p2, v6

    .line 190
    .local v6, "x1":F
    invoke-interface {v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v7

    iget v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v7, v8

    add-float v7, p3, v7

    .line 191
    .local v7, "y1":F
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v6

    .line 192
    .local v8, "x2":F
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v7

    .line 194
    .local v9, "y2":F
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v10

    .line 195
    .local v10, "u1":F
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v11

    .line 196
    .local v11, "v1":F
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v12

    .line 197
    .local v12, "u2":F
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v13

    .line 199
    .local v13, "v2":F
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/4 v15, 0x0

    aput v6, v14, v15

    .line 200
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v16, 0x1

    aput v7, v14, v16

    .line 201
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/4 v15, 0x2

    aput p4, v14, v15

    .line 202
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v17, 0x3

    aput v10, v14, v17

    .line 203
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v18, 0x4

    aput v11, v14, v18

    .line 205
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v19, 0x5

    aput v6, v14, v19

    .line 206
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v19, 0x6

    aput v9, v14, v19

    .line 207
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v19, 0x7

    aput p4, v14, v19

    .line 208
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v19, 0x8

    aput v10, v14, v19

    .line 209
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v20, 0x9

    aput v13, v14, v20

    .line 211
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v21, 0xa

    aput v8, v14, v21

    .line 212
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v21, 0xb

    aput v9, v14, v21

    .line 213
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v21, 0xc

    aput p4, v14, v21

    .line 214
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v21, 0xd

    aput v12, v14, v21

    .line 215
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v22, 0xe

    aput v13, v14, v22

    .line 217
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v23, 0xf

    aput v8, v14, v23

    .line 218
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v23, 0x10

    aput v7, v14, v23

    .line 219
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v23, 0x11

    aput p4, v14, v23

    .line 220
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v23, 0x12

    aput v12, v14, v23

    .line 221
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v24, 0x13

    aput v11, v14, v24

    .line 223
    if-eqz v2, :cond_1

    .line 224
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aget v14, v14, v17

    .line 225
    .local v14, "temp":F
    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    move-object/from16 v25, v1

    .end local v1    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .local v25, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aget v1, v1, v21

    aput v1, v15, v17

    .line 226
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aput v14, v1, v21

    .line 227
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aget v1, v1, v19

    .line 228
    .end local v14    # "temp":F
    .local v1, "temp":F
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aget v15, v15, v23

    aput v15, v14, v19

    .line 229
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aput v1, v14, v23

    goto :goto_0

    .line 223
    .end local v25    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .local v1, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    :cond_1
    move-object/from16 v25, v1

    .line 231
    .end local v1    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .restart local v25    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    :goto_0
    if-eqz v3, :cond_2

    .line 232
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aget v1, v1, v18

    .line 233
    .local v1, "temp":F
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aget v15, v15, v22

    aput v15, v14, v18

    .line 234
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aput v1, v14, v22

    .line 235
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aget v1, v14, v20

    .line 236
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aget v15, v15, v24

    aput v15, v14, v20

    .line 237
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aput v1, v14, v24

    .line 239
    .end local v1    # "temp":F
    :cond_2
    const/4 v1, 0x2

    if-ne v4, v1, :cond_3

    .line 240
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aget v1, v1, v17

    .line 241
    .local v1, "tempU":F
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aget v15, v15, v21

    aput v15, v14, v17

    .line 242
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aput v1, v14, v21

    .line 243
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aget v1, v14, v19

    .line 244
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aget v15, v15, v23

    aput v15, v14, v19

    .line 245
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aput v1, v14, v23

    .line 246
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aget v14, v14, v18

    .line 247
    .local v14, "tempV":F
    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    move/from16 v17, v1

    .end local v1    # "tempU":F
    .local v17, "tempU":F
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aget v1, v1, v22

    aput v1, v15, v18

    .line 248
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aput v14, v1, v22

    .line 249
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aget v1, v1, v20

    .line 250
    .end local v14    # "tempV":F
    .local v1, "tempV":F
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aget v15, v15, v24

    aput v15, v14, v20

    .line 251
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    aput v1, v14, v24

    .line 253
    .end local v1    # "tempV":F
    .end local v17    # "tempU":F
    :cond_3
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v14

    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    const/16 v0, 0x14

    move/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "flipX":Z
    .local v17, "flipX":Z
    invoke-interface {v1, v14, v15, v2, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_1

    .line 180
    .end local v3    # "flipY":Z
    .end local v4    # "rotations":I
    .end local v5    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v6    # "x1":F
    .end local v7    # "y1":F
    .end local v8    # "x2":F
    .end local v9    # "y2":F
    .end local v10    # "u1":F
    .end local v11    # "v1":F
    .end local v12    # "u2":F
    .end local v13    # "v2":F
    .end local v17    # "flipX":Z
    .end local v25    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .local v1, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    :cond_4
    move-object/from16 v25, v1

    .line 256
    .end local v1    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V
    .locals 27
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    .line 106
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    .line 107
    .local v2, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    iget v3, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v4, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v5, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v6, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getOpacity()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v3

    .line 109
    .local v3, "color":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getWidth()I

    move-result v4

    .line 110
    .local v4, "layerWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getHeight()I

    move-result v5

    .line 112
    .local v5, "layerHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()F

    move-result v6

    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v6, v7

    .line 113
    .local v6, "layerTileWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()F

    move-result v7

    iget v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v7, v8

    .line 115
    .local v7, "layerTileHeight":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getRenderOffsetX()F

    move-result v8

    iget v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v8, v9

    .line 117
    .local v8, "layerOffsetX":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getRenderOffsetY()F

    move-result v9

    neg-float v9, v9

    iget v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v9, v10

    .line 119
    .local v9, "layerOffsetY":F
    iget v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->hexSideLength:F

    iget v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v10, v11

    .line 121
    .local v10, "layerHexLength":F
    iget-boolean v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->staggerAxisX:Z

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v14, 0x0

    if-eqz v11, :cond_7

    .line 122
    sub-float v11, v6, v10

    div-float/2addr v11, v13

    .line 123
    .local v11, "tileWidthLowerCorner":F
    add-float v16, v6, v10

    div-float v16, v16, v13

    .line 124
    .local v16, "tileWidthUpperCorner":F
    mul-float/2addr v12, v7

    .line 126
    .local v12, "layerTileHeight50":F
    iget-object v13, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v13, v13, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v13, v12

    sub-float/2addr v13, v8

    div-float/2addr v13, v7

    float-to-int v13, v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 127
    .local v13, "row1":I
    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v15, v15, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v14, v14, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v15, v14

    add-float/2addr v15, v7

    sub-float/2addr v15, v8

    div-float/2addr v15, v7

    float-to-int v14, v15

    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 130
    .local v14, "row2":I
    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v15, v15, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v15, v11

    sub-float/2addr v15, v9

    div-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .local v18, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 131
    .local v15, "col1":I
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    move/from16 v19, v11

    .end local v11    # "tileWidthLowerCorner":F
    .local v19, "tileWidthLowerCorner":F
    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v2, v11

    add-float v2, v2, v16

    sub-float/2addr v2, v9

    div-float v2, v2, v16

    float-to-int v2, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 135
    .local v2, "col2":I
    iget-boolean v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->staggerIndexEven:Z

    rem-int/lit8 v20, v15, 0x2

    if-nez v20, :cond_0

    move/from16 v20, v4

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move/from16 v20, v4

    const/4 v4, 0x0

    .end local v4    # "layerWidth":I
    .local v20, "layerWidth":I
    :goto_0
    if-ne v11, v4, :cond_1

    add-int/lit8 v4, v15, 0x1

    goto :goto_1

    :cond_1
    move v4, v15

    .line 136
    .local v4, "colA":I
    :goto_1
    iget-boolean v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->staggerIndexEven:Z

    rem-int/lit8 v21, v15, 0x2

    if-nez v21, :cond_2

    move/from16 v21, v5

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    move/from16 v21, v5

    const/4 v5, 0x0

    .end local v5    # "layerHeight":I
    .local v21, "layerHeight":I
    :goto_2
    if-ne v11, v5, :cond_3

    move v5, v15

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v15, 0x1

    .line 138
    .local v5, "colB":I
    :goto_3
    add-int/lit8 v11, v14, -0x1

    .local v11, "row":I
    :goto_4
    if-lt v11, v13, :cond_6

    .line 139
    move/from16 v17, v4

    move/from16 v22, v4

    .local v4, "col":I
    .local v22, "colA":I
    :goto_5
    if-ge v4, v2, :cond_4

    .line 140
    move/from16 v23, v13

    .end local v13    # "row1":I
    .local v23, "row1":I
    invoke-virtual {v1, v4, v11}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v13

    move/from16 v24, v14

    .end local v14    # "row2":I
    .local v24, "row2":I
    int-to-float v14, v4

    mul-float v14, v14, v16

    add-float/2addr v14, v8

    move/from16 v25, v15

    .end local v15    # "col1":I
    .local v25, "col1":I
    int-to-float v15, v11

    mul-float/2addr v15, v7

    add-float/2addr v15, v12

    add-float/2addr v15, v9

    invoke-direct {v0, v13, v14, v15, v3}, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->renderCell(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;FFF)V

    .line 139
    add-int/lit8 v4, v4, 0x2

    move/from16 v13, v23

    move/from16 v14, v24

    move/from16 v15, v25

    goto :goto_5

    .end local v23    # "row1":I
    .end local v24    # "row2":I
    .end local v25    # "col1":I
    .restart local v13    # "row1":I
    .restart local v14    # "row2":I
    .restart local v15    # "col1":I
    :cond_4
    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    .line 143
    .end local v4    # "col":I
    .end local v13    # "row1":I
    .end local v14    # "row2":I
    .end local v15    # "col1":I
    .restart local v23    # "row1":I
    .restart local v24    # "row2":I
    .restart local v25    # "col1":I
    move v4, v5

    .restart local v4    # "col":I
    :goto_6
    if-ge v4, v2, :cond_5

    .line 144
    invoke-virtual {v1, v4, v11}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v13

    int-to-float v14, v4

    mul-float v14, v14, v16

    add-float/2addr v14, v8

    int-to-float v15, v11

    mul-float/2addr v15, v7

    add-float/2addr v15, v9

    invoke-direct {v0, v13, v14, v15, v3}, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->renderCell(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;FFF)V

    .line 143
    add-int/lit8 v4, v4, 0x2

    goto :goto_6

    .line 138
    .end local v4    # "col":I
    :cond_5
    add-int/lit8 v11, v11, -0x1

    move/from16 v4, v22

    move/from16 v13, v23

    move/from16 v14, v24

    move/from16 v15, v25

    goto :goto_4

    .end local v22    # "colA":I
    .end local v23    # "row1":I
    .end local v24    # "row2":I
    .end local v25    # "col1":I
    .local v4, "colA":I
    .restart local v13    # "row1":I
    .restart local v14    # "row2":I
    .restart local v15    # "col1":I
    :cond_6
    move/from16 v22, v4

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    .line 148
    .end local v2    # "col2":I
    .end local v4    # "colA":I
    .end local v5    # "colB":I
    .end local v11    # "row":I
    .end local v12    # "layerTileHeight50":F
    .end local v13    # "row1":I
    .end local v14    # "row2":I
    .end local v15    # "col1":I
    .end local v16    # "tileWidthUpperCorner":F
    .end local v19    # "tileWidthLowerCorner":F
    move/from16 v22, v10

    move/from16 v15, v20

    move/from16 v13, v21

    move/from16 v20, v7

    goto/16 :goto_b

    .line 149
    .end local v18    # "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v20    # "layerWidth":I
    .end local v21    # "layerHeight":I
    .local v2, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .local v4, "layerWidth":I
    .local v5, "layerHeight":I
    :cond_7
    move-object/from16 v18, v2

    move/from16 v20, v4

    move/from16 v21, v5

    .end local v2    # "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v4    # "layerWidth":I
    .end local v5    # "layerHeight":I
    .restart local v18    # "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v20    # "layerWidth":I
    .restart local v21    # "layerHeight":I
    sub-float v2, v7, v10

    div-float/2addr v2, v13

    .line 150
    .local v2, "tileHeightLowerCorner":F
    add-float v4, v7, v10

    div-float/2addr v4, v13

    .line 151
    .local v4, "tileHeightUpperCorner":F
    mul-float/2addr v12, v6

    .line 153
    .local v12, "layerTileWidth50":F
    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v5, v2

    sub-float/2addr v5, v8

    div-float/2addr v5, v4

    float-to-int v5, v5

    const/4 v11, 0x0

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 154
    .local v5, "row1":I
    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v13, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v13, v13, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v11, v13

    add-float/2addr v11, v4

    sub-float/2addr v11, v8

    div-float/2addr v11, v4

    float-to-int v11, v11

    move/from16 v13, v21

    .end local v21    # "layerHeight":I
    .local v13, "layerHeight":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 157
    .local v11, "row2":I
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v14, v14, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v14, v12

    sub-float/2addr v14, v9

    div-float/2addr v14, v6

    float-to-int v14, v14

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 158
    .local v14, "col1":I
    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v15, v15, Lcom/badlogic/gdx/math/Rectangle;->x:F

    move/from16 v16, v2

    .end local v2    # "tileHeightLowerCorner":F
    .local v16, "tileHeightLowerCorner":F
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v15, v2

    add-float/2addr v15, v6

    sub-float/2addr v15, v9

    div-float/2addr v15, v6

    float-to-int v2, v15

    move/from16 v15, v20

    .end local v20    # "layerWidth":I
    .local v15, "layerWidth":I
    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 161
    .local v2, "col2":I
    const/16 v19, 0x0

    .line 162
    .local v19, "shiftX":F
    add-int/lit8 v20, v11, -0x1

    move/from16 v26, v20

    move/from16 v20, v7

    move/from16 v7, v26

    .local v7, "row":I
    .local v20, "layerTileHeight":F
    :goto_7
    if-lt v7, v5, :cond_b

    .line 164
    rem-int/lit8 v21, v7, 0x2

    if-nez v21, :cond_8

    move/from16 v21, v5

    const/4 v5, 0x1

    goto :goto_8

    :cond_8
    move/from16 v21, v5

    const/4 v5, 0x0

    .end local v5    # "row1":I
    .local v21, "row1":I
    :goto_8
    move/from16 v22, v10

    .end local v10    # "layerHexLength":F
    .local v22, "layerHexLength":F
    iget-boolean v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->staggerIndexEven:Z

    if-ne v5, v10, :cond_9

    .line 165
    move v5, v12

    move/from16 v19, v5

    .end local v19    # "shiftX":F
    .local v5, "shiftX":F
    goto :goto_9

    .line 167
    .end local v5    # "shiftX":F
    .restart local v19    # "shiftX":F
    :cond_9
    const/4 v5, 0x0

    move/from16 v19, v5

    .line 168
    :goto_9
    move v5, v14

    .local v5, "col":I
    :goto_a
    if-ge v5, v2, :cond_a

    .line 169
    invoke-virtual {v1, v5, v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v10

    int-to-float v1, v5

    mul-float/2addr v1, v6

    add-float v1, v1, v19

    add-float/2addr v1, v8

    move/from16 v23, v2

    .end local v2    # "col2":I
    .local v23, "col2":I
    int-to-float v2, v7

    mul-float/2addr v2, v4

    add-float/2addr v2, v9

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->renderCell(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;FFF)V

    .line 168
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v23

    goto :goto_a

    .end local v23    # "col2":I
    .restart local v2    # "col2":I
    :cond_a
    move/from16 v23, v2

    .line 162
    .end local v2    # "col2":I
    .end local v5    # "col":I
    .restart local v23    # "col2":I
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v1, p1

    move/from16 v5, v21

    move/from16 v10, v22

    goto :goto_7

    .end local v21    # "row1":I
    .end local v22    # "layerHexLength":F
    .end local v23    # "col2":I
    .restart local v2    # "col2":I
    .local v5, "row1":I
    .restart local v10    # "layerHexLength":F
    :cond_b
    move/from16 v23, v2

    move/from16 v21, v5

    move/from16 v22, v10

    .line 174
    .end local v2    # "col2":I
    .end local v4    # "tileHeightUpperCorner":F
    .end local v5    # "row1":I
    .end local v7    # "row":I
    .end local v10    # "layerHexLength":F
    .end local v11    # "row2":I
    .end local v12    # "layerTileWidth50":F
    .end local v14    # "col1":I
    .end local v16    # "tileHeightLowerCorner":F
    .end local v19    # "shiftX":F
    .restart local v22    # "layerHexLength":F
    :goto_b
    return-void
.end method
