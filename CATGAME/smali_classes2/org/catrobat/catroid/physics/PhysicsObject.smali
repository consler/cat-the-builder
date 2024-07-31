.class public Lorg/catrobat/catroid/physics/PhysicsObject;
.super Ljava/lang/Object;
.source "PhysicsObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/physics/PhysicsObject$Type;
    }
.end annotation


# static fields
.field public static final DEFAULT_BOUNCE_FACTOR:F = 0.8f

.field public static final DEFAULT_DENSITY:F = 1.0f

.field public static final DEFAULT_FRICTION:F = 0.2f

.field public static final DEFAULT_MASS:F = 1.0f

.field public static final MAX_FRICTION:F = 1.0f

.field public static final MIN_BOUNCE_FACTOR:F = 0.0f

.field public static final MIN_DENSITY:F = 0.0f

.field public static final MIN_FRICTION:F = 0.0f

.field public static final MIN_MASS:F = 1.0E-6f


# instance fields
.field private final body:Lcom/badlogic/gdx/physics/box2d/Body;

.field private bodyAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

.field private bodyAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

.field private categoryMaskRecord:S

.field private circumference:F

.field private collisionMaskRecord:S

.field private fixtureAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

.field private fixtureAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

.field private final fixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;

.field private gravityScale:F

.field private ifOnEdgeBounce:Z

.field private mass:F

.field private rotationSpeed:F

.field private savedType:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

