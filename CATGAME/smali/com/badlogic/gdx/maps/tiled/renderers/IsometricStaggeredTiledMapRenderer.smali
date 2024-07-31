.class public Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;
.super Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.source "IsometricStaggeredTiledMapRenderer.java"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 32
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F
    .param p3, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 37
    return-void
.end method


# virtual methods
.method public renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V
    .locals 46
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    .line 49
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 50
    .local v1, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getOpacity()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v2

    .line 52
    .local v2, "color":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getWidth()I

    move-result v3

    .line 53
    .local v3, "layerWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getHeight()I

    move-result v4

    .line 55
    .local v4, "layerHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getRenderOffsetX()F

    move-result v5

    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    mul-float/2addr v5, v6

    .line 57
    .local v5, "layerOffsetX":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getRenderOffsetY()F

    move-result v6

    neg-float v6, v6

    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    mul-float/2addr v6, v7

    .line 59
    .local v6, "layerOffsetY":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()F

    move-result v7

    iget v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    mul-float/2addr v7, v8

    .line 60
    .local v7, "layerTileWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()F

    move-result v8

    iget v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    mul-float/2addr v8, v9

    .line 62
    .local v8, "layerTileHeight":F
    const/high16 v9, 0x3f000000    # 0.5f

    mul-float v10, v7, v9

    .line 63
    .local v10, "layerTileWidth50":F
    mul-float/2addr v9, v8

    .line 65
    .local v9, "layerTileHeight50":F
    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v11, v10

    sub-float/2addr v11, v5

    div-float/2addr v11, v7

    float-to-int v11, v11

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 66
    .local v11, "minX":I
    iget-object v13, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v13, v13, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v14, v14, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v13, v14

    add-float/2addr v13, v7

    add-float/2addr v13, v10

    sub-float/2addr v13, v5

    div-float/2addr v13, v7

    float-to-int v13, v13

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 69
    .local v13, "maxX":I
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v14, v14, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v14, v8

    sub-float/2addr v14, v6

    div-float/2addr v14, v8

    float-to-int v14, v14

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 70
    .local v14, "minY":I
    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v15, v15, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v15, v12

    add-float/2addr v15, v8

    sub-float/2addr v15, v6

    div-float/2addr v15, v9

    float-to-int v12, v15

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 73
    .local v12, "maxY":I
    add-int/lit8 v15, v12, -0x1

    .local v15, "y":I
    :goto_0
    if-lt v15, v14, :cond_a

    .line 74
    move-object/from16 v17, v1

    .end local v1    # "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .local v17, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    rem-int/lit8 v1, v15, 0x2

    move/from16 v18, v3

    .end local v3    # "layerWidth":I
    .local v18, "layerWidth":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v10

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 75
    .local v1, "offsetX":F
    :goto_1
    add-int/lit8 v19, v13, -0x1

    move/from16 v3, v19

    .local v3, "x":I
    :goto_2
    if-lt v3, v11, :cond_9

    .line 76
    move/from16 v19, v4

    move-object/from16 v4, p1

    .end local v4    # "layerHeight":I
    .local v19, "layerHeight":I
    invoke-virtual {v4, v3, v15}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v21

    .line 77
    .local v21, "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    if-nez v21, :cond_1

    move/from16 v28, v1

    move/from16 v36, v2

    move/from16 v29, v5

    move/from16 v27, v6

    move/from16 v30, v7

    move/from16 v26, v8

    move/from16 v34, v9

    move/from16 v35, v10

    const/4 v0, 0x0

    goto/16 :goto_5

    .line 78
    :cond_1
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v22

    .line 80
    .local v22, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    if-eqz v22, :cond_8

    .line 81
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipHorizontally()Z

    move-result v23

    .line 82
    .local v23, "flipX":Z
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipVertically()Z

    move-result v24

    .line 83
    .local v24, "flipY":Z
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getRotation()I

    move-result v4

    .line 84
    .local v4, "rotations":I
    invoke-interface/range {v22 .. v22}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v25

    .line 86
    .local v25, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    move/from16 v26, v8

    .end local v8    # "layerTileHeight":F
    .local v26, "layerTileHeight":F
    int-to-float v8, v3

    mul-float/2addr v8, v7

    sub-float/2addr v8, v1

    invoke-interface/range {v22 .. v22}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v27

    move/from16 v28, v1

    .end local v1    # "offsetX":F
    .local v28, "offsetX":F
    iget v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    mul-float v27, v27, v1

    add-float v8, v8, v27

    add-float/2addr v8, v5

    .line 87
    .local v8, "x1":F
    int-to-float v1, v15

    mul-float/2addr v1, v9

    invoke-interface/range {v22 .. v22}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v27

    move/from16 v29, v5

    .end local v5    # "layerOffsetX":F
    .local v29, "layerOffsetX":F
    iget v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    mul-float v27, v27, v5

    add-float v1, v1, v27

    add-float/2addr v1, v6

    .line 88
    .local v1, "y1":F
    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v5, v5

    move/from16 v27, v6

    .end local v6    # "layerOffsetY":F
    .local v27, "layerOffsetY":F
    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    .line 89
    .local v5, "x2":F
    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v6

    int-to-float v6, v6

    move/from16 v30, v7

    .end local v7    # "layerTileWidth":F
    .local v30, "layerTileWidth":F
    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v1

    .line 91
    .local v6, "y2":F
    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v7

    .line 92
    .local v7, "u1":F
    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v31

    .line 93
    .local v31, "v1":F
    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v32

    .line 94
    .local v32, "u2":F
    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v33

    .line 96
    .local v33, "v2":F
    move/from16 v34, v9

    .end local v9    # "layerTileHeight50":F
    .local v34, "layerTileHeight50":F
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v16, 0x0

    aput v8, v9, v16

    .line 97
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v20, 0x1

    aput v1, v9, v20

    .line 98
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move/from16 v35, v10

    .end local v10    # "layerTileWidth50":F
    .local v35, "layerTileWidth50":F
    const/4 v10, 0x2

    aput v2, v9, v10

    .line 99
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/4 v10, 0x3

    aput v7, v9, v10

    .line 100
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v37, 0x4

    aput v31, v9, v37

    .line 102
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v38, 0x5

    aput v8, v9, v38

    .line 103
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v38, 0x6

    aput v6, v9, v38

    .line 104
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v38, 0x7

    aput v2, v9, v38

    .line 105
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v38, 0x8

    aput v7, v9, v38

    .line 106
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v39, 0x9

    aput v33, v9, v39

    .line 108
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v40, 0xa

    aput v5, v9, v40

    .line 109
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v40, 0xb

    aput v6, v9, v40

    .line 110
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v40, 0xc

    aput v2, v9, v40

    .line 111
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v40, 0xd

    aput v32, v9, v40

    .line 112
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v41, 0xe

    aput v33, v9, v41

    .line 114
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v42, 0xf

    aput v5, v9, v42

    .line 115
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v42, 0x10

    aput v1, v9, v42

    .line 116
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v42, 0x11

    aput v2, v9, v42

    .line 117
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v42, 0x12

    aput v32, v9, v42

    .line 118
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v43, 0x13

    aput v31, v9, v43

    .line 120
    if-eqz v23, :cond_2

    .line 121
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v9, v9, v10

    .line 122
    .local v9, "temp":F
    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move/from16 v45, v1

    .end local v1    # "y1":F
    .local v45, "y1":F
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v1, v1, v40

    const/16 v44, 0x3

    aput v1, v10, v44

    .line 123
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v9, v1, v40

    .line 124
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v1, v1, v38

    .line 125
    .end local v9    # "temp":F
    .local v1, "temp":F
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v10, v10, v42

    aput v10, v9, v38

    .line 126
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v1, v9, v42

    goto :goto_3

    .line 120
    .end local v45    # "y1":F
    .local v1, "y1":F
    :cond_2
    move/from16 v45, v1

    .line 129
    .end local v1    # "y1":F
    .restart local v45    # "y1":F
    :goto_3
    if-eqz v24, :cond_3

    .line 130
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v1, v1, v37

    .line 131
    .local v1, "temp":F
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v10, v10, v41

    aput v10, v9, v37

    .line 132
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v1, v9, v41

    .line 133
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v1, v9, v39

    .line 134
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v10, v10, v43

    aput v10, v9, v39

    .line 135
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v1, v9, v43

    .line 138
    .end local v1    # "temp":F
    :cond_3
    if-eqz v4, :cond_7

    .line 139
    const/4 v1, 0x1

    if-eq v4, v1, :cond_6

    const/4 v9, 0x2

    if-eq v4, v9, :cond_5

    const/4 v9, 0x3

    if-eq v4, v9, :cond_4

    move/from16 v36, v2

    goto/16 :goto_4

    .line 170
    :cond_4
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v9, v9, v37

    .line 171
    .local v9, "tempV":F
    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v1, v1, v43

    aput v1, v10, v37

    .line 172
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v10, v10, v41

    aput v10, v1, v43

    .line 173
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v10, v10, v39

    aput v10, v1, v41

    .line 174
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v9, v1, v39

    .line 176
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/4 v10, 0x3

    aget v1, v1, v10

    .line 177
    .local v1, "tempU":F
    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move/from16 v36, v2

    .end local v2    # "color":F
    .local v36, "color":F
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v2, v2, v42

    const/16 v37, 0x3

    aput v2, v10, v37

    .line 178
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v10, v10, v40

    aput v10, v2, v42

    .line 179
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v10, v10, v38

    aput v10, v2, v40

    .line 180
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v1, v2, v38

    .line 181
    goto/16 :goto_4

    .line 155
    .end local v1    # "tempU":F
    .end local v9    # "tempV":F
    .end local v36    # "color":F
    .restart local v2    # "color":F
    :cond_5
    move/from16 v36, v2

    .end local v2    # "color":F
    .restart local v36    # "color":F
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    .line 156
    .restart local v1    # "tempU":F
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v10, v10, v40

    aput v10, v9, v2

    .line 157
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v1, v2, v40

    .line 158
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v1, v2, v38

    .line 159
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v9, v9, v42

    aput v9, v2, v38

    .line 160
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v1, v2, v42

    .line 161
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v2, v2, v37

    .line 162
    .local v2, "tempV":F
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v10, v10, v41

    aput v10, v9, v37

    .line 163
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v2, v9, v41

    .line 164
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v2, v9, v39

    .line 165
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v10, v10, v43

    aput v10, v9, v39

    .line 166
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v2, v9, v43

    .line 167
    goto :goto_4

    .line 141
    .end local v1    # "tempU":F
    .end local v36    # "color":F
    .local v2, "color":F
    :cond_6
    move/from16 v36, v2

    .end local v2    # "color":F
    .restart local v36    # "color":F
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v1, v1, v37

    .line 142
    .local v1, "tempV":F
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v9, v9, v39

    aput v9, v2, v37

    .line 143
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v9, v9, v41

    aput v9, v2, v39

    .line 144
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v9, v9, v43

    aput v9, v2, v41

    .line 145
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v1, v2, v43

    .line 147
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/4 v9, 0x3

    aget v2, v2, v9

    .line 148
    .local v2, "tempU":F
    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move/from16 v37, v1

    .end local v1    # "tempV":F
    .local v37, "tempV":F
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v1, v1, v38

    aput v1, v10, v9

    .line 149
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v9, v9, v40

    aput v9, v1, v38

    .line 150
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v9, v9, v42

    aput v9, v1, v40

    .line 151
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v2, v1, v42

    .line 152
    goto :goto_4

    .line 138
    .end local v36    # "color":F
    .end local v37    # "tempV":F
    .local v2, "color":F
    :cond_7
    move/from16 v36, v2

    .line 185
    .end local v2    # "color":F
    .restart local v36    # "color":F
    :goto_4
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v10, 0x14

    const/4 v0, 0x0

    invoke-interface {v1, v2, v9, v0, v10}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_5

    .line 80
    .end local v4    # "rotations":I
    .end local v23    # "flipX":Z
    .end local v24    # "flipY":Z
    .end local v25    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v26    # "layerTileHeight":F
    .end local v27    # "layerOffsetY":F
    .end local v28    # "offsetX":F
    .end local v29    # "layerOffsetX":F
    .end local v30    # "layerTileWidth":F
    .end local v31    # "v1":F
    .end local v32    # "u2":F
    .end local v33    # "v2":F
    .end local v34    # "layerTileHeight50":F
    .end local v35    # "layerTileWidth50":F
    .end local v36    # "color":F
    .end local v45    # "y1":F
    .local v1, "offsetX":F
    .restart local v2    # "color":F
    .local v5, "layerOffsetX":F
    .local v6, "layerOffsetY":F
    .local v7, "layerTileWidth":F
    .local v8, "layerTileHeight":F
    .local v9, "layerTileHeight50":F
    .restart local v10    # "layerTileWidth50":F
    :cond_8
    move/from16 v28, v1

    move/from16 v36, v2

    move/from16 v29, v5

    move/from16 v27, v6

    move/from16 v30, v7

    move/from16 v26, v8

    move/from16 v34, v9

    move/from16 v35, v10

    const/4 v0, 0x0

    .line 75
    .end local v1    # "offsetX":F
    .end local v2    # "color":F
    .end local v5    # "layerOffsetX":F
    .end local v6    # "layerOffsetY":F
    .end local v7    # "layerTileWidth":F
    .end local v8    # "layerTileHeight":F
    .end local v9    # "layerTileHeight50":F
    .end local v10    # "layerTileWidth50":F
    .end local v21    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .end local v22    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .restart local v26    # "layerTileHeight":F
    .restart local v27    # "layerOffsetY":F
    .restart local v28    # "offsetX":F
    .restart local v29    # "layerOffsetX":F
    .restart local v30    # "layerTileWidth":F
    .restart local v34    # "layerTileHeight50":F
    .restart local v35    # "layerTileWidth50":F
    .restart local v36    # "color":F
    :goto_5
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v4, v19

    move/from16 v8, v26

    move/from16 v6, v27

    move/from16 v1, v28

    move/from16 v5, v29

    move/from16 v7, v30

    move/from16 v9, v34

    move/from16 v10, v35

    move/from16 v2, v36

    goto/16 :goto_2

    .end local v19    # "layerHeight":I
    .end local v26    # "layerTileHeight":F
    .end local v27    # "layerOffsetY":F
    .end local v28    # "offsetX":F
    .end local v29    # "layerOffsetX":F
    .end local v30    # "layerTileWidth":F
    .end local v34    # "layerTileHeight50":F
    .end local v35    # "layerTileWidth50":F
    .end local v36    # "color":F
    .restart local v1    # "offsetX":F
    .restart local v2    # "color":F
    .local v4, "layerHeight":I
    .restart local v5    # "layerOffsetX":F
    .restart local v6    # "layerOffsetY":F
    .restart local v7    # "layerTileWidth":F
    .restart local v8    # "layerTileHeight":F
    .restart local v9    # "layerTileHeight50":F
    .restart local v10    # "layerTileWidth50":F
    :cond_9
    move/from16 v28, v1

    move/from16 v36, v2

    move/from16 v19, v4

    move/from16 v29, v5

    move/from16 v27, v6

    move/from16 v30, v7

    move/from16 v26, v8

    move/from16 v34, v9

    move/from16 v35, v10

    const/4 v0, 0x0

    .line 73
    .end local v1    # "offsetX":F
    .end local v2    # "color":F
    .end local v3    # "x":I
    .end local v4    # "layerHeight":I
    .end local v5    # "layerOffsetX":F
    .end local v6    # "layerOffsetY":F
    .end local v7    # "layerTileWidth":F
    .end local v8    # "layerTileHeight":F
    .end local v9    # "layerTileHeight50":F
    .end local v10    # "layerTileWidth50":F
    .restart local v19    # "layerHeight":I
    .restart local v26    # "layerTileHeight":F
    .restart local v27    # "layerOffsetY":F
    .restart local v29    # "layerOffsetX":F
    .restart local v30    # "layerTileWidth":F
    .restart local v34    # "layerTileHeight50":F
    .restart local v35    # "layerTileWidth50":F
    .restart local v36    # "color":F
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v3, v18

    goto/16 :goto_0

    .line 189
    .end local v15    # "y":I
    .end local v17    # "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v18    # "layerWidth":I
    .end local v19    # "layerHeight":I
    .end local v26    # "layerTileHeight":F
    .end local v27    # "layerOffsetY":F
    .end local v29    # "layerOffsetX":F
    .end local v30    # "layerTileWidth":F
    .end local v34    # "layerTileHeight50":F
    .end local v35    # "layerTileWidth50":F
    .end local v36    # "color":F
    .local v1, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v2    # "color":F
    .local v3, "layerWidth":I
    .restart local v4    # "layerHeight":I
    .restart local v5    # "layerOffsetX":F
    .restart local v6    # "layerOffsetY":F
    .restart local v7    # "layerTileWidth":F
    .restart local v8    # "layerTileHeight":F
    .restart local v9    # "layerTileHeight50":F
    .restart local v10    # "layerTileWidth50":F
    :cond_a
    return-void
.end method
