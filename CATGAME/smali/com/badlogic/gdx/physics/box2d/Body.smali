.class public Lcom/badlogic/gdx/physics/box2d/Body;
.super Ljava/lang/Object;
.source "Body.java"


# instance fields
.field protected addr:J

.field private fixtures:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/physics/box2d/Fixture;",
            ">;"
        }
    .end annotation
.end field

.field protected joints:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/physics/box2d/JointEdge;",
            ">;"
        }
    .end annotation
.end field

.field public final linVelLoc:Lcom/badlogic/gdx/math/Vector2;

.field public final linVelWorld:Lcom/badlogic/gdx/math/Vector2;

.field private final linearVelocity:Lcom/badlogic/gdx/math/Vector2;

.field private final localCenter:Lcom/badlogic/gdx/math/Vector2;

.field private final localPoint:Lcom/badlogic/gdx/math/Vector2;

.field public final localPoint2:Lcom/badlogic/gdx/math/Vector2;

.field public final localVector:Lcom/badlogic/gdx/math/Vector2;

.field private final massData:Lcom/badlogic/gdx/physics/box2d/MassData;

.field private final position:Lcom/badlogic/gdx/math/Vector2;

.field private final tmp:[F

.field private final transform:Lcom/badlogic/gdx/physics/box2d/Transform;

.field private userData:Ljava/lang/Object;

.field private final world:Lcom/badlogic/gdx/physics/box2d/World;

.field private final worldCenter:Lcom/badlogic/gdx/math/Vector2;

.field private final worldVector:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;J)V
    .locals 2
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p2, "addr"    # J

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    .line 41
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->fixtures:Lcom/badlogic/gdx/utils/Array;

    .line 44
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Lcom/badlogic/gdx/utils/Array;

    .line 156
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Transform;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/Transform;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->transform:Lcom/badlogic/gdx/physics/box2d/Transform;

    .line 173
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->position:Lcom/badlogic/gdx/math/Vector2;

    .line 203
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->worldCenter:Lcom/badlogic/gdx/math/Vector2;

    .line 221
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localCenter:Lcom/badlogic/gdx/math/Vector2;

    .line 254
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linearVelocity:Lcom/badlogic/gdx/math/Vector2;

    .line 406
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/MassData;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/MassData;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->massData:Lcom/badlogic/gdx/physics/box2d/MassData;

    .line 457
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 477
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->worldVector:Lcom/badlogic/gdx/math/Vector2;

    .line 497
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localPoint2:Lcom/badlogic/gdx/math/Vector2;

    .line 517
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localVector:Lcom/badlogic/gdx/math/Vector2;

    .line 537
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linVelWorld:Lcom/badlogic/gdx/math/Vector2;

    .line 557
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linVelLoc:Lcom/badlogic/gdx/math/Vector2;

    .line 53
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    .line 54
    iput-wide p2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    .line 55
    return-void
.end method

.method private native jniApplyAngularImpulse(JFZ)V
.end method

.method private native jniApplyForce(JFFFFZ)V
.end method

.method private native jniApplyForceToCenter(JFFZ)V
.end method

.method private native jniApplyLinearImpulse(JFFFFZ)V
.end method

.method private native jniApplyTorque(JFZ)V
.end method

.method private native jniCreateFixture(JJF)J
.end method

.method private native jniCreateFixture(JJFFFZSSS)J
.end method

.method private native jniGetAngle(J)F
.end method

.method private native jniGetAngularDamping(J)F
.end method

.method private native jniGetAngularVelocity(J)F
.end method

.method private native jniGetGravityScale(J)F
.end method

.method private native jniGetInertia(J)F
.end method

.method private native jniGetLinearDamping(J)F
.end method

