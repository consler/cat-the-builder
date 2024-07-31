.class public final Lcom/badlogic/gdx/physics/box2d/World;
.super Ljava/lang/Object;
.source "World.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field protected final addr:J

.field protected final bodies:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field private final contact:Lcom/badlogic/gdx/physics/box2d/Contact;

.field private contactAddrs:[J

.field protected contactFilter:Lcom/badlogic/gdx/physics/box2d/ContactFilter;

.field protected contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

.field private final contacts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/physics/box2d/Contact;",
            ">;"
        }
    .end annotation
.end field

.field protected final fixtures:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap<",
            "Lcom/badlogic/gdx/physics/box2d/Fixture;",
            ">;"
        }
    .end annotation
.end field

.field protected final freeBodies:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field private final freeContacts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/physics/box2d/Contact;",
            ">;"
        }
    .end annotation
.end field

.field protected final freeFixtures:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/physics/box2d/Fixture;",
            ">;"
        }
    .end annotation
.end field

.field final gravity:Lcom/badlogic/gdx/math/Vector2;

.field private final impulse:Lcom/badlogic/gdx/physics/box2d/ContactImpulse;

.field protected final joints:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap<",
            "Lcom/badlogic/gdx/physics/box2d/Joint;",
            ">;"
        }
    .end annotation
.end field

.field private final manifold:Lcom/badlogic/gdx/physics/box2d/Manifold;

.field private queryCallback:Lcom/badlogic/gdx/physics/box2d/QueryCallback;

.field private rayCastCallback:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

.field private rayNormal:Lcom/badlogic/gdx/math/Vector2;

.field private rayPoint:Lcom/badlogic/gdx/math/Vector2;

.field final tmpGravity:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 187
    new-instance v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;-><init>()V

    const-string v1, "gdx-box2d"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->load(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;Z)V
    .locals 5
    .param p1, "gravity"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "doSleep"    # Z

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/World$1;

    const/16 v1, 0x64

    const/16 v2, 0xc8

    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/World$1;-><init>(Lcom/badlogic/gdx/physics/box2d/World;II)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeBodies:Lcom/badlogic/gdx/utils/Pool;

    .line 199
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/World$2;

    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/World$2;-><init>(Lcom/badlogic/gdx/physics/box2d/World;II)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeFixtures:Lcom/badlogic/gdx/utils/Pool;

    .line 210
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/LongMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Lcom/badlogic/gdx/utils/LongMap;

    .line 213
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/LongMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    .line 216
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/LongMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Lcom/badlogic/gdx/utils/LongMap;

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactFilter:Lcom/badlogic/gdx/physics/box2d/ContactFilter;

    .line 222
    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    .line 793
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->tmpGravity:[F

    .line 794
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->gravity:Lcom/badlogic/gdx/math/Vector2;

    .line 851
    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->queryCallback:Lcom/badlogic/gdx/physics/box2d/QueryCallback;

    .line 878
    new-array v1, v2, [J

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    .line 879
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Lcom/badlogic/gdx/utils/Array;

    .line 880
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Lcom/badlogic/gdx/utils/Array;

    .line 979
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/Contact;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/badlogic/gdx/physics/box2d/Contact;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    .line 980
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/Manifold;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/Manifold;-><init>(J)V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->manifold:Lcom/badlogic/gdx/physics/box2d/Manifold;

    .line 981
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/ContactImpulse;

    invoke-direct {v1, p0, v2, v3}, Lcom/badlogic/gdx/physics/box2d/ContactImpulse;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->impulse:Lcom/badlogic/gdx/physics/box2d/ContactImpulse;

    .line 1042
    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayCastCallback:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

    .line 1050
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 1051
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayNormal:Lcom/badlogic/gdx/math/Vector2;

    .line 228
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v0, v1, p2}, Lcom/badlogic/gdx/physics/box2d/World;->newWorld(FFZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Lcom/badlogic/gdx/utils/Array;

    new-instance v4, Lcom/badlogic/gdx/physics/box2d/Contact;

    invoke-direct {v4, p0, v2, v3}, Lcom/badlogic/gdx/physics/box2d/Contact;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private beginContact(J)V
    .locals 2
    .param p1, "contactAddr"    # J

    .line 984
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iput-wide p1, v0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 985
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/physics/box2d/ContactListener;->beginContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V

    .line 986
    :cond_0
    return-void
.end method

.method private contactFilter(JJ)Z
    .locals 6
    .param p1, "fixtureA"    # J
    .param p3, "fixtureB"    # J

    .line 964
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactFilter:Lcom/badlogic/gdx/physics/box2d/ContactFilter;

    if-eqz v0, :cond_0

    .line 965
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/Fixture;

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v2, p3, p4}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/ContactFilter;->shouldCollide(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Fixture;)Z

    move-result v0

    return v0

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getFilterData()Lcom/badlogic/gdx/physics/box2d/Filter;

    move-result-object v0

    .line 968
    .local v0, "filterA":Lcom/badlogic/gdx/physics/box2d/Filter;
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v1, p3, p4}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getFilterData()Lcom/badlogic/gdx/physics/box2d/Filter;

    move-result-object v1

    .line 970
    .local v1, "filterB":Lcom/badlogic/gdx/physics/box2d/Filter;
    iget-short v2, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    iget-short v3, v1, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2

    iget-short v2, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    if-eqz v2, :cond_2

    .line 971
    iget-short v2, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    return v4

    .line 974
    :cond_2
    iget-short v2, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    iget-short v3, v1, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    iget-short v2, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    iget-short v3, v1, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    move v2, v4

    .line 975
    .local v2, "collide":Z
    return v2
