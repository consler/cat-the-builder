.class public Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;
.super Ljava/lang/Object;
.source "OrthoCachedTiledMapRenderer.java"

# interfaces
.implements Lcom/badlogic/gdx/maps/tiled/TiledMapRenderer;
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field protected static final NUM_VERTICES:I = 0x14

.field private static final tolerance:F = 1.0E-5f


# instance fields
.field protected blending:Z

.field protected final cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

.field protected cached:Z

.field protected canCacheMoreE:Z

.field protected canCacheMoreN:Z

.field protected canCacheMoreS:Z

.field protected canCacheMoreW:Z

.field protected count:I

.field protected final map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

.field protected maxTileHeight:F

.field protected maxTileWidth:F

.field protected overCache:F

.field protected final spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

.field protected unitScale:F

.field protected final vertices:[F

.field protected final viewBounds:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 2
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x7d0

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FI)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F

    .line 75
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FI)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FI)V
    .locals 2
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F
    .param p3, "cacheSize"    # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->vertices:[F

    .line 59
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 60
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 62
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->overCache:F

    .line 80
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 81
    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    .line 82
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;-><init>(IZ)V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    .line 83
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->dispose()V

    .line 450
    return-void
.end method

.method public getSpriteCache()Lcom/badlogic/gdx/graphics/g2d/SpriteCache;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    return-object v0
.end method

.method public invalidateCache()V
    .locals 1

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    .line 411
    return-void
.end method

.method public isCached()Z
    .locals 1

    .line 415
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    return v0
.end method

.method public render()V
    .locals 6

    .line 117
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    if-nez v0, :cond_2

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->count:I

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->clear()V

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->overCache:F

    mul-float/2addr v0, v1

    .line 123
    .local v0, "extraWidth":F
    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->overCache:F

    mul-float/2addr v1, v2

    .line 124
    .local v1, "extraHeight":F
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v3, v0

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 125
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v3, v1

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 126
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v0, v4

    add-float/2addr v3, v5

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 127
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 129
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/MapLayers;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/maps/MapLayer;

    .line 130
    .local v3, "layer":Lcom/badlogic/gdx/maps/MapLayer;
    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->beginCache()V

    .line 131
    instance-of v4, v3, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    if-eqz v4, :cond_0

    .line 132
    move-object v4, v3

    check-cast v4, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V

    goto :goto_1

    .line 133
    :cond_0
    instance-of v4, v3, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    if-eqz v4, :cond_1

    .line 134
    move-object v4, v3

    check-cast v4, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V

    .line 136
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->endCache()I

    .line 137
    .end local v3    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    goto :goto_0

    .line 140
    .end local v0    # "extraWidth":F
    .end local v1    # "extraHeight":F
    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->blending:Z

    const/16 v1, 0xbe2

    if-eqz v0, :cond_3

    .line 141
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 142
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->begin()V

    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v0

    .line 146
    .local v0, "mapLayers":Lcom/badlogic/gdx/maps/MapLayers;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapLayers;->getCount()I

    move-result v3

    .local v3, "j":I
    :goto_2
    if-ge v2, v3, :cond_5

    .line 147
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object v4

    .line 148
    .local v4, "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {v4}, Lcom/badlogic/gdx/maps/MapLayer;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 149
    iget-object v5, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->draw(I)V

    .line 150
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 146
    .end local v4    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 153
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_5
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->end()V

    .line 154
    iget-boolean v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->blending:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 155
    :cond_6
    return-void
.end method