.field private shapes:[Lcom/badlogic/gdx/physics/box2d/Shape;

.field private tmpVertice:Lcom/badlogic/gdx/math/Vector2;

.field private type:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

.field private velocity:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/Body;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 2
    .param p1, "b"    # Lcom/badlogic/gdx/physics/box2d/Body;
    .param p2, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->collisionMaskRecord:S

    .line 60
    const/4 v1, 0x4

    iput-short v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->categoryMaskRecord:S

    .line 63
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/FixtureDef;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .line 68
    iput-boolean v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->ifOnEdgeBounce:Z

    .line 76
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->velocity:Lcom/badlogic/gdx/math/Vector2;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->rotationSpeed:F

    .line 78
    iput v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->gravityScale:F

    .line 79
    sget-object v0, Lorg/catrobat/catroid/physics/PhysicsObject$Type;->NONE:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->savedType:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    .line 82
    iput-object p1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 83
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/physics/box2d/Body;->setUserData(Ljava/lang/Object;)V

    .line 84
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->mass:F

    .line 85
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    iput v0, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->density:F

    .line 86
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    .line 87
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->restitution:F

    .line 88
    sget-object v0, Lorg/catrobat/catroid/physics/PhysicsObject$Type;->NONE:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setType(Lorg/catrobat/catroid/physics/PhysicsObject$Type;)V

    .line 90
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->tmpVertice:Lcom/badlogic/gdx/math/Vector2;

    .line 91
    return-void
.end method

.method private calculateAabb()V
    .locals 5

    .line 428
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x4f000000

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    .line 429
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, -0x31000000

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

    .line 430
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getTransform()Lcom/badlogic/gdx/physics/box2d/Transform;

    move-result-object v0

    .line 431
    .local v0, "transform":Lcom/badlogic/gdx/physics/box2d/Transform;
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 432
    .local v1, "len":I
    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    .line 433
    .local v2, "fixtures":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/physics/box2d/Fixture;>;"
    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v3, :cond_0

    .line 434
    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    const/4 v4, 0x0

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 435
    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 436
    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 437
    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 439
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 440
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 441
    .local v4, "fixture":Lcom/badlogic/gdx/physics/box2d/Fixture;
    invoke-direct {p0, v4, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->calculateAabb(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;)V

    .line 439
    .end local v4    # "fixture":Lcom/badlogic/gdx/physics/box2d/Fixture;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 443
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private calculateAabb(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;)V
    .locals 6
    .param p1, "fixture"    # Lcom/badlogic/gdx/physics/box2d/Fixture;
    .param p2, "transform"    # Lcom/badlogic/gdx/physics/box2d/Transform;

    .line 446
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x4f000000

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    .line 447
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, -0x31000000

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

    .line 448
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Circle:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    if-ne v0, v1, :cond_0

    .line 449
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getShape()Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    .line 450
    .local v0, "shape":Lcom/badlogic/gdx/physics/box2d/CircleShape;
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->getRadius()F

    move-result v1

    .line 451
    .local v1, "radius":F
    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->tmpVertice:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 452
    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->tmpVertice:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2}, Lcom/badlogic/gdx/physics/box2d/Transform;->getRotation()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->rotate(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {p2}, Lcom/badlogic/gdx/physics/box2d/Transform;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 453
    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->tmpVertice:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v3, v1

    iget-object v4, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->tmpVertice:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 454
    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->tmpVertice:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v3, v1

    iget-object v4, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->tmpVertice:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .end local v0    # "shape":Lcom/badlogic/gdx/physics/box2d/CircleShape;
    .end local v1    # "radius":F
    goto :goto_1

    .line 455
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Polygon:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    if-ne v0, v1, :cond_1

    .line 456
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getShape()Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    .line 457
    .local v0, "shape":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->getVertexCount()I

    move-result v1

    .line 459
    .local v1, "vertexCount":I
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->tmpVertice:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->getVertex(ILcom/badlogic/gdx/math/Vector2;)V

    .line 460
    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->tmpVertice:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 461
    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 462
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 463
    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->tmpVertice:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->getVertex(ILcom/badlogic/gdx/math/Vector2;)V

    .line 464
    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->tmpVertice:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 465
    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->tmpVertice:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 466
    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->tmpVertice:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 467
    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->tmpVertice:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 468
    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->tmpVertice:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    .end local v0    # "shape":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    .end local v1    # "vertexCount":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    nop

    .line 472
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 473
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 474
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 475
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 476
    return-void
.end method

.method private calculateCircumference()V
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->circumference:F

    .line 135
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getBoundaryBoxDimensions()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertNormalToBox2dCoordinate(F)F

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->circumference:F

    .line 138
    return-void
.end method

.method private isStaticObject()Z
    .locals 2

    .line 266
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getMass()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateNonCollidingState()V
    .locals 3

    .line 359
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/catroid/content/Sprite;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 361
    .local v0, "look":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/catrobat/catroid/physics/PhysicsLook;

    if-eqz v1, :cond_0

    .line 362
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->isNonColliding()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/physics/PhysicsLook;->setNonColliding(Z)V

    .line 365
    .end local v0    # "look":Ljava/lang/Object;
    :cond_0
    return-void
.end method


# virtual methods
.method public activateFixed()V
    .locals 1

    .line 413
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getType()Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->savedType:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    .line 414
    sget-object v0, Lorg/catrobat/catroid/physics/PhysicsObject$Type;->FIXED:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setType(Lorg/catrobat/catroid/physics/PhysicsObject$Type;)V

    .line 415
    return-void
.end method

.method public activateHangup()V
    .locals 2

    .line 383
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->velocity:Lcom/badlogic/gdx/math/Vector2;

    .line 384
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getRotationSpeed()F

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->rotationSpeed:F

    .line 385
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getGravityScale()F

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->gravityScale:F

    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setGravityScale(F)V

    .line 388
    invoke-virtual {p0, v0, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setVelocity(FF)V

    .line 389
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setRotationSpeed(F)V

    .line 390
    return-void
.end method

.method public activateNonColliding(Z)V
    .locals 2
    .param p1, "updateState"    # Z

    .line 403
    iget-short v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->categoryMaskRecord:S

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/catrobat/catroid/physics/PhysicsObject;->setCollisionBits(SSZ)V

    .line 404
    return-void
.end method

.method public copyTo(Lorg/catrobat/catroid/physics/PhysicsObject;)V
    .locals 1
    .param p1, "destination"    # Lorg/catrobat/catroid/physics/PhysicsObject;

    .line 94
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getType()Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setType(Lorg/catrobat/catroid/physics/PhysicsObject$Type;)V

    .line 95
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setPosition(Lcom/badlogic/gdx/math/Vector2;)V

    .line 96
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getDirection()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setDirection(F)V

    .line 97
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getMass()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setMass(F)V

    .line 98
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getRotationSpeed()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setRotationSpeed(F)V

    .line 99
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getBounceFactor()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setBounceFactor(F)V

    .line 100
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getFriction()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setFriction(F)V

    .line 101
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setVelocity(Lcom/badlogic/gdx/math/Vector2;)V

    .line 102
    return-void
.end method

.method public deactivateFixed(Z)V
    .locals 1
    .param p1, "record"    # Z

    .line 418
    if-eqz p1, :cond_0

    .line 419
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->savedType:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setType(Lorg/catrobat/catroid/physics/PhysicsObject$Type;)V

    .line 421
    :cond_0
    return-void
.end method

.method public deactivateHangup(Z)V
    .locals 2
    .param p1, "record"    # Z

    .line 393
    if-eqz p1, :cond_0

    .line 394
    iget v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->gravityScale:F

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setGravityScale(F)V

    .line 395
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->velocity:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->velocity:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/physics/PhysicsObject;->setVelocity(FF)V

    .line 396
    iget v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->rotationSpeed:F

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setRotationSpeed(F)V

    goto :goto_0

    .line 398
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setGravityScale(F)V

    .line 400
    :goto_0
    return-void
.end method

.method public deactivateNonColliding(ZZ)V
    .locals 2
    .param p1, "record"    # Z
    .param p2, "updateState"    # Z

    .line 407
    if-eqz p1, :cond_0

    .line 408
    iget-short v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->categoryMaskRecord:S

    iget-short v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->collisionMaskRecord:S

    invoke-virtual {p0, v0, v1, p2}, Lorg/catrobat/catroid/physics/PhysicsObject;->setCollisionBits(SSZ)V

    .line 410
    :cond_0
    return-void
.end method

.method public getBounceFactor()F
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->restitution:F

    return v0
.end method

.method public getBoundaryBox(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1
    .param p1, "lowerLeft"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "upperRight"    # Lcom/badlogic/gdx/math/Vector2;

    .line 368
    invoke-direct {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->calculateAabb()V

    .line 369
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertBox2dToNormalVector(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 370
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertBox2dToNormalVector(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 371
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertBox2dToNormalVector(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 372
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertBox2dToNormalVector(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 373
    return-void
.end method

.method public getBoundaryBoxDimensions()Lcom/badlogic/gdx/math/Vector2;
    .locals 4

    .line 376
    invoke-direct {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->calculateAabb()V

    .line 377
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertBox2dToNormalCoordinate(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 378
    .local v0, "aabbWidth":F
    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbUpperRight:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->bodyAabbLowerLeft:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v2}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertBox2dToNormalCoordinate(F)F

    move-result v2

    add-float/2addr v2, v1

    .line 379
    .local v2, "aabbHeight":F
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    return-object v1
.end method

.method public getCircumference()F
    .locals 1

    .line 192
    iget v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->circumference:F

    invoke-static {v0}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertBox2dToNormalCoordinate(F)F

    move-result v0

    return v0
.end method

.method public getDirection()F
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v0

    invoke-static {v0}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertBox2dToNormalAngle(F)F

    move-result v0

    return v0
.end method

.method public getFriction()F
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    return v0
.end method

.method public getGravityScale()F
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getGravityScale()F

    move-result v0

    return v0
.end method

.method public getMass()F
    .locals 1

    .line 241
    iget v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->mass:F

    return v0
.end method

.method public getMassCenter()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getWorldCenter()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertBox2dToNormalVector(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public getRotationSpeed()F
    .locals 2

    .line 220
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngularVelocity()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getType()Lorg/catrobat/catroid/physics/PhysicsObject$Type;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->type:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    return-object v0
.end method

.method public getVelocity()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertBox2dToNormalVector(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public getX()F
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v0}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertBox2dToNormalCoordinate(F)F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertBox2dToNormalCoordinate(F)F

    move-result v0

    return v0
.end method

.method public isNonColliding()Z
    .locals 1

    .line 424
    iget-short v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->collisionMaskRecord:S

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBounceFactor(F)V
    .locals 2
    .param p1, "bounceFactor"    # F

    .line 300
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 301
    const/4 p1, 0x0

    .line 303
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    iput p1, v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->restitution:F

    .line 304
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 305
    .local v1, "fixture":Lcom/badlogic/gdx/physics/box2d/Fixture;
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->setRestitution(F)V

    .line 306
    .end local v1    # "fixture":Lcom/badlogic/gdx/physics/box2d/Fixture;
    goto :goto_0

    .line 307
    :cond_1
    return-void
.end method

.method protected setCollisionBits(SS)V
    .locals 1
    .param p1, "categoryBits"    # S
    .param p2, "maskBits"    # S

    .line 339
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setCollisionBits(SSZ)V

    .line 340
    return-void
.end method

.method protected setCollisionBits(SSZ)V
    .locals 3
    .param p1, "categoryBits"    # S
    .param p2, "maskBits"    # S
    .param p3, "updateState"    # Z

    .line 343
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iput-short p1, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    .line 344
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iput-short p2, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    .line 346
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 347
    .local v1, "fixture":Lcom/badlogic/gdx/physics/box2d/Fixture;
    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getFilterData()Lcom/badlogic/gdx/physics/box2d/Filter;

    move-result-object v2

    .line 348
    .local v2, "filter":Lcom/badlogic/gdx/physics/box2d/Filter;
    iput-short p1, v2, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    .line 349
    iput-short p2, v2, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    .line 350
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->setFilterData(Lcom/badlogic/gdx/physics/box2d/Filter;)V

    .line 351
    .end local v1    # "fixture":Lcom/badlogic/gdx/physics/box2d/Fixture;
    .end local v2    # "filter":Lcom/badlogic/gdx/physics/box2d/Filter;
    goto :goto_0

    .line 353
    :cond_0
    if-eqz p3, :cond_1

    .line 354
    invoke-direct {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->updateNonCollidingState()V

    .line 356
    :cond_1
    return-void
.end method

.method public setDensity(F)V
    .locals 2
    .param p1, "density"    # F

    .line 271
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 272
    const/4 p1, 0x0

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    iput p1, v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->density:F

    .line 275
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 276
    .local v1, "fixture":Lcom/badlogic/gdx/physics/box2d/Fixture;
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->setDensity(F)V

    .line 277
    .end local v1    # "fixture":Lcom/badlogic/gdx/physics/box2d/Fixture;
    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->resetMassData()V

    .line 279
    return-void
.end method

.method public setDirection(F)V
    .locals 3
    .param p1, "degrees"    # F

    .line 176
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-static {p1}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertNormalToBox2dAngle(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(Lcom/badlogic/gdx/math/Vector2;F)V

    .line 177
    return-void
.end method

.method setFixedRotation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 318
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->setFixedRotation(Z)V

    .line 319
    return-void
.end method

.method public setFriction(F)V
    .locals 2
    .param p1, "friction"    # F

    .line 286
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 287
    const/4 p1, 0x0

    .line 289
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 290
    const/high16 p1, 0x3f800000    # 1.0f

    .line 293
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    iput p1, v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    .line 294
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 295
    .local v1, "fixture":Lcom/badlogic/gdx/physics/box2d/Fixture;
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->setFriction(F)V

    .line 296
    .end local v1    # "fixture":Lcom/badlogic/gdx/physics/box2d/Fixture;
    goto :goto_0

    .line 297
    :cond_2
    return-void
.end method

.method public setGravityScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .line 310
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->setGravityScale(F)V

    .line 311
    return-void
.end method

.method public setIfOnEdgeBounce(ZLorg/catrobat/catroid/content/Sprite;)V
    .locals 2
    .param p1, "bounce"    # Z
    .param p2, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 322
    iget-boolean v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->ifOnEdgeBounce:Z

    if-ne v0, p1, :cond_0

    .line 323
    return-void

    .line 325
    :cond_0
    iput-boolean p1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->ifOnEdgeBounce:Z

    .line 328
    if-eqz p1, :cond_1

    .line 329
    const/4 v0, -0x1

    .line 330
    .local v0, "maskBits":S
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/physics/box2d/Body;->setUserData(Ljava/lang/Object;)V

    goto :goto_0

    .line 332
    .end local v0    # "maskBits":S
    :cond_1
    const/4 v0, -0x3

    .line 335
    .restart local v0    # "maskBits":S
    :goto_0
    iget-short v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->categoryMaskRecord:S

    invoke-virtual {p0, v1, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setCollisionBits(SS)V

    .line 336
    return-void
.end method

.method public setMass(F)V
    .locals 2
    .param p1, "mass"    # F

    .line 249
    iput p1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->mass:F

    .line 251
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const v1, 0x358637bd    # 1.0E-6f

    if-gez v0, :cond_0

    .line 252
    iput v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->mass:F

    .line 254
    :cond_0
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 255
    const p1, 0x358637bd    # 1.0E-6f

    .line 257
    :cond_1
    invoke-direct {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->isStaticObject()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    return-void

    .line 260
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getMass()F

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    iget v1, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->density:F

    div-float/2addr v0, v1

    .line 261
    .local v0, "area":F
    div-float v1, p1, v0

    .line 262
    .local v1, "density":F
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/physics/PhysicsObject;->setDensity(F)V

    .line 263
    return-void
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 210
    invoke-static {p1}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertNormalToBox2dCoordinate(F)F

    move-result p1

    .line 211
    invoke-static {p2}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertNormalToBox2dCoordinate(F)F

    move-result p2

    .line 212
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(FFF)V

    .line 213
    return-void
.end method

.method public setPosition(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;

    .line 216
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/physics/PhysicsObject;->setPosition(FF)V

    .line 217
    return-void
.end method

.method public setRotationSpeed(F)V
    .locals 3
    .param p1, "degreesPerSecond"    # F

    .line 224
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->setAngularVelocity(F)V

    .line 225
    return-void
.end method

.method public setShape([Lcom/badlogic/gdx/physics/box2d/Shape;)V
    .locals 5
    .param p1, "shapes"    # [Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 105
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->shapes:[Lcom/badlogic/gdx/physics/box2d/Shape;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    return-void

    .line 109
    :cond_0
    if-eqz p1, :cond_1

    .line 110
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/physics/box2d/Shape;

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->shapes:[Lcom/badlogic/gdx/physics/box2d/Shape;

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->shapes:[Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 115
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_2

    .line 116
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 117
    .local v0, "oldFixture":Lcom/badlogic/gdx/physics/box2d/Fixture;
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/physics/box2d/Body;->destroyFixture(Lcom/badlogic/gdx/physics/box2d/Fixture;)V

    .line 118
    .end local v0    # "oldFixture":Lcom/badlogic/gdx/physics/box2d/Fixture;
    goto :goto_0

    .line 120
    :cond_2
    if-eqz p1, :cond_3

    .line 121
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 122
    .local v2, "tempShape":Lcom/badlogic/gdx/physics/box2d/Shape;
    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    iput-object v2, v3, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 123
    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v4, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->fixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 121
    .end local v2    # "tempShape":Lcom/badlogic/gdx/physics/box2d/Shape;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    :cond_3
    iget v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->mass:F

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setMass(F)V

    .line 128
    invoke-direct {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->calculateCircumference()V

    .line 129
    return-void
.end method

.method public setType(Lorg/catrobat/catroid/physics/PhysicsObject$Type;)V
    .locals 4
    .param p1, "type"    # Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    .line 145
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->type:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    if-ne v0, p1, :cond_0

    .line 146
    return-void

    .line 148
    :cond_0
    iput-object p1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->type:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    .line 150
    sget-object v0, Lorg/catrobat/catroid/physics/PhysicsObject$1;->$SwitchMap$org$catrobat$catroid$physics$PhysicsObject$Type:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/physics/PhysicsObject$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->setType(Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)V

    .line 164
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->collisionMaskRecord:S

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->setType(Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)V

    .line 160
    iput-short v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->collisionMaskRecord:S

    .line 161
    goto :goto_0

    .line 152
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->DynamicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/physics/box2d/Body;->setType(Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)V

    .line 153
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/physics/box2d/Body;->setGravityScale(F)V

    .line 154
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->setBullet(Z)V

    .line 155
    iget v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->mass:F

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setMass(F)V

    .line 156
    iput-short v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->collisionMaskRecord:S

    .line 157
    nop

    .line 167
    :goto_0
    invoke-direct {p0}, Lorg/catrobat/catroid/physics/PhysicsObject;->calculateCircumference()V

    .line 168
    iget-short v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->categoryMaskRecord:S

    iget-short v1, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->collisionMaskRecord:S

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/physics/PhysicsObject;->setCollisionBits(SS)V

    .line 169
    return-void
.end method

.method public setVelocity(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 232
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-static {p1}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertNormalToBox2dCoordinate(F)F

    move-result v1

    .line 233
    invoke-static {p2}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertNormalToBox2dCoordinate(F)F

    move-result v2

    .line 232
    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(FF)V

    .line 234
    return-void
.end method

.method public setVelocity(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .param p1, "velocity"    # Lcom/badlogic/gdx/math/Vector2;

    .line 237
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/physics/PhysicsObject;->setVelocity(FF)V

    .line 238
    return-void
.end method

.method public setX(F)V
    .locals 4
    .param p1, "x"    # F

    .line 200
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-static {p1}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertNormalToBox2dCoordinate(F)F

    move-result v1

    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 201
    invoke-virtual {v3}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v3

    .line 200
    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(FFF)V

    .line 202
    return-void
.end method

.method public setY(F)V
    .locals 4
    .param p1, "y"    # F

    .line 205
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {p1}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertNormalToBox2dCoordinate(F)F

    move-result v2

    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 206
    invoke-virtual {v3}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v3

    .line 205
    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(FFF)V

    .line 207
    return-void
.end method
