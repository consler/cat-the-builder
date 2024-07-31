.class public Lcom/badlogic/gdx/physics/box2d/PolygonShape;
.super Lcom/badlogic/gdx/physics/box2d/Shape;
.source "PolygonShape.java"


# static fields
.field private static verts:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->verts:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/Shape;-><init>()V

    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->newPolygonShape()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    .line 30
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0
    .param p1, "addr"    # J

    .line 32
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/Shape;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    .line 34
    return-void
.end method

.method private native jniGetVertex(JI[F)V
.end method

.method private native jniGetVertexCount(J)I
.end method

.method private native jniSet(J[FII)V
.end method

.method private native jniSetAsBox(JFF)V
.end method

.method private native jniSetAsBox(JFFFFF)V
.end method

.method private native newPolygonShape()J
.end method


# virtual methods
.method public getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;
    .locals 1

    .line 44
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Polygon:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    return-object v0
.end method

.method public getVertex(ILcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "vertex"    # Lcom/badlogic/gdx/math/Vector2;

    .line 123
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->verts:[F

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniGetVertex(JI[F)V

    .line 124
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->verts:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 125
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->verts:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 126
    return-void
.end method

.method public getVertexCount()I
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniGetVertexCount(J)I

    move-result v0

    return v0
.end method

.method public set([F)V
    .locals 6
    .param p1, "vertices"    # [F

    .line 61
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    array-length v5, p1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniSet(J[FII)V

    .line 62
    return-void
.end method

.method public set([FII)V
    .locals 6
    .param p1, "vertices"    # [F
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 67
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniSet(J[FII)V

    .line 68
    return-void
.end method

.method public set([Lcom/badlogic/gdx/math/Vector2;)V
    .locals 7
    .param p1, "vertices"    # [Lcom/badlogic/gdx/math/Vector2;

    .line 50
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    .line 51
    .local v0, "verts":[F
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_0

    .line 52
    aget-object v3, p1, v2

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v0, v1

    .line 53
    add-int/lit8 v3, v1, 0x1

    aget-object v4, p1, v2

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v4, v0, v3

    .line 51
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_0
    iget-wide v2, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    const/4 v5, 0x0

    array-length v6, v0

    move-object v1, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniSet(J[FII)V

    .line 56
    return-void
.end method

.method public setAsBox(FF)V
    .locals 2
    .param p1, "hx"    # F
    .param p2, "hy"    # F

    .line 85
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniSetAsBox(JFF)V

    .line 86
    return-void
.end method

.method public setAsBox(FFLcom/badlogic/gdx/math/Vector2;F)V
    .locals 8
    .param p1, "hx"    # F
    .param p2, "hy"    # F
    .param p3, "center"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "angle"    # F

    .line 99
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    iget v5, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniSetAsBox(JFFFFF)V

    .line 100
    return-void
.end method