.end method

.method private createProperJoint(Lcom/badlogic/gdx/physics/box2d/JointDef;)J
    .locals 26
    .param p1, "def"    # Lcom/badlogic/gdx/physics/box2d/JointDef;

    .line 416
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v14, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_0

    .line 417
    move-object v13, v14

    check-cast v13, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;

    .line 418
    .local v13, "d":Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;
    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v13, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->collideConnected:Z

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v12, v13, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->length:F

    iget v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->frequencyHz:F

    iget v14, v13, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->dampingRatio:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v17, v13

    .end local v13    # "d":Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;
    .local v17, "d":Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;
    move/from16 v13, v16

    move-object/from16 v15, p1

    invoke-direct/range {v0 .. v14}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateDistanceJoint(JJJZFFFFFFF)J

    move-result-wide v0

    return-wide v0

    .line 421
    .end local v17    # "d":Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;
    :cond_0
    move-object v15, v14

    iget-object v0, v15, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->FrictionJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_1

    .line 422
    move-object v14, v15

    check-cast v14, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;

    .line 423
    .local v14, "d":Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;
    move-object v13, v15

    move-object/from16 v15, p0

    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v0, v14, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v0, v14, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v14, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->collideConnected:Z

    iget-object v0, v14, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, v14, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, v14, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, v14, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v12, v14, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->maxForce:F

    iget v0, v14, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->maxTorque:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v17, v14

    move-object v14, v13

    .end local v14    # "d":Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;
    .local v17, "d":Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;
    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateFrictionJoint(JJJZFFFFFF)J

    move-result-wide v0

    return-wide v0

    .line 426
    .end local v17    # "d":Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;
    :cond_1
    move-object v14, v15

    move-object/from16 v15, p0

    iget-object v0, v14, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->GearJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_2

    .line 427
    move-object v13, v14

    check-cast v13, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;

    .line 428
    .local v13, "d":Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;
    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v13, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->collideConnected:Z

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->joint1:Lcom/badlogic/gdx/physics/box2d/Joint;

    iget-wide v8, v0, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->joint2:Lcom/badlogic/gdx/physics/box2d/Joint;

    iget-wide v10, v0, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    iget v12, v13, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->ratio:F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateGearJoint(JJJZJJF)J

    move-result-wide v0

    return-wide v0

    .line 430
    .end local v13    # "d":Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;
    :cond_2
    iget-object v0, v14, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MotorJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_3

    .line 431
    move-object v13, v14

    check-cast v13, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;

    .line 432
    .local v13, "d":Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;
    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v13, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->collideConnected:Z

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->linearOffset:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->linearOffset:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v10, v13, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->angularOffset:F

    iget v11, v13, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->maxForce:F

    iget v12, v13, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->maxTorque:F

    iget v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->correctionFactor:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v17, v13

    .end local v13    # "d":Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;
    .local v17, "d":Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;
    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateMotorJoint(JJJZFFFFFF)J

    move-result-wide v0

    return-wide v0

    .line 435
    .end local v17    # "d":Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;
    :cond_3
    iget-object v0, v14, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_4

    .line 436
    move-object v13, v14

    check-cast v13, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;

    .line 437
    .local v13, "d":Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;
    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v13, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->collideConnected:Z

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->target:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->target:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v10, v13, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->maxForce:F

    iget v11, v13, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->frequencyHz:F

    iget v12, v13, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->dampingRatio:F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateMouseJoint(JJJZFFFFF)J

    move-result-wide v0

    return-wide v0

    .line 440
    .end local v13    # "d":Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;
    :cond_4
    iget-object v0, v14, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PrismaticJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_5

    .line 441
    move-object v0, v14

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;

    .line 442
    .local v0, "d":Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;
    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v3, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v3, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v5, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->collideConnected:Z

    iget-object v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v10, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v11, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v12, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAxisA:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v13, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAxisA:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v14, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->referenceAngle:F

    iget-boolean v15, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->enableLimit:Z

    move-wide/from16 v21, v1

    iget v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->lowerTranslation:F

    move/from16 v16, v1

    iget v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->upperTranslation:F

    move/from16 v17, v1

    iget-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->enableMotor:Z

    move/from16 v18, v1

    iget v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->maxMotorForce:F

    move/from16 v19, v1

    iget v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->motorSpeed:F

    move/from16 v20, v1

    move-object/from16 v23, v0

    .end local v0    # "d":Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;
    .local v23, "d":Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct/range {v0 .. v20}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreatePrismaticJoint(JJJZFFFFFFFZFFZFF)J

    move-result-wide v0

    return-wide v0

    .line 446
    .end local v23    # "d":Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;
    :cond_5
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_6

    .line 447
    move-object v15, v0

    check-cast v15, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;

    .line 448
    .local v15, "d":Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;
    move-object/from16 v14, p0

    iget-wide v1, v14, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v3, v15, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v3, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v5, v15, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v15, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->collideConnected:Z

    iget-object v8, v15, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v15, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v10, v15, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v11, v15, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v12, v15, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v13, v15, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, v15, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    move v14, v0

    iget-object v0, v15, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-wide/from16 v19, v1

    move-object v1, v15

    .end local v15    # "d":Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;
    .local v1, "d":Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;
    move v15, v0

    iget v0, v1, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->lengthA:F

    move/from16 v16, v0

    iget v0, v1, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->lengthB:F

    move/from16 v17, v0

    iget v0, v1, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->ratio:F

    move/from16 v18, v0

    move-object/from16 v2, p1

    move-object/from16 v0, p0

    move-wide/from16 v24, v19

    move-object/from16 v19, v1

    move-wide/from16 v1, v24

    .end local v1    # "d":Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;
    .local v19, "d":Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;
    invoke-direct/range {v0 .. v18}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreatePulleyJoint(JJJZFFFFFFFFFFF)J

    move-result-wide v0

    return-wide v0

    .line 453
    .end local v19    # "d":Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;
    :cond_6
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RevoluteJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_7

    .line 454
    move-object v15, v0

    check-cast v15, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    .line 455
    .local v15, "d":Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;
    move-object/from16 v14, p0

    iget-wide v1, v14, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v3, v15, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v3, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v5, v15, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v15, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->collideConnected:Z

    iget-object v8, v15, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v15, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v10, v15, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v11, v15, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v12, v15, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->referenceAngle:F

    iget-boolean v13, v15, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->enableLimit:Z

    iget v0, v15, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->lowerAngle:F

    move v14, v0

    iget v0, v15, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->upperAngle:F

    move-wide/from16 v19, v1

    move-object v1, v15

    .end local v15    # "d":Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;
    .local v1, "d":Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;
    move v15, v0

    iget-boolean v0, v1, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->enableMotor:Z

    move/from16 v16, v0

    iget v0, v1, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->motorSpeed:F

    move/from16 v17, v0

    iget v0, v1, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->maxMotorTorque:F

    move/from16 v18, v0

    move-object/from16 v2, p1

    move-object/from16 v0, p0

    move-wide/from16 v24, v19

    move-object/from16 v19, v1

    move-wide/from16 v1, v24

    .end local v1    # "d":Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;
    .local v19, "d":Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;
    invoke-direct/range {v0 .. v18}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateRevoluteJoint(JJJZFFFFFZFFZFF)J

    move-result-wide v0

    return-wide v0

    .line 459
    .end local v19    # "d":Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;
    :cond_7
    move-object/from16 v15, p1

    iget-object v0, v15, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RopeJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_8

    .line 460
    move-object v13, v15

    check-cast v13, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;

    .line 461
    .local v13, "d":Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;
    move-object/from16 v14, p0

    iget-wide v1, v14, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v13, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->collideConnected:Z

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v12, v13, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->maxLength:F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateRopeJoint(JJJZFFFFF)J

    move-result-wide v0

    return-wide v0

    .line 464
    .end local v13    # "d":Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;
    :cond_8
    move-object/from16 v14, p0

    iget-object v0, v15, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WeldJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_9

    .line 465
    move-object v13, v15

    check-cast v13, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;

    .line 466
    .local v13, "d":Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;
    iget-wide v1, v14, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v13, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->collideConnected:Z

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v12, v13, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->referenceAngle:F

    iget v0, v13, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->frequencyHz:F

    iget v14, v13, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->dampingRatio:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v17, v13

    .end local v13    # "d":Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;
    .local v17, "d":Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;
    move/from16 v13, v16

    invoke-direct/range {v0 .. v14}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateWeldJoint(JJJZFFFFFFF)J

    move-result-wide v0

    return-wide v0

    .line 469
    .end local v17    # "d":Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;
    :cond_9
    iget-object v0, v15, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WheelJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_a

    .line 470
    move-object v0, v15

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;

    .line 471
    .local v0, "d":Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;
    move-object/from16 v14, p0

    iget-wide v1, v14, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v3, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v3, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v5, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->collideConnected:Z

    iget-object v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v10, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v11, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v12, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->localAxisA:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v13, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->localAxisA:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-boolean v14, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->enableMotor:Z

    iget v15, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->maxMotorTorque:F

    move-wide/from16 v19, v1

    iget v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->motorSpeed:F

    move/from16 v16, v1

    iget v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->frequencyHz:F

    move/from16 v17, v1

    iget v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->dampingRatio:F

    move/from16 v18, v1

    move-object/from16 v21, v0

    .end local v0    # "d":Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;
    .local v21, "d":Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct/range {v0 .. v18}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateWheelJoint(JJJZFFFFFFZFFFF)J

    move-result-wide v0

    return-wide v0

    .line 476
    .end local v21    # "d":Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;
    :cond_a
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private endContact(J)V
    .locals 2
    .param p1, "contactAddr"    # J

    .line 989
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iput-wide p1, v0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 990
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/physics/box2d/ContactListener;->endContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V

    .line 991
    :cond_0
    return-void
