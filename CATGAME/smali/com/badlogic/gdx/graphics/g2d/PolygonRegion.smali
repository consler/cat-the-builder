.class public Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
.super Ljava/lang/Object;
.source "PolygonRegion.java"


# instance fields
.field final region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field final textureCoords:[F

.field final triangles:[S

.field final vertices:[F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[F[S)V
    .locals 16
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "vertices"    # [F
    .param p3, "triangles"    # [S

    .line 33
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 35
    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 36
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    .line 38
    array-length v4, v2

    new-array v4, v4, [F

    iput-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    .line 39
    .local v4, "textureCoords":[F
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .local v5, "u":F
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 40
    .local v6, "v":F
    iget v7, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    sub-float/2addr v7, v5

    .line 41
    .local v7, "uvWidth":F
    iget v8, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    sub-float/2addr v8, v6

    .line 42
    .local v8, "uvHeight":F
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    .line 43
    .local v9, "width":I
    iget v10, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    .line 44
    .local v10, "height":I
    const/4 v11, 0x0

    .local v11, "i":I
    array-length v12, v2

    .local v12, "n":I
    :goto_0
    if-ge v11, v12, :cond_0

    .line 45
    aget v13, v2, v11

    int-to-float v14, v9

    div-float/2addr v13, v14

    mul-float/2addr v13, v7

    add-float/2addr v13, v5

    aput v13, v4, v11

    .line 46
    add-int/lit8 v13, v11, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    add-int/lit8 v15, v11, 0x1

    aget v15, v2, v15

    int-to-float v0, v10

    div-float/2addr v15, v0

    sub-float/2addr v14, v15

    mul-float/2addr v14, v8

    add-float/2addr v14, v6

    aput v14, v4, v13

    .line 44
    add-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    goto :goto_0

    .line 48
    .end local v11    # "i":I
    .end local v12    # "n":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getTextureCoords()[F
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    return-object v0
.end method

.method public getTriangles()[S
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    return-object v0
.end method

.method public getVertices()[F
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    return-object v0
.end method
