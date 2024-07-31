.class public final Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeScaleUtils;
.super Ljava/lang/Object;
.source "PhysicsShapeScaleUtils.java"


# static fields
.field public static final COORDINATE_SCALING_DECIMAL_ACCURACY:F = 100.0f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static scaleCoordinate(FF)F
    .locals 2
    .param p0, "coordinates"    # F
    .param p1, "scaleFactor"    # F

    .line 82
    mul-float v0, p0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    return v0
.end method

.method private static scaleCoordinate(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p0, "vertex"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "scaleFactor"    # F

    .line 74
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    .line 75
    .local v0, "v":Lcom/badlogic/gdx/math/Vector2;
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v1, p1}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeScaleUtils;->scaleCoordinate(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 76
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v1, p1}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeScaleUtils;->scaleCoordinate(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 77
    return-object v0
.end method

.method public static scaleShapes([Lcom/badlogic/gdx/physics/box2d/Shape;F)[Lcom/badlogic/gdx/physics/box2d/Shape;
    .locals 1
    .param p0, "shapes"    # [Lcom/badlogic/gdx/physics/box2d/Shape;
    .param p1, "targetScale"    # F

    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeScaleUtils;->scaleShapes([Lcom/badlogic/gdx/physics/box2d/Shape;FF)[Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    return-object v0
.end method

.method public static scaleShapes([Lcom/badlogic/gdx/physics/box2d/Shape;FF)[Lcom/badlogic/gdx/physics/box2d/Shape;
    .locals 9
    .param p0, "shapes"    # [Lcom/badlogic/gdx/physics/box2d/Shape;
    .param p1, "targetScale"    # F
    .param p2, "originScale"    # F

    .line 47
    if-eqz p0, :cond_4

    array-length v0, p0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_4

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 50
    :cond_0
    cmpl-float v0, p1, p2

    if-nez v0, :cond_1

    .line 51
    return-object p0

    .line 53
    :cond_1
    div-float v0, p1, p2

    .line 54
    .local v0, "scale":F
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 55
    .local v1, "scaledShapes":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/physics/box2d/Shape;>;"
    if-eqz p0, :cond_3

    .line 56
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    .line 57
    .local v4, "shape":Lcom/badlogic/gdx/physics/box2d/Shape;
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 58
    .local v5, "vertices":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector2;>;"
    move-object v6, v4

    check-cast v6, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    .line 59
    .local v6, "polygon":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_1
    invoke-virtual {v6}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->getVertexCount()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 60
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v8}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 61
    .local v8, "vertex":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->getVertex(ILcom/badlogic/gdx/math/Vector2;)V

    .line 62
    invoke-static {v8, v0}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeScaleUtils;->scaleCoordinate(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    .line 63
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v8    # "vertex":Lcom/badlogic/gdx/math/Vector2;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 65
    .end local v7    # "index":I
    :cond_2
    new-instance v7, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v7}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 66
    .local v7, "polygonShape":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->set([Lcom/badlogic/gdx/math/Vector2;)V

    .line 67
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v4    # "shape":Lcom/badlogic/gdx/physics/box2d/Shape;
    .end local v5    # "vertices":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v6    # "polygon":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    .end local v7    # "polygonShape":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/badlogic/gdx/physics/box2d/Shape;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/physics/box2d/Shape;

    return-object v2

    .line 48
    .end local v0    # "scale":F
    .end local v1    # "scaledShapes":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/physics/box2d/Shape;>;"
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method
