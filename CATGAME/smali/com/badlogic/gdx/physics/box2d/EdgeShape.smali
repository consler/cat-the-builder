.class public Lcom/badlogic/gdx/physics/box2d/EdgeShape;
.super Lcom/badlogic/gdx/physics/box2d/Shape;
.source "EdgeShape.java"


# static fields
.field static final vertex:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/Shape;-><init>()V

    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->newEdgeShape()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    .line 31
    return-void
.end method

.method constructor <init>(J)V
    .locals 0
    .param p1, "addr"    # J

    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/Shape;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    .line 39
    return-void
.end method

.method private native jniGetVertex0(J[F)V
.end method

.method private native jniGetVertex1(J[F)V
.end method

.method private native jniGetVertex2(J[F)V
.end method

.method private native jniGetVertex3(J[F)V
.end method

.method private native jniHasVertex0(J)Z
.end method

.method private native jniHasVertex3(J)Z
.end method

.method private native jniSet(JFFFF)V
.end method

.method private native jniSetHasVertex0(JZ)V
.end method

.method private native jniSetHasVertex3(JZ)V
.end method

.method private native jniSetVertex0(JFF)V
.end method

.method private native jniSetVertex3(JFF)V
.end method

.method private native newEdgeShape()J
.end method


# virtual methods
.method public getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;
    .locals 1

    .line 172
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Edge:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    return-object v0
.end method

.method public getVertex0(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector2;

    .line 83
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniGetVertex0(J[F)V

    .line 84
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 85
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 86
    return-void
.end method

.method public getVertex1(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector2;

    .line 59
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniGetVertex1(J[F)V

    .line 60
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 61
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 62
    return-void
.end method

.method public getVertex2(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector2;

    .line 71
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniGetVertex2(J[F)V

    .line 72
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 73
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 74
    return-void
.end method

.method public getVertex3(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector2;

    .line 109
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniGetVertex3(J[F)V

    .line 110
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 111
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 112
    return-void
.end method

.method public hasVertex0()Z
    .locals 2

    .line 135
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniHasVertex0(J)Z

    move-result v0

    return v0
.end method

.method public hasVertex3()Z
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniHasVertex3(J)Z

    move-result v0

    return v0
.end method

.method public set(FFFF)V
    .locals 7
    .param p1, "v1X"    # F
    .param p2, "v1Y"    # F
    .param p3, "v2X"    # F
    .param p4, "v2Y"    # F

    .line 48
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniSet(JFFFF)V

    .line 49
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 4
    .param p1, "v1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "v2"    # Lcom/badlogic/gdx/math/Vector2;

    .line 43
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->set(FFFF)V

    .line 44
    return-void
.end method

.method public setHasVertex0(Z)V
    .locals 2
    .param p1, "hasVertex0"    # Z

    .line 144
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniSetHasVertex0(JZ)V

    .line 145
    return-void
.end method

.method public setHasVertex3(Z)V
    .locals 2
    .param p1, "hasVertex3"    # Z

    .line 162
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniSetHasVertex3(JZ)V

    .line 163
    return-void
.end method

.method public setVertex0(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 99
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniSetVertex0(JFF)V

    .line 100
    return-void
.end method

.method public setVertex0(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 4
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector2;

    .line 95
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniSetVertex0(JFF)V

    .line 96
    return-void
.end method

.method public setVertex3(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 125
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniSetVertex3(JFF)V

    .line 126
    return-void
.end method

.method public setVertex3(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 4
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector2;

    .line 121
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniSetVertex3(JFF)V

    .line 122
    return-void
.end method
