.class public Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;
.super Ljava/lang/Object;
.source "MeshSpawnShapeValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Triangle"
.end annotation


# instance fields
.field x1:F

.field x2:F

.field x3:F

.field y1:F

.field y2:F

.field y3:F

.field z1:F

.field z2:F

.field z3:F


# direct methods
.method public constructor <init>(FFFFFFFFF)V
    .locals 0
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "z1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F
    .param p7, "x3"    # F
    .param p8, "y3"    # F
    .param p9, "z3"    # F

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->x1:F

    .line 38
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->y1:F

    .line 39
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->z1:F

    .line 40
    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->x2:F

    .line 41
    iput p5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->y2:F

    .line 42
    iput p6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->z2:F

    .line 43
    iput p7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->x3:F

    .line 44
    iput p8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->y3:F

    .line 45
    iput p9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->z3:F

    .line 46
    return-void
.end method

.method public static pick(FFFFFFFFFLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "z1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F
    .param p6, "x3"    # F
    .param p7, "y3"    # F
    .param p8, "z3"    # F
    .param p9, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .line 50
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    .local v0, "a":F
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v1

    .line 51
    .local v1, "b":F
    sub-float v2, p3, p0

    mul-float/2addr v2, v0

    add-float/2addr v2, p0

    sub-float v3, p6, p0

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    sub-float v3, p4, p1

    mul-float/2addr v3, v0

    add-float/2addr v3, p1

    sub-float v4, p7, p1

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    sub-float v4, p5, p2

    mul-float/2addr v4, v0

    add-float/2addr v4, p2

    sub-float v5, p8, p2

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {p9, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public pick(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 7
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .line 56
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    .local v0, "a":F
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v1

    .line 57
    .local v1, "b":F
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->x1:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->x2:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v0

    add-float/2addr v3, v2

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->x3:F

    sub-float/2addr v4, v2

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->y1:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->y2:F

    sub-float/2addr v4, v2

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->y3:F

    sub-float/2addr v5, v2

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->z1:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->z2:F

    sub-float/2addr v5, v2

    mul-float/2addr v5, v0

    add-float/2addr v5, v2

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->z3:F

    sub-float/2addr v6, v2

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    invoke-virtual {p1, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    return-object v2
.end method
