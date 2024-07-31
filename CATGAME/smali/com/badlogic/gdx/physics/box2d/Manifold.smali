.class public Lcom/badlogic/gdx/physics/box2d/Manifold;
.super Ljava/lang/Object;
.source "Manifold.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;,
        Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;
    }
.end annotation


# instance fields
.field addr:J

.field final localNormal:Lcom/badlogic/gdx/math/Vector2;

.field final localPoint:Lcom/badlogic/gdx/math/Vector2;

.field final points:[Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;

.field final tmpFloat:[F

.field final tmpInt:[I


# direct methods
.method protected constructor <init>(J)V
    .locals 4
    .param p1, "addr"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;

    new-instance v2, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;-><init>(Lcom/badlogic/gdx/physics/box2d/Manifold;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;-><init>(Lcom/badlogic/gdx/physics/box2d/Manifold;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->points:[Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;

    .line 29
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->localNormal:Lcom/badlogic/gdx/math/Vector2;

    .line 30
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->localPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 32
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->tmpInt:[I

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->tmpFloat:[F

    .line 36
    iput-wide p1, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->addr:J

    .line 37
    return-void
.end method

.method private native jniGetLocalNormal(J[F)V
.end method

.method private native jniGetLocalPoint(J[F)V
.end method

.method private native jniGetPoint(J[FI)I
.end method

.method private native jniGetPointCount(J)I
.end method

.method private native jniGetType(J)I
.end method


# virtual methods
.method public getLocalNormal()Lcom/badlogic/gdx/math/Vector2;
    .locals 4

    .line 62
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->tmpFloat:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Manifold;->jniGetLocalNormal(J[F)V

    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->localNormal:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->tmpFloat:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->localNormal:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getLocalPoint()Lcom/badlogic/gdx/math/Vector2;
    .locals 4

    .line 74
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->tmpFloat:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Manifold;->jniGetLocalPoint(J[F)V

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->localPoint:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->tmpFloat:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->localPoint:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getPointCount()I
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Manifold;->jniGetPointCount(J)I

    move-result v0

    return v0
.end method

.method public getPoints()[Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;
    .locals 8

    .line 86
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Manifold;->jniGetPointCount(J)I

    move-result v0

    .line 88
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 89
    iget-wide v2, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->addr:J

    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->tmpFloat:[F

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/badlogic/gdx/physics/box2d/Manifold;->jniGetPoint(J[FI)I

    move-result v2

    .line 90
    .local v2, "contactID":I
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->points:[Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;

    aget-object v3, v3, v1

    .line 91
    .local v3, "point":Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;
    iput v2, v3, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;->contactID:I

    .line 92
    iget-object v4, v3, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;->localPoint:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->tmpFloat:[F

    const/4 v6, 0x0

    aget v6, v5, v6

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 93
    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->tmpFloat:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    iput v4, v3, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;->normalImpulse:F

    .line 94
    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->tmpFloat:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    iput v4, v3, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;->tangentImpulse:F

    .line 88
    .end local v2    # "contactID":I
    .end local v3    # "point":Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->points:[Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;

    return-object v1
.end method

.method public getType()Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Manifold;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Manifold;->jniGetType(J)I

    move-result v0

    .line 41
    .local v0, "type":I
    if-nez v0, :cond_0

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->Circle:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    return-object v1

    .line 42
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->FaceA:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    return-object v1

    .line 43
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->FaceB:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    return-object v1

    .line 44
    :cond_2
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->Circle:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    return-object v1
.end method
