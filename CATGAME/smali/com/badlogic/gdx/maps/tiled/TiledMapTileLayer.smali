.class public Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;
.super Lcom/badlogic/gdx/maps/MapLayer;
.source "TiledMapTileLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    }
.end annotation


# instance fields
.field private cells:[[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

.field private height:I

.field private tileHeight:F

.field private tileWidth:F

.field private width:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "tileWidth"    # I
    .param p4, "tileHeight"    # I

    .line 59
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapLayer;-><init>()V

    .line 60
    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->width:I

    .line 61
    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->height:I

    .line 62
    int-to-float v0, p3

    iput v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->tileWidth:F

    .line 63
    int-to-float v0, p4

    iput v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->tileHeight:F

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    const-class v1, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->cells:[[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    .line 65
    return-void
.end method


# virtual methods
.method public getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 71
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->width:I

    if-lt p1, v1, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    if-ltz p2, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->height:I

    if-lt p2, v1, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->cells:[[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0

    .line 72
    :cond_2
    :goto_0
    return-object v0

    .line 71
    :cond_3
    :goto_1
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->height:I

    return v0
.end method

.method public getTileHeight()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->tileHeight:F

    return v0
.end method

.method public getTileWidth()F
    .locals 1

    .line 44
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->tileWidth:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->width:I

    return v0
.end method

.method public setCell(IILcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "cell"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    .line 82
    if-ltz p1, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->width:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 83
    :cond_0
    if-ltz p2, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->height:I

    if-lt p2, v0, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->cells:[[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    aget-object v0, v0, p1

    aput-object p3, v0, p2

    .line 85
    return-void

    .line 83
    :cond_2
    :goto_0
    return-void

    .line 82
    :cond_3
    :goto_1
    return-void
.end method