.method public render([I)V
    .locals 7
    .param p1, "layers"    # [I

    .line 159
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    .line 161
    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->count:I

    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->clear()V

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->overCache:F

    mul-float/2addr v0, v2

    .line 165
    .local v0, "extraWidth":F
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->overCache:F

    mul-float/2addr v2, v3

    .line 166
    .local v2, "extraHeight":F
    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v4, v0

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 167
    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v4, v2

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 168
    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v0, v5

    add-float/2addr v4, v6

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 169
    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 171
    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/maps/MapLayers;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/maps/MapLayer;

    .line 172
    .local v4, "layer":Lcom/badlogic/gdx/maps/MapLayer;
    iget-object v5, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->beginCache()V

    .line 173
    instance-of v5, v4, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    if-eqz v5, :cond_0

    .line 174
    move-object v5, v4

    check-cast v5, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V

    goto :goto_1

    .line 175
    :cond_0
    instance-of v5, v4, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    if-eqz v5, :cond_1

    .line 176
    move-object v5, v4

    check-cast v5, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V

    .line 178
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->endCache()I

    .line 179
    .end local v4    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    goto :goto_0

    .line 182
    .end local v0    # "extraWidth":F
    .end local v2    # "extraHeight":F
    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->blending:Z

    const/16 v2, 0xbe2

    if-eqz v0, :cond_3

    .line 183
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 184
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0x302

    const/16 v4, 0x303

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->begin()V

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v0

    .line 188
    .local v0, "mapLayers":Lcom/badlogic/gdx/maps/MapLayers;
    array-length v3, p1

    :goto_2
    if-ge v1, v3, :cond_5

    aget v4, p1, v1

    .line 189
    .local v4, "i":I
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object v5

    .line 190
    .local v5, "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {v5}, Lcom/badlogic/gdx/maps/MapLayer;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 191
    iget-object v6, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->draw(I)V

    .line 192
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 188
    .end local v4    # "i":I
    .end local v5    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 195
    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->end()V

    .line 196
    iget-boolean v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->blending:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 197
    :cond_6
    return-void
.end method

.method public renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V
    .locals 17
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    .line 360
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getOpacity()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v1

    .line 361
    .local v1, "color":F
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->vertices:[F

    .line 363
    .local v2, "vertices":[F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 365
    .local v3, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-nez v3, :cond_0

    .line 366
    return-void

    .line 369
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getX()F

    move-result v4

    .line 370
    .local v4, "x":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getY()F

    move-result v5

    .line 371
    .local v5, "y":F
    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float v7, v4, v6

    .line 372
    .local v7, "x1":F
    mul-float/2addr v6, v5

    .line 373
    .local v6, "y1":F
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v7

    .line 374
    .local v8, "x2":F
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v6

    .line 376
    .local v9, "y2":F
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v10

    .line 377
    .local v10, "u1":F
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v11

    .line 378
    .local v11, "v1":F
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v12

    .line 379
    .local v12, "u2":F
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v13

    .line 381
    .local v13, "v2":F
    const/4 v14, 0x0

    aput v7, v2, v14

    .line 382
    const/4 v15, 0x1

    aput v6, v2, v15

    .line 383
    const/4 v15, 0x2

    aput v1, v2, v15

    .line 384
    const/4 v15, 0x3

    aput v10, v2, v15

    .line 385
    const/4 v15, 0x4

    aput v11, v2, v15

    .line 387
    const/4 v15, 0x5

    aput v7, v2, v15

    .line 388
    const/4 v15, 0x6

    aput v9, v2, v15

    .line 389
    const/4 v15, 0x7

    aput v1, v2, v15

    .line 390
    const/16 v15, 0x8

    aput v10, v2, v15

    .line 391
    const/16 v15, 0x9

    aput v13, v2, v15

    .line 393
    const/16 v15, 0xa

    aput v8, v2, v15

    .line 394
    const/16 v15, 0xb

    aput v9, v2, v15

    .line 395
    const/16 v15, 0xc

    aput v1, v2, v15

    .line 396
    const/16 v15, 0xd

    aput v12, v2, v15

    .line 397
    const/16 v15, 0xe

    aput v13, v2, v15

    .line 399
    const/16 v15, 0xf

    aput v8, v2, v15

    .line 400
    const/16 v15, 0x10

    aput v6, v2, v15

    .line 401
    const/16 v15, 0x11

    aput v1, v2, v15

    .line 402
    const/16 v15, 0x12

    aput v12, v2, v15

    .line 403
    const/16 v15, 0x13

    aput v11, v2, v15

    .line 405
    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    move/from16 v16, v1

    .end local v1    # "color":F
    .local v16, "color":F
    const/16 v1, 0x14

    invoke-virtual {v15, v0, v2, v14, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 406
    return-void
.end method

.method public renderObject(Lcom/badlogic/gdx/maps/MapObject;)V
    .locals 0
    .param p1, "object"    # Lcom/badlogic/gdx/maps/MapObject;

    .line 208
    return-void
.end method

.method public renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V
    .locals 2
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/MapLayer;

    .line 201
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

    .line 202
    .local v1, "object":Lcom/badlogic/gdx/maps/MapObject;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderObject(Lcom/badlogic/gdx/maps/MapObject;)V

    .line 203
    .end local v1    # "object":Lcom/badlogic/gdx/maps/MapObject;
    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method public renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V
    .locals 46
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    .line 212
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getOpacity()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v1

    .line 214
    .local v1, "color":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getWidth()I

    move-result v2

    .line 215
    .local v2, "layerWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getHeight()I

    move-result v3

    .line 217
    .local v3, "layerHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()F

    move-result v4

    iget v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v4, v5

    .line 218
    .local v4, "layerTileWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()F

    move-result v5

    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v5, v6

    .line 220
    .local v5, "layerTileHeight":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getRenderOffsetX()F

    move-result v6

    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v6, v7

    .line 222
    .local v6, "layerOffsetX":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getRenderOffsetY()F

    move-result v7

    neg-float v7, v7

    iget v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v7, v8

    .line 224
    .local v7, "layerOffsetY":F
    iget-object v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v8, v6

    div-float/2addr v8, v4

    float-to-int v8, v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 225
    .local v8, "col1":I
    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v10, v11

    add-float/2addr v10, v4

    sub-float/2addr v10, v6

    div-float/2addr v10, v4

    float-to-int v10, v10

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 228
    .local v10, "col2":I
    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v11, v7

    div-float/2addr v11, v5

    float-to-int v11, v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 229
    .local v11, "row1":I
    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v13, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v13, v13, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v12, v13

    add-float/2addr v12, v5

    sub-float/2addr v12, v7

    div-float/2addr v12, v5

    float-to-int v12, v12

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 232
    .local v12, "row2":I
    if-ge v12, v3, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    move v14, v9

    :goto_0
    iput-boolean v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreN:Z

    .line 233
    if-ge v10, v2, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    move v14, v9

    :goto_1
    iput-boolean v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreE:Z

    .line 234
    if-lez v8, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    move v14, v9

    :goto_2
    iput-boolean v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreW:Z

    .line 235
    if-lez v11, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    move v14, v9

    :goto_3
    iput-boolean v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreS:Z

    .line 237
    iget-object v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->vertices:[F

    .line 238
    .local v14, "vertices":[F
    move v15, v12

    .local v15, "row":I
    :goto_4
    if-lt v15, v11, :cond_d

    .line 239
    move/from16 v16, v8

    move/from16 v9, v16

    .local v9, "col":I
    :goto_5
    if-ge v9, v10, :cond_c

    .line 240
    move-object/from16 v13, p1

    invoke-virtual {v13, v9, v15}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v18

    .line 241
    .local v18, "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    if-nez v18, :cond_4

    move/from16 v36, v1

    move/from16 v20, v2

    move/from16 v22, v3

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v26, v6

    move/from16 v29, v7

    move/from16 v24, v8

    move/from16 v25, v10

    move/from16 v31, v11

    const/4 v1, 0x0

    goto/16 :goto_7

    .line 243
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v19

    .line 244
    .local v19, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    if-nez v19, :cond_5

    move/from16 v36, v1

    move/from16 v20, v2

    move/from16 v22, v3

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v26, v6

    move/from16 v29, v7

    move/from16 v24, v8

    move/from16 v25, v10

    move/from16 v31, v11

    const/4 v1, 0x0

    goto/16 :goto_7

    .line 246
    :cond_5
    move/from16 v20, v2

    .end local v2    # "layerWidth":I
    .local v20, "layerWidth":I
    iget v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->count:I

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->count:I

    .line 247
    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipHorizontally()Z

    move-result v2

    .line 248
    .local v2, "flipX":Z
    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipVertically()Z

    move-result v21

    .line 249
    .local v21, "flipY":Z
    move/from16 v22, v3

    .end local v3    # "layerHeight":I
    .local v22, "layerHeight":I
    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getRotation()I

    move-result v3

    .line 251
    .local v3, "rotations":I
    invoke-interface/range {v19 .. v19}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v23

    .line 252
    .local v23, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    move/from16 v24, v8

    .end local v8    # "col1":I
    .local v24, "col1":I
    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v8

    .line 254
    .local v8, "texture":Lcom/badlogic/gdx/graphics/Texture;
    move/from16 v25, v10

    .end local v10    # "col2":I
    .local v25, "col2":I
    int-to-float v10, v9

    mul-float/2addr v10, v4

    invoke-interface/range {v19 .. v19}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v26

    move/from16 v27, v4

    .end local v4    # "layerTileWidth":F
    .local v27, "layerTileWidth":F
    iget v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float v26, v26, v4

    add-float v10, v10, v26

    add-float/2addr v10, v6

    .line 255
    .local v10, "x1":F
    int-to-float v4, v15

    mul-float/2addr v4, v5

    invoke-interface/range {v19 .. v19}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v26

    move/from16 v28, v5

    .end local v5    # "layerTileHeight":F
    .local v28, "layerTileHeight":F
    iget v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float v26, v26, v5

    add-float v4, v4, v26

    add-float/2addr v4, v7

    .line 256
    .local v4, "y1":F
    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v5, v5

    move/from16 v26, v6

    .end local v6    # "layerOffsetX":F
    .local v26, "layerOffsetX":F
    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v10

    .line 257
    .local v5, "x2":F
    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v6

    int-to-float v6, v6

    move/from16 v29, v7

    .end local v7    # "layerOffsetY":F
    .local v29, "layerOffsetY":F
    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v4

    .line 259
    .local v6, "y2":F
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v30, 0x3f000000    # 0.5f

    div-float v7, v30, v7

    .line 260
    .local v7, "adjustX":F
    move/from16 v31, v11

    .end local v11    # "row1":I
    .local v31, "row1":I
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v30, v30, v11

    .line 261
    .local v30, "adjustY":F
    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v11

    add-float/2addr v11, v7

    .line 262
    .local v11, "u1":F
    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v32

    sub-float v32, v32, v30

    .line 263
    .local v32, "v1":F
    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v33

    sub-float v33, v33, v7

    .line 264
    .local v33, "u2":F
    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v34

    add-float v34, v34, v30

    .line 266
    .local v34, "v2":F
    const/16 v17, 0x0

    aput v10, v14, v17

    .line 267
    const/16 v16, 0x1

    aput v4, v14, v16

    .line 268
    move/from16 v35, v7

    .end local v7    # "adjustX":F
    .local v35, "adjustX":F
    const/4 v7, 0x2

    aput v1, v14, v7

    .line 269
    const/4 v7, 0x3

    aput v11, v14, v7

    .line 270
    const/16 v37, 0x4

    aput v32, v14, v37

    .line 272
    const/16 v38, 0x5

    aput v10, v14, v38

    .line 273
    const/16 v38, 0x6

    aput v6, v14, v38

    .line 274
    const/16 v38, 0x7

    aput v1, v14, v38

    .line 275
    const/16 v38, 0x8

    aput v11, v14, v38

    .line 276
    const/16 v39, 0x9

    aput v34, v14, v39

    .line 278
    const/16 v40, 0xa

    aput v5, v14, v40

    .line 279
    const/16 v40, 0xb

    aput v6, v14, v40

    .line 280
    const/16 v40, 0xc

    aput v1, v14, v40

    .line 281
    const/16 v40, 0xd

    aput v33, v14, v40

    .line 282
    const/16 v41, 0xe

    aput v34, v14, v41

    .line 284
    const/16 v42, 0xf

    aput v5, v14, v42

    .line 285
    const/16 v42, 0x10

    aput v4, v14, v42

    .line 286
    const/16 v42, 0x11

    aput v1, v14, v42

    .line 287
    const/16 v42, 0x12

    aput v33, v14, v42

    .line 288
    const/16 v43, 0x13

    aput v32, v14, v43

    .line 290
    if-eqz v2, :cond_6

    .line 291
    aget v44, v14, v7

    .line 292
    .local v44, "temp":F
    aget v45, v14, v40

    aput v45, v14, v7

    .line 293
    aput v44, v14, v40

    .line 294
    aget v44, v14, v38

    .line 295
    aget v45, v14, v42

    aput v45, v14, v38

    .line 296
    aput v44, v14, v42

    .line 298
    .end local v44    # "temp":F
    :cond_6
    if-eqz v21, :cond_7

    .line 299
    aget v44, v14, v37

    .line 300
    .restart local v44    # "temp":F
    aget v45, v14, v41

    aput v45, v14, v37

    .line 301
    aput v44, v14, v41

    .line 302
    aget v44, v14, v39

    .line 303
    aget v45, v14, v43

    aput v45, v14, v39

    .line 304
    aput v44, v14, v43

    .line 306
    .end local v44    # "temp":F
    :cond_7
    if-eqz v3, :cond_b

    .line 307
    const/4 v7, 0x1

    if-eq v3, v7, :cond_a

    const/4 v7, 0x2

    if-eq v3, v7, :cond_9

    const/4 v7, 0x3

    if-eq v3, v7, :cond_8

    goto :goto_6

    .line 338
    :cond_8
    aget v7, v14, v37

    .line 339
    .local v7, "tempV":F
    aget v36, v14, v43

    aput v36, v14, v37

    .line 340
    aget v36, v14, v41

    aput v36, v14, v43

    .line 341
    aget v36, v14, v39

    aput v36, v14, v41

    .line 342
    aput v7, v14, v39

    .line 344
    const/16 v36, 0x3

    aget v37, v14, v36

    .line 345
    .local v37, "tempU":F
    aget v39, v14, v42

    aput v39, v14, v36

    .line 346
    aget v36, v14, v40

    aput v36, v14, v42

    .line 347
    aget v36, v14, v38

    aput v36, v14, v40

    .line 348
    aput v37, v14, v38

    .line 349
    goto :goto_6

    .line 323
    .end local v7    # "tempV":F
    .end local v37    # "tempU":F
    :cond_9
    const/4 v7, 0x3

    aget v36, v14, v7

    .line 324
    .local v36, "tempU":F
    aget v44, v14, v40

    aput v44, v14, v7

    .line 325
    aput v36, v14, v40

    .line 326
    aget v7, v14, v38

    .line 327
    .end local v36    # "tempU":F
    .local v7, "tempU":F
    aget v36, v14, v42

    aput v36, v14, v38

    .line 328
    aput v7, v14, v42

    .line 329
    aget v36, v14, v37

    .line 330
    .local v36, "tempV":F
    aget v38, v14, v41

    aput v38, v14, v37

    .line 331
    aput v36, v14, v41

    .line 332
    aget v36, v14, v39

    .line 333
    aget v37, v14, v43

    aput v37, v14, v39

    .line 334
    aput v36, v14, v43

    .line 335
    goto :goto_6

    .line 309
    .end local v7    # "tempU":F
    .end local v36    # "tempV":F
    :cond_a
    aget v7, v14, v37

    .line 310
    .local v7, "tempV":F
    aget v36, v14, v39

    aput v36, v14, v37

    .line 311
    aget v36, v14, v41

    aput v36, v14, v39

    .line 312
    aget v36, v14, v43

    aput v36, v14, v41

    .line 313
    aput v7, v14, v43

    .line 315
    const/16 v36, 0x3

    aget v37, v14, v36

    .line 316
    .restart local v37    # "tempU":F
    aget v39, v14, v38

    aput v39, v14, v36

    .line 317
    aget v36, v14, v40

    aput v36, v14, v38

    .line 318
    aget v36, v14, v42

    aput v36, v14, v40

    .line 319
    aput v37, v14, v42

    .line 353
    .end local v7    # "tempV":F
    .end local v37    # "tempU":F
    :cond_b
    :goto_6
    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    const/16 v0, 0x14

    move/from16 v36, v1

    const/4 v1, 0x0

    .end local v1    # "color":F
    .local v36, "color":F
    invoke-virtual {v7, v8, v14, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 239
    .end local v2    # "flipX":Z
    .end local v3    # "rotations":I
    .end local v4    # "y1":F
    .end local v5    # "x2":F
    .end local v6    # "y2":F
    .end local v8    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v10    # "x1":F
    .end local v11    # "u1":F
    .end local v18    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .end local v19    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .end local v21    # "flipY":Z
    .end local v23    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v30    # "adjustY":F
    .end local v32    # "v1":F
    .end local v33    # "u2":F
    .end local v34    # "v2":F
    .end local v35    # "adjustX":F
    :goto_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v20

    move/from16 v3, v22

    move/from16 v8, v24

    move/from16 v10, v25

    move/from16 v6, v26

    move/from16 v4, v27

    move/from16 v5, v28

    move/from16 v7, v29

    move/from16 v11, v31

    move/from16 v1, v36

    goto/16 :goto_5

    .end local v20    # "layerWidth":I
    .end local v22    # "layerHeight":I
    .end local v24    # "col1":I
    .end local v25    # "col2":I
    .end local v26    # "layerOffsetX":F
    .end local v27    # "layerTileWidth":F
    .end local v28    # "layerTileHeight":F
    .end local v29    # "layerOffsetY":F
    .end local v31    # "row1":I
    .end local v36    # "color":F
    .restart local v1    # "color":F
    .local v2, "layerWidth":I
    .local v3, "layerHeight":I
    .local v4, "layerTileWidth":F
    .local v5, "layerTileHeight":F
    .local v6, "layerOffsetX":F
    .local v7, "layerOffsetY":F
    .local v8, "col1":I
    .local v10, "col2":I
    .local v11, "row1":I
    :cond_c
    move-object/from16 v13, p1

    move/from16 v36, v1

    move/from16 v20, v2

    move/from16 v22, v3

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v26, v6

    move/from16 v29, v7

    move/from16 v24, v8

    move/from16 v25, v10

    move/from16 v31, v11

    const/4 v1, 0x0

    .line 238
    .end local v1    # "color":F
    .end local v2    # "layerWidth":I
    .end local v3    # "layerHeight":I
    .end local v4    # "layerTileWidth":F
    .end local v5    # "layerTileHeight":F
    .end local v6    # "layerOffsetX":F
    .end local v7    # "layerOffsetY":F
    .end local v8    # "col1":I
    .end local v9    # "col":I
    .end local v10    # "col2":I
    .end local v11    # "row1":I
    .restart local v20    # "layerWidth":I
    .restart local v22    # "layerHeight":I
    .restart local v24    # "col1":I
    .restart local v25    # "col2":I
    .restart local v26    # "layerOffsetX":F
    .restart local v27    # "layerTileWidth":F
    .restart local v28    # "layerTileHeight":F
    .restart local v29    # "layerOffsetY":F
    .restart local v31    # "row1":I
    .restart local v36    # "color":F
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    move v9, v1

    move/from16 v1, v36

    goto/16 :goto_4

    .line 356
    .end local v15    # "row":I
    .end local v20    # "layerWidth":I
    .end local v22    # "layerHeight":I
    .end local v24    # "col1":I
    .end local v25    # "col2":I
    .end local v26    # "layerOffsetX":F
    .end local v27    # "layerTileWidth":F
    .end local v28    # "layerTileHeight":F
    .end local v29    # "layerOffsetY":F
    .end local v31    # "row1":I
    .end local v36    # "color":F
    .restart local v1    # "color":F
    .restart local v2    # "layerWidth":I
    .restart local v3    # "layerHeight":I
    .restart local v4    # "layerTileWidth":F
    .restart local v5    # "layerTileHeight":F
    .restart local v6    # "layerOffsetX":F
    .restart local v7    # "layerOffsetY":F
    .restart local v8    # "col1":I
    .restart local v10    # "col2":I
    .restart local v11    # "row1":I
    :cond_d
    return-void
.end method

.method public setBlending(Z)V
    .locals 0
    .param p1, "blending"    # Z

    .line 440
    iput-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->blending:Z

    .line 441
    return-void
.end method

.method public setMaxTileSize(FF)V
    .locals 0
    .param p1, "maxPixelWidth"    # F
    .param p2, "maxPixelHeight"    # F

    .line 435
    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileWidth:F

    .line 436
    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileHeight:F

    .line 437
    return-void
.end method

.method public setOverCache(F)V
    .locals 0
    .param p1, "overCache"    # F

    .line 423
    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->overCache:F

    .line 424
    return-void
.end method

.method public setView(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V
    .locals 6
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 88
    iget v0, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iget v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 89
    .local v0, "width":F
    iget v1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileHeight:F

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 90
    .local v1, "height":F
    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v5, v0, v2

    sub-float/2addr v4, v5

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v2, v1, v2

    sub-float/2addr v5, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 92
    iget-boolean v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreW:Z

    const v3, 0x3727c5ac    # 1.0E-5f

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v4, v3

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_3

    :cond_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreS:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v4, v3

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_3

    :cond_1
    iget-boolean v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreE:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v4, v5

    add-float/2addr v4, v3

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreN:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v4, v5

    add-float/2addr v4, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    .line 96
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    .line 97
    :cond_4
    return-void
.end method

.method public setView(Lcom/badlogic/gdx/math/Matrix4;FFFF)V
    .locals 4
    .param p1, "projection"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 102
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileWidth:F

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float v2, v0, v1

    sub-float/2addr p2, v2

    .line 103
    iget v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileHeight:F

    mul-float v3, v2, v1

    sub-float/2addr p3, v3

    .line 104
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    mul-float/2addr v0, v1

    add-float/2addr p4, v0

    .line 105
    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    add-float/2addr p5, v2

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 108
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreW:Z

    const v1, 0x3727c5ac    # 1.0E-5f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v2, v1

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v2, v1

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v2, v3

    add-float/2addr v2, v1

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreN:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, v3

    add-float/2addr v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 112
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    .line 113
    :cond_4
    return-void
.end method
