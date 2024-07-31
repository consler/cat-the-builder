.class public Lcom/badlogic/gdx/graphics/g2d/SpriteCache;
.super Ljava/lang/Object;
.source "SpriteCache.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    }
.end annotation


# static fields
.field private static final tempVertices:[F


# instance fields
.field private caches:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;",
            ">;"
        }
    .end annotation
.end field

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private colorPacked:F

.field private final combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private final counts:Lcom/badlogic/gdx/utils/IntArray;

.field private currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

.field private customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private drawing:Z

.field private final mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private final projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field public renderCalls:I

.field private final shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private final textures:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation
.end field

.field public totalRenderCalls:I

.field private final transformMatrix:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const/16 v0, 0x1e

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 98
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;-><init>(IZ)V

    .line 99
    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;Z)V
    .locals 10
    .param p1, "size"    # I
    .param p2, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p3, "useIndices"    # Z

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 76
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    .line 78
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    .line 83
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    .line 85
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 86
    sget v0, Lcom/badlogic/gdx/graphics/Color;->WHITE_FLOAT_BITS:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    .line 94
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    .line 114
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 116
    if-eqz p3, :cond_1

    const/16 v1, 0x1fff

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t have more than 8191 sprites per batch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    :goto_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v2, 0x4

    if-eqz p3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    const/4 v3, 0x6

    :goto_1
    mul-int/2addr v3, p1

    if-eqz p3, :cond_3

    mul-int/lit8 v4, p1, 0x6

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v7, 0x1

    const/4 v8, 0x2

    const-string v9, "a_position"

    invoke-direct {v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v0

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v9, "a_color"

    invoke-direct {v6, v2, v2, v9}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v7

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v6, 0x10

    const-string v9, "a_texCoord0"

    invoke-direct {v2, v6, v8, v9}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v5, v8

    invoke-direct {v1, v7, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 121
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->setAutoBind(Z)V

    .line 123
    if-eqz p3, :cond_5

    .line 124
    mul-int/lit8 v0, p1, 0x6

    .line 125
    .local v0, "length":I
    new-array v1, v0, [S

    .line 126
    .local v1, "indices":[S
    const/4 v2, 0x0

    .line 127
    .local v2, "j":S
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v0, :cond_4

    .line 128
    add-int/lit8 v4, v3, 0x0

    aput-short v2, v1, v4

    .line 129
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v2, 0x1

    int-to-short v5, v5

    aput-short v5, v1, v4

    .line 130
    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v2, 0x2

    int-to-short v5, v5

    aput-short v5, v1, v4

    .line 131
    add-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, v2, 0x2

    int-to-short v5, v5

    aput-short v5, v1, v4

    .line 132
    add-int/lit8 v4, v3, 0x4

    add-int/lit8 v5, v2, 0x3

    int-to-short v5, v5

    aput-short v5, v1, v4

    .line 133
    add-int/lit8 v4, v3, 0x5

    aput-short v2, v1, v4

    .line 127
    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v4, v2, 0x4

    int-to-short v2, v4

    goto :goto_3

    .line 135
    .end local v3    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    .line 138
    .end local v0    # "length":I
    .end local v1    # "indices":[S
    .end local v2    # "j":S
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 139
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "useIndices"    # Z

    .line 106
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;Z)V

    .line 107
    return-void
.end method

.method static createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 6

    .line 979
    const-string v0, "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projectionViewMatrix;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projectionViewMatrix * a_position;\n}\n"

    .line 993
    .local v0, "vertexShader":Ljava/lang/String;
    const-string v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n}"

    .line 1003
    .local v1, "fragmentShader":Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    .local v2, "shader":Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1005
    return-object v2

    .line 1004
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error compiling shader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getLog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/graphics/Texture;FF)V
    .locals 12
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 266
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    .line 267
    .local v0, "fx2":F
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p3

    .line 269
    .local v1, "fy2":F
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x0

    aput p2, v2, v3

    .line 270
    const/4 v4, 0x1

    aput p3, v2, v4

    .line 271
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    const/4 v5, 0x2

    aput v4, v2, v5

    .line 272
    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v2, v5

    .line 273
    const/4 v5, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v2, v5

    .line 275
    const/4 v5, 0x5

    aput p2, v2, v5

    .line 276
    const/4 v5, 0x6

    aput v1, v2, v5

    .line 277
    const/4 v5, 0x7

    aput v4, v2, v5

    .line 278
    const/16 v5, 0x8

    aput v6, v2, v5

    .line 279
    const/16 v5, 0x9

    aput v6, v2, v5

    .line 281
    const/16 v5, 0xa

    aput v0, v2, v5

    .line 282
    const/16 v5, 0xb

    aput v1, v2, v5

    .line 283
    const/16 v5, 0xc

    aput v4, v2, v5

    .line 284
    const/16 v4, 0xd

    aput v7, v2, v4

    .line 285
    const/16 v4, 0xe

    aput v6, v2, v4

    .line 287
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v2

    const/16 v4, 0x14

    const/16 v5, 0x13

    const/16 v8, 0x12

    const/16 v9, 0x11

    const/16 v10, 0x10

    const/16 v11, 0xf

    if-lez v2, :cond_0

    .line 288
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v0, v2, v11

    .line 289
    aput p3, v2, v10

    .line 290
    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v6, v2, v9

    .line 291
    aput v7, v2, v8

    .line 292
    aput v7, v2, v5

    .line 293
    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0

    .line 295
    :cond_0
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v0, v2, v11

    .line 296
    aput v1, v2, v10

    .line 297
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v10, v2, v9

    .line 298
    aput v7, v2, v8

    .line 299
    aput v6, v2, v5

    .line 301
    aput v0, v2, v4

    .line 302
    const/16 v4, 0x15

    aput p3, v2, v4

    .line 303
    const/16 v4, 0x16

    aput v10, v2, v4

    .line 304
    const/16 v4, 0x17

    aput v7, v2, v4

    .line 305
    const/16 v4, 0x18

    aput v7, v2, v4

    .line 307
    const/16 v4, 0x19

    aput p2, v2, v4

    .line 308
    const/16 v4, 0x1a

    aput p3, v2, v4

    .line 309
    const/16 v4, 0x1b

    aput v10, v2, v4

    .line 310
    const/16 v4, 0x1c

    aput v6, v2, v4

    .line 311
    const/16 v4, 0x1d

    aput v7, v2, v4

    .line 312
    const/16 v4, 0x1e

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 314
    :goto_0
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .locals 38
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F
    .param p11, "srcX"    # I
    .param p12, "srcY"    # I
    .param p13, "srcWidth"    # I
    .param p14, "srcHeight"    # I
    .param p15, "flipX"    # Z
    .param p16, "flipY"    # Z

    .line 503
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p11

    move/from16 v5, p12

    add-float v6, p2, v2

    .line 504
    .local v6, "worldOriginX":F
    add-float v7, p3, v3

    .line 505
    .local v7, "worldOriginY":F
    neg-float v8, v2

    .line 506
    .local v8, "fx":F
    neg-float v9, v3

    .line 507
    .local v9, "fy":F
    sub-float v10, p6, v2

    .line 508
    .local v10, "fx2":F
    sub-float v11, p7, v3

    .line 511
    .local v11, "fy2":F
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v13, p8, v12

    if-nez v13, :cond_0

    cmpl-float v13, p9, v12

    if-eqz v13, :cond_1

    .line 512
    :cond_0
    mul-float v8, v8, p8

    .line 513
    mul-float v9, v9, p9

    .line 514
    mul-float v10, v10, p8

    .line 515
    mul-float v11, v11, p9

    .line 519
    :cond_1
    move v13, v8

    .line 520
    .local v13, "p1x":F
    move v14, v9

    .line 521
    .local v14, "p1y":F
    move v15, v8

    .line 522
    .local v15, "p2x":F
    move/from16 v16, v11

    .line 523
    .local v16, "p2y":F
    move/from16 v17, v10

    .line 524
    .local v17, "p3x":F
    move/from16 v18, v11

    .line 525
    .local v18, "p3y":F
    move/from16 v19, v10

    .line 526
    .local v19, "p4x":F
    move/from16 v20, v9

    .line 538
    .local v20, "p4y":F
    const/16 v21, 0x0

    cmpl-float v21, p10, v21

    if-eqz v21, :cond_2

    .line 539
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v21

    .line 540
    .local v21, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v22

    .line 542
    .local v22, "sin":F
    mul-float v23, v21, v13

    mul-float v24, v22, v14

    sub-float v23, v23, v24

    .line 543
    .local v23, "x1":F
    mul-float v24, v22, v13

    mul-float v25, v21, v14

    add-float v24, v24, v25

    .line 545
    .local v24, "y1":F
    mul-float v25, v21, v15

    mul-float v26, v22, v16

    sub-float v25, v25, v26

    .line 546
    .local v25, "x2":F
    mul-float v26, v22, v15

    mul-float v27, v21, v16

    add-float v26, v26, v27

    .line 548
    .local v26, "y2":F
    mul-float v27, v21, v17

    mul-float v28, v22, v18

    sub-float v27, v27, v28

    .line 549
    .local v27, "x3":F
    mul-float v28, v22, v17

    mul-float v29, v21, v18

    add-float v28, v28, v29

    .line 551
    .local v28, "y3":F
    sub-float v29, v27, v25

    add-float v29, v23, v29

    .line 552
    .local v29, "x4":F
    sub-float v30, v26, v24

    sub-float v21, v28, v30

    .line 553
    .end local v22    # "sin":F
    .local v21, "y4":F
    goto :goto_0

    .line 554
    .end local v21    # "y4":F
    .end local v23    # "x1":F
    .end local v24    # "y1":F
    .end local v25    # "x2":F
    .end local v26    # "y2":F
    .end local v27    # "x3":F
    .end local v28    # "y3":F
    .end local v29    # "x4":F
    :cond_2
    move/from16 v23, v13

    .line 555
    .restart local v23    # "x1":F
    move/from16 v24, v14

    .line 557
    .restart local v24    # "y1":F
    move/from16 v25, v15

    .line 558
    .restart local v25    # "x2":F
    move/from16 v26, v16

    .line 560
    .restart local v26    # "y2":F
    move/from16 v27, v17

    .line 561
    .restart local v27    # "x3":F
    move/from16 v28, v18

    .line 563
    .restart local v28    # "y3":F
    move/from16 v29, v19

    .line 564
    .restart local v29    # "x4":F
    move/from16 v21, v20

    .line 567
    .restart local v21    # "y4":F
    :goto_0
    add-float v23, v23, v6

    .line 568
    add-float v24, v24, v7

    .line 569
    add-float v25, v25, v6

    .line 570
    add-float v26, v26, v7

    .line 571
    add-float v27, v27, v6

    .line 572
    add-float v28, v28, v7

    .line 573
    add-float v29, v29, v6

    .line 574
    add-float v21, v21, v7

    .line 576
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v12, v2

    .line 577
    .local v2, "invTexWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v12, v3

    .line 578
    .local v12, "invTexHeight":F
    int-to-float v3, v4

    mul-float/2addr v3, v2

    .line 579
    .local v3, "u":F
    move/from16 v22, v6

    .end local v6    # "worldOriginX":F
    .local v22, "worldOriginX":F
    add-int v6, v5, p14

    int-to-float v6, v6

    mul-float/2addr v6, v12

    .line 580
    .local v6, "v":F
    move/from16 v30, v7

    .end local v7    # "worldOriginY":F
    .local v30, "worldOriginY":F
    add-int v7, v4, p13

    int-to-float v7, v7

    mul-float/2addr v7, v2

    .line 581
    .local v7, "u2":F
    move/from16 v31, v2

    .end local v2    # "invTexWidth":F
    .local v31, "invTexWidth":F
    int-to-float v2, v5

    mul-float/2addr v2, v12

    .line 583
    .local v2, "v2":F
    if-eqz p15, :cond_3

    .line 584
    move/from16 v32, v3

    .line 585
    .local v32, "tmp":F
    move v3, v7

    .line 586
    move/from16 v7, v32

    .line 589
    .end local v32    # "tmp":F
    :cond_3
    if-eqz p16, :cond_4

    .line 590
    move/from16 v32, v6

    .line 591
    .restart local v32    # "tmp":F
    move v6, v2

    .line 592
    move/from16 v2, v32

    .line 595
    .end local v32    # "tmp":F
    :cond_4
    sget-object v32, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v4, 0x0

    aput v23, v32, v4

    .line 596
    const/16 v33, 0x1

    aput v24, v32, v33

    .line 597
    const/16 v33, 0x2

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v4, v32, v33

    .line 598
    const/16 v33, 0x3

    aput v3, v32, v33

    .line 599
    const/16 v33, 0x4

    aput v6, v32, v33

    .line 601
    const/16 v33, 0x5

    aput v25, v32, v33

    .line 602
    const/16 v33, 0x6

    aput v26, v32, v33

    .line 603
    const/16 v33, 0x7

    aput v4, v32, v33

    .line 604
    const/16 v33, 0x8

    aput v3, v32, v33

    .line 605
    const/16 v33, 0x9

    aput v2, v32, v33

    .line 607
    const/16 v33, 0xa

    aput v27, v32, v33

    .line 608
    const/16 v33, 0xb

    aput v28, v32, v33

    .line 609
    const/16 v33, 0xc

    aput v4, v32, v33

    .line 610
    const/16 v4, 0xd

    aput v7, v32, v4

    .line 611
    const/16 v4, 0xe

    aput v2, v32, v4

    .line 613
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v4

    const/16 v32, 0x13

    const/16 v33, 0x12

    const/16 v34, 0x11

    const/16 v35, 0x10

    const/16 v36, 0xf

    if-lez v4, :cond_5

    .line 614
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v29, v4, v36

    .line 615
    aput v21, v4, v35

    .line 616
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v5, v4, v34

    .line 617
    aput v7, v4, v33

    .line 618
    aput v6, v4, v32

    .line 619
    move/from16 v37, v8

    const/16 v5, 0x14

    const/4 v8, 0x0

    .end local v8    # "fx":F
    .local v37, "fx":F
    invoke-virtual {v0, v1, v4, v8, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_1

    .line 621
    .end local v37    # "fx":F
    .restart local v8    # "fx":F
    :cond_5
    move/from16 v37, v8

    .end local v8    # "fx":F
    .restart local v37    # "fx":F
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v27, v4, v36

    .line 622
    aput v28, v4, v35

    .line 623
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v5, v4, v34

    .line 624
    aput v7, v4, v33

    .line 625
    aput v2, v4, v32

    .line 627
    const/16 v8, 0x14

    aput v29, v4, v8

    .line 628
    const/16 v8, 0x15

    aput v21, v4, v8

    .line 629
    const/16 v8, 0x16

    aput v5, v4, v8

    .line 630
    const/16 v8, 0x17

    aput v7, v4, v8

    .line 631
    const/16 v8, 0x18

    aput v6, v4, v8

    .line 633
    const/16 v8, 0x19

    aput v23, v4, v8

    .line 634
    const/16 v8, 0x1a

    aput v24, v4, v8

    .line 635
    const/16 v8, 0x1b

    aput v5, v4, v8

    .line 636
    const/16 v5, 0x1c

    aput v3, v4, v5

    .line 637
    const/16 v5, 0x1d

    aput v6, v4, v5

    .line 638
    const/16 v5, 0x1e

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v4, v8, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 640
    :goto_1
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
    .locals 20
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "srcX"    # I
    .param p7, "srcY"    # I
    .param p8, "srcWidth"    # I
    .param p9, "srcHeight"    # I
    .param p10, "flipX"    # Z
    .param p11, "flipY"    # Z

    .line 431
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v4, v5, v4

    .line 432
    .local v4, "invTexWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 433
    .local v5, "invTexHeight":F
    int-to-float v6, v2

    mul-float/2addr v6, v4

    .line 434
    .local v6, "u":F
    add-int v7, v3, p9

    int-to-float v7, v7

    mul-float/2addr v7, v5

    .line 435
    .local v7, "v":F
    add-int v8, v2, p8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    .line 436
    .local v8, "u2":F
    int-to-float v9, v3

    mul-float/2addr v9, v5

    .line 437
    .local v9, "v2":F
    add-float v10, p2, p4

    .line 438
    .local v10, "fx2":F
    add-float v11, p3, p5

    .line 440
    .local v11, "fy2":F
    if-eqz p10, :cond_0

    .line 441
    move v12, v6

    .line 442
    .local v12, "tmp":F
    move v6, v8

    .line 443
    move v8, v12

    .line 445
    .end local v12    # "tmp":F
    :cond_0
    if-eqz p11, :cond_1

    .line 446
    move v12, v7

    .line 447
    .restart local v12    # "tmp":F
    move v7, v9

    .line 448
    move v9, v12

    .line 451
    .end local v12    # "tmp":F
    :cond_1
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v13, 0x0

    aput p2, v12, v13

    .line 452
    const/4 v14, 0x1

    aput p3, v12, v14

    .line 453
    const/4 v14, 0x2

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v15, v12, v14

    .line 454
    const/4 v14, 0x3

    aput v6, v12, v14

    .line 455
    const/4 v14, 0x4

    aput v7, v12, v14

    .line 457
    const/4 v14, 0x5

    aput p2, v12, v14

    .line 458
    const/4 v14, 0x6

    aput v11, v12, v14

    .line 459
    const/4 v14, 0x7

    aput v15, v12, v14

    .line 460
    const/16 v14, 0x8

    aput v6, v12, v14

    .line 461
    const/16 v14, 0x9

    aput v9, v12, v14

    .line 463
    const/16 v14, 0xa

    aput v10, v12, v14

    .line 464
    const/16 v14, 0xb

    aput v11, v12, v14

    .line 465
    const/16 v14, 0xc

    aput v15, v12, v14

    .line 466
    const/16 v14, 0xd

    aput v8, v12, v14

    .line 467
    const/16 v14, 0xe

    aput v9, v12, v14

    .line 469
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v12

    const/16 v14, 0x14

    const/16 v15, 0x13

    const/16 v16, 0x12

    const/16 v17, 0x11

    const/16 v18, 0x10

    const/16 v19, 0xf

    if-lez v12, :cond_2

    .line 470
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v10, v12, v19

    .line 471
    aput p3, v12, v18

    .line 472
    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v13, v12, v17

    .line 473
    aput v8, v12, v16

    .line 474
    aput v7, v12, v15

    .line 475
    const/4 v13, 0x0

    invoke-virtual {v0, v1, v12, v13, v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0

    .line 477
    :cond_2
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v10, v12, v19

    .line 478
    aput v11, v12, v18

    .line 479
    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v13, v12, v17

    .line 480
    aput v8, v12, v16

    .line 481
    aput v9, v12, v15

    .line 483
    aput v10, v12, v14

    .line 484
    const/16 v14, 0x15

    aput p3, v12, v14

    .line 485
    const/16 v14, 0x16

    aput v13, v12, v14

    .line 486
    const/16 v14, 0x17

    aput v8, v12, v14

    .line 487
    const/16 v14, 0x18

    aput v7, v12, v14

    .line 489
    const/16 v14, 0x19

    aput p2, v12, v14

    .line 490
    const/16 v14, 0x1a

    aput p3, v12, v14

    .line 491
    const/16 v14, 0x1b

    aput v13, v12, v14

    .line 492
    const/16 v13, 0x1c

    aput v6, v12, v13

    .line 493
    const/16 v13, 0x1d

    aput v7, v12, v13

    .line 494
    const/16 v13, 0x1e

    const/4 v14, 0x0

    invoke-virtual {v0, v1, v12, v14, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 496
    :goto_0
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;FFIIFFFFF)V
    .locals 14
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "srcWidth"    # I
    .param p5, "srcHeight"    # I
    .param p6, "u"    # F
    .param p7, "v"    # F
    .param p8, "u2"    # F
    .param p9, "v2"    # F
    .param p10, "color"    # F

    .line 319
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p4

    int-to-float v3, v2

    add-float v3, p2, v3

    .line 320
    .local v3, "fx2":F
    move/from16 v4, p5

    int-to-float v5, v4

    add-float v5, p3, v5

    .line 322
    .local v5, "fy2":F
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v7, 0x0

    aput p2, v6, v7

    .line 323
    const/4 v8, 0x1

    aput p3, v6, v8

    .line 324
    const/4 v8, 0x2

    aput p10, v6, v8

    .line 325
    const/4 v8, 0x3

    aput p6, v6, v8

    .line 326
    const/4 v8, 0x4

    aput p7, v6, v8

    .line 328
    const/4 v8, 0x5

    aput p2, v6, v8

    .line 329
    const/4 v8, 0x6

    aput v5, v6, v8

    .line 330
    const/4 v8, 0x7

    aput p10, v6, v8

    .line 331
    const/16 v8, 0x8

    aput p6, v6, v8

    .line 332
    const/16 v8, 0x9

    aput p9, v6, v8

    .line 334
    const/16 v8, 0xa

    aput v3, v6, v8

    .line 335
    const/16 v8, 0xb

    aput v5, v6, v8

    .line 336
    const/16 v8, 0xc

    aput p10, v6, v8

    .line 337
    const/16 v8, 0xd

    aput p8, v6, v8

    .line 338
    const/16 v8, 0xe

    aput p9, v6, v8

    .line 340
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v6

    const/16 v8, 0x14

    const/16 v9, 0x13

    const/16 v10, 0x12

    const/16 v11, 0x11

    const/16 v12, 0x10

    const/16 v13, 0xf

    if-lez v6, :cond_0

    .line 341
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v3, v6, v13

    .line 342
    aput p3, v6, v12

    .line 343
    aput p10, v6, v11

    .line 344
    aput p8, v6, v10

    .line 345
    aput p7, v6, v9

    .line 346
    invoke-virtual {p0, p1, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0

    .line 348
    :cond_0
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v3, v6, v13

    .line 349
    aput v5, v6, v12

    .line 350
    aput p10, v6, v11

    .line 351
    aput p8, v6, v10

    .line 352
    aput p9, v6, v9

    .line 354
    aput v3, v6, v8

    .line 355
    const/16 v8, 0x15

    aput p3, v6, v8

    .line 356
    const/16 v8, 0x16

    aput p10, v6, v8

    .line 357
    const/16 v8, 0x17

    aput p8, v6, v8

    .line 358
    const/16 v8, 0x18

    aput p7, v6, v8

    .line 360
    const/16 v8, 0x19

    aput p2, v6, v8

    .line 361
    const/16 v8, 0x1a

    aput p3, v6, v8

    .line 362
    const/16 v8, 0x1b

    aput p10, v6, v8

    .line 363
    const/16 v8, 0x1c

    aput p6, v6, v8

    .line 364
    const/16 v8, 0x1d

    aput p7, v6, v8

    .line 365
    const/16 v8, 0x1e

    invoke-virtual {p0, p1, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 367
    :goto_0
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
    .locals 22
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "srcX"    # I
    .param p5, "srcY"    # I
    .param p6, "srcWidth"    # I
    .param p7, "srcHeight"    # I

    .line 371
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v6, v7, v6

    .line 372
    .local v6, "invTexWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 373
    .local v7, "invTexHeight":F
    int-to-float v8, v2

    mul-float/2addr v8, v6

    .line 374
    .local v8, "u":F
    add-int v9, v3, v5

    int-to-float v9, v9

    mul-float/2addr v9, v7

    .line 375
    .local v9, "v":F
    add-int v10, v2, v4

    int-to-float v10, v10

    mul-float/2addr v10, v6

    .line 376
    .local v10, "u2":F
    int-to-float v11, v3

    mul-float/2addr v11, v7

    .line 377
    .local v11, "v2":F
    int-to-float v12, v4

    add-float v12, p2, v12

    .line 378
    .local v12, "fx2":F
    int-to-float v13, v5

    add-float v13, p3, v13

    .line 380
    .local v13, "fy2":F
    sget-object v14, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v15, 0x0

    aput p2, v14, v15

    .line 381
    const/16 v16, 0x1

    aput p3, v14, v16

    .line 382
    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    const/16 v17, 0x2

    aput v15, v14, v17

    .line 383
    const/16 v17, 0x3

    aput v8, v14, v17

    .line 384
    const/16 v17, 0x4

    aput v9, v14, v17

    .line 386
    const/16 v17, 0x5

    aput p2, v14, v17

    .line 387
    const/16 v17, 0x6

    aput v13, v14, v17

    .line 388
    const/16 v17, 0x7

    aput v15, v14, v17

    .line 389
    const/16 v17, 0x8

    aput v8, v14, v17

    .line 390
    const/16 v17, 0x9

    aput v11, v14, v17

    .line 392
    const/16 v17, 0xa

    aput v12, v14, v17

    .line 393
    const/16 v17, 0xb

    aput v13, v14, v17

    .line 394
    const/16 v17, 0xc

    aput v15, v14, v17

    .line 395
    const/16 v15, 0xd

    aput v10, v14, v15

    .line 396
    const/16 v15, 0xe

    aput v11, v14, v15

    .line 398
    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v14}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v14

    const/16 v17, 0x13

    const/16 v18, 0x12

    const/16 v19, 0x11

    const/16 v20, 0x10

    const/16 v21, 0xf

    if-lez v14, :cond_0

    .line 399
    sget-object v14, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v12, v14, v21

    .line 400
    aput p3, v14, v20

    .line 401
    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v15, v14, v19

    .line 402
    aput v10, v14, v18

    .line 403
    aput v9, v14, v17

    .line 404
    const/4 v2, 0x0

    const/16 v15, 0x14

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0

    .line 406
    :cond_0
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v12, v2, v21

    .line 407
    aput v13, v2, v20

    .line 408
    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v14, v2, v19

    .line 409
    aput v10, v2, v18

    .line 410
    aput v11, v2, v17

    .line 412
    const/16 v15, 0x14

    aput v12, v2, v15

    .line 413
    const/16 v15, 0x15

    aput p3, v2, v15

    .line 414
    const/16 v15, 0x16

    aput v14, v2, v15

    .line 415
    const/16 v15, 0x17

    aput v10, v2, v15

    .line 416
    const/16 v15, 0x18

    aput v9, v2, v15

    .line 418
    const/16 v15, 0x19

    aput p2, v2, v15

    .line 419
    const/16 v15, 0x1a

    aput p3, v2, v15

    .line 420
    const/16 v15, 0x1b

    aput v14, v2, v15

    .line 421
    const/16 v14, 0x1c

    aput v8, v2, v14

    .line 422
    const/16 v14, 0x1d

    aput v9, v2, v14

    .line 423
    const/16 v14, 0x1e

    const/4 v15, 0x0

    invoke-virtual {v0, v1, v2, v15, v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 425
    :goto_0
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 4
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "vertices"    # [F
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 250
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    const/4 v1, 0x6

    if-lez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    .line 253
    .local v0, "verticesPerImage":I
    :goto_0
    mul-int/lit8 v2, v0, 0x5

    div-int v2, p4, v2

    mul-int/2addr v2, v1

    .line 254
    .local v2, "count":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    .line 255
    .local v1, "lastIndex":I
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_1

    goto :goto_1

    .line 259
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3, v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->incr(II)V

    goto :goto_2

    .line 256
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 257
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 261
    :goto_2
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, p2, p3, p4}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 262
    return-void

    .line 250
    .end local v0    # "verticesPerImage":I
    .end local v1    # "lastIndex":I
    .end local v2    # "count":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "beginCache must be called before add."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 7
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 835
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 836
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getVertices()[F

    move-result-object v3

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 837
    return-void

    .line 840
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getVertices()[F

    move-result-object v0

    .line 841
    .local v0, "spriteVertices":[F
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0xf

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 842
    const/16 v3, 0xa

    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v6, 0x5

    invoke-static {v0, v3, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 843
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    invoke-static {v0, v4, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 844
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x19

    invoke-static {v0, v2, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 845
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0x1e

    invoke-virtual {p0, v1, v3, v2, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 846
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .locals 7
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 644
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 645
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    .locals 16
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .line 649
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-float v2, p2, p4

    .line 650
    .local v2, "fx2":F
    add-float v3, p3, p5

    .line 651
    .local v3, "fy2":F
    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 652
    .local v4, "u":F
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 653
    .local v5, "v":F
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 654
    .local v6, "u2":F
    iget v7, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 656
    .local v7, "v2":F
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v9, 0x0

    aput p2, v8, v9

    .line 657
    const/4 v10, 0x1

    aput p3, v8, v10

    .line 658
    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    const/4 v11, 0x2

    aput v10, v8, v11

    .line 659
    const/4 v11, 0x3

    aput v4, v8, v11

    .line 660
    const/4 v11, 0x4

    aput v5, v8, v11

    .line 662
    const/4 v11, 0x5

    aput p2, v8, v11

    .line 663
    const/4 v11, 0x6

    aput v3, v8, v11

    .line 664
    const/4 v11, 0x7

    aput v10, v8, v11

    .line 665
    const/16 v11, 0x8

    aput v4, v8, v11

    .line 666
    const/16 v11, 0x9

    aput v7, v8, v11

    .line 668
    const/16 v11, 0xa

    aput v2, v8, v11

    .line 669
    const/16 v11, 0xb

    aput v3, v8, v11

    .line 670
    const/16 v11, 0xc

    aput v10, v8, v11

    .line 671
    const/16 v10, 0xd

    aput v6, v8, v10

    .line 672
    const/16 v10, 0xe

    aput v7, v8, v10

    .line 674
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v8

    const/16 v10, 0x14

    const/16 v11, 0x13

    const/16 v12, 0x12

    const/16 v13, 0x11

    const/16 v14, 0x10

    const/16 v15, 0xf

    if-lez v8, :cond_0

    .line 675
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v2, v8, v15

    .line 676
    aput p3, v8, v14

    .line 677
    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v14, v8, v13

    .line 678
    aput v6, v8, v12

    .line 679
    aput v5, v8, v11

    .line 680
    iget-object v8, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v11, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    invoke-virtual {v0, v8, v11, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0

    .line 682
    :cond_0
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v2, v8, v15

    .line 683
    aput v3, v8, v14

    .line 684
    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v14, v8, v13

    .line 685
    aput v6, v8, v12

    .line 686
    aput v7, v8, v11

    .line 688
    aput v2, v8, v10

    .line 689
    const/16 v10, 0x15

    aput p3, v8, v10

    .line 690
    const/16 v10, 0x16

    aput v14, v8, v10

    .line 691
    const/16 v10, 0x17

    aput v6, v8, v10

    .line 692
    const/16 v10, 0x18

    aput v5, v8, v10

    .line 694
    const/16 v10, 0x19

    aput p2, v8, v10

    .line 695
    const/16 v10, 0x1a

    aput p3, v8, v10

    .line 696
    const/16 v10, 0x1b

    aput v14, v8, v10

    .line 697
    const/16 v10, 0x1c

    aput v4, v8, v10

    .line 698
    const/16 v10, 0x1d

    aput v5, v8, v10

    .line 699
    iget-object v8, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x1e

    invoke-virtual {v0, v8, v10, v9, v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 701
    :goto_0
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .locals 37
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F

    .line 708
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    add-float v4, p2, v2

    .line 709
    .local v4, "worldOriginX":F
    add-float v5, p3, v3

    .line 710
    .local v5, "worldOriginY":F
    neg-float v6, v2

    .line 711
    .local v6, "fx":F
    neg-float v7, v3

    .line 712
    .local v7, "fy":F
    sub-float v8, p6, v2

    .line 713
    .local v8, "fx2":F
    sub-float v9, p7, v3

    .line 716
    .local v9, "fy2":F
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, p8, v10

    if-nez v11, :cond_0

    cmpl-float v10, p9, v10

    if-eqz v10, :cond_1

    .line 717
    :cond_0
    mul-float v6, v6, p8

    .line 718
    mul-float v7, v7, p9

    .line 719
    mul-float v8, v8, p8

    .line 720
    mul-float v9, v9, p9

    .line 724
    :cond_1
    move v10, v6

    .line 725
    .local v10, "p1x":F
    move v11, v7

    .line 726
    .local v11, "p1y":F
    move v12, v6

    .line 727
    .local v12, "p2x":F
    move v13, v9

    .line 728
    .local v13, "p2y":F
    move v14, v8

    .line 729
    .local v14, "p3x":F
    move v15, v9

    .line 730
    .local v15, "p3y":F
    move/from16 v16, v8

    .line 731
    .local v16, "p4x":F
    move/from16 v17, v7

    .line 743
    .local v17, "p4y":F
    const/16 v18, 0x0

    cmpl-float v18, p10, v18

    if-eqz v18, :cond_2

    .line 744
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v18

    .line 745
    .local v18, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v19

    .line 747
    .local v19, "sin":F
    mul-float v20, v18, v10

    mul-float v21, v19, v11

    sub-float v20, v20, v21

    .line 748
    .local v20, "x1":F
    mul-float v21, v19, v10

    mul-float v22, v18, v11

    add-float v21, v21, v22

    .line 750
    .local v21, "y1":F
    mul-float v22, v18, v12

    mul-float v23, v19, v13

    sub-float v22, v22, v23

    .line 751
    .local v22, "x2":F
    mul-float v23, v19, v12

    mul-float v24, v18, v13

    add-float v23, v23, v24

    .line 753
    .local v23, "y2":F
    mul-float v24, v18, v14

    mul-float v25, v19, v15

    sub-float v24, v24, v25

    .line 754
    .local v24, "x3":F
    mul-float v25, v19, v14

    mul-float v26, v18, v15

    add-float v25, v25, v26

    .line 756
    .local v25, "y3":F
    sub-float v26, v24, v22

    add-float v26, v20, v26

    .line 757
    .local v26, "x4":F
    sub-float v27, v23, v21

    sub-float v18, v25, v27

    .line 758
    .end local v19    # "sin":F
    .local v18, "y4":F
    goto :goto_0

    .line 759
    .end local v18    # "y4":F
    .end local v20    # "x1":F
    .end local v21    # "y1":F
    .end local v22    # "x2":F
    .end local v23    # "y2":F
    .end local v24    # "x3":F
    .end local v25    # "y3":F
    .end local v26    # "x4":F
    :cond_2
    move/from16 v20, v10

    .line 760
    .restart local v20    # "x1":F
    move/from16 v21, v11

    .line 762
    .restart local v21    # "y1":F
    move/from16 v22, v12

    .line 763
    .restart local v22    # "x2":F
    move/from16 v23, v13

    .line 765
    .restart local v23    # "y2":F
    move/from16 v24, v14

    .line 766
    .restart local v24    # "x3":F
    move/from16 v25, v15

    .line 768
    .restart local v25    # "y3":F
    move/from16 v26, v16

    .line 769
    .restart local v26    # "x4":F
    move/from16 v18, v17

    .line 772
    .restart local v18    # "y4":F
    :goto_0
    add-float v20, v20, v4

    .line 773
    add-float v21, v21, v5

    .line 774
    add-float v22, v22, v4

    .line 775
    add-float v23, v23, v5

    .line 776
    add-float v24, v24, v4

    .line 777
    add-float v25, v25, v5

    .line 778
    add-float v26, v26, v4

    .line 779
    add-float v18, v18, v5

    .line 781
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 782
    .local v2, "u":F
    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 783
    .local v3, "v":F
    move/from16 v19, v4

    .end local v4    # "worldOriginX":F
    .local v19, "worldOriginX":F
    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 784
    .local v4, "u2":F
    move/from16 v27, v5

    .end local v5    # "worldOriginY":F
    .local v27, "worldOriginY":F
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 786
    .local v5, "v2":F
    sget-object v28, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    move/from16 v29, v6

    .end local v6    # "fx":F
    .local v29, "fx":F
    const/4 v6, 0x0

    aput v20, v28, v6

    .line 787
    const/16 v30, 0x1

    aput v21, v28, v30

    .line 788
    const/16 v30, 0x2

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v6, v28, v30

    .line 789
    const/16 v30, 0x3

    aput v2, v28, v30

    .line 790
    const/16 v30, 0x4

    aput v3, v28, v30

    .line 792
    const/16 v30, 0x5

    aput v22, v28, v30

    .line 793
    const/16 v30, 0x6

    aput v23, v28, v30

    .line 794
    const/16 v30, 0x7

    aput v6, v28, v30

    .line 795
    const/16 v30, 0x8

    aput v2, v28, v30

    .line 796
    const/16 v30, 0x9

    aput v5, v28, v30

    .line 798
    const/16 v30, 0xa

    aput v24, v28, v30

    .line 799
    const/16 v30, 0xb

    aput v25, v28, v30

    .line 800
    const/16 v30, 0xc

    aput v6, v28, v30

    .line 801
    const/16 v6, 0xd

    aput v4, v28, v6

    .line 802
    const/16 v6, 0xe

    aput v5, v28, v6

    .line 804
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v6

    move/from16 v28, v7

    .end local v7    # "fy":F
    .local v28, "fy":F
    const/16 v30, 0x13

    const/16 v31, 0x12

    const/16 v32, 0x11

    const/16 v33, 0x10

    const/16 v34, 0xf

    if-lez v6, :cond_3

    .line 805
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v26, v6, v34

    .line 806
    aput v18, v6, v33

    .line 807
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v7, v6, v32

    .line 808
    aput v4, v6, v31

    .line 809
    aput v3, v6, v30

    .line 810
    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v7, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    move/from16 v35, v8

    move/from16 v36, v9

    const/16 v8, 0x14

    const/4 v9, 0x0

    .end local v8    # "fx2":F
    .end local v9    # "fy2":F
    .local v35, "fx2":F
    .local v36, "fy2":F
    invoke-virtual {v0, v6, v7, v9, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_1

    .line 812
    .end local v35    # "fx2":F
    .end local v36    # "fy2":F
    .restart local v8    # "fx2":F
    .restart local v9    # "fy2":F
    :cond_3
    move/from16 v35, v8

    move/from16 v36, v9

    .end local v8    # "fx2":F
    .end local v9    # "fy2":F
    .restart local v35    # "fx2":F
    .restart local v36    # "fy2":F
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v24, v6, v34

    .line 813
    aput v25, v6, v33

    .line 814
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v7, v6, v32

    .line 815
    aput v4, v6, v31

    .line 816
    aput v5, v6, v30

    .line 818
    const/16 v8, 0x14

    aput v26, v6, v8

    .line 819
    const/16 v8, 0x15

    aput v18, v6, v8

    .line 820
    const/16 v8, 0x16

    aput v7, v6, v8

    .line 821
    const/16 v8, 0x17

    aput v4, v6, v8

    .line 822
    const/16 v8, 0x18

    aput v3, v6, v8

    .line 824
    const/16 v8, 0x19

    aput v20, v6, v8

    .line 825
    const/16 v8, 0x1a

    aput v21, v6, v8

    .line 826
    const/16 v8, 0x1b

    aput v7, v6, v8

    .line 827
    const/16 v7, 0x1c

    aput v2, v6, v7

    .line 828
    const/16 v7, 0x1d

    aput v3, v6, v7

    .line 829
    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v7, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0x1e

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v7, v9, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 831
    :goto_1
    return-void
.end method

.method public begin()V
    .locals 5

    .line 850
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-nez v0, :cond_2

    .line 851
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    if-nez v0, :cond_1

    .line 852
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    .line 853
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 855
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 857
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v2, "u_texture"

    if-eqz v1, :cond_0

    .line 858
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 859
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    const-string/jumbo v4, "u_proj"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 860
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    const-string/jumbo v4, "u_trans"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 861
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    const-string/jumbo v4, "u_projTrans"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 862
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 863
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    goto :goto_0

    .line 865
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 866
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    const-string/jumbo v4, "u_projectionViewMatrix"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 867
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 868
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 870
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    .line 871
    return-void

    .line 851
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "endCache must be called before begin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "end must be called before begin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginCache()V
    .locals 4

    .line 170
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 173
    .local v0, "verticesPerImage":I
    :goto_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;-><init>(II)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 174
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 175
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->compact()Ljava/nio/FloatBuffer;

    .line 176
    return-void

    .line 171
    .end local v0    # "verticesPerImage":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "endCache must be called before begin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "end must be called before beginCache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginCache(I)V
    .locals 3
    .param p1, "cacheID"    # I

    .line 182
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-nez v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    if-nez v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 186
    .local v0, "oldCache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 187
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->beginCache()V

    .line 188
    return-void

    .line 190
    .end local v0    # "oldCache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 192
    return-void

    .line 183
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "endCache must be called before begin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "end must be called before beginCache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 243
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 244
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 943
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 944
    :cond_0
    return-void
.end method

.method public draw(I)V
    .locals 11
    .param p1, "cacheID"    # I

    .line 889
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-eqz v0, :cond_3

    .line 891
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 892
    .local v0, "cache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x4

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 893
    .local v1, "verticesPerImage":I
    :goto_0
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    mul-int/lit8 v5, v1, 0x5

    div-int/2addr v4, v5

    mul-int/2addr v4, v2

    .line 894
    .local v4, "offset":I
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    .line 895
    .local v2, "textures":[Lcom/badlogic/gdx/graphics/Texture;
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    .line 896
    .local v5, "counts":[I
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    .line 897
    .local v6, "textureCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_2

    .line 898
    aget v8, v5, v7

    .line 899
    .local v8, "count":I
    aget-object v9, v2, v7

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 900
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v9, :cond_1

    .line 901
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v10, v9, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    goto :goto_2

    .line 903
    :cond_1
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v9, v10, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 904
    :goto_2
    add-int/2addr v4, v8

    .line 897
    .end local v8    # "count":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 906
    .end local v7    # "i":I
    :cond_2
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    .line 907
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    .line 908
    return-void

    .line 889
    .end local v0    # "cache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    .end local v1    # "verticesPerImage":I
    .end local v2    # "textures":[Lcom/badlogic/gdx/graphics/Texture;
    .end local v4    # "offset":I
    .end local v5    # "counts":[I
    .end local v6    # "textureCount":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpriteCache.begin must be called before draw."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(III)V
    .locals 9
    .param p1, "cacheID"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 914
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-eqz v0, :cond_3

    .line 916
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 917
    .local v0, "cache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    mul-int/lit8 v1, p2, 0x6

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    add-int/2addr v1, v2

    .line 918
    .end local p2    # "offset":I
    .local v1, "offset":I
    mul-int/lit8 p3, p3, 0x6

    .line 919
    iget-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    .line 920
    .local p2, "textures":[Lcom/badlogic/gdx/graphics/Texture;
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    .line 921
    .local v2, "counts":[I
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    .line 922
    .local v3, "textureCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 923
    aget-object v5, p2, v4

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 924
    aget v5, v2, v4

    .line 925
    .local v5, "count":I
    if-le v5, p3, :cond_0

    .line 926
    move v4, v3

    .line 927
    move v5, p3

    goto :goto_1

    .line 929
    :cond_0
    sub-int/2addr p3, v5

    .line 930
    :goto_1
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v7, 0x4

    if-eqz v6, :cond_1

    .line 931
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v8, v6, v7, v1, v5}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    goto :goto_2

    .line 933
    :cond_1
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v8, v7, v1, v5}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 934
    :goto_2
    add-int/2addr v1, v5

    .line 922
    .end local v5    # "count":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 936
    .end local v4    # "i":I
    :cond_2
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    .line 937
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    .line 938
    return-void

    .line 914
    .end local v0    # "cache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    .end local v1    # "offset":I
    .end local v2    # "counts":[I
    .end local v3    # "textureCount":I
    .local p2, "offset":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpriteCache.begin must be called before draw."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 3

    .line 875
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-eqz v0, :cond_1

    .line 876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    .line 878
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 879
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 880
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 881
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v1, :cond_0

    .line 882
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/Mesh;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    goto :goto_0

    .line 884
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Mesh;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 885
    :goto_0
    return-void

    .line 875
    .end local v0    # "gl":Lcom/badlogic/gdx/graphics/GL20;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "begin must be called before end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endCache()I
    .locals 6

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    if-eqz v0, :cond_7

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 198
    .local v0, "cache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    sub-int/2addr v1, v2

    .line 199
    .local v1, "cacheCount":I
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    if-nez v2, :cond_1

    .line 201
    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->maxCount:I

    .line 202
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    .line 203
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    const-class v3, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/graphics/Texture;

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    .line 204
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    .line 205
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 206
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    aput v5, v4, v2

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_3

    .line 211
    :cond_1
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->maxCount:I

    if-gt v1, v2, :cond_6

    .line 217
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    .line 219
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    array-length v2, v2

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    if-ge v2, v3, :cond_2

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/Texture;

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    .line 220
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    .restart local v3    # "n":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 221
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/Texture;

    aput-object v5, v4, v2

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 223
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_3
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    array-length v2, v2

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    if-ge v2, v3, :cond_4

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    .line 224
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    .restart local v3    # "n":I
    :goto_2
    if-ge v2, v3, :cond_5

    .line 225
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    aput v5, v4, v2

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 227
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_5
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 228
    .local v2, "vertices":Ljava/nio/FloatBuffer;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 229
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 230
    .local v3, "lastCache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    iget v5, v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->maxCount:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 233
    .end local v2    # "vertices":Ljava/nio/FloatBuffer;
    .end local v3    # "lastCache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    :goto_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 234
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 235
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 237
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->id:I

    return v2

    .line 212
    :cond_6
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "If a cache is not the last created, it cannot be redefined with more entries than when it was first created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->maxCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " max)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    .end local v0    # "cache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    .end local v1    # "cacheCount":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "beginCache must be called before endCache."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getCustomShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object v0
.end method

.method public getPackedColor()F
    .locals 1

    .line 165
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    return v0
.end method

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 947
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public isDrawing()Z
    .locals 1

    .line 1027
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    return v0
.end method

.method public setColor(FFFF)V
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    .line 151
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 144
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    .line 145
    return-void
.end method

.method public setPackedColor(F)V
    .locals 1
    .param p1, "packedColor"    # F

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->abgr8888ToColor(Lcom/badlogic/gdx/graphics/Color;F)V

    .line 161
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    .line 162
    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .param p1, "projection"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 951
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-nez v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 953
    return-void

    .line 951
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set the matrix within begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 0
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 1018
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 1019
    return-void
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 960
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-nez v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 962
    return-void

    .line 960
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set the matrix within begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
