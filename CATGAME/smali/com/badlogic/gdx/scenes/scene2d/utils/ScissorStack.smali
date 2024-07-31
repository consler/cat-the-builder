.class public Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;
.super Ljava/lang/Object;
.source "ScissorStack.java"


# static fields
.field private static scissors:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field static tmp:Lcom/badlogic/gdx/math/Vector3;

.field static final viewport:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    .line 34
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateScissors(Lcom/badlogic/gdx/graphics/Camera;FFFFLcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 13
    .param p0, "camera"    # Lcom/badlogic/gdx/graphics/Camera;
    .param p1, "viewportX"    # F
    .param p2, "viewportY"    # F
    .param p3, "viewportWidth"    # F
    .param p4, "viewportHeight"    # F
    .param p5, "batchTransform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p6, "area"    # Lcom/badlogic/gdx/math/Rectangle;
    .param p7, "scissor"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 123
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 124
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 125
    sget-object v8, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    move-object v7, p0

    move v9, p1

    move v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v7 .. v12}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 126
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 127
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 129
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v4, v5

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v7, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v5, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 130
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 131
    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    move-object v4, p0

    move v6, p1

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 132
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 133
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 134
    return-void
.end method

.method public static calculateScissors(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 9
    .param p0, "camera"    # Lcom/badlogic/gdx/graphics/Camera;
    .param p1, "batchTransform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "area"    # Lcom/badlogic/gdx/math/Rectangle;
    .param p3, "scissor"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 109
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v4, v0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;FFFFLcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 110
    return-void
.end method

.method private static fix(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 3
    .param p0, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 92
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 93
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 94
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 95
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 96
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 97
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 98
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 100
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 101
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 102
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 104
    :cond_1
    return-void
.end method

.method public static getViewport()Lcom/badlogic/gdx/math/Rectangle;
    .locals 4

    .line 138
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    .line 139
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 140
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0

    .line 142
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    .line 143
    .local v0, "scissor":Lcom/badlogic/gdx/math/Rectangle;
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Rectangle;->set(Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/math/Rectangle;

    .line 144
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    return-object v1
.end method

.method public static peekScissors()Lcom/badlogic/gdx/math/Rectangle;
    .locals 1

    .line 88
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public static popScissors()Lcom/badlogic/gdx/math/Rectangle;
    .locals 6

    .line 77
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    .line 78
    .local v0, "old":Lcom/badlogic/gdx/math/Rectangle;
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    .line 79
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v2, 0xc11

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    goto :goto_0

    .line 81
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Rectangle;

    .line 82
    .local v1, "scissor":Lcom/badlogic/gdx/math/Rectangle;
    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v2, v2

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v3, v3

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v4, v4

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->glScissor(IIII)V

    .line 84
    .end local v1    # "scissor":Lcom/badlogic/gdx/math/Rectangle;
    :goto_0
    return-object v0
.end method

.method public static pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 10
    .param p0, "scissor"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 46
    invoke-static {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->fix(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 48
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 49
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v2, 0xc11

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    return v2

    .line 53
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    iget v4, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v4, v1

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    .line 54
    .local v0, "parent":Lcom/badlogic/gdx/math/Rectangle;
    iget v4, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 55
    .local v4, "minX":F
    iget v5, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v6, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v7, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 56
    .local v5, "maxX":F
    sub-float v6, v5, v4

    cmpg-float v6, v6, v3

    if-gez v6, :cond_3

    return v2

    .line 58
    :cond_3
    iget v6, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v7, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 59
    .local v6, "minY":F
    iget v7, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v8, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v9, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 60
    .local v7, "maxY":F
    sub-float v8, v7, v6

    cmpg-float v8, v8, v3

    if-gez v8, :cond_4

    return v2

    .line 62
    :cond_4
    iput v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 63
    iput v6, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 64
    sub-float v2, v5, v4

    iput v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 65
    sub-float v2, v7, v6

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 67
    .end local v0    # "parent":Lcom/badlogic/gdx/math/Rectangle;
    .end local v4    # "minX":F
    .end local v5    # "maxX":F
    .end local v6    # "minY":F
    .end local v7    # "maxY":F
    :goto_1
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 68
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v0, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v2, v2

    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v3, v3

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v4, v4

    invoke-static {v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->glScissor(IIII)V

    .line 69
    return v1
.end method
