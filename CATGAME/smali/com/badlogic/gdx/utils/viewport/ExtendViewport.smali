.class public Lcom/badlogic/gdx/utils/viewport/ExtendViewport;
.super Lcom/badlogic/gdx/utils/viewport/Viewport;
.source "ExtendViewport.java"


# instance fields
.field private maxWorldHeight:F

.field private maxWorldWidth:F

.field private minWorldHeight:F

.field private minWorldWidth:F


# direct methods
.method public constructor <init>(FF)V
    .locals 6
    .param p1, "minWorldWidth"    # F
    .param p2, "minWorldHeight"    # F

    .line 34
    new-instance v5, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;-><init>(FFFFLcom/badlogic/gdx/graphics/Camera;)V

    .line 35
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 6
    .param p1, "minWorldWidth"    # F
    .param p2, "minWorldHeight"    # F
    .param p3, "maxWorldWidth"    # F
    .param p4, "maxWorldHeight"    # F

    .line 45
    new-instance v5, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;-><init>(FFFFLcom/badlogic/gdx/graphics/Camera;)V

    .line 46
    return-void
.end method

.method public constructor <init>(FFFFLcom/badlogic/gdx/graphics/Camera;)V
    .locals 0
    .param p1, "minWorldWidth"    # F
    .param p2, "minWorldHeight"    # F
    .param p3, "maxWorldWidth"    # F
    .param p4, "maxWorldHeight"    # F
    .param p5, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .line 51
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/viewport/Viewport;-><init>()V

    .line 52
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldWidth:F

    .line 53
    iput p2, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldHeight:F

    .line 54
    iput p3, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldWidth:F

    .line 55
    iput p4, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldHeight:F

    .line 56
    invoke-virtual {p0, p5}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->setCamera(Lcom/badlogic/gdx/graphics/Camera;)V

    .line 57
    return-void
.end method

.method public constructor <init>(FFLcom/badlogic/gdx/graphics/Camera;)V
    .locals 6
    .param p1, "minWorldWidth"    # F
    .param p2, "minWorldHeight"    # F
    .param p3, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .line 39
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;-><init>(FFFFLcom/badlogic/gdx/graphics/Camera;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getMaxWorldHeight()F
    .locals 1

    .line 118
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldHeight:F

    return v0
.end method

.method public getMaxWorldWidth()F
    .locals 1

    .line 110
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldWidth:F

    return v0
.end method

.method public getMinWorldHeight()F
    .locals 1

    .line 102
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldHeight:F

    return v0
.end method

.method public getMinWorldWidth()F
    .locals 1

    .line 94
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldWidth:F

    return v0
.end method

.method public setMaxWorldHeight(F)V
    .locals 0
    .param p1, "maxWorldHeight"    # F

    .line 122
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldHeight:F

    .line 123
    return-void
.end method

.method public setMaxWorldWidth(F)V
    .locals 0
    .param p1, "maxWorldWidth"    # F

    .line 114
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldWidth:F

    .line 115
    return-void
.end method

.method public setMinWorldHeight(F)V
    .locals 0
    .param p1, "minWorldHeight"    # F

    .line 106
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldHeight:F

    .line 107
    return-void
.end method

.method public setMinWorldWidth(F)V
    .locals 0
    .param p1, "minWorldWidth"    # F

    .line 98
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldWidth:F

    .line 99
    return-void
.end method

.method public update(IIZ)V
    .locals 10
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I
    .param p3, "centerCamera"    # Z

    .line 62
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldWidth:F

    .line 63
    .local v0, "worldWidth":F
    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldHeight:F

    .line 64
    .local v1, "worldHeight":F
    sget-object v2, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/badlogic/gdx/utils/Scaling;->apply(FFFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 67
    .local v2, "scaled":Lcom/badlogic/gdx/math/Vector2;
    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 68
    .local v3, "viewportWidth":I
    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 69
    .local v4, "viewportHeight":I
    const/4 v5, 0x0

    if-ge v3, p1, :cond_1

    .line 70
    int-to-float v6, v4

    div-float/2addr v6, v1

    .line 71
    .local v6, "toViewportSpace":F
    int-to-float v7, v4

    div-float v7, v1, v7

    .line 72
    .local v7, "toWorldSpace":F
    sub-int v8, p1, v3

    int-to-float v8, v8

    mul-float/2addr v8, v7

    .line 73
    .local v8, "lengthen":F
    iget v9, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldWidth:F

    cmpl-float v5, v9, v5

    if-lez v5, :cond_0

    iget v5, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldWidth:F

    sub-float/2addr v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 74
    :cond_0
    add-float/2addr v0, v8

    .line 75
    mul-float v5, v8, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v3, v5

    .end local v6    # "toViewportSpace":F
    .end local v7    # "toWorldSpace":F
    .end local v8    # "lengthen":F
    goto :goto_0

    .line 76
    :cond_1
    if-ge v4, p2, :cond_3

    .line 77
    int-to-float v6, v3

    div-float/2addr v6, v0

    .line 78
    .restart local v6    # "toViewportSpace":F
    int-to-float v7, v3

    div-float v7, v0, v7

    .line 79
    .restart local v7    # "toWorldSpace":F
    sub-int v8, p2, v4

    int-to-float v8, v8

    mul-float/2addr v8, v7

    .line 80
    .restart local v8    # "lengthen":F
    iget v9, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldHeight:F

    cmpl-float v5, v9, v5

    if-lez v5, :cond_2

    iget v5, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldHeight:F

    sub-float/2addr v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 81
    :cond_2
    add-float/2addr v1, v8

    .line 82
    mul-float v5, v8, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_1

    .line 76
    .end local v6    # "toViewportSpace":F
    .end local v7    # "toWorldSpace":F
    .end local v8    # "lengthen":F
    :cond_3
    :goto_0
    nop

    .line 85
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->setWorldSize(FF)V

    .line 88
    sub-int v5, p1, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v6, p2, v4

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0, v5, v6, v3, v4}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->setScreenBounds(IIII)V

    .line 90
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->apply(Z)V

    .line 91
    return-void
.end method
