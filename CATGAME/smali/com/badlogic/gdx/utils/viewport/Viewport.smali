.class public abstract Lcom/badlogic/gdx/utils/viewport/Viewport;
.super Ljava/lang/Object;
.source "Viewport.java"


# instance fields
.field private camera:Lcom/badlogic/gdx/graphics/Camera;

.field private screenHeight:I

.field private screenWidth:I

.field private screenX:I

.field private screenY:I

.field private final tmp:Lcom/badlogic/gdx/math/Vector3;

.field private worldHeight:F

.field private worldWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply(Z)V

    .line 44
    return-void
.end method

.method public apply(Z)V
    .locals 4
    .param p1, "centerCamera"    # Z

    .line 49
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    iget v2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    iget v3, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    invoke-static {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->glViewport(IIII)V

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldWidth:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldHeight:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    .line 52
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldHeight:F

    div-float/2addr v3, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Camera;->update()V

    .line 54
    return-void
.end method

.method public calculateScissors(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 8
    .param p1, "batchTransform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "area"    # Lcom/badlogic/gdx/math/Rectangle;
    .param p3, "scissor"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    int-to-float v4, v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;FFFFLcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 113
    return-void
.end method

.method public getBottomGutterHeight()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    return v0
.end method

.method public getCamera()Lcom/badlogic/gdx/graphics/Camera;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    return-object v0
.end method

.method public getLeftGutterWidth()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    return v0
.end method

.method public getPickRay(FF)Lcom/badlogic/gdx/math/collision/Ray;
    .locals 7
    .param p1, "screenX"    # F
    .param p2, "screenY"    # F

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    int-to-float v3, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    int-to-float v4, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    int-to-float v5, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    int-to-float v6, v1

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Camera;->getPickRay(FFFFFF)Lcom/badlogic/gdx/math/collision/Ray;

    move-result-object v0

    return-object v0
.end method

.method public getRightGutterWidth()I
    .locals 3

    .line 226
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    iget v2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRightGutterX()I
    .locals 2

    .line 221
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    return v0
.end method

.method public getScreenX()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    return v0
.end method

.method public getScreenY()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    return v0
.end method

.method public getTopGutterHeight()I
    .locals 3

    .line 241
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    iget v2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTopGutterY()I
    .locals 2

    .line 236
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWorldHeight()F
    .locals 1

    .line 145
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldHeight:F

    return v0
.end method

.method public getWorldWidth()F
    .locals 1

    .line 136
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldWidth:F

    return v0
.end method

.method public project(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 10
    .param p1, "worldCoords"    # Lcom/badlogic/gdx/math/Vector2;

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 84
    iget-object v4, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v5, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    int-to-float v6, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    int-to-float v7, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    int-to-float v8, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    int-to-float v9, v0

    invoke-virtual/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 86
    return-object p1
.end method

.method public project(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "worldCoords"    # Lcom/badlogic/gdx/math/Vector3;

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    int-to-float v2, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    int-to-float v3, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    int-to-float v4, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 102
    return-object p1
.end method

.method public setCamera(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .line 132
    iput-object p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 133
    return-void
.end method

.method public setScreenBounds(IIII)V
    .locals 0
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "screenWidth"    # I
    .param p4, "screenHeight"    # I

    .line 208
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    .line 209
    iput p2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    .line 210
    iput p3, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    .line 211
    iput p4, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    .line 212
    return-void
.end method

.method public setScreenHeight(I)V
    .locals 0
    .param p1, "screenHeight"    # I

    .line 191
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    .line 192
    return-void
.end method

.method public setScreenPosition(II)V
    .locals 0
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    .line 196
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    .line 197
    iput p2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    .line 198
    return-void
.end method

.method public setScreenSize(II)V
    .locals 0
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I

    .line 202
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    .line 203
    iput p2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    .line 204
    return-void
.end method

.method public setScreenWidth(I)V
    .locals 0
    .param p1, "screenWidth"    # I

    .line 182
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    .line 183
    return-void
.end method

.method public setScreenX(I)V
    .locals 0
    .param p1, "screenX"    # I

    .line 164
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    .line 165
    return-void
.end method

.method public setScreenY(I)V
    .locals 0
    .param p1, "screenY"    # I

    .line 173
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    .line 174
    return-void
.end method

.method public setWorldHeight(F)V
    .locals 0
    .param p1, "worldHeight"    # F

    .line 150
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldHeight:F

    .line 151
    return-void
.end method

.method public setWorldSize(FF)V
    .locals 0
    .param p1, "worldWidth"    # F
    .param p2, "worldHeight"    # F

    .line 154
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldWidth:F

    .line 155
    iput p2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldHeight:F

    .line 156
    return-void
.end method

.method public setWorldWidth(F)V
    .locals 0
    .param p1, "worldWidth"    # F

    .line 141
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldWidth:F

    .line 142
    return-void
.end method

.method public toScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector2;
    .locals 4
    .param p1, "worldCoords"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "transformMatrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 124
    return-object p1
.end method

.method public unproject(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 10
    .param p1, "screenCoords"    # Lcom/badlogic/gdx/math/Vector2;

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 74
    iget-object v4, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v5, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    int-to-float v6, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    int-to-float v7, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    int-to-float v8, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    int-to-float v9, v0

    invoke-virtual/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/Camera;->unproject(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 76
    return-object p1
.end method

.method public unproject(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "screenCoords"    # Lcom/badlogic/gdx/math/Vector3;

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    int-to-float v2, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    int-to-float v3, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    int-to-float v4, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Camera;->unproject(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 94
    return-object p1
.end method

.method public final update(II)V
    .locals 1
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(IIZ)V

    .line 59
    return-void
.end method

.method public update(IIZ)V
    .locals 0
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I
    .param p3, "centerCamera"    # Z

    .line 66
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply(Z)V

    .line 67
    return-void
.end method
