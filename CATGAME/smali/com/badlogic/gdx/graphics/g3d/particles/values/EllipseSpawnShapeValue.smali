.class public final Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;
.source "EllipseSpawnShapeValue.java"


# instance fields
.field side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;-><init>()V

    .line 27
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->both:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;)V
    .locals 1
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;

    .line 30
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;)V

    .line 27
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->both:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    .line 31
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 32
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
    .locals 1

    .line 100
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;)V

    return-object v0
.end method

.method public getSide()Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V
    .locals 2
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;

    .line 93
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 94
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;

    .line 95
    .local v0, "shape":Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    .line 96
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .line 111
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 112
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    const-string v1, "side"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    .line 113
    return-void
.end method

.method public setSide(Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;)V
    .locals 0
    .param p1, "side"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    .line 88
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    .line 89
    return-void
.end method

.method public spawnAux(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 17
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "percent"    # F

    .line 40
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->spawnWidth:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->spawnWidthDiff:F

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 41
    .local v3, "width":F
    iget v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->spawnHeight:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->spawnHeightDiff:F

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 42
    .local v4, "height":F
    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->spawnDepth:F

    iget v6, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->spawnDepthDiff:F

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 46
    .local v5, "depth":F
    const/4 v6, 0x0

    .local v6, "minT":F
    const v7, 0x40c90fdb

    .line 47
    .local v7, "maxT":F
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->top:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    if-ne v8, v9, :cond_0

    .line 48
    const v7, 0x40490fdb    # (float)Math.PI

    goto :goto_0

    .line 49
    :cond_0
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->bottom:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    if-ne v8, v9, :cond_1

    .line 50
    const v7, -0x3fb6f025

    .line 52
    :cond_1
    :goto_0
    invoke-static {v6, v7}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v8

    .line 55
    .local v8, "t":F
    iget-boolean v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->edges:Z

    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v9, :cond_5

    .line 56
    const/4 v9, 0x0

    cmpl-float v11, v3, v9

    if-nez v11, :cond_2

    .line 57
    div-float v11, v4, v10

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v12

    mul-float/2addr v11, v12

    div-float v10, v5, v10

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v12

    mul-float/2addr v10, v12

    invoke-virtual {v1, v9, v11, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 58
    return-void

    .line 60
    :cond_2
    cmpl-float v11, v4, v9

    if-nez v11, :cond_3

    .line 61
    div-float v11, v3, v10

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v12

    mul-float/2addr v11, v12

    div-float v10, v5, v10

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v12

    mul-float/2addr v10, v12

    invoke-virtual {v1, v11, v9, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 62
    return-void

    .line 64
    :cond_3
    cmpl-float v11, v5, v9

    if-nez v11, :cond_4

    .line 65
    div-float v11, v3, v10

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v12

    mul-float/2addr v11, v12

    div-float v10, v4, v10

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v12

    mul-float/2addr v10, v12

    invoke-virtual {v1, v11, v10, v9}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 66
    return-void

    .line 69
    :cond_4
    div-float v9, v3, v10

    .line 70
    .local v9, "radiusX":F
    div-float v11, v4, v10

    .line 71
    .local v11, "radiusY":F
    div-float v10, v5, v10

    .local v10, "radiusZ":F
    goto :goto_1

    .line 73
    .end local v9    # "radiusX":F
    .end local v10    # "radiusZ":F
    .end local v11    # "radiusY":F
    :cond_5
    div-float v9, v3, v10

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v9

    .line 74
    .restart local v9    # "radiusX":F
    div-float v11, v4, v10

    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v11

    .line 75
    .restart local v11    # "radiusY":F
    div-float v10, v5, v10

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v10

    .line 78
    .restart local v10    # "radiusZ":F
    :goto_1
    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v12, v13}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v12

    .line 79
    .local v12, "z":F
    mul-float v14, v12, v12

    sub-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    .line 80
    .local v13, "r":F
    mul-float v14, v9, v13

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v15

    mul-float/2addr v14, v15

    mul-float v15, v11, v13

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v16

    mul-float v15, v15, v16

    mul-float v0, v10, v12

    invoke-virtual {v1, v14, v15, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 81
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .line 105
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->write(Lcom/badlogic/gdx/utils/Json;)V

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    const-string v1, "side"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    return-void
.end method
