.class public Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;
.super Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;
.source "AtlasTmxMapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;,
        Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<",
        "Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;",
        ">;"
    }
.end annotation


# instance fields
.field protected atlasResolver:Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;

.field protected trackedTextures:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    new-instance v0, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 93
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->trackedTextures:Lcom/badlogic/gdx/utils/Array;

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 1
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 102
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 93
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->trackedTextures:Lcom/badlogic/gdx/utils/Array;

    .line 103
    return-void
.end method

.method private getAtlasFileHandle(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 6
    .param p1, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;

    .line 207
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v1, "properties"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    .line 209
    .local v0, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const/4 v1, 0x0

    .line 210
    .local v1, "atlasFilePath":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 211
    const-string v2, "property"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 212
    .local v3, "property":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "name":Ljava/lang/String;
    const-string v5, "atlas"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 214
    const-string/jumbo v2, "value"

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    goto :goto_1

    .line 217
    .end local v3    # "property":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 219
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 222
    invoke-static {p1, v1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 223
    .local v2, "fileHandle":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    return-object v2

    .line 224
    :cond_2
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The \'atlas\' file could not be found: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 220
    .end local v2    # "fileHandle":Lcom/badlogic/gdx/files/FileHandle;
    :cond_3
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "The map is missing the \'atlas\' property"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setTextureFilters(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .locals 2
    .param p1, "min"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p2, "mag"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->trackedTextures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    .line 232
    .local v1, "texture":Lcom/badlogic/gdx/graphics/Texture;
    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 233
    .end local v1    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->trackedTextures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 235
    return-void
.end method


# virtual methods
.method protected addStaticTiles(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;IIIIILjava/lang/String;IILjava/lang/String;IILcom/badlogic/gdx/files/FileHandle;)V
    .locals 21
    .param p1, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "imageResolver"    # Lcom/badlogic/gdx/maps/ImageResolver;
    .param p3, "tileSet"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .param p4, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "firstgid"    # I
    .param p8, "tilewidth"    # I
    .param p9, "tileheight"    # I
    .param p10, "spacing"    # I
    .param p11, "margin"    # I
    .param p12, "source"    # Ljava/lang/String;
    .param p13, "offsetX"    # I
    .param p14, "offsetY"    # I
    .param p15, "imageSource"    # Ljava/lang/String;
    .param p16, "imageWidth"    # I
    .param p17, "imageHeight"    # I
    .param p18, "image"    # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/maps/ImageResolver;",
            "Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            ">;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "II",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")V"
        }
    .end annotation

    .line 159
    .local p5, "tileElements":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    move-object/from16 v6, p0

    move/from16 v7, p7

    move/from16 v8, p13

    move/from16 v9, p14

    move-object/from16 v10, p15

    iget-object v0, v6, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->atlasResolver:Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;

    invoke-interface {v0}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v11

    .line 160
    .local v11, "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    move-object/from16 v12, p6

    .line 162
    .local v12, "regionsName":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getTextures()Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    .line 163
    .local v1, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v2, v6, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->trackedTextures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 164
    .end local v1    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v13

    .line 167
    .local v13, "props":Lcom/badlogic/gdx/maps/MapProperties;
    const-string v0, "imagesource"

    invoke-virtual {v13, v0, v10}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "imagewidth"

    invoke-virtual {v13, v1, v0}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "imageheight"

    invoke-virtual {v13, v1, v0}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "tilewidth"

    invoke-virtual {v13, v1, v0}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "tileheight"

    invoke-virtual {v13, v1, v0}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "margin"

    invoke-virtual {v13, v1, v0}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spacing"

    invoke-virtual {v13, v1, v0}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    if-eqz v10, :cond_3

    invoke-virtual/range {p15 .. p15}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 176
    div-int v0, p16, p8

    div-int v1, p17, p9

    mul-int/2addr v0, v1

    add-int/2addr v0, v7

    add-int/lit8 v14, v0, -0x1

    .line 177
    .local v14, "lastgid":I
    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 179
    .local v5, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    if-eqz v5, :cond_2

    .line 180
    iget v0, v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    add-int v4, v7, v0

    .line 181
    .local v4, "tileId":I
    if-lt v4, v7, :cond_1

    if-gt v4, v14, :cond_1

    .line 182
    int-to-float v3, v8

    int-to-float v2, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v16, v2

    move-object v2, v5

    move/from16 v17, v3

    move v3, v4

    move/from16 v18, v4

    .end local v4    # "tileId":I
    .local v18, "tileId":I
    move/from16 v4, v17

    move-object/from16 v17, v5

    .end local v5    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .local v17, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->addStaticTiledMapTile(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IFF)V

    goto :goto_2

    .line 181
    .end local v17    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .end local v18    # "tileId":I
    .restart local v4    # "tileId":I
    .restart local v5    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :cond_1
    move/from16 v18, v4

    move-object/from16 v17, v5

    .end local v4    # "tileId":I
    .end local v5    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .restart local v17    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .restart local v18    # "tileId":I
    goto :goto_2

    .line 179
    .end local v17    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .end local v18    # "tileId":I
    .restart local v5    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :cond_2
    move-object/from16 v17, v5

    .line 185
    .end local v5    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :goto_2
    goto :goto_1

    .line 189
    .end local v14    # "lastgid":I
    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 190
    .local v15, "tileElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-virtual {v15, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v0

    add-int v5, v7, v0

    .line 191
    .local v5, "tileId":I
    move-object/from16 v4, p3

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v16

    .line 192
    .local v16, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    if-nez v16, :cond_6

    .line 193
    const-string v0, "image"

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    .line 194
    .local v3, "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v3, :cond_5

    .line 195
    const-string v0, "source"

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "regionName":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 197
    .end local v0    # "regionName":Ljava/lang/String;
    .local v2, "regionName":Ljava/lang/String;
    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v17

    .line 198
    .restart local v17    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    if-eqz v17, :cond_4

    .line 200
    int-to-float v1, v8

    int-to-float v0, v9

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v19, v1

    move-object/from16 v1, p3

    move-object v6, v2

    .end local v2    # "regionName":Ljava/lang/String;
    .local v6, "regionName":Ljava/lang/String;
    move-object/from16 v2, v17

    move-object/from16 v20, v3

    .end local v3    # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v20, "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    move v3, v5

    move/from16 v4, v19

    move/from16 v19, v5

    .end local v5    # "tileId":I
    .local v19, "tileId":I
    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->addStaticTiledMapTile(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IFF)V

    goto :goto_4

    .line 199
    .end local v6    # "regionName":Ljava/lang/String;
    .end local v19    # "tileId":I
    .end local v20    # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v2    # "regionName":Ljava/lang/String;
    .restart local v3    # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v5    # "tileId":I
    :cond_4
    move-object v6, v2

    .end local v2    # "regionName":Ljava/lang/String;
    .restart local v6    # "regionName":Ljava/lang/String;
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tileset atlasRegion not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    .end local v6    # "regionName":Ljava/lang/String;
    .end local v17    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :cond_5
    move-object/from16 v20, v3

    move/from16 v19, v5

    .end local v3    # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v5    # "tileId":I
    .restart local v19    # "tileId":I
    .restart local v20    # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    goto :goto_4

    .line 192
    .end local v19    # "tileId":I
    .end local v20    # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v5    # "tileId":I
    :cond_6
    move/from16 v19, v5

    .line 203
    .end local v5    # "tileId":I
    .end local v15    # "tileElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v16    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    :goto_4
    move-object/from16 v6, p0

    goto :goto_3

    .line 204
    :cond_7
    return-void
.end method

.method protected getDependencyAssetDescriptors(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .param p1, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "textureParameter"    # Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 146
    .local v0, "descriptors":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->getAtlasFileHandle(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 147
    .local v1, "atlasFileHandle":Lcom/badlogic/gdx/files/FileHandle;
    if-eqz v1, :cond_0

    .line 148
    new-instance v2, Lcom/badlogic/gdx/assets/AssetDescriptor;

    const-class v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v2, v1, v3}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 151
    :cond_0
    return-object v0
.end method

.method public load(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->load(Ljava/lang/String;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "parameter"    # Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    .line 110
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 112
    .local v0, "tmxFile":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 114
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->getAtlasFileHandle(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 115
    .local v1, "atlasFileHandle":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 116
    .local v2, "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    new-instance v3, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$DirectAtlasResolver;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$DirectAtlasResolver;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    iput-object v3, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->atlasResolver:Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;

    .line 118
    invoke-virtual {p0, v0, p2, v3}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadTiledMap(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v3

    .line 119
    .local v3, "map":Lcom/badlogic/gdx/maps/tiled/TiledMap;
    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->setOwnedResources(Lcom/badlogic/gdx/utils/Array;)V

    .line 120
    iget-object v4, p2, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->textureMinFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v5, p2, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->textureMagFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {p0, v4, v5}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->setTextureFilters(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 121
    return-object v3
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 0

    .line 43
    check-cast p4, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)V
    .locals 3
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    .line 126
    invoke-direct {p0, p3}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->getAtlasFileHandle(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 127
    .local v0, "atlasHandle":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$AssetManagerAtlasResolver;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$AssetManagerAtlasResolver;-><init>(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->atlasResolver:Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;

    .line 129
    invoke-virtual {p0, p3, p4, v1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadTiledMap(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 130
    return-void
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 2
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    .line 134
    if-eqz p4, :cond_0

    .line 135
    iget-object v0, p4, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->textureMinFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v1, p4, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->textureMagFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->setTextureFilters(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    return-object v0
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p4, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object p1

    return-object p1
.end method
