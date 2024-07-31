.class public Lcom/badlogic/gdx/maps/tiled/TideMapLoader;
.super Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;
.source "TideMapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader<",
        "Lcom/badlogic/gdx/maps/tiled/TiledMap;",
        "Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;",
        ">;"
    }
.end annotation


# instance fields
.field private root:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field private xml:Lcom/badlogic/gdx/utils/XmlReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 50
    new-instance v0, Lcom/badlogic/gdx/utils/XmlReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/XmlReader;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 1
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 58
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 50
    new-instance v0, Lcom/badlogic/gdx/utils/XmlReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/XmlReader;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    .line 59
    return-void
.end method

.method private static getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 4
    .param p0, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "path"    # Ljava/lang/String;

    .line 295
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "\\/"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 297
    .local v1, "result":Lcom/badlogic/gdx/files/FileHandle;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "token":Ljava/lang/String;
    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    goto :goto_1

    .line 302
    :cond_0
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 304
    .end local v2    # "token":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 305
    :cond_1
    return-object v1
.end method

.method private loadLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 43
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 202
    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 203
    const-string v1, "Id"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "id":Ljava/lang/String;
    const-string v2, "Visible"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "visible":Ljava/lang/String;
    const-string v3, "Dimensions"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    .line 207
    .local v3, "dimensions":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v4, "LayerSize"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "layerSize":Ljava/lang/String;
    const-string v5, "TileSize"

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "tileSize":Ljava/lang/String;
    const-string v6, " x "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "layerSizeParts":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v9, v7, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 212
    .local v9, "layerSizeX":I
    const/4 v10, 0x1

    aget-object v11, v7, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 214
    .local v11, "layerSizeY":I
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, "tileSizeParts":[Ljava/lang/String;
    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 216
    .local v8, "tileSizeX":I
    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 218
    .local v10, "tileSizeY":I
    new-instance v12, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    invoke-direct {v12, v9, v11, v8, v10}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;-><init>(IIII)V

    .line 219
    .local v12, "layer":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;
    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->setName(Ljava/lang/String;)V

    .line 220
    const-string v13, "True"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->setVisible(Z)V

    .line 221
    const-string v13, "TileArray"

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v13

    .line 222
    .local v13, "tileArray":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v14, "Row"

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v14

    .line 223
    .local v14, "rows":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v15

    .line 224
    .local v15, "tilesets":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;
    const/16 v16, 0x0

    .line 225
    .local v16, "currentTileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    const/16 v17, 0x0

    .line 227
    .local v17, "firstgid":I
    const/16 v18, 0x0

    move-object/from16 v19, v1

    .end local v1    # "id":Ljava/lang/String;
    .local v18, "row":I
    .local v19, "id":Ljava/lang/String;
    iget v1, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v41, v18

    move-object/from16 v18, v2

    move/from16 v2, v41

    .local v1, "rowCount":I
    .local v2, "row":I
    .local v18, "visible":Ljava/lang/String;
    :goto_0
    if-ge v2, v1, :cond_8

    .line 228
    invoke-virtual {v14, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v3

    .end local v3    # "dimensions":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v21, "dimensions":Lcom/badlogic/gdx/utils/XmlReader$Element;
    move-object/from16 v3, v20

    check-cast v3, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 229
    .local v3, "currentRow":Lcom/badlogic/gdx/utils/XmlReader$Element;
    add-int/lit8 v20, v1, -0x1

    move/from16 v22, v1

    .end local v1    # "rowCount":I
    .local v22, "rowCount":I
    sub-int v1, v20, v2

    .line 230
    .local v1, "y":I
    const/16 v20, 0x0

    .line 231
    .local v20, "x":I
    const/16 v23, 0x0

    move-object/from16 v24, v4

    .end local v4    # "layerSize":Ljava/lang/String;
    .local v23, "child":I
    .local v24, "layerSize":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v4

    move-object/from16 v25, v5

    move-object/from16 v5, v16

    move/from16 v41, v20

    move-object/from16 v20, v6

    move/from16 v6, v41

    move/from16 v42, v23

    move-object/from16 v23, v7

    move/from16 v7, v42

    .end local v16    # "currentTileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .local v4, "childCount":I
    .local v5, "currentTileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .local v6, "x":I
    .local v7, "child":I
    .local v20, "tileSizeParts":[Ljava/lang/String;
    .local v23, "layerSizeParts":[Ljava/lang/String;
    .local v25, "tileSize":Ljava/lang/String;
    :goto_1
    if-ge v7, v4, :cond_7

    .line 232
    move/from16 v26, v4

    .end local v4    # "childCount":I
    .local v26, "childCount":I
    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChild(I)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v4

    .line 233
    .local v4, "currentChild":Lcom/badlogic/gdx/utils/XmlReader$Element;
    move-object/from16 v27, v3

    .end local v3    # "currentRow":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v27, "currentRow":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "name":Ljava/lang/String;
    move/from16 v28, v8

    .end local v8    # "tileSizeX":I
    .local v28, "tileSizeX":I
    const-string v8, "TileSheet"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    move/from16 v29, v9

    .end local v9    # "layerSizeX":I
    .local v29, "layerSizeX":I
    const-string v9, "firstgid"

    move/from16 v30, v10

    .end local v10    # "tileSizeY":I
    .local v30, "tileSizeY":I
    const-string v10, "Ref"

    if-eqz v16, :cond_0

    .line 235
    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->getTileSet(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    move-result-object v5

    .line 236
    invoke-virtual {v5}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v8

    const-class v10, Ljava/lang/Integer;

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v31, v11

    move-object/from16 v32, v13

    move-object/from16 v37, v14

    goto/16 :goto_4

    .line 237
    :cond_0
    move/from16 v31, v11

    .end local v11    # "layerSizeY":I
    .local v31, "layerSizeY":I
    const-string v11, "Null"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 238
    const-string v8, "Count"

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v6, v8

    move-object/from16 v32, v13

    move-object/from16 v37, v14

    goto/16 :goto_4

    .line 239
    :cond_1
    const-string v11, "Static"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v32, v13

    .end local v13    # "tileArray":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v32, "tileArray":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v13, "Index"

    if-eqz v16, :cond_2

    .line 240
    new-instance v8, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    invoke-direct {v8}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;-><init>()V

    .line 241
    .local v8, "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    invoke-virtual {v4, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v9

    add-int v9, v17, v9

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setTile(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    .line 242
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "x":I
    .local v9, "x":I
    invoke-virtual {v12, v6, v1, v8}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->setCell(IILcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;)V

    .line 243
    .end local v8    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    move v6, v9

    move-object/from16 v37, v14

    goto/16 :goto_4

    .end local v9    # "x":I
    .restart local v6    # "x":I
    :cond_2
    move-object/from16 v16, v5

    .end local v5    # "currentTileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .restart local v16    # "currentTileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    const-string v5, "Animated"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 245
    const-string v5, "Interval"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 246
    .local v5, "interval":I
    move-object/from16 v33, v3

    .end local v3    # "name":Ljava/lang/String;
    .local v33, "name":Ljava/lang/String;
    const-string v3, "Frames"

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    .line 247
    .local v3, "frames":Lcom/badlogic/gdx/utils/XmlReader$Element;
    new-instance v34, Lcom/badlogic/gdx/utils/Array;

    invoke-direct/range {v34 .. v34}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object/from16 v35, v34

    .line 248
    .local v35, "frameTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    const/16 v34, 0x0

    move-object/from16 v36, v4

    .end local v4    # "currentChild":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v34, "frameChild":I
    .local v36, "currentChild":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v4

    move-object/from16 v37, v14

    move-object/from16 v14, v16

    move/from16 v0, v34

    .end local v16    # "currentTileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .end local v34    # "frameChild":I
    .local v0, "frameChild":I
    .local v4, "frameChildCount":I
    .local v14, "currentTileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .local v37, "rows":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    :goto_2
    if-ge v0, v4, :cond_5

    .line 249
    move/from16 v34, v4

    .end local v4    # "frameChildCount":I
    .local v34, "frameChildCount":I
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChild(I)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v4

    .line 250
    .local v4, "frame":Lcom/badlogic/gdx/utils/XmlReader$Element;
    move-object/from16 v38, v3

    .end local v3    # "frames":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v38, "frames":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "frameName":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 252
    move-object/from16 v39, v8

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->getTileSet(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    move-result-object v14

    .line 253
    invoke-virtual {v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v8

    move-object/from16 v40, v10

    const-class v10, Ljava/lang/Integer;

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v10, v35

    goto :goto_3

    .line 254
    :cond_3
    move-object/from16 v39, v8

    move-object/from16 v40, v10

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 255
    invoke-virtual {v4, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v8

    add-int v8, v17, v8

    invoke-virtual {v14, v8}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    move-object/from16 v10, v35

    .end local v35    # "frameTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    .local v10, "frameTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_3

    .line 254
    .end local v10    # "frameTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    .restart local v35    # "frameTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    :cond_4
    move-object/from16 v10, v35

    .line 248
    .end local v3    # "frameName":Ljava/lang/String;
    .end local v4    # "frame":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v35    # "frameTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    .restart local v10    # "frameTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v35, v10

    move/from16 v4, v34

    move-object/from16 v3, v38

    move-object/from16 v8, v39

    move-object/from16 v10, v40

    goto :goto_2

    .end local v10    # "frameTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    .end local v34    # "frameChildCount":I
    .end local v38    # "frames":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v3, "frames":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v4, "frameChildCount":I
    .restart local v35    # "frameTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    :cond_5
    move-object/from16 v38, v3

    move/from16 v34, v4

    move-object/from16 v10, v35

    .line 258
    .end local v0    # "frameChild":I
    .end local v3    # "frames":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v4    # "frameChildCount":I
    .end local v35    # "frameTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    .restart local v10    # "frameTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    .restart local v38    # "frames":Lcom/badlogic/gdx/utils/XmlReader$Element;
    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;-><init>()V

    .line 259
    .local v0, "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    new-instance v3, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    int-to-float v4, v5

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v4, v8

    invoke-direct {v3, v4, v10}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;-><init>(FLcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setTile(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    .line 260
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "x":I
    .local v3, "x":I
    invoke-virtual {v12, v6, v1, v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->setCell(IILcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;)V

    move v6, v3

    move-object v5, v14

    goto :goto_4

    .line 243
    .end local v0    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .end local v5    # "interval":I
    .end local v10    # "frameTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    .end local v33    # "name":Ljava/lang/String;
    .end local v36    # "currentChild":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v37    # "rows":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    .end local v38    # "frames":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v3, "name":Ljava/lang/String;
    .local v4, "currentChild":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v6    # "x":I
    .local v14, "rows":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    .restart local v16    # "currentTileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    :cond_6
    move-object/from16 v33, v3

    move-object/from16 v36, v4

    move-object/from16 v37, v14

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "currentChild":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v14    # "rows":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    .restart local v33    # "name":Ljava/lang/String;
    .restart local v36    # "currentChild":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v37    # "rows":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    move-object/from16 v5, v16

    .line 231
    .end local v16    # "currentTileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .end local v33    # "name":Ljava/lang/String;
    .end local v36    # "currentChild":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v5, "currentTileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p2

    move/from16 v4, v26

    move-object/from16 v3, v27

    move/from16 v8, v28

    move/from16 v9, v29

    move/from16 v10, v30

    move/from16 v11, v31

    move-object/from16 v13, v32

    move-object/from16 v14, v37

    goto/16 :goto_1

    .end local v26    # "childCount":I
    .end local v27    # "currentRow":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v28    # "tileSizeX":I
    .end local v29    # "layerSizeX":I
    .end local v30    # "tileSizeY":I
    .end local v31    # "layerSizeY":I
    .end local v32    # "tileArray":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v37    # "rows":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    .local v3, "currentRow":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v4, "childCount":I
    .local v8, "tileSizeX":I
    .local v9, "layerSizeX":I
    .local v10, "tileSizeY":I
    .restart local v11    # "layerSizeY":I
    .restart local v13    # "tileArray":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v14    # "rows":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    :cond_7
    move-object/from16 v27, v3

    move/from16 v26, v4

    move-object/from16 v16, v5

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move-object/from16 v32, v13

    move-object/from16 v37, v14

    .line 227
    .end local v3    # "currentRow":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v4    # "childCount":I
    .end local v5    # "currentTileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .end local v7    # "child":I
    .end local v8    # "tileSizeX":I
    .end local v9    # "layerSizeX":I
    .end local v10    # "tileSizeY":I
    .end local v11    # "layerSizeY":I
    .end local v13    # "tileArray":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v14    # "rows":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    .restart local v16    # "currentTileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .restart local v28    # "tileSizeX":I
    .restart local v29    # "layerSizeX":I
    .restart local v30    # "tileSizeY":I
    .restart local v31    # "layerSizeY":I
    .restart local v32    # "tileArray":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v37    # "rows":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p2

    move-object/from16 v6, v20

    move-object/from16 v3, v21

    move/from16 v1, v22

    move-object/from16 v7, v23

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    goto/16 :goto_0

    .end local v20    # "tileSizeParts":[Ljava/lang/String;
    .end local v21    # "dimensions":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v22    # "rowCount":I
    .end local v23    # "layerSizeParts":[Ljava/lang/String;
    .end local v24    # "layerSize":Ljava/lang/String;
    .end local v25    # "tileSize":Ljava/lang/String;
    .end local v28    # "tileSizeX":I
    .end local v29    # "layerSizeX":I
    .end local v30    # "tileSizeY":I
    .end local v31    # "layerSizeY":I
    .end local v32    # "tileArray":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v37    # "rows":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    .local v1, "rowCount":I
    .local v3, "dimensions":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v4, "layerSize":Ljava/lang/String;
    .local v5, "tileSize":Ljava/lang/String;
    .local v6, "tileSizeParts":[Ljava/lang/String;
    .local v7, "layerSizeParts":[Ljava/lang/String;
    .restart local v8    # "tileSizeX":I
    .restart local v9    # "layerSizeX":I
    .restart local v10    # "tileSizeY":I
    .restart local v11    # "layerSizeY":I
    .restart local v13    # "tileArray":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v14    # "rows":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    :cond_8
    move/from16 v22, v1

    move-object/from16 v21, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v20, v6

    move-object/from16 v23, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move-object/from16 v32, v13

    move-object/from16 v37, v14

    .line 265
    .end local v1    # "rowCount":I
    .end local v2    # "row":I
    .end local v3    # "dimensions":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v4    # "layerSize":Ljava/lang/String;
    .end local v5    # "tileSize":Ljava/lang/String;
    .end local v6    # "tileSizeParts":[Ljava/lang/String;
    .end local v7    # "layerSizeParts":[Ljava/lang/String;
    .end local v8    # "tileSizeX":I
    .end local v9    # "layerSizeX":I
    .end local v10    # "tileSizeY":I
    .end local v11    # "layerSizeY":I
    .end local v13    # "tileArray":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v14    # "rows":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    .restart local v20    # "tileSizeParts":[Ljava/lang/String;
    .restart local v21    # "dimensions":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v23    # "layerSizeParts":[Ljava/lang/String;
    .restart local v24    # "layerSize":Ljava/lang/String;
    .restart local v25    # "tileSize":Ljava/lang/String;
    .restart local v28    # "tileSizeX":I
    .restart local v29    # "layerSizeX":I
    .restart local v30    # "tileSizeY":I
    .restart local v31    # "layerSizeY":I
    .restart local v32    # "tileArray":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v37    # "rows":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    const-string v0, "Properties"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    .line 266
    .local v0, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v0, :cond_9

    .line 267
    invoke-virtual {v12}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-direct {v3, v2, v0}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_5

    .line 266
    :cond_9
    move-object/from16 v3, p0

    .line 270
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/maps/MapLayers;->add(Lcom/badlogic/gdx/maps/MapLayer;)V

    goto :goto_6

    .line 202
    .end local v0    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v12    # "layer":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;
    .end local v15    # "tilesets":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;
    .end local v16    # "currentTileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .end local v17    # "firstgid":I
    .end local v18    # "visible":Ljava/lang/String;
    .end local v19    # "id":Ljava/lang/String;
    .end local v20    # "tileSizeParts":[Ljava/lang/String;
    .end local v21    # "dimensions":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v23    # "layerSizeParts":[Ljava/lang/String;
    .end local v24    # "layerSize":Ljava/lang/String;
    .end local v25    # "tileSize":Ljava/lang/String;
    .end local v28    # "tileSizeX":I
    .end local v29    # "layerSizeX":I
    .end local v30    # "tileSizeY":I
    .end local v31    # "layerSizeY":I
    .end local v32    # "tileArray":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v37    # "rows":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    :cond_a
    move-object/from16 v3, p0

    move-object v1, v0

    .line 272
    :goto_6
    return-void
.end method

.method private loadMap(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 6
    .param p1, "root"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p2, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "imageResolver"    # Lcom/badlogic/gdx/maps/ImageResolver;

    .line 108
    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;-><init>()V

    .line 109
    .local v0, "map":Lcom/badlogic/gdx/maps/tiled/TiledMap;
    const-string v1, "Properties"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    .line 110
    .local v1, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 113
    :cond_0
    const-string v2, "TileSheets"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    .line 114
    .local v2, "tilesheets":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v3, "TileSheet"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 115
    .local v4, "tilesheet":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-direct {p0, v0, v4, p2, p3}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->loadTileSheet(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V

    .line 116
    .end local v4    # "tilesheet":Lcom/badlogic/gdx/utils/XmlReader$Element;
    goto :goto_0

    .line 117
    :cond_1
    const-string v3, "Layers"

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    .line 118
    .local v3, "layers":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v4, "Layer"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 119
    .local v5, "layer":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-direct {p0, v0, v5}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->loadLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 120
    .end local v5    # "layer":Lcom/badlogic/gdx/utils/XmlReader$Element;
    goto :goto_1

    .line 121
    :cond_2
    return-object v0
.end method

.method private loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 6
    .param p1, "properties"    # Lcom/badlogic/gdx/maps/MapProperties;
    .param p2, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 275
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Properties"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    const-string v0, "Property"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 277
    .local v1, "property":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v2, "Key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "key":Ljava/lang/String;
    const-string v4, "Type"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "value":Ljava/lang/String;
    const-string v5, "Int32"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 282
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 283
    :cond_0
    const-string v5, "String"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 284
    invoke-virtual {p1, v2, v4}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 285
    :cond_1
    const-string v5, "Boolean"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 286
    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 288
    :cond_2
    invoke-virtual {p1, v2, v4}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    .end local v1    # "property":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 292
    :cond_3
    return-void
.end method

.method private loadTileSheet(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V
    .locals 40
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p3, "tideFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "imageResolver"    # Lcom/badlogic/gdx/maps/ImageResolver;

    .line 140
    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TileSheet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    const-string v1, "Id"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "id":Ljava/lang/String;
    const-string v2, "Description"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "description":Ljava/lang/String;
    const-string v3, "ImageSource"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "imageSource":Ljava/lang/String;
    const-string v4, "Alignment"

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v4

    .line 146
    .local v4, "alignment":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v5, "SheetSize"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "sheetSize":Ljava/lang/String;
    const-string v6, "TileSize"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, "tileSize":Ljava/lang/String;
    const-string v7, "Margin"

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "margin":Ljava/lang/String;
    const-string v8, "Spacing"

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, "spacing":Ljava/lang/String;
    const-string v9, " x "

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 152
    .local v10, "sheetSizeParts":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v12, v10, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 153
    .local v12, "sheetSizeX":I
    const/4 v13, 0x1

    aget-object v14, v10, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 155
    .local v14, "sheetSizeY":I
    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 156
    .local v15, "tileSizeParts":[Ljava/lang/String;
    aget-object v16, v15, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 157
    .local v16, "tileSizeX":I
    aget-object v17, v15, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 159
    .local v23, "tileSizeY":I
    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 160
    .local v24, "marginParts":[Ljava/lang/String;
    aget-object v17, v24, v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 161
    .local v25, "marginX":I
    aget-object v17, v24, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 163
    .local v26, "marginY":I
    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 164
    .local v9, "spacingParts":[Ljava/lang/String;
    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 165
    .local v11, "spacingX":I
    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 167
    .local v13, "spacingY":I
    move-object/from16 v27, v2

    move-object/from16 v2, p3

    .end local v2    # "description":Ljava/lang/String;
    .local v27, "description":Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v28

    .line 168
    .local v28, "image":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v29, v3

    move-object/from16 v3, p4

    .end local v3    # "imageSource":Ljava/lang/String;
    .local v29, "imageSource":Ljava/lang/String;
    invoke-interface {v3, v2}, Lcom/badlogic/gdx/maps/ImageResolver;->getImage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 170
    .local v2, "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v3

    .line 171
    .local v3, "tilesets":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;
    const/16 v17, 0x1

    .line 172
    .local v17, "firstgid":I
    invoke-virtual {v3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move/from16 v30, v17

    .end local v17    # "firstgid":I
    .local v30, "firstgid":I
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    .line 173
    .local v17, "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->size()I

    move-result v19

    add-int v30, v30, v19

    .line 174
    .end local v17    # "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    goto :goto_0

    .line 176
    :cond_0
    new-instance v17, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    invoke-direct/range {v17 .. v17}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;-><init>()V

    move-object/from16 v31, v17

    .line 177
    .local v31, "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    move-object/from16 v32, v4

    move-object/from16 v4, v31

    .end local v31    # "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .local v4, "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .local v32, "alignment":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->setName(Ljava/lang/String;)V

    .line 178
    move-object/from16 v31, v1

    .end local v1    # "id":Ljava/lang/String;
    .local v31, "id":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v1

    move-object/from16 v33, v5

    .end local v5    # "sheetSize":Ljava/lang/String;
    .local v33, "sheetSize":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v34, v6

    .end local v6    # "tileSize":Ljava/lang/String;
    .local v34, "tileSize":Ljava/lang/String;
    const-string v6, "firstgid"

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    move/from16 v1, v30

    .line 181
    .local v1, "gid":I
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    sub-int v5, v5, v16

    .line 182
    .local v5, "stopWidth":I
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v6

    sub-int v6, v6, v23

    .line 184
    .local v6, "stopHeight":I
    move/from16 v17, v26

    move/from16 v39, v17

    move/from16 v17, v1

    move/from16 v1, v39

    .local v1, "y":I
    .local v17, "gid":I
    :goto_1
    if-gt v1, v6, :cond_2

    .line 185
    move/from16 v18, v25

    move/from16 v35, v6

    move-object/from16 v36, v7

    move/from16 v6, v17

    move/from16 v7, v18

    .end local v17    # "gid":I
    .local v6, "gid":I
    .local v7, "x":I
    .local v35, "stopHeight":I
    .local v36, "margin":Ljava/lang/String;
    :goto_2
    if-gt v7, v5, :cond_1

    .line 186
    move/from16 v37, v5

    .end local v5    # "stopWidth":I
    .local v37, "stopWidth":I
    new-instance v5, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    move-object/from16 v38, v8

    .end local v8    # "spacing":Ljava/lang/String;
    .local v38, "spacing":Ljava/lang/String;
    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v17, v8

    move-object/from16 v18, v2

    move/from16 v19, v7

    move/from16 v20, v1

    move/from16 v21, v16

    move/from16 v22, v23

    invoke-direct/range {v17 .. v22}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    invoke-direct {v5, v8}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 187
    .local v5, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    invoke-interface {v5, v6}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setId(I)V

    .line 188
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "gid":I
    .local v8, "gid":I
    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    .line 185
    .end local v5    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    add-int v5, v16, v11

    add-int/2addr v7, v5

    move v6, v8

    move/from16 v5, v37

    move-object/from16 v8, v38

    goto :goto_2

    .end local v37    # "stopWidth":I
    .end local v38    # "spacing":Ljava/lang/String;
    .local v5, "stopWidth":I
    .restart local v6    # "gid":I
    .local v8, "spacing":Ljava/lang/String;
    :cond_1
    move/from16 v37, v5

    move-object/from16 v38, v8

    .line 184
    .end local v5    # "stopWidth":I
    .end local v7    # "x":I
    .end local v8    # "spacing":Ljava/lang/String;
    .restart local v37    # "stopWidth":I
    .restart local v38    # "spacing":Ljava/lang/String;
    add-int v5, v23, v13

    add-int/2addr v1, v5

    move/from16 v17, v6

    move/from16 v6, v35

    move-object/from16 v7, v36

    move/from16 v5, v37

    goto :goto_1

    .end local v35    # "stopHeight":I
    .end local v36    # "margin":Ljava/lang/String;
    .end local v37    # "stopWidth":I
    .end local v38    # "spacing":Ljava/lang/String;
    .restart local v5    # "stopWidth":I
    .local v6, "stopHeight":I
    .local v7, "margin":Ljava/lang/String;
    .restart local v8    # "spacing":Ljava/lang/String;
    .restart local v17    # "gid":I
    :cond_2
    move/from16 v37, v5

    move/from16 v35, v6

    move-object/from16 v36, v7

    move-object/from16 v38, v8

    .line 192
    .end local v1    # "y":I
    .end local v5    # "stopWidth":I
    .end local v6    # "stopHeight":I
    .end local v7    # "margin":Ljava/lang/String;
    .end local v8    # "spacing":Ljava/lang/String;
    .restart local v35    # "stopHeight":I
    .restart local v36    # "margin":Ljava/lang/String;
    .restart local v37    # "stopWidth":I
    .restart local v38    # "spacing":Ljava/lang/String;
    const-string v1, "Properties"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    .line 193
    .local v1, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v1, :cond_3

    .line 194
    invoke-virtual {v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v5

    move-object/from16 v6, p0

    invoke-direct {v6, v5, v1}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_3

    .line 193
    :cond_3
    move-object/from16 v6, p0

    .line 197
    :goto_3
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->addTileSet(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;)V

    goto :goto_4

    .line 140
    .end local v1    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v2    # "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v3    # "tilesets":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;
    .end local v4    # "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .end local v9    # "spacingParts":[Ljava/lang/String;
    .end local v10    # "sheetSizeParts":[Ljava/lang/String;
    .end local v11    # "spacingX":I
    .end local v12    # "sheetSizeX":I
    .end local v13    # "spacingY":I
    .end local v14    # "sheetSizeY":I
    .end local v15    # "tileSizeParts":[Ljava/lang/String;
    .end local v16    # "tileSizeX":I
    .end local v17    # "gid":I
    .end local v23    # "tileSizeY":I
    .end local v24    # "marginParts":[Ljava/lang/String;
    .end local v25    # "marginX":I
    .end local v26    # "marginY":I
    .end local v27    # "description":Ljava/lang/String;
    .end local v28    # "image":Lcom/badlogic/gdx/files/FileHandle;
    .end local v29    # "imageSource":Ljava/lang/String;
    .end local v30    # "firstgid":I
    .end local v31    # "id":Ljava/lang/String;
    .end local v32    # "alignment":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v33    # "sheetSize":Ljava/lang/String;
    .end local v34    # "tileSize":Ljava/lang/String;
    .end local v35    # "stopHeight":I
    .end local v36    # "margin":Ljava/lang/String;
    .end local v37    # "stopWidth":I
    .end local v38    # "spacing":Ljava/lang/String;
    :cond_4
    move-object/from16 v6, p0

    .line 199
    :goto_4
    return-void
.end method

.method private loadTileSheets(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;
    .locals 6
    .param p1, "root"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p2, "tideFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 130
    .local v0, "images":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/files/FileHandle;>;"
    const-string v1, "TileSheets"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    .line 131
    .local v1, "tilesheets":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v2, "TileSheet"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 132
    .local v3, "tileset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v4, "ImageSource"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v4

    .line 133
    .local v4, "imageSource":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .line 134
    .local v5, "image":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 135
    .end local v3    # "tileset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v4    # "imageSource":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v5    # "image":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_0

    .line 136
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    .line 44
    check-cast p3, Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "parameter"    # Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 92
    .local v0, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 93
    invoke-direct {p0, v1, p2}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->loadTileSheets(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/files/FileHandle;

    .line 94
    .local v2, "image":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v3, Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v2    # "image":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_0

    .line 96
    :cond_0
    return-object v0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load tilemap \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 4
    .param p1, "assetManager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "tideFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    new-instance v1, Lcom/badlogic/gdx/maps/ImageResolver$AssetManagerImageResolver;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/maps/ImageResolver$AssetManagerImageResolver;-><init>(Lcom/badlogic/gdx/assets/AssetManager;)V

    invoke-direct {p0, v0, p3, v1}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->loadMap(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t load tilemap \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public load(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .line 63
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 64
    .local v0, "tideFile":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 65
    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 66
    .local v1, "textures":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;>;"
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-direct {p0, v2, v0}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->loadTileSheets(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/files/FileHandle;

    .line 67
    .local v3, "textureFile":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v5, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    nop

    .end local v3    # "textureFile":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_0

    .line 69
    :cond_0
    new-instance v2, Lcom/badlogic/gdx/maps/ImageResolver$DirectImageResolver;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/maps/ImageResolver$DirectImageResolver;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 70
    .local v2, "imageResolver":Lcom/badlogic/gdx/maps/ImageResolver$DirectImageResolver;
    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-direct {p0, v3, v0, v2}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->loadMap(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v3

    .line 71
    .local v3, "map":Lcom/badlogic/gdx/maps/tiled/TiledMap;
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->setOwnedResources(Lcom/badlogic/gdx/utils/Array;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-object v3

    .line 73
    .end local v0    # "tideFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "textures":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;>;"
    .end local v2    # "imageResolver":Lcom/badlogic/gdx/maps/ImageResolver$DirectImageResolver;
    .end local v3    # "map":Lcom/badlogic/gdx/maps/tiled/TiledMap;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t load tilemap \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p4, Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object p1

    return-object p1
.end method