.end method

.method public static native getVelocityThreshold()F
.end method

.method private native jniClearForces(J)V
.end method

.method private native jniCreateBody(JIFFFFFFFFZZZZZF)J
.end method

.method private native jniCreateDistanceJoint(JJJZFFFFFFF)J
.end method

.method private native jniCreateFrictionJoint(JJJZFFFFFF)J
.end method

.method private native jniCreateGearJoint(JJJZJJF)J
.end method

.method private native jniCreateMotorJoint(JJJZFFFFFF)J
.end method

.method private native jniCreateMouseJoint(JJJZFFFFF)J
.end method

.method private native jniCreatePrismaticJoint(JJJZFFFFFFFZFFZFF)J
.end method

.method private native jniCreatePulleyJoint(JJJZFFFFFFFFFFF)J
.end method

.method private native jniCreateRevoluteJoint(JJJZFFFFFZFFZFF)J
.end method

.method private native jniCreateRopeJoint(JJJZFFFFF)J
.end method

.method private native jniCreateWeldJoint(JJJZFFFFFFF)J
.end method

.method private native jniCreateWheelJoint(JJJZFFFFFFZFFFF)J
.end method

.method private native jniDeactivateBody(JJ)V
.end method

.method private native jniDestroyBody(JJ)V
.end method

