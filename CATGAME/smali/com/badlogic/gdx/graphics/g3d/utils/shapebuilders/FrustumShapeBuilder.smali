.class public Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;
.super Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;
.source "FrustumShapeBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;-><init>()V

    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 11
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .line 34
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->tmpColor0:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f28f5c3    # 0.66f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->tmpColor1:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v3, v3, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->tmpColor2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v3, v2, v1, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->tmpColor3:Lcom/badlogic/gdx/graphics/Color;

    .line 35
    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->tmpColor4:Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    .line 34
    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 36
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 9
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/Camera;
    .param p2, "frustumColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "coneColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "upColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "targetColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "crossColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 48
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/Camera;->frustum:Lcom/badlogic/gdx/math/Frustum;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    .line 51
    .local v0, "planePoints":[Lcom/badlogic/gdx/math/Vector3;
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/Camera;->frustum:Lcom/badlogic/gdx/math/Frustum;

    invoke-static {p0, v1, p2, p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Frustum;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 54
    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {p0, v2, p3, v3, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 55
    const/4 v2, 0x1

    aget-object v3, v0, v2

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {p0, v3, p3, v4, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 56
    const/4 v3, 0x2

    aget-object v4, v0, v3

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {p0, v4, p3, v5, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 57
    const/4 v4, 0x3

    aget-object v5, v0, v4

    iget-object v6, p1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {p0, v5, p3, v6, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 60
    iget-object v5, p1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    const/4 v6, 0x4

    aget-object v6, v0, v6

    const/4 v7, 0x5

    aget-object v7, v0, v7

    const/4 v8, 0x6

    aget-object v8, v0, v8

    invoke-static {v6, v7, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->centerPoint(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-interface {p0, v5, p5, v6, p5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 63
    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v5

    .line 64
    .local v5, "halfNearSize":F
    aget-object v1, v0, v1

    aget-object v2, v0, v2

    aget-object v6, v0, v3

    invoke-static {v1, v2, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->centerPoint(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 65
    .local v1, "centerNear":Lcom/badlogic/gdx/math/Vector3;
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, p1, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v5

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 66
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 68
    aget-object v2, v0, v3

    invoke-interface {p0, v1, p4, v2, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 69
    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-interface {p0, v2, p4, v3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 70
    aget-object v2, v0, v4

    invoke-interface {p0, v2, p4, v1, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 71
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Frustum;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 12
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "frustum"    # Lcom/badlogic/gdx/math/Frustum;
    .param p2, "frustumColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "crossColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 79
    iget-object v0, p1, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    .line 82
    .local v0, "planePoints":[Lcom/badlogic/gdx/math/Vector3;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-interface {p0, v2, p2, v4, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 83
    aget-object v2, v0, v3

    const/4 v4, 0x2

    aget-object v5, v0, v4

    invoke-interface {p0, v2, p2, v5, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 84
    aget-object v2, v0, v4

    const/4 v5, 0x3

    aget-object v6, v0, v5

    invoke-interface {p0, v2, p2, v6, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 85
    aget-object v2, v0, v5

    aget-object v6, v0, v1

    invoke-interface {p0, v2, p2, v6, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 88
    const/4 v2, 0x4

    aget-object v6, v0, v2

    const/4 v7, 0x5

    aget-object v8, v0, v7

    invoke-interface {p0, v6, p2, v8, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 89
    aget-object v6, v0, v7

    const/4 v8, 0x6

    aget-object v9, v0, v8

    invoke-interface {p0, v6, p2, v9, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 90
    aget-object v6, v0, v8

    const/4 v9, 0x7

    aget-object v10, v0, v9

    invoke-interface {p0, v6, p2, v10, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 91
    aget-object v6, v0, v9

    aget-object v10, v0, v2

    invoke-interface {p0, v6, p2, v10, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 94
    aget-object v6, v0, v1

    aget-object v10, v0, v2

    invoke-interface {p0, v6, p2, v10, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 95
    aget-object v6, v0, v3

    aget-object v10, v0, v7

    invoke-interface {p0, v6, p2, v10, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 96
    aget-object v6, v0, v4

    aget-object v10, v0, v8

    invoke-interface {p0, v6, p2, v10, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 97
    aget-object v6, v0, v5

    aget-object v10, v0, v9

    invoke-interface {p0, v6, p2, v10, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 100
    aget-object v6, v0, v3

    aget-object v10, v0, v1

    invoke-static {v6, v10}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->middlePoint(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    aget-object v10, v0, v5

    aget-object v11, v0, v4

    invoke-static {v10, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->middlePoint(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    invoke-interface {p0, v6, p3, v10, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 102
    aget-object v4, v0, v4

    aget-object v3, v0, v3

    invoke-static {v4, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->middlePoint(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    aget-object v4, v0, v5

    aget-object v1, v0, v1

    invoke-static {v4, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->middlePoint(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-interface {p0, v3, p3, v1, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 106
    aget-object v1, v0, v7

    aget-object v3, v0, v2

    invoke-static {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->middlePoint(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    aget-object v3, v0, v9

    aget-object v4, v0, v8

    invoke-static {v3, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->middlePoint(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-interface {p0, v1, p3, v3, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 108
    aget-object v1, v0, v8

    aget-object v3, v0, v7

    invoke-static {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->middlePoint(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    aget-object v3, v0, v9

    aget-object v2, v0, v2

    invoke-static {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->middlePoint(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-interface {p0, v1, p3, v2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    .line 110
    return-void
.end method

.method private static centerPoint(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p0, "point0"    # Lcom/badlogic/gdx/math/Vector3;
    .param p1, "point1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "point2"    # Lcom/badlogic/gdx/math/Vector3;

    .line 127
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 128
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 129
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 130
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method private static middlePoint(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2
    .param p0, "point0"    # Lcom/badlogic/gdx/math/Vector3;
    .param p1, "point1"    # Lcom/badlogic/gdx/math/Vector3;

    .line 117
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 118
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method
