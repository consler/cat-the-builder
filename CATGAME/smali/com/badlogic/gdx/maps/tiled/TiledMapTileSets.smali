.class public Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;
.super Ljava/lang/Object;
.source "TiledMapTileSets.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;",
        ">;"
    }
.end annotation


# instance fields
.field private tilesets:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->tilesets:Lcom/badlogic/gdx/utils/Array;

    .line 31
    return-void
.end method


# virtual methods
.method public addTileSet(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;)V
    .locals 1
    .param p1, "tileset"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->tilesets:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .locals 3
    .param p1, "id"    # I

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->tilesets:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 77
    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->tilesets:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    .line 78
    .local v1, "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v2

    .line 79
    .local v2, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    if-eqz v2, :cond_0

    .line 80
    return-object v2

    .line 76
    .end local v1    # "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .end local v2    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 83
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTileSet(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .locals 1
    .param p1, "index"    # I

    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->tilesets:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    return-object v0
.end method

.method public getTileSet(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->tilesets:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    .line 43
    .local v1, "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    invoke-virtual {v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    return-object v1

    .line 46
    .end local v1    # "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    :cond_0
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->tilesets:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeTileSet(I)V
    .locals 1
    .param p1, "index"    # I

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->tilesets:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public removeTileSet(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;)V
    .locals 2
    .param p1, "tileset"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->tilesets:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 65
    return-void
.end method