.method private native jniDestroyFixture(JJJ)V
.end method

.method private native jniDestroyJoint(JJ)V
.end method

.method private native jniDispose(J)V
.end method

.method private native jniGetAutoClearForces(J)Z
.end method

.method private native jniGetBodyCount(J)I
.end method

.method private native jniGetContactCount(J)I
.end method

.method private native jniGetContactList(J[J)V
.end method

.method private native jniGetGravity(J[F)V
.end method

.method private native jniGetJointcount(J)I
.end method

.method private native jniGetProxyCount(J)I
.end method

.method private native jniIsLocked(J)Z
.end method

.method private native jniQueryAABB(JFFFF)V
.end method

.method private native jniRayCast(JFFFF)V
.end method

.method private native jniSetAutoClearForces(JZ)V
.end method

.method private native jniSetContiousPhysics(JZ)V
.end method

.method private native jniSetGravity(JFF)V
.end method

.method private native jniSetWarmStarting(JZ)V
.end method

.method private native jniStep(JFII)V
.end method

.method private native newWorld(FFZ)J
.end method

.method private postSolve(JJ)V
    .locals 3
    .param p1, "contactAddr"    # J
    .param p3, "impulseAddr"    # J

    .line 1000
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iput-wide p1, v0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 1001
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->impulse:Lcom/badlogic/gdx/physics/box2d/ContactImpulse;

    iput-wide p3, v0, Lcom/badlogic/gdx/physics/box2d/ContactImpulse;->addr:J

    .line 1002
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->impulse:Lcom/badlogic/gdx/physics/box2d/ContactImpulse;

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/ContactListener;->postSolve(Lcom/badlogic/gdx/physics/box2d/Contact;Lcom/badlogic/gdx/physics/box2d/ContactImpulse;)V

    .line 1003
    :cond_0
    return-void
.end method

.method private preSolve(JJ)V
    .locals 3
    .param p1, "contactAddr"    # J
    .param p3, "manifoldAddr"    # J

    .line 994
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iput-wide p1, v0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 995
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->manifold:Lcom/badlogic/gdx/physics/box2d/Manifold;

    iput-wide p3, v0, Lcom/badlogic/gdx/physics/box2d/Manifold;->addr:J

    .line 996
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->manifold:Lcom/badlogic/gdx/physics/box2d/Manifold;

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/ContactListener;->preSolve(Lcom/badlogic/gdx/physics/box2d/Contact;Lcom/badlogic/gdx/physics/box2d/Manifold;)V

    .line 997
    :cond_0
    return-void
.end method

.method private reportFixture(J)Z
    .locals 2
    .param p1, "addr"    # J

    .line 1006
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->queryCallback:Lcom/badlogic/gdx/physics/box2d/QueryCallback;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/physics/box2d/QueryCallback;->reportFixture(Lcom/badlogic/gdx/physics/box2d/Fixture;)Z

    move-result v0

    return v0

    .line 1009
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private reportRayFixture(JFFFFF)F
    .locals 4
    .param p1, "addr"    # J
    .param p3, "pX"    # F
    .param p4, "pY"    # F
    .param p5, "nX"    # F
    .param p6, "nY"    # F
    .param p7, "fraction"    # F

    .line 1054
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayCastCallback:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayPoint:Lcom/badlogic/gdx/math/Vector2;

    iput p3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 1056
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayPoint:Lcom/badlogic/gdx/math/Vector2;

    iput p4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 1057
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayNormal:Lcom/badlogic/gdx/math/Vector2;

    iput p5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 1058
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayNormal:Lcom/badlogic/gdx/math/Vector2;

    iput p6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 1059
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayCastCallback:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/Fixture;

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayPoint:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayNormal:Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {v0, v1, v2, v3, p7}, Lcom/badlogic/gdx/physics/box2d/RayCastCallback;->reportRayFixture(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)F

    move-result v0

    return v0

    .line 1061
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private native setUseDefaultContactFilter(Z)V
.end method

.method public static native setVelocityThreshold(F)V
.end method


# virtual methods
.method public QueryAABB(Lcom/badlogic/gdx/physics/box2d/QueryCallback;FFFF)V
    .locals 7
    .param p1, "callback"    # Lcom/badlogic/gdx/physics/box2d/QueryCallback;
    .param p2, "lowerX"    # F
    .param p3, "lowerY"    # F
    .param p4, "upperX"    # F
    .param p5, "upperY"    # F

    .line 847
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->queryCallback:Lcom/badlogic/gdx/physics/box2d/QueryCallback;

    .line 848
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/World;->jniQueryAABB(JFFFF)V

    .line 849
    return-void
.end method

.method public clearForces()V
    .locals 2

    .line 709
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniClearForces(J)V

    .line 710
    return-void
.end method

.method public createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 21
    .param p1, "def"    # Lcom/badlogic/gdx/physics/box2d/BodyDef;

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p0

    .line 283
    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v3, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    invoke-virtual {v3}, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->getValue()I

    move-result v3

    iget-object v4, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    iget-object v7, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearVelocity:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v8, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearVelocity:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v9, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angularVelocity:F

    iget v10, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearDamping:F

    iget v11, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angularDamping:F

    iget-boolean v12, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->allowSleep:Z

    iget-boolean v13, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->awake:Z

    iget-boolean v15, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->fixedRotation:Z

    move-object/from16 v18, v0

    move-object v0, v14

    move v14, v15

    iget-boolean v15, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->bullet:Z

    move-wide/from16 v19, v1

    iget-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->active:Z

    move/from16 v16, v1

    iget v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->gravityScale:F

    move/from16 v17, v1

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-direct/range {v0 .. v17}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateBody(JIFFFFFFFFZZZZZF)J

    move-result-wide v0

    .line 286
    .local v0, "bodyAddr":J
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/badlogic/gdx/physics/box2d/World;->freeBodies:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/physics/box2d/Body;

    .line 287
    .local v3, "body":Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-virtual {v3, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->reset(J)V

    .line 288
    iget-object v4, v2, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v5, v3, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-virtual {v4, v5, v6, v3}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 289
    return-object v3
.end method

.method public createJoint(Lcom/badlogic/gdx/physics/box2d/JointDef;)Lcom/badlogic/gdx/physics/box2d/Joint;
    .locals 10
    .param p1, "def"    # Lcom/badlogic/gdx/physics/box2d/JointDef;

    .line 392
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/physics/box2d/World;->createProperJoint(Lcom/badlogic/gdx/physics/box2d/JointDef;)J

    move-result-wide v6

    .line 393
    .local v6, "jointAddr":J
    const/4 v0, 0x0

    .line 394
    .local v0, "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;

    invoke-direct {v1, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    move-object v0, v1

    .line 395
    :cond_0
    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->FrictionJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;

    invoke-direct {v1, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    move-object v0, v1

    :cond_1
    move-object v8, v0

    .line 396
    .end local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    .local v8, "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->GearJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_2

    new-instance v9, Lcom/badlogic/gdx/physics/box2d/joints/GearJoint;

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;

    iget-object v4, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->joint1:Lcom/badlogic/gdx/physics/box2d/Joint;

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;

    iget-object v5, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->joint2:Lcom/badlogic/gdx/physics/box2d/Joint;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/joints/GearJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;JLcom/badlogic/gdx/physics/box2d/Joint;Lcom/badlogic/gdx/physics/box2d/Joint;)V

    move-object v8, v9

    .line 397
    :cond_2
    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MotorJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJoint;

    invoke-direct {v0, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/MotorJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    move-object v8, v0

    .line 398
    :cond_3
    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJoint;

    invoke-direct {v0, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/MouseJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    move-object v8, v0

    .line 399
    :cond_4
    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PrismaticJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_5

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;

    invoke-direct {v0, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    move-object v8, v0

    .line 400
    :cond_5
    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_6

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;

    invoke-direct {v0, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    move-object v8, v0

    .line 401
    :cond_6
    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RevoluteJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_7

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

    invoke-direct {v0, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    move-object v8, v0

    .line 402
    :cond_7
    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RopeJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_8

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/RopeJoint;

    invoke-direct {v0, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/RopeJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    move-object v8, v0

    .line 403
    :cond_8
    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WeldJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_9

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJoint;

    invoke-direct {v0, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/WeldJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    move-object v8, v0

    .line 404
    :cond_9
    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WheelJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_a

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;

    invoke-direct {v0, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    move-object v8, v0

    .line 405
    :cond_a
    if-eqz v8, :cond_b

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v1, v8, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-virtual {v0, v1, v2, v8}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_b
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-direct {v0, v1, v8}, Lcom/badlogic/gdx/physics/box2d/JointEdge;-><init>(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Joint;)V

    .line 407
    .local v0, "jointEdgeA":Lcom/badlogic/gdx/physics/box2d/JointEdge;
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v2, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-direct {v1, v2, v8}, Lcom/badlogic/gdx/physics/box2d/JointEdge;-><init>(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Joint;)V

    .line 408
    .local v1, "jointEdgeB":Lcom/badlogic/gdx/physics/box2d/JointEdge;
    iput-object v0, v8, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeA:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    .line 409
    iput-object v1, v8, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeB:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    .line 410
    iget-object v2, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v2, v2, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 411
    iget-object v2, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v2, v2, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 412
    return-object v8
.end method

.method deactivateBody(Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 4
    .param p1, "body"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .line 373
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-wide v2, p1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/World;->jniDeactivateBody(JJ)V

    .line 374
    return-void
.end method

.method public destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 8
    .param p1, "body"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .line 320
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getJointList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    .line 321
    .local v0, "jointList":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/physics/box2d/JointEdge;>;"
    :goto_0
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 322
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getJointList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v1, v1, Lcom/badlogic/gdx/physics/box2d/JointEdge;->joint:Lcom/badlogic/gdx/physics/box2d/Joint;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->destroyJoint(Lcom/badlogic/gdx/physics/box2d/Joint;)V

    goto :goto_0

    .line 323
    :cond_0
    iget-wide v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-wide v5, p1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/badlogic/gdx/physics/box2d/World;->jniDestroyBody(JJ)V

    .line 324
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->setUserData(Ljava/lang/Object;)V

    .line 325
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v4, p1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/LongMap;->remove(J)Ljava/lang/Object;

    .line 326
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    .line 327
    .local v3, "fixtureList":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/physics/box2d/Fixture;>;"
    :goto_1
    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v4, :cond_1

    .line 328
    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 329
    .local v4, "fixtureToDelete":Lcom/badlogic/gdx/physics/box2d/Fixture;
    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v6, v4, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/utils/LongMap;->remove(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->setUserData(Ljava/lang/Object;)V

    .line 330
    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeFixtures:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 331
    .end local v4    # "fixtureToDelete":Lcom/badlogic/gdx/physics/box2d/Fixture;
    goto :goto_1

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeBodies:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 334
    return-void
.end method

.method destroyFixture(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Fixture;)V
    .locals 7
    .param p1, "body"    # Lcom/badlogic/gdx/physics/box2d/Body;
    .param p2, "fixture"    # Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 353
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-wide v3, p1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-wide v5, p2, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/World;->jniDestroyFixture(JJJ)V

    .line 354
    return-void
.end method

.method public destroyJoint(Lcom/badlogic/gdx/physics/box2d/Joint;)V
    .locals 4
    .param p1, "joint"    # Lcom/badlogic/gdx/physics/box2d/Joint;

    .line 665
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/physics/box2d/Joint;->setUserData(Ljava/lang/Object;)V

    .line 666
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v1, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/LongMap;->remove(J)Ljava/lang/Object;

    .line 667
    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeA:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/JointEdge;->other:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeB:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 668
    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeB:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/JointEdge;->other:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeA:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 669
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-wide v2, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/World;->jniDestroyJoint(JJ)V

    .line 670
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 951
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniDispose(J)V

    .line 952
    return-void
.end method

.method public getAutoClearForces()Z
    .locals 2

    .line 832
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetAutoClearForces(J)Z

    move-result v0

    return v0
.end method

.method public getBodies(Lcom/badlogic/gdx/utils/Array;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;)V"
        }
    .end annotation

    .line 913
    .local p1, "bodies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/physics/box2d/Body;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 914
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Lcom/badlogic/gdx/utils/LongMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 915
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap;->values()Lcom/badlogic/gdx/utils/LongMap$Values;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/physics/box2d/Body;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 916
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 918
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/physics/box2d/Body;>;"
    :cond_0
    return-void
.end method

.method public getBodyCount()I
    .locals 2

    .line 749
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetBodyCount(J)I

    move-result v0

    return v0
.end method

.method public getContactCount()I
    .locals 2

    .line 774
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetContactCount(J)I

    move-result v0

    return v0
.end method

.method public getContactList()Lcom/badlogic/gdx/utils/Array;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/physics/box2d/Contact;",
            ">;"
        }
    .end annotation

    .line 887
    invoke-virtual {p0}, Lcom/badlogic/gdx/physics/box2d/World;->getContactCount()I

    move-result v0

    .line 888
    .local v0, "numContacts":I
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 889
    mul-int/lit8 v1, v0, 0x2

    .line 890
    .local v1, "newSize":I
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    .line 891
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 892
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 894
    .end local v1    # "newSize":I
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v0, v1, :cond_1

    .line 895
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 896
    .local v1, "freeConts":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sub-int v3, v0, v1

    if-ge v2, v3, :cond_1

    .line 897
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Lcom/badlogic/gdx/utils/Array;

    new-instance v4, Lcom/badlogic/gdx/physics/box2d/Contact;

    const-wide/16 v5, 0x0

    invoke-direct {v4, p0, v5, v6}, Lcom/badlogic/gdx/physics/box2d/Contact;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 896
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 899
    .end local v1    # "freeConts":I
    .end local v2    # "i":I
    :cond_1
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    invoke-direct {p0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetContactList(J[J)V

    .line 901
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 902
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 903
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/physics/box2d/Contact;

    .line 904
    .local v2, "contact":Lcom/badlogic/gdx/physics/box2d/Contact;
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    aget-wide v4, v3, v1

    iput-wide v4, v2, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 905
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 902
    .end local v2    # "contact":Lcom/badlogic/gdx/physics/box2d/Contact;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 908
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Lcom/badlogic/gdx/utils/Array;

    return-object v1
.end method

.method public getFixtureCount()I
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    return v0
.end method

.method public getFixtures(Lcom/badlogic/gdx/utils/Array;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/physics/box2d/Fixture;",
            ">;)V"
        }
    .end annotation

    .line 922
    .local p1, "fixtures":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/physics/box2d/Fixture;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 923
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 924
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap;->values()Lcom/badlogic/gdx/utils/LongMap$Values;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/physics/box2d/Fixture;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 925
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 927
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/physics/box2d/Fixture;>;"
    :cond_0
    return-void
.end method

.method public getGravity()Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    .line 797
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->tmpGravity:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetGravity(J[F)V

    .line 798
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->gravity:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->tmpGravity:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 799
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->gravity:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->tmpGravity:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 800
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->gravity:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getJointCount()I
    .locals 2

    .line 764
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetJointcount(J)I

    move-result v0

    return v0
.end method

.method public getJoints(Lcom/badlogic/gdx/utils/Array;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/physics/box2d/Joint;",
            ">;)V"
        }
    .end annotation

    .line 931
    .local p1, "joints":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/physics/box2d/Joint;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 932
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Lcom/badlogic/gdx/utils/LongMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 933
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap;->values()Lcom/badlogic/gdx/utils/LongMap$Values;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/physics/box2d/Joint;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 934
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 936
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/physics/box2d/Joint;>;"
    :cond_0
    return-void
.end method

.method public getProxyCount()I
    .locals 2

    .line 739
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetProxyCount(J)I

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 2

    .line 812
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniIsLocked(J)Z

    move-result v0

    return v0
.end method

.method public rayCast(Lcom/badlogic/gdx/physics/box2d/RayCastCallback;FFFF)V
    .locals 7
    .param p1, "callback"    # Lcom/badlogic/gdx/physics/box2d/RayCastCallback;
    .param p2, "point1X"    # F
    .param p3, "point1Y"    # F
    .param p4, "point2X"    # F
    .param p5, "point2Y"    # F

    .line 1038
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayCastCallback:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

    .line 1039
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/World;->jniRayCast(JFFFF)V

    .line 1040
    return-void
.end method

.method public rayCast(Lcom/badlogic/gdx/physics/box2d/RayCastCallback;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 6
    .param p1, "callback"    # Lcom/badlogic/gdx/physics/box2d/RayCastCallback;
    .param p2, "point1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "point2"    # Lcom/badlogic/gdx/math/Vector2;

    .line 1028
    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/World;->rayCast(Lcom/badlogic/gdx/physics/box2d/RayCastCallback;FFFF)V

    .line 1029
    return-void
.end method

.method public setAutoClearForces(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 822
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/World;->jniSetAutoClearForces(JZ)V

    .line 823
    return-void
.end method

.method public setContactFilter(Lcom/badlogic/gdx/physics/box2d/ContactFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/badlogic/gdx/physics/box2d/ContactFilter;

    .line 263
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactFilter:Lcom/badlogic/gdx/physics/box2d/ContactFilter;

    .line 264
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/physics/box2d/World;->setUseDefaultContactFilter(Z)V

    .line 265
    return-void
.end method

.method public setContactListener(Lcom/badlogic/gdx/physics/box2d/ContactListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/physics/box2d/ContactListener;

    .line 274
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    .line 275
    return-void
.end method

.method public setContinuousPhysics(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 729
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/World;->jniSetContiousPhysics(JZ)V

    .line 730
    return-void
.end method

.method public setDestructionListener(Lcom/badlogic/gdx/physics/box2d/DestructionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/physics/box2d/DestructionListener;

    .line 258
    return-void
.end method

.method public setGravity(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 4
    .param p1, "gravity"    # Lcom/badlogic/gdx/math/Vector2;

    .line 784
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/World;->jniSetGravity(JFF)V

    .line 785
    return-void
.end method

.method public setWarmStarting(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 719
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/World;->jniSetWarmStarting(JZ)V

    .line 720
    return-void
.end method

.method public step(FII)V
    .locals 6
    .param p1, "timeStep"    # F
    .param p2, "velocityIterations"    # I
    .param p3, "positionIterations"    # I

    .line 689
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/World;->jniStep(JFII)V

    .line 690
    return-void
.end method
