.class public Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;
.super Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.source "OrthogonalTiledMapRenderer.java"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 51
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F
    .param p3, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 56
    return-void
.end method


# virtual methods
.method public renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V
    .locals 47
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    .line 68
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 69
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

    .line 71
    .local v2, "color":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getWidth()I

    move-result v3

    .line 72
    .local v3, "layerWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getHeight()I

    move-result v4

    .line 74
    .local v4, "layerHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()F

    move-result v5

    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v5, v6

    .line 75
    .local v5, "layerTileWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()F

    move-result v6

    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v6, v7

    .line 77
    .local v6, "layerTileHeight":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getRenderOffsetX()F

    move-result v7

    iget v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v7, v8

    .line 79
    .local v7, "layerOffsetX":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getRenderOffsetY()F

    move-result v8

    neg-float v8, v8

    iget v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v8, v9

    .line 81
    .local v8, "layerOffsetY":F
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v9, v7

    div-float/2addr v9, v5

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 82
    .local v9, "col1":I
    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v11, v12

    add-float/2addr v11, v5

    sub-float/2addr v11, v7

    div-float/2addr v11, v5

    float-to-int v11, v11

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 85
    .local v11, "col2":I
    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v12, v8

    div-float/2addr v12, v6

    float-to-int v12, v12

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 86
    .local v12, "row1":I
    iget-object v13, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v13, v13, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v14, v14, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v13, v14

    add-float/2addr v13, v6

    sub-float/2addr v13, v8

    div-float/2addr v13, v6

    float-to-int v13, v13

    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 89
    .local v13, "row2":I
    int-to-float v14, v13

    mul-float/2addr v14, v6

    add-float/2addr v14, v8

    .line 90
    .local v14, "y":F
    int-to-float v15, v9

    mul-float/2addr v15, v5

    add-float/2addr v15, v7

    .line 91
    .local v15, "xStart":F
    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->vertices:[F

    .line 93
    .local v10, "vertices":[F
    move/from16 v17, v13

    move/from16 v46, v17

    move-object/from16 v17, v1

    move/from16 v1, v46

    .local v1, "row":I
    .local v17, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    :goto_0
    if-lt v1, v12, :cond_9

    .line 94
    move/from16 v18, v15

    .line 95
    .local v18, "x":F
    move/from16 v19, v9

    move/from16 v46, v19

    move/from16 v19, v3

    move/from16 v3, v46

    .local v3, "col":I
    .local v19, "layerWidth":I
    :goto_1
    if-ge v3, v11, :cond_8

    .line 96
    move/from16 v20, v4

    move-object/from16 v4, p1

    .end local v4    # "layerHeight":I
    .local v20, "layerHeight":I
    invoke-virtual {v4, v3, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v21

    .line 97
    .local v21, "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    if-nez v21, :cond_0

    .line 98
    add-float v18, v18, v5

    .line 99
    move/from16 v35, v2

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v11

    move/from16 v34, v12

    const/4 v4, 0x0

    goto/16 :goto_4

    .line 101
    :cond_0
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v22

    .line 103
    .local v22, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    if-eqz v22, :cond_7

    .line 104
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipHorizontally()Z

    move-result v23

    .line 105
    .local v23, "flipX":Z
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipVertically()Z

    move-result v24

    .line 106
    .local v24, "flipY":Z
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getRotation()I

    move-result v4

    .line 108
    .local v4, "rotations":I
    invoke-interface/range {v22 .. v22}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v25

    .line 110
    .local v25, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-interface/range {v22 .. v22}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v26

    move/from16 v27, v7

    .end local v7    # "layerOffsetX":F
    .local v27, "layerOffsetX":F
    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    mul-float v26, v26, v7

    add-float v26, v18, v26

    .line 111
    .local v26, "x1":F
    invoke-interface/range {v22 .. v22}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v7

    move/from16 v28, v8

    .end local v8    # "layerOffsetY":F
    .local v28, "layerOffsetY":F
    iget v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v14

    .line 112
    .local v7, "y1":F
    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v8

    int-to-float v8, v8

    move/from16 v29, v9

    .end local v9    # "col1":I
    .local v29, "col1":I
    iget v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v8, v9

    add-float v8, v26, v8

    .line 113
    .local v8, "x2":F
    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v9

    int-to-float v9, v9

    move/from16 v30, v11

    .end local v11    # "col2":I
    .local v30, "col2":I
    iget v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v9, v11

    add-float/2addr v9, v7

    .line 115
    .local v9, "y2":F
    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v11

    .line 116
    .local v11, "u1":F
    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v31

    .line 117
    .local v31, "v1":F
    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v32

    .line 118
    .local v32, "u2":F
    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v33

    .line 120
    .local v33, "v2":F
    const/16 v16, 0x0

    aput v26, v10, v16

    .line 121
    move/from16 v34, v12

    .end local v12    # "row1":I
    .local v34, "row1":I
    const/4 v12, 0x1

    aput v7, v10, v12

    .line 122
    const/4 v12, 0x2

    aput v2, v10, v12

    .line 123
    const/4 v12, 0x3

    aput v11, v10, v12

    .line 124
    const/16 v37, 0x4

    aput v31, v10, v37

    .line 126
    const/16 v38, 0x5

    aput v26, v10, v38

    .line 127
    const/16 v38, 0x6

    aput v9, v10, v38

    .line 128
    const/16 v38, 0x7

    aput v2, v10, v38

    .line 129
    const/16 v38, 0x8

    aput v11, v10, v38

    .line 130
    const/16 v39, 0x9

    aput v33, v10, v39

    .line 132
    const/16 v40, 0xa

    aput v8, v10, v40

    .line 133
    const/16 v40, 0xb

    aput v9, v10, v40

    .line 134
    const/16 v40, 0xc

    aput v2, v10, v40

    .line 135
    const/16 v40, 0xd

    aput v32, v10, v40

    .line 136
    const/16 v41, 0xe

    aput v33, v10, v41

    .line 138
    const/16 v42, 0xf

    aput v8, v10, v42

    .line 139
    const/16 v42, 0x10

    aput v7, v10, v42

    .line 140
    const/16 v42, 0x11

    aput v2, v10, v42

    .line 141
    const/16 v42, 0x12

    aput v32, v10, v42

    .line 142
    const/16 v43, 0x13

    aput v31, v10, v43

    .line 144
    if-eqz v23, :cond_1

    .line 145
    aget v44, v10, v12

    .line 146
    .local v44, "temp":F
    aget v45, v10, v40

    aput v45, v10, v12

    .line 147
    aput v44, v10, v40

    .line 148
    aget v44, v10, v38

    .line 149
    aget v45, v10, v42

    aput v45, v10, v38

    .line 150
    aput v44, v10, v42

    .line 152
    .end local v44    # "temp":F
    :cond_1
    if-eqz v24, :cond_2

    .line 153
    aget v44, v10, v37

    .line 154
    .restart local v44    # "temp":F
    aget v45, v10, v41

    aput v45, v10, v37

    .line 155
    aput v44, v10, v41

    .line 156
    aget v44, v10, v39

    .line 157
    aget v45, v10, v43

    aput v45, v10, v39

    .line 158
    aput v44, v10, v43

    .line 160
    .end local v44    # "temp":F
    :cond_2
    if-eqz v4, :cond_6

    .line 161
    const/4 v12, 0x1

    if-eq v4, v12, :cond_5

    const/4 v12, 0x2

    if-eq v4, v12, :cond_4

    const/4 v12, 0x3

    if-eq v4, v12, :cond_3

    goto :goto_2

    .line 192
    :cond_3
    aget v12, v10, v37

    .line 193
    .local v12, "tempV":F
    aget v35, v10, v43

    aput v35, v10, v37

    .line 194
    aget v35, v10, v41

    aput v35, v10, v43

    .line 195
    aget v35, v10, v39

    aput v35, v10, v41

    .line 196
    aput v12, v10, v39

    .line 198
    const/16 v35, 0x3

    aget v36, v10, v35

    .line 199
    .local v36, "tempU":F
    aget v37, v10, v42

    aput v37, v10, v35

    .line 200
    aget v35, v10, v40

    aput v35, v10, v42

    .line 201
    aget v35, v10, v38

    aput v35, v10, v40

    .line 202
    aput v36, v10, v38

    .line 203
    goto :goto_2

    .line 177
    .end local v12    # "tempV":F
    .end local v36    # "tempU":F
    :cond_4
    const/4 v12, 0x3

    aget v35, v10, v12

    .line 178
    .local v35, "tempU":F
    aget v36, v10, v40

    aput v36, v10, v12

    .line 179
    aput v35, v10, v40

    .line 180
    aget v12, v10, v38

    .line 181
    .end local v35    # "tempU":F
    .local v12, "tempU":F
    aget v35, v10, v42

    aput v35, v10, v38

    .line 182
    aput v12, v10, v42

    .line 183
    aget v35, v10, v37

    .line 184
    .local v35, "tempV":F
    aget v36, v10, v41

    aput v36, v10, v37

    .line 185
    aput v35, v10, v41

    .line 186
    aget v35, v10, v39

    .line 187
    aget v36, v10, v43

    aput v36, v10, v39

    .line 188
    aput v35, v10, v43

    .line 189
    goto :goto_2

    .line 163
    .end local v12    # "tempU":F
    .end local v35    # "tempV":F
    :cond_5
    aget v12, v10, v37

    .line 164
    .local v12, "tempV":F
    aget v35, v10, v39

    aput v35, v10, v37

    .line 165
    aget v35, v10, v41

    aput v35, v10, v39

    .line 166
    aget v35, v10, v43

    aput v35, v10, v41

    .line 167
    aput v12, v10, v43

    .line 169
    const/16 v35, 0x3

    aget v36, v10, v35

    .line 170
    .restart local v36    # "tempU":F
    aget v37, v10, v38

    aput v37, v10, v35

    .line 171
    aget v35, v10, v40

    aput v35, v10, v38

    .line 172
    aget v35, v10, v42

    aput v35, v10, v40

    .line 173
    aput v36, v10, v42

    .line 207
    .end local v12    # "tempV":F
    .end local v36    # "tempU":F
    :cond_6
    :goto_2
    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    move/from16 v35, v2

    .end local v2    # "color":F
    .local v35, "color":F
    const/16 v2, 0x14

    move/from16 v36, v4

    const/4 v4, 0x0

    .end local v4    # "rotations":I
    .local v36, "rotations":I
    invoke-interface {v12, v0, v10, v4, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_3

    .line 103
    .end local v23    # "flipX":Z
    .end local v24    # "flipY":Z
    .end local v25    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v26    # "x1":F
    .end local v27    # "layerOffsetX":F
    .end local v28    # "layerOffsetY":F
    .end local v29    # "col1":I
    .end local v30    # "col2":I
    .end local v31    # "v1":F
    .end local v32    # "u2":F
    .end local v33    # "v2":F
    .end local v34    # "row1":I
    .end local v35    # "color":F
    .end local v36    # "rotations":I
    .restart local v2    # "color":F
    .local v7, "layerOffsetX":F
    .local v8, "layerOffsetY":F
    .local v9, "col1":I
    .local v11, "col2":I
    .local v12, "row1":I
    :cond_7
    move/from16 v35, v2

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v11

    move/from16 v34, v12

    const/4 v4, 0x0

    .line 209
    .end local v2    # "color":F
    .end local v7    # "layerOffsetX":F
    .end local v8    # "layerOffsetY":F
    .end local v9    # "col1":I
    .end local v11    # "col2":I
    .end local v12    # "row1":I
    .restart local v27    # "layerOffsetX":F
    .restart local v28    # "layerOffsetY":F
    .restart local v29    # "col1":I
    .restart local v30    # "col2":I
    .restart local v34    # "row1":I
    .restart local v35    # "color":F
    :goto_3
    add-float v18, v18, v5

    .line 95
    .end local v21    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .end local v22    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v20

    move/from16 v7, v27

    move/from16 v8, v28

    move/from16 v9, v29

    move/from16 v11, v30

    move/from16 v12, v34

    move/from16 v2, v35

    goto/16 :goto_1

    .end local v20    # "layerHeight":I
    .end local v27    # "layerOffsetX":F
    .end local v28    # "layerOffsetY":F
    .end local v29    # "col1":I
    .end local v30    # "col2":I
    .end local v34    # "row1":I
    .end local v35    # "color":F
    .restart local v2    # "color":F
    .local v4, "layerHeight":I
    .restart local v7    # "layerOffsetX":F
    .restart local v8    # "layerOffsetY":F
    .restart local v9    # "col1":I
    .restart local v11    # "col2":I
    .restart local v12    # "row1":I
    :cond_8
    move/from16 v35, v2

    move/from16 v20, v4

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v11

    move/from16 v34, v12

    const/4 v4, 0x0

    .line 211
    .end local v2    # "color":F
    .end local v3    # "col":I
    .end local v4    # "layerHeight":I
    .end local v7    # "layerOffsetX":F
    .end local v8    # "layerOffsetY":F
    .end local v9    # "col1":I
    .end local v11    # "col2":I
    .end local v12    # "row1":I
    .restart local v20    # "layerHeight":I
    .restart local v27    # "layerOffsetX":F
    .restart local v28    # "layerOffsetY":F
    .restart local v29    # "col1":I
    .restart local v30    # "col2":I
    .restart local v34    # "row1":I
    .restart local v35    # "color":F
    sub-float/2addr v14, v6

    .line 93
    .end local v18    # "x":F
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    move/from16 v3, v19

    move/from16 v4, v20

    goto/16 :goto_0

    .line 213
    .end local v1    # "row":I
    .end local v19    # "layerWidth":I
    .end local v20    # "layerHeight":I
    .end local v27    # "layerOffsetX":F
    .end local v28    # "layerOffsetY":F
    .end local v29    # "col1":I
    .end local v30    # "col2":I
    .end local v34    # "row1":I
    .end local v35    # "color":F
    .restart local v2    # "color":F
    .local v3, "layerWidth":I
    .restart local v4    # "layerHeight":I
    .restart local v7    # "layerOffsetX":F
    .restart local v8    # "layerOffsetY":F
    .restart local v9    # "col1":I
    .restart local v11    # "col2":I
    .restart local v12    # "row1":I
    :cond_9
    return-void
.end method