.method private native jniGetLinearVelocity(J[F)V
.end method

.method private native jniGetLinearVelocityFromLocalPoint(JFF[F)V
.end method

.method private native jniGetLinearVelocityFromWorldPoint(JFF[F)V
.end method

.method private native jniGetLocalCenter(J[F)V
.end method

.method private native jniGetLocalPoint(JFF[F)V
.end method

.method private native jniGetLocalVector(JFF[F)V
.end method

.method private native jniGetMass(J)F
.end method

.method private native jniGetMassData(J[F)V
.end method

.method private native jniGetPosition(J[F)V
.end method

.method private native jniGetTransform(J[F)V
.end method

.method private native jniGetType(J)I
.end method

.method private native jniGetWorldCenter(J[F)V
.end method

.method private native jniGetWorldPoint(JFF[F)V
.end method

.method private native jniGetWorldVector(JFF[F)V
.end method

.method private native jniIsActive(J)Z
.end method

.method private native jniIsAwake(J)Z
.end method

.method private native jniIsBullet(J)Z
.end method

.method private native jniIsFixedRotation(J)Z
.end method

.method private native jniIsSleepingAllowed(J)Z
.end method

.method private native jniResetMassData(J)V
.end method

.method private native jniSetActive(JZ)V
.end method

.method private native jniSetAngularDamping(JF)V
.end method

.method private native jniSetAngularVelocity(JF)V
.end method

.method private native jniSetAwake(JZ)V
.end method

.method private native jniSetBullet(JZ)V
.end method

.method private native jniSetFixedRotation(JZ)V
.end method

.method private native jniSetGravityScale(JF)V
.end method

.method private native jniSetLinearDamping(JF)V
.end method

.method private native jniSetLinearVelocity(JFF)V
.end method

.method private native jniSetMassData(JFFFF)V
.end method

.method private native jniSetSleepingAllowed(JZ)V
.end method

.method private native jniSetTransform(JFFF)V
.end method

.method private native jniSetType(JI)V
.end method


# virtual methods
.method public applyAngularImpulse(FZ)V
    .locals 2
    .param p1, "impulse"    # F
    .param p2, "wake"    # Z

    .line 376
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniApplyAngularImpulse(JFZ)V

    .line 377
    return-void
.end method

.method public applyForce(FFFFZ)V
    .locals 8
    .param p1, "forceX"    # F
    .param p2, "forceY"    # F
    .param p3, "pointX"    # F
    .param p4, "pointY"    # F
    .param p5, "wake"    # Z

    .line 309
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/physics/box2d/Body;->jniApplyForce(JFFFFZ)V

    .line 310
    return-void
.end method

.method public applyForce(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)V
    .locals 8
    .param p1, "force"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "wake"    # Z

    .line 298
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/physics/box2d/Body;->jniApplyForce(JFFFFZ)V

    .line 299
    return-void
.end method

.method public applyForceToCenter(FFZ)V
    .locals 6
    .param p1, "forceX"    # F
    .param p2, "forceY"    # F
    .param p3, "wake"    # Z

    .line 327
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniApplyForceToCenter(JFFZ)V

    .line 328
    return-void
.end method

.method public applyForceToCenter(Lcom/badlogic/gdx/math/Vector2;Z)V
    .locals 6
    .param p1, "force"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "wake"    # Z

    .line 320
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniApplyForceToCenter(JFFZ)V

    .line 321
    return-void
.end method

.method public applyLinearImpulse(FFFFZ)V
    .locals 8
    .param p1, "impulseX"    # F
    .param p2, "impulseY"    # F
    .param p3, "pointX"    # F
    .param p4, "pointY"    # F
    .param p5, "wake"    # Z

    .line 365
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/physics/box2d/Body;->jniApplyLinearImpulse(JFFFFZ)V

    .line 366
    return-void
.end method

.method public applyLinearImpulse(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)V
    .locals 8
    .param p1, "impulse"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "wake"    # Z

    .line 354
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/physics/box2d/Body;->jniApplyLinearImpulse(JFFFFZ)V

    .line 355
    return-void
.end method

.method public applyTorque(FZ)V
    .locals 2
    .param p1, "torque"    # F
    .param p2, "wake"    # Z

    .line 340
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniApplyTorque(JFZ)V

    .line 341
    return-void
.end method

.method public createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;
    .locals 12
    .param p1, "def"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .line 73
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    iget-wide v3, v0, Lcom/badlogic/gdx/physics/box2d/Shape;->addr:J

    iget v5, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    iget v6, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->restitution:F

    iget v7, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->density:F

    iget-boolean v8, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->isSensor:Z

    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-short v9, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-short v10, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-short v11, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/badlogic/gdx/physics/box2d/Body;->jniCreateFixture(JJFFFZSSS)J

    move-result-wide v0

    .line 75
    .local v0, "fixtureAddr":J
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v2, v2, Lcom/badlogic/gdx/physics/box2d/World;->freeFixtures:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 76
    .local v2, "fixture":Lcom/badlogic/gdx/physics/box2d/Fixture;
    invoke-virtual {v2, p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->reset(Lcom/badlogic/gdx/physics/box2d/Body;J)V

    .line 77
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v3, v3, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v4, v2, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-virtual {v3, v4, v5, v2}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Body;->fixtures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 79
    return-object v2
.end method

.method public createFixture(Lcom/badlogic/gdx/physics/box2d/Shape;F)Lcom/badlogic/gdx/physics/box2d/Fixture;
    .locals 6
    .param p1, "shape"    # Lcom/badlogic/gdx/physics/box2d/Shape;
    .param p2, "density"    # F

    .line 107
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-wide v3, p1, Lcom/badlogic/gdx/physics/box2d/Shape;->addr:J

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniCreateFixture(JJF)J

    move-result-wide v0

    .line 108
    .local v0, "fixtureAddr":J
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v2, v2, Lcom/badlogic/gdx/physics/box2d/World;->freeFixtures:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 109
    .local v2, "fixture":Lcom/badlogic/gdx/physics/box2d/Fixture;
    invoke-virtual {v2, p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->reset(Lcom/badlogic/gdx/physics/box2d/Body;J)V

    .line 110
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v3, v3, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v4, v2, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-virtual {v3, v4, v5, v2}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Body;->fixtures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 112
    return-object v2
.end method

.method public destroyFixture(Lcom/badlogic/gdx/physics/box2d/Fixture;)V
    .locals 3
    .param p1, "fixture"    # Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/physics/box2d/World;->destroyFixture(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Fixture;)V

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/physics/box2d/Fixture;->setUserData(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v1, p1, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/LongMap;->remove(J)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->fixtures:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->freeFixtures:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public getAngle()F
    .locals 2

    .line 195
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetAngle(J)F

    move-result v0

    return v0
.end method

.method public getAngularDamping()F
    .locals 2

    .line 599
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetAngularDamping(J)F

    move-result v0

    return v0
.end method

.method public getAngularVelocity()F
    .locals 2

    .line 284
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetAngularVelocity(J)F

    move-result v0

    return v0
.end method

.method public getFixtureList()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/physics/box2d/Fixture;",
            ">;"
        }
    .end annotation

    .line 769
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->fixtures:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getGravityScale()F
    .locals 2

    .line 787
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetGravityScale(J)F

    move-result v0

    return v0
.end method

.method public getInertia()F
    .locals 2

    .line 398
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetInertia(J)F

    move-result v0

    return v0
.end method

.method public getJointList()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/physics/box2d/JointEdge;",
            ">;"
        }
    .end annotation

    .line 774
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getLinearDamping()F
    .locals 2

    .line 579
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetLinearDamping(J)F

    move-result v0

    return v0
.end method

.method public getLinearVelocity()Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    .line 259
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetLinearVelocity(J[F)V

    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linearVelocity:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linearVelocity:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linearVelocity:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getLinearVelocityFromLocalPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .param p1, "localPoint"    # Lcom/badlogic/gdx/math/Vector2;

    .line 564
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetLinearVelocityFromLocalPoint(JFF[F)V

    .line 565
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linVelLoc:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 566
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linVelLoc:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 567
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linVelLoc:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getLinearVelocityFromWorldPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .param p1, "worldPoint"    # Lcom/badlogic/gdx/math/Vector2;

    .line 544
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetLinearVelocityFromWorldPoint(JFF[F)V

    .line 545
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linVelWorld:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 546
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linVelWorld:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 547
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linVelWorld:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getLocalCenter()Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    .line 226
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetLocalCenter(J[F)V

    .line 227
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localCenter:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localCenter:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localCenter:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getLocalPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .param p1, "worldPoint"    # Lcom/badlogic/gdx/math/Vector2;

    .line 504
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetLocalPoint(JFF[F)V

    .line 505
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localPoint2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 506
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localPoint2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 507
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localPoint2:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getLocalVector(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .param p1, "worldVector"    # Lcom/badlogic/gdx/math/Vector2;

    .line 524
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetLocalVector(JFF[F)V

    .line 525
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localVector:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 526
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localVector:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 527
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localVector:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getMass()F
    .locals 2

    .line 387
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetMass(J)F

    move-result v0

    return v0
.end method

.method public getMassData()Lcom/badlogic/gdx/physics/box2d/MassData;
    .locals 3

    .line 411
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetMassData(J[F)V

    .line 412
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->massData:Lcom/badlogic/gdx/physics/box2d/MassData;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/MassData;->mass:F

    .line 413
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->massData:Lcom/badlogic/gdx/physics/box2d/MassData;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/MassData;->center:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 414
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->massData:Lcom/badlogic/gdx/physics/box2d/MassData;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/MassData;->center:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 415
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->massData:Lcom/badlogic/gdx/physics/box2d/MassData;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/MassData;->I:F

    .line 416
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->massData:Lcom/badlogic/gdx/physics/box2d/MassData;

    return-object v0
.end method

.method public getPosition()Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    .line 179
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetPosition(J[F)V

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->position:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->position:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->position:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getTransform()Lcom/badlogic/gdx/physics/box2d/Transform;
    .locals 3

    .line 160
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->transform:Lcom/badlogic/gdx/physics/box2d/Transform;

    iget-object v2, v2, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetTransform(J[F)V

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->transform:Lcom/badlogic/gdx/physics/box2d/Transform;

    return-object v0
.end method

.method public getType()Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .locals 2

    .line 644
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetType(J)I

    move-result v0

    .line 645
    .local v0, "type":I
    if-nez v0, :cond_0

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    return-object v1

    .line 646
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    return-object v1

    .line 647
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->DynamicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    return-object v1

    .line 648
    :cond_2
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    return-object v1
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getWorld()Lcom/badlogic/gdx/physics/box2d/World;
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    return-object v0
.end method

.method public getWorldCenter()Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    .line 208
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetWorldCenter(J[F)V

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->worldCenter:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->worldCenter:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 211
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->worldCenter:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getWorldPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .param p1, "localPoint"    # Lcom/badlogic/gdx/math/Vector2;

    .line 464
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetWorldPoint(JFF[F)V

    .line 465
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localPoint:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 466
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localPoint:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 467
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localPoint:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getWorldVector(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .param p1, "localVector"    # Lcom/badlogic/gdx/math/Vector2;

    .line 484
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetWorldVector(JFF[F)V

    .line 485
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->worldVector:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 486
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->worldVector:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 487
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->worldVector:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    .line 739
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniIsActive(J)Z

    move-result v0

    return v0
.end method

.method public isAwake()Z
    .locals 2

    .line 710
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniIsAwake(J)Z

    move-result v0

    return v0
.end method

.method public isBullet()Z
    .locals 2

    .line 668
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniIsBullet(J)Z

    move-result v0

    return v0
.end method

.method public isFixedRotation()Z
    .locals 2

    .line 759
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniIsFixedRotation(J)Z

    move-result v0

    return v0
.end method

.method public isSleepingAllowed()Z
    .locals 2

    .line 688
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniIsSleepingAllowed(J)Z

    move-result v0

    return v0
.end method

.method protected reset(J)V
    .locals 3
    .param p1, "addr"    # J

    .line 59
    iput-wide p1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->userData:Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->fixtures:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v1, v1, Lcom/badlogic/gdx/physics/box2d/World;->freeFixtures:Lcom/badlogic/gdx/utils/Pool;

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->fixtures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->fixtures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 65
    return-void
.end method

.method public resetMassData()V
    .locals 2

    .line 449
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniResetMassData(J)V

    .line 450
    return-void
.end method

.method public setActive(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 725
    if-eqz p1, :cond_0

    .line 726
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetActive(JZ)V

    goto :goto_0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/physics/box2d/World;->deactivateBody(Lcom/badlogic/gdx/physics/box2d/Body;)V

    .line 730
    :goto_0
    return-void
.end method

.method public setAngularDamping(F)V
    .locals 2
    .param p1, "angularDamping"    # F

    .line 609
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetAngularDamping(JF)V

    .line 610
    return-void
.end method

.method public setAngularVelocity(F)V
    .locals 2
    .param p1, "omega"    # F

    .line 274
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetAngularVelocity(JF)V

    .line 275
    return-void
.end method

.method public setAwake(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 699
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetAwake(JZ)V

    .line 700
    return-void
.end method

.method public setBullet(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 658
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetBullet(JZ)V

    .line 659
    return-void
.end method

.method public setFixedRotation(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 749
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetFixedRotation(JZ)V

    .line 750
    return-void
.end method

.method public setGravityScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .line 797
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetGravityScale(JF)V

    .line 798
    return-void
.end method

.method public setLinearDamping(F)V
    .locals 2
    .param p1, "linearDamping"    # F

    .line 589
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetLinearDamping(JF)V

    .line 590
    return-void
.end method

.method public setLinearVelocity(FF)V
    .locals 2
    .param p1, "vX"    # F
    .param p2, "vY"    # F

    .line 246
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetLinearVelocity(JFF)V

    .line 247
    return-void
.end method

.method public setLinearVelocity(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 4
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .line 241
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetLinearVelocity(JFF)V

    .line 242
    return-void
.end method

.method public setMassData(Lcom/badlogic/gdx/physics/box2d/MassData;)V
    .locals 7
    .param p1, "data"    # Lcom/badlogic/gdx/physics/box2d/MassData;

    .line 433
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/physics/box2d/MassData;->mass:F

    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/MassData;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/MassData;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, p1, Lcom/badlogic/gdx/physics/box2d/MassData;->I:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetMassData(JFFFF)V

    .line 434
    return-void
.end method

.method public setSleepingAllowed(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 678
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetSleepingAllowed(JZ)V

    .line 679
    return-void
.end method

.method public setTransform(FFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "angle"    # F

    .line 148
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetTransform(JFFF)V

    .line 149
    return-void
.end method

.method public setTransform(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 6
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "angle"    # F

    .line 139
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetTransform(JFFF)V

    .line 140
    return-void
.end method

.method public setType(Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)V
    .locals 3
    .param p1, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 619
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->getValue()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetType(JI)V

    .line 620
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userData"    # Ljava/lang/Object;

    .line 817
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->userData:Ljava/lang/Object;

    .line 818
    return-void
.end method
