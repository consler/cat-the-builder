.class public Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;
.super Ljava/lang/Object;
.source "PolygonSpriteBatch.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g2d/PolygonBatch;


# instance fields
.field private blendDstFunc:I

.field private blendDstFuncAlpha:I

.field private blendSrcFunc:I

.field private blendSrcFuncAlpha:I

.field private blendingDisabled:Z

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field colorPacked:F

.field private final combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private drawing:Z

.field private invTexHeight:F

.field private invTexWidth:F

.field private lastTexture:Lcom/badlogic/gdx/graphics/Texture;

.field public maxTrianglesInBatch:I

.field private mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private ownsShader:Z

.field private final projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field public renderCalls:I

.field private final shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public totalRenderCalls:I

.field private final transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private triangleIndex:I

.field private final triangles:[S

.field private vertexIndex:I

.field private final vertices:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 97
    const/16 v0, 0x7d0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 98
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .line 104
    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;-><init>(IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 105
    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 11
    .param p1, "maxVertices"    # I
    .param p2, "maxTriangles"    # I
    .param p3, "defaultShader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    .line 68
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 69
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 70
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 73
    const/16 v1, 0x302

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    .line 74
    const/16 v2, 0x303

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    .line 75
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFuncAlpha:I

    .line 76
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFuncAlpha:I

    .line 82
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 83
    sget v1, Lcom/badlogic/gdx/graphics/Color;->WHITE_FLOAT_BITS:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    .line 89
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->totalRenderCalls:I

    .line 92
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->maxTrianglesInBatch:I

    .line 126
    const/16 v2, 0x7fff

    if-gt p1, v2, :cond_2

    .line 129
    sget-object v2, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    .line 130
    .local v2, "vertexDataType":Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v3, :cond_0

    .line 131
    sget-object v2, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexBufferObjectWithVAO:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    .line 133
    :cond_0
    new-instance v9, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v5, 0x0

    mul-int/lit8 v7, p2, 0x3

    const/4 v3, 0x3

    new-array v8, v3, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v10, 0x1

    const/4 v4, 0x2

    const-string v6, "a_position"

    invoke-direct {v3, v10, v4, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v8, v1

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v3, 0x4

    const-string v6, "a_color"

    invoke-direct {v1, v3, v3, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v1, v8, v10

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v3, 0x10

    const-string v6, "a_texCoord0"

    invoke-direct {v1, v3, v4, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v1, v8, v4

    move-object v3, v9

    move-object v4, v2

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 138
    mul-int/lit8 v1, p1, 0x5

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 139
    mul-int/lit8 v1, p2, 0x3

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 141
    if-nez p3, :cond_1

    .line 142
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 143
    iput-boolean v10, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->ownsShader:Z

    goto :goto_0

    .line 145
    :cond_1
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v0, v0, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 148
    return-void

    .line 127
    .end local v2    # "vertexDataType":Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t have more than 32767 vertices per batch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "defaultShader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 111
    mul-int/lit8 v0, p1, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;-><init>(IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 112
    return-void
.end method

.method private setupMatrices()V
    .locals 5

    .line 1308
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1309
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v1, 0x0

    const-string/jumbo v2, "u_texture"

    const-string/jumbo v3, "u_projTrans"

    if-eqz v0, :cond_0

    .line 1310
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1311
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    goto :goto_0

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1314
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 1316
    :goto_0
    return-void
.end method

.method private switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 2
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .line 1319
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1320
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 1321
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    .line 1322
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    .line 1323
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 2

    .line 152
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-nez v0, :cond_1

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    .line 155
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 160
    :goto_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    .line 163
    return-void

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolygonSpriteBatch.end must be called before begin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableBlending()V
    .locals 1

    .line 1231
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    .line 1233
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1279
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 1280
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->ownsShader:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 1281
    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FF)V
    .locals 7
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 688
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 689
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .locals 17
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .line 693
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v1, :cond_3

    .line 695
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 696
    .local v1, "triangles":[S
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 698
    .local v2, "vertices":[F
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v4, p1

    if-eq v4, v3, :cond_0

    .line 699
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 700
    :cond_0
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v3, v3, 0x6

    array-length v5, v1

    if-gt v3, v5, :cond_1

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v3, v3, 0x14

    array-length v5, v2

    if-le v3, v5, :cond_2

    .line 701
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 703
    :cond_2
    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 704
    .local v3, "triangleIndex":I
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v5, v5, 0x5

    .line 705
    .local v5, "startVertex":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "triangleIndex":I
    .local v6, "triangleIndex":I
    int-to-short v7, v5

    aput-short v7, v1, v3

    .line 706
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "triangleIndex":I
    .restart local v3    # "triangleIndex":I
    add-int/lit8 v7, v5, 0x1

    int-to-short v7, v7

    aput-short v7, v1, v6

    .line 707
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "triangleIndex":I
    .restart local v6    # "triangleIndex":I
    add-int/lit8 v7, v5, 0x2

    int-to-short v7, v7

    aput-short v7, v1, v3

    .line 708
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "triangleIndex":I
    .restart local v3    # "triangleIndex":I
    add-int/lit8 v7, v5, 0x2

    int-to-short v7, v7

    aput-short v7, v1, v6

    .line 709
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "triangleIndex":I
    .restart local v6    # "triangleIndex":I
    add-int/lit8 v7, v5, 0x3

    int-to-short v7, v7

    aput-short v7, v1, v3

    .line 710
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "triangleIndex":I
    .restart local v3    # "triangleIndex":I
    int-to-short v7, v5

    aput-short v7, v1, v6

    .line 711
    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 713
    add-float v6, p2, p4

    .line 714
    .local v6, "fx2":F
    add-float v7, p3, p5

    .line 715
    .local v7, "fy2":F
    const/4 v8, 0x0

    .line 716
    .local v8, "u":F
    const/high16 v9, 0x3f800000    # 1.0f

    .line 717
    .local v9, "v":F
    const/high16 v10, 0x3f800000    # 1.0f

    .line 718
    .local v10, "u2":F
    const/4 v11, 0x0

    .line 720
    .local v11, "v2":F
    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 721
    .local v12, "color":F
    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 722
    .local v13, "idx":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "idx":I
    .local v14, "idx":I
    aput p2, v2, v13

    .line 723
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "idx":I
    .restart local v13    # "idx":I
    aput p3, v2, v14

    .line 724
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "idx":I
    .restart local v14    # "idx":I
    aput v12, v2, v13

    .line 725
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "idx":I
    .restart local v13    # "idx":I
    const/4 v15, 0x0

    aput v15, v2, v14

    .line 726
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "idx":I
    .restart local v14    # "idx":I
    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v2, v13

    .line 728
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "idx":I
    .restart local v13    # "idx":I
    aput p2, v2, v14

    .line 729
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "idx":I
    .restart local v14    # "idx":I
    aput v7, v2, v13

    .line 730
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "idx":I
    .restart local v13    # "idx":I
    aput v12, v2, v14

    .line 731
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "idx":I
    .restart local v14    # "idx":I
    aput v15, v2, v13

    .line 732
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "idx":I
    .restart local v13    # "idx":I
    aput v15, v2, v14

    .line 734
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "idx":I
    .restart local v14    # "idx":I
    aput v6, v2, v13

    .line 735
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "idx":I
    .restart local v13    # "idx":I
    aput v7, v2, v14

    .line 736
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "idx":I
    .restart local v14    # "idx":I
    aput v12, v2, v13

    .line 737
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "idx":I
    .restart local v13    # "idx":I
    aput v16, v2, v14

    .line 738
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "idx":I
    .restart local v14    # "idx":I
    aput v15, v2, v13

    .line 740
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "idx":I
    .restart local v13    # "idx":I
    aput v6, v2, v14

    .line 741
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "idx":I
    .restart local v14    # "idx":I
    aput p3, v2, v13

    .line 742
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "idx":I
    .restart local v13    # "idx":I
    aput v12, v2, v14

    .line 743
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "idx":I
    .restart local v14    # "idx":I
    aput v16, v2, v13

    .line 744
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "idx":I
    .restart local v13    # "idx":I
    aput v16, v2, v14

    .line 745
    iput v13, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 746
    return-void

    .line 693
    .end local v1    # "triangles":[S
    .end local v2    # "vertices":[F
    .end local v3    # "triangleIndex":I
    .end local v5    # "startVertex":I
    .end local v6    # "fx2":F
    .end local v7    # "fy2":F
    .end local v8    # "u":F
    .end local v9    # "v":F
    .end local v10    # "u2":F
    .end local v11    # "v2":F
    .end local v12    # "color":F
    .end local v13    # "idx":I
    :cond_3
    move-object/from16 v4, p1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V
    .locals 11
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "u"    # F
    .param p7, "v"    # F
    .param p8, "u2"    # F
    .param p9, "v2"    # F

    .line 635
    move-object v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v1, :cond_3

    .line 637
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 638
    .local v1, "triangles":[S
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 640
    .local v2, "vertices":[F
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object v4, p1

    if-eq v4, v3, :cond_0

    .line 641
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 642
    :cond_0
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v3, v3, 0x6

    array-length v5, v1

    if-gt v3, v5, :cond_1

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v3, v3, 0x14

    array-length v5, v2

    if-le v3, v5, :cond_2

    .line 643
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 645
    :cond_2
    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 646
    .local v3, "triangleIndex":I
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v5, v5, 0x5

    .line 647
    .local v5, "startVertex":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "triangleIndex":I
    .local v6, "triangleIndex":I
    int-to-short v7, v5

    aput-short v7, v1, v3

    .line 648
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "triangleIndex":I
    .restart local v3    # "triangleIndex":I
    add-int/lit8 v7, v5, 0x1

    int-to-short v7, v7

    aput-short v7, v1, v6

    .line 649
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "triangleIndex":I
    .restart local v6    # "triangleIndex":I
    add-int/lit8 v7, v5, 0x2

    int-to-short v7, v7

    aput-short v7, v1, v3

    .line 650
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "triangleIndex":I
    .restart local v3    # "triangleIndex":I
    add-int/lit8 v7, v5, 0x2

    int-to-short v7, v7

    aput-short v7, v1, v6

    .line 651
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "triangleIndex":I
    .restart local v6    # "triangleIndex":I
    add-int/lit8 v7, v5, 0x3

    int-to-short v7, v7

    aput-short v7, v1, v3

    .line 652
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "triangleIndex":I
    .restart local v3    # "triangleIndex":I
    int-to-short v7, v5

    aput-short v7, v1, v6

    .line 653
    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 655
    add-float v6, p2, p4

    .line 656
    .local v6, "fx2":F
    add-float v7, p3, p5

    .line 658
    .local v7, "fy2":F
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 659
    .local v8, "color":F
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 660
    .local v9, "idx":I
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .local v10, "idx":I
    aput p2, v2, v9

    .line 661
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aput p3, v2, v10

    .line 662
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    aput v8, v2, v9

    .line 663
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aput p6, v2, v10

    .line 664
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    aput p7, v2, v9

    .line 666
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aput p2, v2, v10

    .line 667
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    aput v7, v2, v9

    .line 668
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aput v8, v2, v10

    .line 669
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    aput p6, v2, v9

    .line 670
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aput p9, v2, v10

    .line 672
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    aput v6, v2, v9

    .line 673
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aput v7, v2, v10

    .line 674
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    aput v8, v2, v9

    .line 675
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aput p8, v2, v10

    .line 676
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    aput p9, v2, v9

    .line 678
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aput v6, v2, v10

    .line 679
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    aput p3, v2, v9

    .line 680
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aput v8, v2, v10

    .line 681
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    aput p8, v2, v9

    .line 682
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aput p7, v2, v10

    .line 683
    iput v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 684
    return-void

    .line 635
    .end local v1    # "triangles":[S
    .end local v2    # "vertices":[F
    .end local v3    # "triangleIndex":I
    .end local v5    # "startVertex":I
    .end local v6    # "fx2":F
    .end local v7    # "fy2":F
    .end local v8    # "color":F
    .end local v9    # "idx":I
    :cond_3
    move-object v4, p1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .locals 35
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

    .line 367
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p11

    move/from16 v4, p12

    iget-boolean v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v5, :cond_8

    .line 369
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 370
    .local v5, "triangles":[S
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 372
    .local v6, "vertices":[F
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v8, p1

    if-eq v8, v7, :cond_0

    .line 373
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 374
    :cond_0
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v7, v7, 0x6

    array-length v9, v5

    if-gt v7, v9, :cond_1

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v7, v7, 0x14

    array-length v9, v6

    if-le v7, v9, :cond_2

    .line 375
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 377
    :cond_2
    :goto_0
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 378
    .local v7, "triangleIndex":I
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v9, v9, 0x5

    .line 379
    .local v9, "startVertex":I
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "triangleIndex":I
    .local v10, "triangleIndex":I
    int-to-short v11, v9

    aput-short v11, v5, v7

    .line 380
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    add-int/lit8 v11, v9, 0x1

    int-to-short v11, v11

    aput-short v11, v5, v10

    .line 381
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v10    # "triangleIndex":I
    add-int/lit8 v11, v9, 0x2

    int-to-short v11, v11

    aput-short v11, v5, v7

    .line 382
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    add-int/lit8 v11, v9, 0x2

    int-to-short v11, v11

    aput-short v11, v5, v10

    .line 383
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v10    # "triangleIndex":I
    add-int/lit8 v11, v9, 0x3

    int-to-short v11, v11

    aput-short v11, v5, v7

    .line 384
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    int-to-short v11, v9

    aput-short v11, v5, v10

    .line 385
    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 388
    add-float v10, p2, v1

    .line 389
    .local v10, "worldOriginX":F
    add-float v11, p3, v2

    .line 390
    .local v11, "worldOriginY":F
    neg-float v12, v1

    .line 391
    .local v12, "fx":F
    neg-float v13, v2

    .line 392
    .local v13, "fy":F
    sub-float v14, p6, v1

    .line 393
    .local v14, "fx2":F
    sub-float v15, p7, v2

    .line 396
    .local v15, "fy2":F
    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v17, p8, v16

    if-nez v17, :cond_3

    cmpl-float v16, p9, v16

    if-eqz v16, :cond_4

    .line 397
    :cond_3
    mul-float v12, v12, p8

    .line 398
    mul-float v13, v13, p9

    .line 399
    mul-float v14, v14, p8

    .line 400
    mul-float v15, v15, p9

    .line 404
    :cond_4
    move/from16 v16, v12

    .line 405
    .local v16, "p1x":F
    move/from16 v17, v13

    .line 406
    .local v17, "p1y":F
    move/from16 v18, v12

    .line 407
    .local v18, "p2x":F
    move/from16 v19, v15

    .line 408
    .local v19, "p2y":F
    move/from16 v20, v14

    .line 409
    .local v20, "p3x":F
    move/from16 v21, v15

    .line 410
    .local v21, "p3y":F
    move/from16 v22, v14

    .line 411
    .local v22, "p4x":F
    move/from16 v23, v13

    .line 423
    .local v23, "p4y":F
    const/16 v24, 0x0

    cmpl-float v24, p10, v24

    if-eqz v24, :cond_5

    .line 424
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v24

    .line 425
    .local v24, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v25

    .line 427
    .local v25, "sin":F
    mul-float v26, v24, v16

    mul-float v27, v25, v17

    sub-float v26, v26, v27

    .line 428
    .local v26, "x1":F
    mul-float v27, v25, v16

    mul-float v28, v24, v17

    add-float v27, v27, v28

    .line 430
    .local v27, "y1":F
    mul-float v28, v24, v18

    mul-float v29, v25, v19

    sub-float v28, v28, v29

    .line 431
    .local v28, "x2":F
    mul-float v29, v25, v18

    mul-float v30, v24, v19

    add-float v29, v29, v30

    .line 433
    .local v29, "y2":F
    mul-float v30, v24, v20

    mul-float v31, v25, v21

    sub-float v30, v30, v31

    .line 434
    .local v30, "x3":F
    mul-float v31, v25, v20

    mul-float v32, v24, v21

    add-float v31, v31, v32

    .line 436
    .local v31, "y3":F
    sub-float v32, v30, v28

    add-float v32, v26, v32

    .line 437
    .local v32, "x4":F
    sub-float v33, v29, v27

    sub-float v24, v31, v33

    .line 438
    .end local v25    # "sin":F
    .local v24, "y4":F
    goto :goto_1

    .line 439
    .end local v24    # "y4":F
    .end local v26    # "x1":F
    .end local v27    # "y1":F
    .end local v28    # "x2":F
    .end local v29    # "y2":F
    .end local v30    # "x3":F
    .end local v31    # "y3":F
    .end local v32    # "x4":F
    :cond_5
    move/from16 v26, v16

    .line 440
    .restart local v26    # "x1":F
    move/from16 v27, v17

    .line 442
    .restart local v27    # "y1":F
    move/from16 v28, v18

    .line 443
    .restart local v28    # "x2":F
    move/from16 v29, v19

    .line 445
    .restart local v29    # "y2":F
    move/from16 v30, v20

    .line 446
    .restart local v30    # "x3":F
    move/from16 v31, v21

    .line 448
    .restart local v31    # "y3":F
    move/from16 v32, v22

    .line 449
    .restart local v32    # "x4":F
    move/from16 v24, v23

    .line 452
    .restart local v24    # "y4":F
    :goto_1
    add-float v26, v26, v10

    .line 453
    add-float v27, v27, v11

    .line 454
    add-float v28, v28, v10

    .line 455
    add-float v29, v29, v11

    .line 456
    add-float v30, v30, v10

    .line 457
    add-float v31, v31, v11

    .line 458
    add-float v32, v32, v10

    .line 459
    add-float v24, v24, v11

    .line 461
    int-to-float v1, v3

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    mul-float/2addr v1, v2

    .line 462
    .local v1, "u":F
    move-object/from16 v25, v5

    .end local v5    # "triangles":[S
    .local v25, "triangles":[S
    add-int v5, v4, p14

    int-to-float v5, v5

    move/from16 v33, v7

    .end local v7    # "triangleIndex":I
    .local v33, "triangleIndex":I
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    mul-float/2addr v5, v7

    .line 463
    .local v5, "v":F
    add-int v8, v3, p13

    int-to-float v8, v8

    mul-float/2addr v8, v2

    .line 464
    .local v8, "u2":F
    int-to-float v2, v4

    mul-float/2addr v2, v7

    .line 466
    .local v2, "v2":F
    if-eqz p15, :cond_6

    .line 467
    move v7, v1

    .line 468
    .local v7, "tmp":F
    move v1, v8

    .line 469
    move v8, v7

    .line 472
    .end local v7    # "tmp":F
    :cond_6
    if-eqz p16, :cond_7

    .line 473
    move v7, v5

    .line 474
    .restart local v7    # "tmp":F
    move v5, v2

    .line 475
    move v2, v7

    .line 478
    .end local v7    # "tmp":F
    :cond_7
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 479
    .local v7, "color":F
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 480
    .local v3, "idx":I
    add-int/lit8 v34, v3, 0x1

    .end local v3    # "idx":I
    .local v34, "idx":I
    aput v26, v6, v3

    .line 481
    add-int/lit8 v3, v34, 0x1

    .end local v34    # "idx":I
    .restart local v3    # "idx":I
    aput v27, v6, v34

    .line 482
    add-int/lit8 v34, v3, 0x1

    .end local v3    # "idx":I
    .restart local v34    # "idx":I
    aput v7, v6, v3

    .line 483
    add-int/lit8 v3, v34, 0x1

    .end local v34    # "idx":I
    .restart local v3    # "idx":I
    aput v1, v6, v34

    .line 484
    add-int/lit8 v34, v3, 0x1

    .end local v3    # "idx":I
    .restart local v34    # "idx":I
    aput v5, v6, v3

    .line 486
    add-int/lit8 v3, v34, 0x1

    .end local v34    # "idx":I
    .restart local v3    # "idx":I
    aput v28, v6, v34

    .line 487
    add-int/lit8 v34, v3, 0x1

    .end local v3    # "idx":I
    .restart local v34    # "idx":I
    aput v29, v6, v3

    .line 488
    add-int/lit8 v3, v34, 0x1

    .end local v34    # "idx":I
    .restart local v3    # "idx":I
    aput v7, v6, v34

    .line 489
    add-int/lit8 v34, v3, 0x1

    .end local v3    # "idx":I
    .restart local v34    # "idx":I
    aput v1, v6, v3

    .line 490
    add-int/lit8 v3, v34, 0x1

    .end local v34    # "idx":I
    .restart local v3    # "idx":I
    aput v2, v6, v34

    .line 492
    add-int/lit8 v34, v3, 0x1

    .end local v3    # "idx":I
    .restart local v34    # "idx":I
    aput v30, v6, v3

    .line 493
    add-int/lit8 v3, v34, 0x1

    .end local v34    # "idx":I
    .restart local v3    # "idx":I
    aput v31, v6, v34

    .line 494
    add-int/lit8 v34, v3, 0x1

    .end local v3    # "idx":I
    .restart local v34    # "idx":I
    aput v7, v6, v3

    .line 495
    add-int/lit8 v3, v34, 0x1

    .end local v34    # "idx":I
    .restart local v3    # "idx":I
    aput v8, v6, v34

    .line 496
    add-int/lit8 v34, v3, 0x1

    .end local v3    # "idx":I
    .restart local v34    # "idx":I
    aput v2, v6, v3

    .line 498
    add-int/lit8 v3, v34, 0x1

    .end local v34    # "idx":I
    .restart local v3    # "idx":I
    aput v32, v6, v34

    .line 499
    add-int/lit8 v34, v3, 0x1

    .end local v3    # "idx":I
    .restart local v34    # "idx":I
    aput v24, v6, v3

    .line 500
    add-int/lit8 v3, v34, 0x1

    .end local v34    # "idx":I
    .restart local v3    # "idx":I
    aput v7, v6, v34

    .line 501
    add-int/lit8 v34, v3, 0x1

    .end local v3    # "idx":I
    .restart local v34    # "idx":I
    aput v8, v6, v3

    .line 502
    add-int/lit8 v3, v34, 0x1

    .end local v34    # "idx":I
    .restart local v3    # "idx":I
    aput v5, v6, v34

    .line 503
    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 504
    return-void

    .line 367
    .end local v1    # "u":F
    .end local v2    # "v2":F
    .end local v3    # "idx":I
    .end local v5    # "v":F
    .end local v6    # "vertices":[F
    .end local v7    # "color":F
    .end local v8    # "u2":F
    .end local v9    # "startVertex":I
    .end local v10    # "worldOriginX":F
    .end local v11    # "worldOriginY":F
    .end local v12    # "fx":F
    .end local v13    # "fy":F
    .end local v14    # "fx2":F
    .end local v15    # "fy2":F
    .end local v16    # "p1x":F
    .end local v17    # "p1y":F
    .end local v18    # "p2x":F
    .end local v19    # "p2y":F
    .end local v20    # "p3x":F
    .end local v21    # "p3y":F
    .end local v22    # "p4x":F
    .end local v23    # "p4y":F
    .end local v24    # "y4":F
    .end local v25    # "triangles":[S
    .end local v26    # "x1":F
    .end local v27    # "y1":F
    .end local v28    # "x2":F
    .end local v29    # "y2":F
    .end local v30    # "x3":F
    .end local v31    # "y3":F
    .end local v32    # "x4":F
    .end local v33    # "triangleIndex":I
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
    .locals 17
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

    .line 509
    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p7

    iget-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v3, :cond_5

    .line 511
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 512
    .local v3, "triangles":[S
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 514
    .local v4, "vertices":[F
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v6, p1

    if-eq v6, v5, :cond_0

    .line 515
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 516
    :cond_0
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v5, v5, 0x6

    array-length v7, v3

    if-gt v5, v7, :cond_1

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v5, v5, 0x14

    array-length v7, v4

    if-le v5, v7, :cond_2

    .line 517
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 519
    :cond_2
    :goto_0
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 520
    .local v5, "triangleIndex":I
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v7, v7, 0x5

    .line 521
    .local v7, "startVertex":I
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "triangleIndex":I
    .local v8, "triangleIndex":I
    int-to-short v9, v7

    aput-short v9, v3, v5

    .line 522
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "triangleIndex":I
    .restart local v5    # "triangleIndex":I
    add-int/lit8 v9, v7, 0x1

    int-to-short v9, v9

    aput-short v9, v3, v8

    .line 523
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "triangleIndex":I
    .restart local v8    # "triangleIndex":I
    add-int/lit8 v9, v7, 0x2

    int-to-short v9, v9

    aput-short v9, v3, v5

    .line 524
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "triangleIndex":I
    .restart local v5    # "triangleIndex":I
    add-int/lit8 v9, v7, 0x2

    int-to-short v9, v9

    aput-short v9, v3, v8

    .line 525
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "triangleIndex":I
    .restart local v8    # "triangleIndex":I
    add-int/lit8 v9, v7, 0x3

    int-to-short v9, v9

    aput-short v9, v3, v5

    .line 526
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "triangleIndex":I
    .restart local v5    # "triangleIndex":I
    int-to-short v9, v7

    aput-short v9, v3, v8

    .line 527
    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 529
    int-to-float v8, v1

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    mul-float/2addr v8, v9

    .line 530
    .local v8, "u":F
    add-int v10, v2, p9

    int-to-float v10, v10

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    mul-float/2addr v10, v11

    .line 531
    .local v10, "v":F
    add-int v12, v1, p8

    int-to-float v12, v12

    mul-float/2addr v12, v9

    .line 532
    .local v12, "u2":F
    int-to-float v9, v2

    mul-float/2addr v9, v11

    .line 533
    .local v9, "v2":F
    add-float v11, p2, p4

    .line 534
    .local v11, "fx2":F
    add-float v13, p3, p5

    .line 536
    .local v13, "fy2":F
    if-eqz p10, :cond_3

    .line 537
    move v14, v8

    .line 538
    .local v14, "tmp":F
    move v8, v12

    .line 539
    move v12, v14

    .line 542
    .end local v14    # "tmp":F
    :cond_3
    if-eqz p11, :cond_4

    .line 543
    move v14, v10

    .line 544
    .restart local v14    # "tmp":F
    move v10, v9

    .line 545
    move v9, v14

    .line 548
    .end local v14    # "tmp":F
    :cond_4
    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 549
    .local v14, "color":F
    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 550
    .local v15, "idx":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "idx":I
    .local v16, "idx":I
    aput p2, v4, v15

    .line 551
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "idx":I
    .restart local v15    # "idx":I
    aput p3, v4, v16

    .line 552
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "idx":I
    .restart local v16    # "idx":I
    aput v14, v4, v15

    .line 553
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "idx":I
    .restart local v15    # "idx":I
    aput v8, v4, v16

    .line 554
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "idx":I
    .restart local v16    # "idx":I
    aput v10, v4, v15

    .line 556
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "idx":I
    .restart local v15    # "idx":I
    aput p2, v4, v16

    .line 557
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "idx":I
    .restart local v16    # "idx":I
    aput v13, v4, v15

    .line 558
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "idx":I
    .restart local v15    # "idx":I
    aput v14, v4, v16

    .line 559
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "idx":I
    .restart local v16    # "idx":I
    aput v8, v4, v15

    .line 560
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "idx":I
    .restart local v15    # "idx":I
    aput v9, v4, v16

    .line 562
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "idx":I
    .restart local v16    # "idx":I
    aput v11, v4, v15

    .line 563
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "idx":I
    .restart local v15    # "idx":I
    aput v13, v4, v16

    .line 564
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "idx":I
    .restart local v16    # "idx":I
    aput v14, v4, v15

    .line 565
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "idx":I
    .restart local v15    # "idx":I
    aput v12, v4, v16

    .line 566
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "idx":I
    .restart local v16    # "idx":I
    aput v9, v4, v15

    .line 568
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "idx":I
    .restart local v15    # "idx":I
    aput v11, v4, v16

    .line 569
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "idx":I
    .restart local v16    # "idx":I
    aput p3, v4, v15

    .line 570
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "idx":I
    .restart local v15    # "idx":I
    aput v14, v4, v16

    .line 571
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "idx":I
    .restart local v16    # "idx":I
    aput v12, v4, v15

    .line 572
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "idx":I
    .restart local v15    # "idx":I
    aput v10, v4, v16

    .line 573
    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 574
    return-void

    .line 509
    .end local v3    # "triangles":[S
    .end local v4    # "vertices":[F
    .end local v5    # "triangleIndex":I
    .end local v7    # "startVertex":I
    .end local v8    # "u":F
    .end local v9    # "v2":F
    .end local v10    # "v":F
    .end local v11    # "fx2":F
    .end local v12    # "u2":F
    .end local v13    # "fy2":F
    .end local v14    # "color":F
    .end local v15    # "idx":I
    :cond_5
    move-object/from16 v6, p1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
    .locals 17
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "srcX"    # I
    .param p5, "srcY"    # I
    .param p6, "srcWidth"    # I
    .param p7, "srcHeight"    # I

    .line 578
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    iget-boolean v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v5, :cond_3

    .line 580
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 581
    .local v5, "triangles":[S
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 583
    .local v6, "vertices":[F
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v8, p1

    if-eq v8, v7, :cond_0

    .line 584
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 585
    :cond_0
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v7, v7, 0x6

    array-length v9, v5

    if-gt v7, v9, :cond_1

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v7, v7, 0x14

    array-length v9, v6

    if-le v7, v9, :cond_2

    .line 586
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 588
    :cond_2
    :goto_0
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 589
    .local v7, "triangleIndex":I
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v9, v9, 0x5

    .line 590
    .local v9, "startVertex":I
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "triangleIndex":I
    .local v10, "triangleIndex":I
    int-to-short v11, v9

    aput-short v11, v5, v7

    .line 591
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    add-int/lit8 v11, v9, 0x1

    int-to-short v11, v11

    aput-short v11, v5, v10

    .line 592
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v10    # "triangleIndex":I
    add-int/lit8 v11, v9, 0x2

    int-to-short v11, v11

    aput-short v11, v5, v7

    .line 593
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    add-int/lit8 v11, v9, 0x2

    int-to-short v11, v11

    aput-short v11, v5, v10

    .line 594
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v10    # "triangleIndex":I
    add-int/lit8 v11, v9, 0x3

    int-to-short v11, v11

    aput-short v11, v5, v7

    .line 595
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    int-to-short v11, v9

    aput-short v11, v5, v10

    .line 596
    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 598
    int-to-float v10, v1

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    mul-float/2addr v10, v11

    .line 599
    .local v10, "u":F
    add-int v12, v2, v4

    int-to-float v12, v12

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    mul-float/2addr v12, v13

    .line 600
    .local v12, "v":F
    add-int v14, v1, v3

    int-to-float v14, v14

    mul-float/2addr v14, v11

    .line 601
    .local v14, "u2":F
    int-to-float v11, v2

    mul-float/2addr v11, v13

    .line 602
    .local v11, "v2":F
    int-to-float v13, v3

    add-float v13, p2, v13

    .line 603
    .local v13, "fx2":F
    int-to-float v15, v4

    add-float v15, p3, v15

    .line 605
    .local v15, "fy2":F
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 606
    .local v1, "color":F
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 607
    .local v2, "idx":I
    add-int/lit8 v16, v2, 0x1

    .end local v2    # "idx":I
    .local v16, "idx":I
    aput p2, v6, v2

    .line 608
    add-int/lit8 v2, v16, 0x1

    .end local v16    # "idx":I
    .restart local v2    # "idx":I
    aput p3, v6, v16

    .line 609
    add-int/lit8 v16, v2, 0x1

    .end local v2    # "idx":I
    .restart local v16    # "idx":I
    aput v1, v6, v2

    .line 610
    add-int/lit8 v2, v16, 0x1

    .end local v16    # "idx":I
    .restart local v2    # "idx":I
    aput v10, v6, v16

    .line 611
    add-int/lit8 v16, v2, 0x1

    .end local v2    # "idx":I
    .restart local v16    # "idx":I
    aput v12, v6, v2

    .line 613
    add-int/lit8 v2, v16, 0x1

    .end local v16    # "idx":I
    .restart local v2    # "idx":I
    aput p2, v6, v16

    .line 614
    add-int/lit8 v16, v2, 0x1

    .end local v2    # "idx":I
    .restart local v16    # "idx":I
    aput v15, v6, v2

    .line 615
    add-int/lit8 v2, v16, 0x1

    .end local v16    # "idx":I
    .restart local v2    # "idx":I
    aput v1, v6, v16

    .line 616
    add-int/lit8 v16, v2, 0x1

    .end local v2    # "idx":I
    .restart local v16    # "idx":I
    aput v10, v6, v2

    .line 617
    add-int/lit8 v2, v16, 0x1

    .end local v16    # "idx":I
    .restart local v2    # "idx":I
    aput v11, v6, v16

    .line 619
    add-int/lit8 v16, v2, 0x1

    .end local v2    # "idx":I
    .restart local v16    # "idx":I
    aput v13, v6, v2

    .line 620
    add-int/lit8 v2, v16, 0x1

    .end local v16    # "idx":I
    .restart local v2    # "idx":I
    aput v15, v6, v16

    .line 621
    add-int/lit8 v16, v2, 0x1

    .end local v2    # "idx":I
    .restart local v16    # "idx":I
    aput v1, v6, v2

    .line 622
    add-int/lit8 v2, v16, 0x1

    .end local v16    # "idx":I
    .restart local v2    # "idx":I
    aput v14, v6, v16

    .line 623
    add-int/lit8 v16, v2, 0x1

    .end local v2    # "idx":I
    .restart local v16    # "idx":I
    aput v11, v6, v2

    .line 625
    add-int/lit8 v2, v16, 0x1

    .end local v16    # "idx":I
    .restart local v2    # "idx":I
    aput v13, v6, v16

    .line 626
    add-int/lit8 v16, v2, 0x1

    .end local v2    # "idx":I
    .restart local v16    # "idx":I
    aput p3, v6, v2

    .line 627
    add-int/lit8 v2, v16, 0x1

    .end local v16    # "idx":I
    .restart local v2    # "idx":I
    aput v1, v6, v16

    .line 628
    add-int/lit8 v16, v2, 0x1

    .end local v2    # "idx":I
    .restart local v16    # "idx":I
    aput v14, v6, v2

    .line 629
    add-int/lit8 v2, v16, 0x1

    .end local v16    # "idx":I
    .restart local v2    # "idx":I
    aput v12, v6, v16

    .line 630
    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 631
    return-void

    .line 578
    .end local v1    # "color":F
    .end local v2    # "idx":I
    .end local v5    # "triangles":[S
    .end local v6    # "vertices":[F
    .end local v7    # "triangleIndex":I
    .end local v9    # "startVertex":I
    .end local v10    # "u":F
    .end local v11    # "v2":F
    .end local v12    # "v":F
    .end local v13    # "fx2":F
    .end local v14    # "u2":F
    .end local v15    # "fy2":F
    :cond_3
    move-object/from16 v8, p1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 10
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "spriteVertices"    # [F
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .line 750
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_5

    .line 752
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 753
    .local v0, "triangles":[S
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 755
    .local v1, "vertices":[F
    div-int/lit8 v2, p4, 0x14

    mul-int/lit8 v2, v2, 0x6

    .line 757
    .local v2, "triangleCount":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v3, :cond_0

    .line 758
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 759
    array-length v3, v1

    array-length v4, v1

    rem-int/lit8 v4, v4, 0x14

    sub-int/2addr v3, v4

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    array-length v4, v0

    div-int/lit8 v4, v4, 0x6

    mul-int/lit8 v4, v4, 0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 760
    .local v3, "batch":I
    div-int/lit8 v4, v3, 0x14

    mul-int/lit8 v2, v4, 0x6

    goto :goto_1

    .line 761
    .end local v3    # "batch":I
    :cond_0
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr v3, v2

    array-length v4, v0

    if-gt v3, v4, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr v3, p4

    array-length v4, v1

    if-le v3, v4, :cond_1

    goto :goto_0

    .line 766
    :cond_1
    move v3, p4

    .restart local v3    # "batch":I
    goto :goto_1

    .line 762
    .end local v3    # "batch":I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 763
    array-length v3, v1

    array-length v4, v1

    rem-int/lit8 v4, v4, 0x14

    sub-int/2addr v3, v4

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    array-length v4, v0

    div-int/lit8 v4, v4, 0x6

    mul-int/lit8 v4, v4, 0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 764
    .restart local v3    # "batch":I
    div-int/lit8 v4, v3, 0x14

    mul-int/lit8 v2, v4, 0x6

    .line 768
    :goto_1
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 769
    .local v4, "vertexIndex":I
    div-int/lit8 v5, v4, 0x5

    int-to-short v5, v5

    .line 770
    .local v5, "vertex":S
    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 771
    .local v6, "triangleIndex":I
    add-int v7, v6, v2

    .local v7, "n":I
    :goto_2
    if-ge v6, v7, :cond_3

    .line 772
    aput-short v5, v0, v6

    .line 773
    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v9, v5, 0x1

    int-to-short v9, v9

    aput-short v9, v0, v8

    .line 774
    add-int/lit8 v8, v6, 0x2

    add-int/lit8 v9, v5, 0x2

    int-to-short v9, v9

    aput-short v9, v0, v8

    .line 775
    add-int/lit8 v8, v6, 0x3

    add-int/lit8 v9, v5, 0x2

    int-to-short v9, v9

    aput-short v9, v0, v8

    .line 776
    add-int/lit8 v8, v6, 0x4

    add-int/lit8 v9, v5, 0x3

    int-to-short v9, v9

    aput-short v9, v0, v8

    .line 777
    add-int/lit8 v8, v6, 0x5

    aput-short v5, v0, v8

    .line 771
    add-int/lit8 v6, v6, 0x6

    add-int/lit8 v8, v5, 0x4

    int-to-short v5, v8

    goto :goto_2

    .line 781
    .end local v7    # "n":I
    :cond_3
    :goto_3
    invoke-static {p2, p3, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    add-int v7, v4, v3

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 783
    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 784
    sub-int/2addr p4, v3

    .line 785
    if-nez p4, :cond_4

    .line 794
    return-void

    .line 786
    :cond_4
    add-int/2addr p3, v3

    .line 787
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 788
    const/4 v4, 0x0

    .line 789
    if-le v3, p4, :cond_3

    .line 790
    array-length v7, v0

    div-int/lit8 v7, v7, 0x6

    mul-int/lit8 v7, v7, 0x14

    invoke-static {p4, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 791
    div-int/lit8 v7, v3, 0x14

    mul-int/lit8 v6, v7, 0x6

    goto :goto_3

    .line 750
    .end local v0    # "triangles":[S
    .end local v1    # "vertices":[F
    .end local v2    # "triangleCount":I
    .end local v3    # "batch":I
    .end local v4    # "vertexIndex":I
    .end local v5    # "vertex":S
    .end local v6    # "triangleIndex":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII[SII)V
    .locals 12
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "polygonVertices"    # [F
    .param p3, "verticesOffset"    # I
    .param p4, "verticesCount"    # I
    .param p5, "polygonTriangles"    # [S
    .param p6, "trianglesOffset"    # I
    .param p7, "trianglesCount"    # I

    .line 342
    move-object v0, p0

    move/from16 v1, p4

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v2, :cond_4

    .line 344
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 345
    .local v2, "triangles":[S
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 347
    .local v3, "vertices":[F
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object v5, p1

    if-eq v5, v4, :cond_0

    .line 348
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 349
    :cond_0
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int v4, v4, p7

    array-length v6, v2

    if-gt v4, v6, :cond_1

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr v4, v1

    array-length v6, v3

    if-le v4, v6, :cond_2

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 352
    :cond_2
    :goto_0
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 353
    .local v4, "triangleIndex":I
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 354
    .local v6, "vertexIndex":I
    div-int/lit8 v7, v6, 0x5

    .line 356
    .local v7, "startVertex":I
    move/from16 v8, p6

    .local v8, "i":I
    add-int v9, v8, p7

    .local v9, "n":I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 357
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "triangleIndex":I
    .local v10, "triangleIndex":I
    aget-short v11, p5, v8

    add-int/2addr v11, v7

    int-to-short v11, v11

    aput-short v11, v2, v4

    .line 356
    add-int/lit8 v8, v8, 0x1

    move v4, v10

    goto :goto_1

    .line 358
    .end local v8    # "i":I
    .end local v9    # "n":I
    .end local v10    # "triangleIndex":I
    .restart local v4    # "triangleIndex":I
    :cond_3
    iput v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 360
    move-object v8, p2

    move v9, p3

    invoke-static {p2, p3, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr v10, v1

    iput v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 362
    return-void

    .line 342
    .end local v2    # "triangles":[S
    .end local v3    # "vertices":[F
    .end local v4    # "triangleIndex":I
    .end local v6    # "vertexIndex":I
    .end local v7    # "startVertex":I
    :cond_4
    move-object v5, p1

    move-object v8, p2

    move v9, p3

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;FF)V
    .locals 17
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 212
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v2, :cond_5

    .line 214
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 215
    .local v2, "triangles":[S
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    .line 216
    .local v3, "regionTriangles":[S
    array-length v4, v3

    .line 217
    .local v4, "regionTrianglesLength":I
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 218
    .local v5, "regionVertices":[F
    array-length v6, v5

    .line 220
    .local v6, "regionVerticesLength":I
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 221
    .local v7, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v7, v8, :cond_0

    .line 222
    invoke-direct {v0, v7}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 223
    :cond_0
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr v8, v4

    array-length v9, v2

    if-gt v8, v9, :cond_1

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    mul-int/lit8 v9, v6, 0x5

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    array-length v9, v9

    if-le v8, v9, :cond_2

    .line 224
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 226
    :cond_2
    :goto_0
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 227
    .local v8, "triangleIndex":I
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 228
    .local v9, "vertexIndex":I
    div-int/lit8 v10, v9, 0x5

    .line 230
    .local v10, "startVertex":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v4, :cond_3

    .line 231
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "triangleIndex":I
    .local v12, "triangleIndex":I
    aget-short v13, v3, v11

    add-int/2addr v13, v10

    int-to-short v13, v13

    aput-short v13, v2, v8

    .line 230
    add-int/lit8 v11, v11, 0x1

    move v8, v12

    goto :goto_1

    .line 232
    .end local v11    # "i":I
    .end local v12    # "triangleIndex":I
    .restart local v8    # "triangleIndex":I
    :cond_3
    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 234
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 235
    .local v11, "vertices":[F
    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 236
    .local v12, "color":F
    iget-object v13, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    .line 238
    .local v13, "textureCoords":[F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v6, :cond_4

    .line 239
    add-int/lit8 v15, v9, 0x1

    .end local v9    # "vertexIndex":I
    .local v15, "vertexIndex":I
    aget v16, v5, v14

    add-float v16, v16, p2

    aput v16, v11, v9

    .line 240
    add-int/lit8 v9, v15, 0x1

    .end local v15    # "vertexIndex":I
    .restart local v9    # "vertexIndex":I
    add-int/lit8 v16, v14, 0x1

    aget v16, v5, v16

    add-float v16, v16, p3

    aput v16, v11, v15

    .line 241
    add-int/lit8 v15, v9, 0x1

    .end local v9    # "vertexIndex":I
    .restart local v15    # "vertexIndex":I
    aput v12, v11, v9

    .line 242
    add-int/lit8 v9, v15, 0x1

    .end local v15    # "vertexIndex":I
    .restart local v9    # "vertexIndex":I
    aget v16, v13, v14

    aput v16, v11, v15

    .line 243
    add-int/lit8 v15, v9, 0x1

    .end local v9    # "vertexIndex":I
    .restart local v15    # "vertexIndex":I
    add-int/lit8 v16, v14, 0x1

    aget v16, v13, v16

    aput v16, v11, v9

    .line 238
    add-int/lit8 v14, v14, 0x2

    move v9, v15

    goto :goto_2

    .line 245
    .end local v14    # "i":I
    .end local v15    # "vertexIndex":I
    .restart local v9    # "vertexIndex":I
    :cond_4
    iput v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 246
    return-void

    .line 212
    .end local v2    # "triangles":[S
    .end local v3    # "regionTriangles":[S
    .end local v4    # "regionTrianglesLength":I
    .end local v5    # "regionVertices":[F
    .end local v6    # "regionVerticesLength":I
    .end local v7    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v8    # "triangleIndex":I
    .end local v9    # "vertexIndex":I
    .end local v10    # "startVertex":I
    .end local v11    # "vertices":[F
    .end local v12    # "color":F
    .end local v13    # "textureCoords":[F
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;FFFF)V
    .locals 20
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .line 250
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v2, :cond_5

    .line 252
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 253
    .local v2, "triangles":[S
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    .line 254
    .local v3, "regionTriangles":[S
    array-length v4, v3

    .line 255
    .local v4, "regionTrianglesLength":I
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 256
    .local v5, "regionVertices":[F
    array-length v6, v5

    .line 257
    .local v6, "regionVerticesLength":I
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 259
    .local v7, "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 260
    .local v8, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v8, v9, :cond_0

    .line 261
    invoke-direct {v0, v8}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 262
    :cond_0
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr v9, v4

    array-length v10, v2

    if-gt v9, v10, :cond_1

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    mul-int/lit8 v10, v6, 0x5

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    array-length v10, v10

    if-le v9, v10, :cond_2

    .line 263
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 265
    :cond_2
    :goto_0
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 266
    .local v9, "triangleIndex":I
    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 267
    .local v10, "vertexIndex":I
    div-int/lit8 v11, v10, 0x5

    .line 269
    .local v11, "startVertex":I
    const/4 v12, 0x0

    .local v12, "i":I
    array-length v13, v3

    .local v13, "n":I
    :goto_1
    if-ge v12, v13, :cond_3

    .line 270
    add-int/lit8 v14, v9, 0x1

    .end local v9    # "triangleIndex":I
    .local v14, "triangleIndex":I
    aget-short v15, v3, v12

    add-int/2addr v15, v11

    int-to-short v15, v15

    aput-short v15, v2, v9

    .line 269
    add-int/lit8 v12, v12, 0x1

    move v9, v14

    goto :goto_1

    .line 271
    .end local v12    # "i":I
    .end local v13    # "n":I
    .end local v14    # "triangleIndex":I
    .restart local v9    # "triangleIndex":I
    :cond_3
    iput v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 273
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 274
    .local v12, "vertices":[F
    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 275
    .local v13, "color":F
    iget-object v14, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    .line 276
    .local v14, "textureCoords":[F
    iget v15, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    int-to-float v15, v15

    div-float v15, p4, v15

    .line 277
    .local v15, "sX":F
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    int-to-float v1, v1

    div-float v1, p5, v1

    .line 279
    .local v1, "sY":F
    const/16 v16, 0x0

    move/from16 v19, v16

    move-object/from16 v16, v2

    move/from16 v2, v19

    .local v2, "i":I
    .local v16, "triangles":[S
    :goto_2
    if-ge v2, v6, :cond_4

    .line 280
    add-int/lit8 v17, v10, 0x1

    .end local v10    # "vertexIndex":I
    .local v17, "vertexIndex":I
    aget v18, v5, v2

    mul-float v18, v18, v15

    add-float v18, v18, p2

    aput v18, v12, v10

    .line 281
    add-int/lit8 v10, v17, 0x1

    .end local v17    # "vertexIndex":I
    .restart local v10    # "vertexIndex":I
    add-int/lit8 v18, v2, 0x1

    aget v18, v5, v18

    mul-float v18, v18, v1

    add-float v18, v18, p3

    aput v18, v12, v17

    .line 282
    add-int/lit8 v17, v10, 0x1

    .end local v10    # "vertexIndex":I
    .restart local v17    # "vertexIndex":I
    aput v13, v12, v10

    .line 283
    add-int/lit8 v10, v17, 0x1

    .end local v17    # "vertexIndex":I
    .restart local v10    # "vertexIndex":I
    aget v18, v14, v2

    aput v18, v12, v17

    .line 284
    add-int/lit8 v17, v10, 0x1

    .end local v10    # "vertexIndex":I
    .restart local v17    # "vertexIndex":I
    add-int/lit8 v18, v2, 0x1

    aget v18, v14, v18

    aput v18, v12, v10

    .line 279
    add-int/lit8 v2, v2, 0x2

    move/from16 v10, v17

    goto :goto_2

    .line 286
    .end local v2    # "i":I
    .end local v17    # "vertexIndex":I
    .restart local v10    # "vertexIndex":I
    :cond_4
    iput v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 287
    return-void

    .line 250
    .end local v1    # "sY":F
    .end local v3    # "regionTriangles":[S
    .end local v4    # "regionTrianglesLength":I
    .end local v5    # "regionVertices":[F
    .end local v6    # "regionVerticesLength":I
    .end local v7    # "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v8    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v9    # "triangleIndex":I
    .end local v10    # "vertexIndex":I
    .end local v11    # "startVertex":I
    .end local v12    # "vertices":[F
    .end local v13    # "color":F
    .end local v14    # "textureCoords":[F
    .end local v15    # "sX":F
    .end local v16    # "triangles":[S
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;FFFFFFFFF)V
    .locals 27
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v2, :cond_5

    .line 294
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 295
    .local v2, "triangles":[S
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    .line 296
    .local v3, "regionTriangles":[S
    array-length v4, v3

    .line 297
    .local v4, "regionTrianglesLength":I
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 298
    .local v5, "regionVertices":[F
    array-length v6, v5

    .line 299
    .local v6, "regionVerticesLength":I
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 301
    .local v7, "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 302
    .local v8, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v8, v9, :cond_0

    .line 303
    invoke-direct {v0, v8}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 304
    :cond_0
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr v9, v4

    array-length v10, v2

    if-gt v9, v10, :cond_1

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    mul-int/lit8 v10, v6, 0x5

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    array-length v10, v10

    if-le v9, v10, :cond_2

    .line 305
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 307
    :cond_2
    :goto_0
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 308
    .local v9, "triangleIndex":I
    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 309
    .local v10, "vertexIndex":I
    div-int/lit8 v11, v10, 0x5

    .line 311
    .local v11, "startVertex":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v4, :cond_3

    .line 312
    add-int/lit8 v13, v9, 0x1

    .end local v9    # "triangleIndex":I
    .local v13, "triangleIndex":I
    aget-short v14, v3, v12

    add-int/2addr v14, v11

    int-to-short v14, v14

    aput-short v14, v2, v9

    .line 311
    add-int/lit8 v12, v12, 0x1

    move v9, v13

    goto :goto_1

    .line 313
    .end local v12    # "i":I
    .end local v13    # "triangleIndex":I
    .restart local v9    # "triangleIndex":I
    :cond_3
    iput v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 315
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 316
    .local v12, "vertices":[F
    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 317
    .local v13, "color":F
    iget-object v14, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    .line 319
    .local v14, "textureCoords":[F
    add-float v15, p2, p4

    .line 320
    .local v15, "worldOriginX":F
    add-float v16, p3, p5

    .line 321
    .local v16, "worldOriginY":F
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    int-to-float v1, v1

    div-float v1, p6, v1

    .line 322
    .local v1, "sX":F
    move-object/from16 v17, v2

    .end local v2    # "triangles":[S
    .local v17, "triangles":[S
    iget v2, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    int-to-float v2, v2

    div-float v2, p7, v2

    .line 323
    .local v2, "sY":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v18

    .line 324
    .local v18, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v19

    .line 327
    .local v19, "sin":F
    const/16 v20, 0x0

    move/from16 v26, v20

    move-object/from16 v20, v3

    move/from16 v3, v26

    .local v3, "i":I
    .local v20, "regionTriangles":[S
    :goto_2
    if-ge v3, v6, :cond_4

    .line 328
    aget v21, v5, v3

    mul-float v21, v21, v1

    sub-float v21, v21, p4

    mul-float v21, v21, p8

    .line 329
    .local v21, "fx":F
    add-int/lit8 v22, v3, 0x1

    aget v22, v5, v22

    mul-float v22, v22, v2

    sub-float v22, v22, p5

    mul-float v22, v22, p9

    .line 330
    .local v22, "fy":F
    add-int/lit8 v23, v10, 0x1

    .end local v10    # "vertexIndex":I
    .local v23, "vertexIndex":I
    mul-float v24, v18, v21

    mul-float v25, v19, v22

    sub-float v24, v24, v25

    add-float v24, v24, v15

    aput v24, v12, v10

    .line 331
    add-int/lit8 v10, v23, 0x1

    .end local v23    # "vertexIndex":I
    .restart local v10    # "vertexIndex":I
    mul-float v24, v19, v21

    mul-float v25, v18, v22

    add-float v24, v24, v25

    add-float v24, v24, v16

    aput v24, v12, v23

    .line 332
    add-int/lit8 v23, v10, 0x1

    .end local v10    # "vertexIndex":I
    .restart local v23    # "vertexIndex":I
    aput v13, v12, v10

    .line 333
    add-int/lit8 v10, v23, 0x1

    .end local v23    # "vertexIndex":I
    .restart local v10    # "vertexIndex":I
    aget v24, v14, v3

    aput v24, v12, v23

    .line 334
    add-int/lit8 v23, v10, 0x1

    .end local v10    # "vertexIndex":I
    .restart local v23    # "vertexIndex":I
    add-int/lit8 v24, v3, 0x1

    aget v24, v14, v24

    aput v24, v12, v10

    .line 327
    add-int/lit8 v3, v3, 0x2

    move/from16 v10, v23

    goto :goto_2

    .line 336
    .end local v3    # "i":I
    .end local v21    # "fx":F
    .end local v22    # "fy":F
    .end local v23    # "vertexIndex":I
    .restart local v10    # "vertexIndex":I
    :cond_4
    iput v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 337
    return-void

    .line 292
    .end local v1    # "sX":F
    .end local v2    # "sY":F
    .end local v4    # "regionTrianglesLength":I
    .end local v5    # "regionVertices":[F
    .end local v6    # "regionVerticesLength":I
    .end local v7    # "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v8    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v9    # "triangleIndex":I
    .end local v10    # "vertexIndex":I
    .end local v11    # "startVertex":I
    .end local v12    # "vertices":[F
    .end local v13    # "color":F
    .end local v14    # "textureCoords":[F
    .end local v15    # "worldOriginX":F
    .end local v16    # "worldOriginY":F
    .end local v17    # "triangles":[S
    .end local v18    # "cos":F
    .end local v19    # "sin":F
    .end local v20    # "regionTriangles":[S
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .locals 7
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 798
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

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 799
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    .locals 16
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .line 803
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v2, :cond_3

    .line 805
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 806
    .local v2, "triangles":[S
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 808
    .local v3, "vertices":[F
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 809
    .local v4, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v4, v5, :cond_0

    .line 810
    invoke-direct {v0, v4}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 811
    :cond_0
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v5, v5, 0x6

    array-length v6, v2

    if-gt v5, v6, :cond_1

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v5, v5, 0x14

    array-length v6, v3

    if-le v5, v6, :cond_2

    .line 812
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 814
    :cond_2
    :goto_0
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 815
    .local v5, "triangleIndex":I
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v6, v6, 0x5

    .line 816
    .local v6, "startVertex":I
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "triangleIndex":I
    .local v7, "triangleIndex":I
    int-to-short v8, v6

    aput-short v8, v2, v5

    .line 817
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v5    # "triangleIndex":I
    add-int/lit8 v8, v6, 0x1

    int-to-short v8, v8

    aput-short v8, v2, v7

    .line 818
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    add-int/lit8 v8, v6, 0x2

    int-to-short v8, v8

    aput-short v8, v2, v5

    .line 819
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v5    # "triangleIndex":I
    add-int/lit8 v8, v6, 0x2

    int-to-short v8, v8

    aput-short v8, v2, v7

    .line 820
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    add-int/lit8 v8, v6, 0x3

    int-to-short v8, v8

    aput-short v8, v2, v5

    .line 821
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v5    # "triangleIndex":I
    int-to-short v8, v6

    aput-short v8, v2, v7

    .line 822
    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 824
    add-float v7, p2, p4

    .line 825
    .local v7, "fx2":F
    add-float v8, p3, p5

    .line 826
    .local v8, "fy2":F
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 827
    .local v9, "u":F
    iget v10, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 828
    .local v10, "v":F
    iget v11, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 829
    .local v11, "u2":F
    iget v12, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 831
    .local v12, "v2":F
    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 832
    .local v13, "color":F
    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 833
    .local v14, "idx":I
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "idx":I
    .local v15, "idx":I
    aput p2, v3, v14

    .line 834
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "idx":I
    .restart local v14    # "idx":I
    aput p3, v3, v15

    .line 835
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "idx":I
    .restart local v15    # "idx":I
    aput v13, v3, v14

    .line 836
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "idx":I
    .restart local v14    # "idx":I
    aput v9, v3, v15

    .line 837
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "idx":I
    .restart local v15    # "idx":I
    aput v10, v3, v14

    .line 839
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "idx":I
    .restart local v14    # "idx":I
    aput p2, v3, v15

    .line 840
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "idx":I
    .restart local v15    # "idx":I
    aput v8, v3, v14

    .line 841
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "idx":I
    .restart local v14    # "idx":I
    aput v13, v3, v15

    .line 842
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "idx":I
    .restart local v15    # "idx":I
    aput v9, v3, v14

    .line 843
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "idx":I
    .restart local v14    # "idx":I
    aput v12, v3, v15

    .line 845
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "idx":I
    .restart local v15    # "idx":I
    aput v7, v3, v14

    .line 846
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "idx":I
    .restart local v14    # "idx":I
    aput v8, v3, v15

    .line 847
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "idx":I
    .restart local v15    # "idx":I
    aput v13, v3, v14

    .line 848
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "idx":I
    .restart local v14    # "idx":I
    aput v11, v3, v15

    .line 849
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "idx":I
    .restart local v15    # "idx":I
    aput v12, v3, v14

    .line 851
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "idx":I
    .restart local v14    # "idx":I
    aput v7, v3, v15

    .line 852
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "idx":I
    .restart local v15    # "idx":I
    aput p3, v3, v14

    .line 853
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "idx":I
    .restart local v14    # "idx":I
    aput v13, v3, v15

    .line 854
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "idx":I
    .restart local v15    # "idx":I
    aput v11, v3, v14

    .line 855
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "idx":I
    .restart local v14    # "idx":I
    aput v10, v3, v15

    .line 856
    iput v14, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 857
    return-void

    .line 803
    .end local v2    # "triangles":[S
    .end local v3    # "vertices":[F
    .end local v4    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v5    # "triangleIndex":I
    .end local v6    # "startVertex":I
    .end local v7    # "fx2":F
    .end local v8    # "fy2":F
    .end local v9    # "u":F
    .end local v10    # "v":F
    .end local v11    # "u2":F
    .end local v12    # "v2":F
    .end local v13    # "color":F
    .end local v14    # "idx":I
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .locals 35
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

    .line 862
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    iget-boolean v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v4, :cond_6

    .line 864
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 865
    .local v4, "triangles":[S
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 867
    .local v5, "vertices":[F
    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 868
    .local v6, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v6, v7, :cond_0

    .line 869
    invoke-direct {v0, v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 870
    :cond_0
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v7, v7, 0x6

    array-length v8, v4

    if-gt v7, v8, :cond_1

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v7, v7, 0x14

    array-length v8, v5

    if-le v7, v8, :cond_2

    .line 871
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 873
    :cond_2
    :goto_0
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 874
    .local v7, "triangleIndex":I
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v8, v8, 0x5

    .line 875
    .local v8, "startVertex":I
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "triangleIndex":I
    .local v9, "triangleIndex":I
    int-to-short v10, v8

    aput-short v10, v4, v7

    .line 876
    add-int/lit8 v7, v9, 0x1

    .end local v9    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    add-int/lit8 v10, v8, 0x1

    int-to-short v10, v10

    aput-short v10, v4, v9

    .line 877
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v9    # "triangleIndex":I
    add-int/lit8 v10, v8, 0x2

    int-to-short v10, v10

    aput-short v10, v4, v7

    .line 878
    add-int/lit8 v7, v9, 0x1

    .end local v9    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    add-int/lit8 v10, v8, 0x2

    int-to-short v10, v10

    aput-short v10, v4, v9

    .line 879
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v9    # "triangleIndex":I
    add-int/lit8 v10, v8, 0x3

    int-to-short v10, v10

    aput-short v10, v4, v7

    .line 880
    add-int/lit8 v7, v9, 0x1

    .end local v9    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    int-to-short v10, v8

    aput-short v10, v4, v9

    .line 881
    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 884
    add-float v9, p2, v2

    .line 885
    .local v9, "worldOriginX":F
    add-float v10, p3, v3

    .line 886
    .local v10, "worldOriginY":F
    neg-float v11, v2

    .line 887
    .local v11, "fx":F
    neg-float v12, v3

    .line 888
    .local v12, "fy":F
    sub-float v13, p6, v2

    .line 889
    .local v13, "fx2":F
    sub-float v14, p7, v3

    .line 892
    .local v14, "fy2":F
    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v16, p8, v15

    if-nez v16, :cond_3

    cmpl-float v15, p9, v15

    if-eqz v15, :cond_4

    .line 893
    :cond_3
    mul-float v11, v11, p8

    .line 894
    mul-float v12, v12, p9

    .line 895
    mul-float v13, v13, p8

    .line 896
    mul-float v14, v14, p9

    .line 900
    :cond_4
    move v15, v11

    .line 901
    .local v15, "p1x":F
    move/from16 v16, v12

    .line 902
    .local v16, "p1y":F
    move/from16 v17, v11

    .line 903
    .local v17, "p2x":F
    move/from16 v18, v14

    .line 904
    .local v18, "p2y":F
    move/from16 v19, v13

    .line 905
    .local v19, "p3x":F
    move/from16 v20, v14

    .line 906
    .local v20, "p3y":F
    move/from16 v21, v13

    .line 907
    .local v21, "p4x":F
    move/from16 v22, v12

    .line 919
    .local v22, "p4y":F
    const/16 v23, 0x0

    cmpl-float v23, p10, v23

    if-eqz v23, :cond_5

    .line 920
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v23

    .line 921
    .local v23, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v24

    .line 923
    .local v24, "sin":F
    mul-float v25, v23, v15

    mul-float v26, v24, v16

    sub-float v25, v25, v26

    .line 924
    .local v25, "x1":F
    mul-float v26, v24, v15

    mul-float v27, v23, v16

    add-float v26, v26, v27

    .line 926
    .local v26, "y1":F
    mul-float v27, v23, v17

    mul-float v28, v24, v18

    sub-float v27, v27, v28

    .line 927
    .local v27, "x2":F
    mul-float v28, v24, v17

    mul-float v29, v23, v18

    add-float v28, v28, v29

    .line 929
    .local v28, "y2":F
    mul-float v29, v23, v19

    mul-float v30, v24, v20

    sub-float v29, v29, v30

    .line 930
    .local v29, "x3":F
    mul-float v30, v24, v19

    mul-float v31, v23, v20

    add-float v30, v30, v31

    .line 932
    .local v30, "y3":F
    sub-float v31, v29, v27

    add-float v31, v25, v31

    .line 933
    .local v31, "x4":F
    sub-float v32, v28, v26

    sub-float v23, v30, v32

    .line 934
    .end local v24    # "sin":F
    .local v23, "y4":F
    goto :goto_1

    .line 935
    .end local v23    # "y4":F
    .end local v25    # "x1":F
    .end local v26    # "y1":F
    .end local v27    # "x2":F
    .end local v28    # "y2":F
    .end local v29    # "x3":F
    .end local v30    # "y3":F
    .end local v31    # "x4":F
    :cond_5
    move/from16 v25, v15

    .line 936
    .restart local v25    # "x1":F
    move/from16 v26, v16

    .line 938
    .restart local v26    # "y1":F
    move/from16 v27, v17

    .line 939
    .restart local v27    # "x2":F
    move/from16 v28, v18

    .line 941
    .restart local v28    # "y2":F
    move/from16 v29, v19

    .line 942
    .restart local v29    # "x3":F
    move/from16 v30, v20

    .line 944
    .restart local v30    # "y3":F
    move/from16 v31, v21

    .line 945
    .restart local v31    # "x4":F
    move/from16 v23, v22

    .line 948
    .restart local v23    # "y4":F
    :goto_1
    add-float v25, v25, v9

    .line 949
    add-float v26, v26, v10

    .line 950
    add-float v27, v27, v9

    .line 951
    add-float v28, v28, v10

    .line 952
    add-float v29, v29, v9

    .line 953
    add-float v30, v30, v10

    .line 954
    add-float v31, v31, v9

    .line 955
    add-float v23, v23, v10

    .line 957
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 958
    .local v2, "u":F
    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 959
    .local v3, "v":F
    move-object/from16 v24, v4

    .end local v4    # "triangles":[S
    .local v24, "triangles":[S
    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 960
    .local v4, "u2":F
    move-object/from16 v32, v6

    .end local v6    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .local v32, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 962
    .local v6, "v2":F
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 963
    .local v1, "color":F
    move/from16 v33, v7

    .end local v7    # "triangleIndex":I
    .local v33, "triangleIndex":I
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 964
    .local v7, "idx":I
    add-int/lit8 v34, v7, 0x1

    .end local v7    # "idx":I
    .local v34, "idx":I
    aput v25, v5, v7

    .line 965
    add-int/lit8 v7, v34, 0x1

    .end local v34    # "idx":I
    .restart local v7    # "idx":I
    aput v26, v5, v34

    .line 966
    add-int/lit8 v34, v7, 0x1

    .end local v7    # "idx":I
    .restart local v34    # "idx":I
    aput v1, v5, v7

    .line 967
    add-int/lit8 v7, v34, 0x1

    .end local v34    # "idx":I
    .restart local v7    # "idx":I
    aput v2, v5, v34

    .line 968
    add-int/lit8 v34, v7, 0x1

    .end local v7    # "idx":I
    .restart local v34    # "idx":I
    aput v3, v5, v7

    .line 970
    add-int/lit8 v7, v34, 0x1

    .end local v34    # "idx":I
    .restart local v7    # "idx":I
    aput v27, v5, v34

    .line 971
    add-int/lit8 v34, v7, 0x1

    .end local v7    # "idx":I
    .restart local v34    # "idx":I
    aput v28, v5, v7

    .line 972
    add-int/lit8 v7, v34, 0x1

    .end local v34    # "idx":I
    .restart local v7    # "idx":I
    aput v1, v5, v34

    .line 973
    add-int/lit8 v34, v7, 0x1

    .end local v7    # "idx":I
    .restart local v34    # "idx":I
    aput v2, v5, v7

    .line 974
    add-int/lit8 v7, v34, 0x1

    .end local v34    # "idx":I
    .restart local v7    # "idx":I
    aput v6, v5, v34

    .line 976
    add-int/lit8 v34, v7, 0x1

    .end local v7    # "idx":I
    .restart local v34    # "idx":I
    aput v29, v5, v7

    .line 977
    add-int/lit8 v7, v34, 0x1

    .end local v34    # "idx":I
    .restart local v7    # "idx":I
    aput v30, v5, v34

    .line 978
    add-int/lit8 v34, v7, 0x1

    .end local v7    # "idx":I
    .restart local v34    # "idx":I
    aput v1, v5, v7

    .line 979
    add-int/lit8 v7, v34, 0x1

    .end local v34    # "idx":I
    .restart local v7    # "idx":I
    aput v4, v5, v34

    .line 980
    add-int/lit8 v34, v7, 0x1

    .end local v7    # "idx":I
    .restart local v34    # "idx":I
    aput v6, v5, v7

    .line 982
    add-int/lit8 v7, v34, 0x1

    .end local v34    # "idx":I
    .restart local v7    # "idx":I
    aput v31, v5, v34

    .line 983
    add-int/lit8 v34, v7, 0x1

    .end local v7    # "idx":I
    .restart local v34    # "idx":I
    aput v23, v5, v7

    .line 984
    add-int/lit8 v7, v34, 0x1

    .end local v34    # "idx":I
    .restart local v7    # "idx":I
    aput v1, v5, v34

    .line 985
    add-int/lit8 v34, v7, 0x1

    .end local v7    # "idx":I
    .restart local v34    # "idx":I
    aput v4, v5, v7

    .line 986
    add-int/lit8 v7, v34, 0x1

    .end local v34    # "idx":I
    .restart local v7    # "idx":I
    aput v3, v5, v34

    .line 987
    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 988
    return-void

    .line 862
    .end local v1    # "color":F
    .end local v2    # "u":F
    .end local v3    # "v":F
    .end local v4    # "u2":F
    .end local v5    # "vertices":[F
    .end local v6    # "v2":F
    .end local v7    # "idx":I
    .end local v8    # "startVertex":I
    .end local v9    # "worldOriginX":F
    .end local v10    # "worldOriginY":F
    .end local v11    # "fx":F
    .end local v12    # "fy":F
    .end local v13    # "fx2":F
    .end local v14    # "fy2":F
    .end local v15    # "p1x":F
    .end local v16    # "p1y":F
    .end local v17    # "p2x":F
    .end local v18    # "p2y":F
    .end local v19    # "p3x":F
    .end local v20    # "p3y":F
    .end local v21    # "p4x":F
    .end local v22    # "p4y":F
    .end local v23    # "y4":F
    .end local v24    # "triangles":[S
    .end local v25    # "x1":F
    .end local v26    # "y1":F
    .end local v27    # "x2":F
    .end local v28    # "y2":F
    .end local v29    # "x3":F
    .end local v30    # "y3":F
    .end local v31    # "x4":F
    .end local v32    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v33    # "triangleIndex":I
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V
    .locals 40
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
    .param p11, "clockwise"    # Z

    .line 993
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    iget-boolean v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v4, :cond_7

    .line 995
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 996
    .local v4, "triangles":[S
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 998
    .local v5, "vertices":[F
    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 999
    .local v6, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v6, v7, :cond_0

    .line 1000
    invoke-direct {v0, v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 1001
    :cond_0
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v7, v7, 0x6

    array-length v8, v4

    if-gt v7, v8, :cond_1

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v7, v7, 0x14

    array-length v8, v5

    if-le v7, v8, :cond_2

    .line 1002
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1004
    :cond_2
    :goto_0
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1005
    .local v7, "triangleIndex":I
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v8, v8, 0x5

    .line 1006
    .local v8, "startVertex":I
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "triangleIndex":I
    .local v9, "triangleIndex":I
    int-to-short v10, v8

    aput-short v10, v4, v7

    .line 1007
    add-int/lit8 v7, v9, 0x1

    .end local v9    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    add-int/lit8 v10, v8, 0x1

    int-to-short v10, v10

    aput-short v10, v4, v9

    .line 1008
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v9    # "triangleIndex":I
    add-int/lit8 v10, v8, 0x2

    int-to-short v10, v10

    aput-short v10, v4, v7

    .line 1009
    add-int/lit8 v7, v9, 0x1

    .end local v9    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    add-int/lit8 v10, v8, 0x2

    int-to-short v10, v10

    aput-short v10, v4, v9

    .line 1010
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v9    # "triangleIndex":I
    add-int/lit8 v10, v8, 0x3

    int-to-short v10, v10

    aput-short v10, v4, v7

    .line 1011
    add-int/lit8 v7, v9, 0x1

    .end local v9    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    int-to-short v10, v8

    aput-short v10, v4, v9

    .line 1012
    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1015
    add-float v9, p2, v2

    .line 1016
    .local v9, "worldOriginX":F
    add-float v10, p3, v3

    .line 1017
    .local v10, "worldOriginY":F
    neg-float v11, v2

    .line 1018
    .local v11, "fx":F
    neg-float v12, v3

    .line 1019
    .local v12, "fy":F
    sub-float v13, p6, v2

    .line 1020
    .local v13, "fx2":F
    sub-float v14, p7, v3

    .line 1023
    .local v14, "fy2":F
    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v16, p8, v15

    if-nez v16, :cond_3

    cmpl-float v15, p9, v15

    if-eqz v15, :cond_4

    .line 1024
    :cond_3
    mul-float v11, v11, p8

    .line 1025
    mul-float v12, v12, p9

    .line 1026
    mul-float v13, v13, p8

    .line 1027
    mul-float v14, v14, p9

    .line 1031
    :cond_4
    move v15, v11

    .line 1032
    .local v15, "p1x":F
    move/from16 v16, v12

    .line 1033
    .local v16, "p1y":F
    move/from16 v17, v11

    .line 1034
    .local v17, "p2x":F
    move/from16 v18, v14

    .line 1035
    .local v18, "p2y":F
    move/from16 v19, v13

    .line 1036
    .local v19, "p3x":F
    move/from16 v20, v14

    .line 1037
    .local v20, "p3y":F
    move/from16 v21, v13

    .line 1038
    .local v21, "p4x":F
    move/from16 v22, v12

    .line 1050
    .local v22, "p4y":F
    const/16 v23, 0x0

    cmpl-float v23, p10, v23

    if-eqz v23, :cond_5

    .line 1051
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v23

    .line 1052
    .local v23, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v24

    .line 1054
    .local v24, "sin":F
    mul-float v25, v23, v15

    mul-float v26, v24, v16

    sub-float v25, v25, v26

    .line 1055
    .local v25, "x1":F
    mul-float v26, v24, v15

    mul-float v27, v23, v16

    add-float v26, v26, v27

    .line 1057
    .local v26, "y1":F
    mul-float v27, v23, v17

    mul-float v28, v24, v18

    sub-float v27, v27, v28

    .line 1058
    .local v27, "x2":F
    mul-float v28, v24, v17

    mul-float v29, v23, v18

    add-float v28, v28, v29

    .line 1060
    .local v28, "y2":F
    mul-float v29, v23, v19

    mul-float v30, v24, v20

    sub-float v29, v29, v30

    .line 1061
    .local v29, "x3":F
    mul-float v30, v24, v19

    mul-float v31, v23, v20

    add-float v30, v30, v31

    .line 1063
    .local v30, "y3":F
    sub-float v31, v29, v27

    add-float v31, v25, v31

    .line 1064
    .local v31, "x4":F
    sub-float v32, v28, v26

    sub-float v23, v30, v32

    .line 1065
    .end local v24    # "sin":F
    .local v23, "y4":F
    goto :goto_1

    .line 1066
    .end local v23    # "y4":F
    .end local v25    # "x1":F
    .end local v26    # "y1":F
    .end local v27    # "x2":F
    .end local v28    # "y2":F
    .end local v29    # "x3":F
    .end local v30    # "y3":F
    .end local v31    # "x4":F
    :cond_5
    move/from16 v25, v15

    .line 1067
    .restart local v25    # "x1":F
    move/from16 v26, v16

    .line 1069
    .restart local v26    # "y1":F
    move/from16 v27, v17

    .line 1070
    .restart local v27    # "x2":F
    move/from16 v28, v18

    .line 1072
    .restart local v28    # "y2":F
    move/from16 v29, v19

    .line 1073
    .restart local v29    # "x3":F
    move/from16 v30, v20

    .line 1075
    .restart local v30    # "y3":F
    move/from16 v31, v21

    .line 1076
    .restart local v31    # "x4":F
    move/from16 v23, v22

    .line 1079
    .restart local v23    # "y4":F
    :goto_1
    add-float v25, v25, v9

    .line 1080
    add-float v26, v26, v10

    .line 1081
    add-float v27, v27, v9

    .line 1082
    add-float v28, v28, v10

    .line 1083
    add-float v29, v29, v9

    .line 1084
    add-float v30, v30, v10

    .line 1085
    add-float v31, v31, v9

    .line 1086
    add-float v23, v23, v10

    .line 1089
    if-eqz p11, :cond_6

    .line 1090
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1091
    .local v2, "u1":F
    move/from16 v24, v2

    .end local v2    # "u1":F
    .local v24, "u1":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 1092
    .local v2, "v1":F
    move/from16 v32, v2

    .end local v2    # "v1":F
    .local v32, "v1":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1093
    .local v2, "u2":F
    move/from16 v33, v2

    .end local v2    # "u2":F
    .local v33, "u2":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 1094
    .local v2, "v2":F
    move/from16 v34, v2

    .end local v2    # "v2":F
    .local v34, "v2":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1095
    .local v2, "u3":F
    move/from16 v35, v2

    .end local v2    # "u3":F
    .local v35, "u3":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 1096
    .local v2, "v3":F
    move/from16 v36, v2

    .end local v2    # "v3":F
    .local v36, "v3":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1097
    .local v2, "u4":F
    move/from16 v37, v2

    .end local v2    # "u4":F
    .local v37, "u4":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v39, v24

    move/from16 v24, v2

    move/from16 v2, v39

    .local v2, "v4":F
    goto :goto_2

    .line 1099
    .end local v2    # "v4":F
    .end local v24    # "u1":F
    .end local v32    # "v1":F
    .end local v33    # "u2":F
    .end local v34    # "v2":F
    .end local v35    # "u3":F
    .end local v36    # "v3":F
    .end local v37    # "u4":F
    :cond_6
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1100
    .local v2, "u1":F
    move/from16 v24, v2

    .end local v2    # "u1":F
    .restart local v24    # "u1":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 1101
    .local v2, "v1":F
    move/from16 v32, v2

    .end local v2    # "v1":F
    .restart local v32    # "v1":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1102
    .local v2, "u2":F
    move/from16 v33, v2

    .end local v2    # "u2":F
    .restart local v33    # "u2":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 1103
    .local v2, "v2":F
    move/from16 v34, v2

    .end local v2    # "v2":F
    .restart local v34    # "v2":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1104
    .local v2, "u3":F
    move/from16 v35, v2

    .end local v2    # "u3":F
    .restart local v35    # "u3":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 1105
    .local v2, "v3":F
    move/from16 v36, v2

    .end local v2    # "v3":F
    .restart local v36    # "v3":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1106
    .local v2, "u4":F
    move/from16 v37, v2

    .end local v2    # "u4":F
    .restart local v37    # "u4":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v39, v24

    move/from16 v24, v2

    move/from16 v2, v39

    .line 1109
    .local v2, "u1":F
    .local v24, "v4":F
    :goto_2
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 1110
    .local v1, "color":F
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 1111
    .local v3, "idx":I
    add-int/lit8 v38, v3, 0x1

    .end local v3    # "idx":I
    .local v38, "idx":I
    aput v25, v5, v3

    .line 1112
    add-int/lit8 v3, v38, 0x1

    .end local v38    # "idx":I
    .restart local v3    # "idx":I
    aput v26, v5, v38

    .line 1113
    add-int/lit8 v38, v3, 0x1

    .end local v3    # "idx":I
    .restart local v38    # "idx":I
    aput v1, v5, v3

    .line 1114
    add-int/lit8 v3, v38, 0x1

    .end local v38    # "idx":I
    .restart local v3    # "idx":I
    aput v2, v5, v38

    .line 1115
    add-int/lit8 v38, v3, 0x1

    .end local v3    # "idx":I
    .restart local v38    # "idx":I
    aput v32, v5, v3

    .line 1117
    add-int/lit8 v3, v38, 0x1

    .end local v38    # "idx":I
    .restart local v3    # "idx":I
    aput v27, v5, v38

    .line 1118
    add-int/lit8 v38, v3, 0x1

    .end local v3    # "idx":I
    .restart local v38    # "idx":I
    aput v28, v5, v3

    .line 1119
    add-int/lit8 v3, v38, 0x1

    .end local v38    # "idx":I
    .restart local v3    # "idx":I
    aput v1, v5, v38

    .line 1120
    add-int/lit8 v38, v3, 0x1

    .end local v3    # "idx":I
    .restart local v38    # "idx":I
    aput v33, v5, v3

    .line 1121
    add-int/lit8 v3, v38, 0x1

    .end local v38    # "idx":I
    .restart local v3    # "idx":I
    aput v34, v5, v38

    .line 1123
    add-int/lit8 v38, v3, 0x1

    .end local v3    # "idx":I
    .restart local v38    # "idx":I
    aput v29, v5, v3

    .line 1124
    add-int/lit8 v3, v38, 0x1

    .end local v38    # "idx":I
    .restart local v3    # "idx":I
    aput v30, v5, v38

    .line 1125
    add-int/lit8 v38, v3, 0x1

    .end local v3    # "idx":I
    .restart local v38    # "idx":I
    aput v1, v5, v3

    .line 1126
    add-int/lit8 v3, v38, 0x1

    .end local v38    # "idx":I
    .restart local v3    # "idx":I
    aput v35, v5, v38

    .line 1127
    add-int/lit8 v38, v3, 0x1

    .end local v3    # "idx":I
    .restart local v38    # "idx":I
    aput v36, v5, v3

    .line 1129
    add-int/lit8 v3, v38, 0x1

    .end local v38    # "idx":I
    .restart local v3    # "idx":I
    aput v31, v5, v38

    .line 1130
    add-int/lit8 v38, v3, 0x1

    .end local v3    # "idx":I
    .restart local v38    # "idx":I
    aput v23, v5, v3

    .line 1131
    add-int/lit8 v3, v38, 0x1

    .end local v38    # "idx":I
    .restart local v3    # "idx":I
    aput v1, v5, v38

    .line 1132
    add-int/lit8 v38, v3, 0x1

    .end local v3    # "idx":I
    .restart local v38    # "idx":I
    aput v37, v5, v3

    .line 1133
    add-int/lit8 v3, v38, 0x1

    .end local v38    # "idx":I
    .restart local v3    # "idx":I
    aput v24, v5, v38

    .line 1134
    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 1135
    return-void

    .line 993
    .end local v1    # "color":F
    .end local v2    # "u1":F
    .end local v3    # "idx":I
    .end local v4    # "triangles":[S
    .end local v5    # "vertices":[F
    .end local v6    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v7    # "triangleIndex":I
    .end local v8    # "startVertex":I
    .end local v9    # "worldOriginX":F
    .end local v10    # "worldOriginY":F
    .end local v11    # "fx":F
    .end local v12    # "fy":F
    .end local v13    # "fx2":F
    .end local v14    # "fy2":F
    .end local v15    # "p1x":F
    .end local v16    # "p1y":F
    .end local v17    # "p2x":F
    .end local v18    # "p2y":F
    .end local v19    # "p3x":F
    .end local v20    # "p3y":F
    .end local v21    # "p4x":F
    .end local v22    # "p4y":F
    .end local v23    # "y4":F
    .end local v24    # "v4":F
    .end local v25    # "x1":F
    .end local v26    # "y1":F
    .end local v27    # "x2":F
    .end local v28    # "y2":F
    .end local v29    # "x3":F
    .end local v30    # "y3":F
    .end local v31    # "x4":F
    .end local v32    # "v1":F
    .end local v33    # "u2":F
    .end local v34    # "v2":F
    .end local v35    # "u3":F
    .end local v36    # "v3":F
    .end local v37    # "u4":F
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V
    .locals 21
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "transform"    # Lcom/badlogic/gdx/math/Affine2;

    .line 1139
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v3, :cond_3

    .line 1141
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 1142
    .local v3, "triangles":[S
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 1144
    .local v4, "vertices":[F
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 1145
    .local v5, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v5, v6, :cond_0

    .line 1146
    invoke-direct {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 1147
    :cond_0
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v6, v6, 0x6

    array-length v7, v3

    if-gt v6, v7, :cond_1

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v6, v6, 0x14

    array-length v7, v4

    if-le v6, v7, :cond_2

    .line 1148
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1150
    :cond_2
    :goto_0
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1151
    .local v6, "triangleIndex":I
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v7, v7, 0x5

    .line 1152
    .local v7, "startVertex":I
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "triangleIndex":I
    .local v8, "triangleIndex":I
    int-to-short v9, v7

    aput-short v9, v3, v6

    .line 1153
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "triangleIndex":I
    .restart local v6    # "triangleIndex":I
    add-int/lit8 v9, v7, 0x1

    int-to-short v9, v9

    aput-short v9, v3, v8

    .line 1154
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "triangleIndex":I
    .restart local v8    # "triangleIndex":I
    add-int/lit8 v9, v7, 0x2

    int-to-short v9, v9

    aput-short v9, v3, v6

    .line 1155
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "triangleIndex":I
    .restart local v6    # "triangleIndex":I
    add-int/lit8 v9, v7, 0x2

    int-to-short v9, v9

    aput-short v9, v3, v8

    .line 1156
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "triangleIndex":I
    .restart local v8    # "triangleIndex":I
    add-int/lit8 v9, v7, 0x3

    int-to-short v9, v9

    aput-short v9, v3, v6

    .line 1157
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "triangleIndex":I
    .restart local v6    # "triangleIndex":I
    int-to-short v9, v7

    aput-short v9, v3, v8

    .line 1158
    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1161
    iget v8, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 1162
    .local v8, "x1":F
    iget v9, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 1163
    .local v9, "y1":F
    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v10, v10, p3

    iget v11, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v10, v11

    .line 1164
    .local v10, "x2":F
    iget v11, v2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v11, v11, p3

    iget v12, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v11, v12

    .line 1165
    .local v11, "y2":F
    iget v12, v2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v12, v12, p2

    iget v13, v2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v13, v13, p3

    add-float/2addr v12, v13

    iget v13, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v12, v13

    .line 1166
    .local v12, "x3":F
    iget v13, v2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v13, v13, p2

    iget v14, v2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v14, v14, p3

    add-float/2addr v13, v14

    iget v14, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v13, v14

    .line 1167
    .local v13, "y3":F
    iget v14, v2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v14, v14, p2

    iget v15, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v14, v15

    .line 1168
    .local v14, "x4":F
    iget v15, v2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v15, v15, p2

    move-object/from16 v16, v3

    .end local v3    # "triangles":[S
    .local v16, "triangles":[S
    iget v3, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v15, v3

    .line 1170
    .local v15, "y4":F
    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1171
    .local v3, "u":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 1172
    .local v2, "v":F
    move-object/from16 v17, v5

    .end local v5    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .local v17, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1173
    .local v5, "u2":F
    move/from16 v18, v6

    .end local v6    # "triangleIndex":I
    .local v18, "triangleIndex":I
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 1175
    .local v6, "v2":F
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 1176
    .local v1, "color":F
    move/from16 v19, v7

    .end local v7    # "startVertex":I
    .local v19, "startVertex":I
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 1177
    .local v7, "idx":I
    add-int/lit8 v20, v7, 0x1

    .end local v7    # "idx":I
    .local v20, "idx":I
    aput v8, v4, v7

    .line 1178
    add-int/lit8 v7, v20, 0x1

    .end local v20    # "idx":I
    .restart local v7    # "idx":I
    aput v9, v4, v20

    .line 1179
    add-int/lit8 v20, v7, 0x1

    .end local v7    # "idx":I
    .restart local v20    # "idx":I
    aput v1, v4, v7

    .line 1180
    add-int/lit8 v7, v20, 0x1

    .end local v20    # "idx":I
    .restart local v7    # "idx":I
    aput v3, v4, v20

    .line 1181
    add-int/lit8 v20, v7, 0x1

    .end local v7    # "idx":I
    .restart local v20    # "idx":I
    aput v2, v4, v7

    .line 1183
    add-int/lit8 v7, v20, 0x1

    .end local v20    # "idx":I
    .restart local v7    # "idx":I
    aput v10, v4, v20

    .line 1184
    add-int/lit8 v20, v7, 0x1

    .end local v7    # "idx":I
    .restart local v20    # "idx":I
    aput v11, v4, v7

    .line 1185
    add-int/lit8 v7, v20, 0x1

    .end local v20    # "idx":I
    .restart local v7    # "idx":I
    aput v1, v4, v20

    .line 1186
    add-int/lit8 v20, v7, 0x1

    .end local v7    # "idx":I
    .restart local v20    # "idx":I
    aput v3, v4, v7

    .line 1187
    add-int/lit8 v7, v20, 0x1

    .end local v20    # "idx":I
    .restart local v7    # "idx":I
    aput v6, v4, v20

    .line 1189
    add-int/lit8 v20, v7, 0x1

    .end local v7    # "idx":I
    .restart local v20    # "idx":I
    aput v12, v4, v7

    .line 1190
    add-int/lit8 v7, v20, 0x1

    .end local v20    # "idx":I
    .restart local v7    # "idx":I
    aput v13, v4, v20

    .line 1191
    add-int/lit8 v20, v7, 0x1

    .end local v7    # "idx":I
    .restart local v20    # "idx":I
    aput v1, v4, v7

    .line 1192
    add-int/lit8 v7, v20, 0x1

    .end local v20    # "idx":I
    .restart local v7    # "idx":I
    aput v5, v4, v20

    .line 1193
    add-int/lit8 v20, v7, 0x1

    .end local v7    # "idx":I
    .restart local v20    # "idx":I
    aput v6, v4, v7

    .line 1195
    add-int/lit8 v7, v20, 0x1

    .end local v20    # "idx":I
    .restart local v7    # "idx":I
    aput v14, v4, v20

    .line 1196
    add-int/lit8 v20, v7, 0x1

    .end local v7    # "idx":I
    .restart local v20    # "idx":I
    aput v15, v4, v7

    .line 1197
    add-int/lit8 v7, v20, 0x1

    .end local v20    # "idx":I
    .restart local v7    # "idx":I
    aput v1, v4, v20

    .line 1198
    add-int/lit8 v20, v7, 0x1

    .end local v7    # "idx":I
    .restart local v20    # "idx":I
    aput v5, v4, v7

    .line 1199
    add-int/lit8 v7, v20, 0x1

    .end local v20    # "idx":I
    .restart local v7    # "idx":I
    aput v2, v4, v20

    .line 1200
    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 1201
    return-void

    .line 1139
    .end local v1    # "color":F
    .end local v2    # "v":F
    .end local v3    # "u":F
    .end local v4    # "vertices":[F
    .end local v5    # "u2":F
    .end local v6    # "v2":F
    .end local v7    # "idx":I
    .end local v8    # "x1":F
    .end local v9    # "y1":F
    .end local v10    # "x2":F
    .end local v11    # "y2":F
    .end local v12    # "x3":F
    .end local v13    # "y3":F
    .end local v14    # "x4":F
    .end local v15    # "y4":F
    .end local v16    # "triangles":[S
    .end local v17    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v18    # "triangleIndex":I
    .end local v19    # "startVertex":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enableBlending()V
    .locals 1

    .line 1237
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    .line 1239
    return-void
.end method

.method public end()V
    .locals 2

    .line 167
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_3

    .line 168
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 169
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    .line 172
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    .line 173
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->isBlendingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v1, :cond_2

    .line 177
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 180
    :goto_0
    return-void

    .line 167
    .end local v0    # "gl":Lcom/badlogic/gdx/graphics/GL20;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolygonSpriteBatch.begin must be called before end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 8

    .line 1205
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    if-nez v0, :cond_0

    return-void

    .line 1207
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    .line 1208
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->totalRenderCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->totalRenderCalls:I

    .line 1209
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1210
    .local v0, "trianglesInBatch":I
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->maxTrianglesInBatch:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->maxTrianglesInBatch:I

    .line 1212
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 1213
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 1214
    .local v1, "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1215
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    invoke-virtual {v1, v2, v4, v0}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([SII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1216
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    const/16 v3, 0xbe2

    if-eqz v2, :cond_2

    .line 1217
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    goto :goto_0

    .line 1219
    :cond_2
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 1220
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFuncAlpha:I

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFuncAlpha:I

    invoke-interface {v2, v3, v5, v6, v7}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFuncSeparate(IIII)V

    .line 1223
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    :goto_1
    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 1225
    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 1226
    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1227
    return-void
.end method

.method public getBlendDstFunc()I
    .locals 1

    .line 1264
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    return v0
.end method

.method public getBlendDstFuncAlpha()I
    .locals 1

    .line 1274
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFuncAlpha:I

    return v0
.end method

.method public getBlendSrcFunc()I
    .locals 1

    .line 1259
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    return v0
.end method

.method public getBlendSrcFuncAlpha()I
    .locals 1

    .line 1269
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFuncAlpha:I

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getPackedColor()F
    .locals 1

    .line 207
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    return v0
.end method

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 1285
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public getShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 1

    .line 1346
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-nez v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object v0

    .line 1349
    :cond_0
    return-object v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 1290
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public isBlendingEnabled()Z
    .locals 1

    .line 1354
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDrawing()Z
    .locals 1

    .line 1359
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    return v0
.end method

.method public setBlendFunction(II)V
    .locals 0
    .param p1, "srcFunc"    # I
    .param p2, "dstFunc"    # I

    .line 1243
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setBlendFunctionSeparate(IIII)V

    .line 1244
    return-void
.end method

.method public setBlendFunctionSeparate(IIII)V
    .locals 1
    .param p1, "srcFuncColor"    # I
    .param p2, "dstFuncColor"    # I
    .param p3, "srcFuncAlpha"    # I
    .param p4, "dstFuncAlpha"    # I

    .line 1248
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFuncAlpha:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFuncAlpha:I

    if-ne v0, p4, :cond_0

    .line 1249
    return-void

    .line 1250
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1251
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    .line 1252
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    .line 1253
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFuncAlpha:I

    .line 1254
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFuncAlpha:I

    .line 1255
    return-void
.end method

.method public setColor(FFFF)V
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .line 190
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 192
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 185
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 186
    return-void
.end method

.method public setPackedColor(F)V
    .locals 1
    .param p1, "packedColor"    # F

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->abgr8888ToColor(Lcom/badlogic/gdx/graphics/Color;F)V

    .line 197
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 198
    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "projection"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 1295
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1297
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    .line 1298
    :cond_1
    return-void
.end method

.method public setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 1327
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_1

    .line 1328
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1329
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    .line 1330
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    goto :goto_0

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 1334
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 1335
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_3

    .line 1336
    if-eqz p1, :cond_2

    .line 1337
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    goto :goto_1

    .line 1339
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 1340
    :goto_1
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    .line 1342
    :cond_3
    return-void
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 1302
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1304
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    .line 1305
    :cond_1
    return-void
.end method
