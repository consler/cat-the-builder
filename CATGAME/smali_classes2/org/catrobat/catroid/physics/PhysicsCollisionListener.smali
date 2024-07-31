.class public Lorg/catrobat/catroid/physics/PhysicsCollisionListener;
.super Ljava/lang/Object;
.source "PhysicsCollisionListener.java"

# interfaces
.implements Lcom/badlogic/gdx/physics/box2d/ContactListener;


# static fields
.field public static final COLLISION_MESSAGE_CONNECTOR:Ljava/lang/String; = "<\t-\t>"

.field public static final COLLISION_MESSAGE_ESCAPE_CHAR:Ljava/lang/String; = "\t"


# instance fields
.field private collidingSpritesToCollisionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/catrobat/catroid/physics/CollidingSprites;",
            "Lorg/catrobat/catroid/physics/PhysicalCollision;",
            ">;"
        }
    .end annotation
.end field

.field private physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/physics/PhysicsWorld;)V
    .locals 1
    .param p1, "physicsWorld"    # Lorg/catrobat/catroid/physics/PhysicsWorld;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsCollisionListener;->collidingSpritesToCollisionMap:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lorg/catrobat/catroid/physics/PhysicsCollisionListener;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    .line 46
    return-void
.end method

.method private registerContact(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 3
    .param p1, "sprite1"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sprite2"    # Lorg/catrobat/catroid/content/Sprite;

    .line 51
    new-instance v0, Lorg/catrobat/catroid/physics/CollidingSprites;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/catroid/physics/CollidingSprites;-><init>(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V

    .line 52
    .local v0, "collidingSprites":Lorg/catrobat/catroid/physics/CollidingSprites;
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsCollisionListener;->collidingSpritesToCollisionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsCollisionListener;->collidingSpritesToCollisionMap:Ljava/util/Map;

    new-instance v2, Lorg/catrobat/catroid/physics/PhysicalCollision;

    invoke-direct {v2, v0}, Lorg/catrobat/catroid/physics/PhysicalCollision;-><init>(Lorg/catrobat/catroid/physics/CollidingSprites;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsCollisionListener;->collidingSpritesToCollisionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/physics/PhysicalCollision;

    invoke-virtual {v1}, Lorg/catrobat/catroid/physics/PhysicalCollision;->increaseContactCounter()V

    .line 56
    return-void
.end method

.method private unregisterContact(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 3
    .param p1, "sprite1"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sprite2"    # Lorg/catrobat/catroid/content/Sprite;

    .line 59
    new-instance v0, Lorg/catrobat/catroid/physics/CollidingSprites;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/catroid/physics/CollidingSprites;-><init>(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V

    .line 60
    .local v0, "collidingSprites":Lorg/catrobat/catroid/physics/CollidingSprites;
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsCollisionListener;->collidingSpritesToCollisionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsCollisionListener;->collidingSpritesToCollisionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/physics/PhysicalCollision;

    .line 62
    .local v1, "physicalCollision":Lorg/catrobat/catroid/physics/PhysicalCollision;
    invoke-virtual {v1}, Lorg/catrobat/catroid/physics/PhysicalCollision;->decreaseContactCounter()V

    .line 64
    invoke-virtual {v1}, Lorg/catrobat/catroid/physics/PhysicalCollision;->getContactCounter()I

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-virtual {v1}, Lorg/catrobat/catroid/physics/PhysicalCollision;->sendBounceOffEvents()V

    .line 66
    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicsCollisionListener;->collidingSpritesToCollisionMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .end local v1    # "physicalCollision":Lorg/catrobat/catroid/physics/PhysicalCollision;
    :cond_0
    return-void
.end method


# virtual methods
.method public beginContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V
    .locals 5
    .param p1, "contact"    # Lcom/badlogic/gdx/physics/box2d/Contact;

    .line 73
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureA()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    .line 74
    .local v0, "a":Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureB()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    .line 76
    .local v1, "b":Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/catrobat/catroid/content/Sprite;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicsCollisionListener;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/physics/PhysicsWorld;->bouncedOnEdge(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/catrobat/catroid/content/Sprite;

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicsCollisionListener;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/physics/PhysicsWorld;->bouncedOnEdge(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/catrobat/catroid/content/Sprite;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/catrobat/catroid/content/Sprite;

    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    .line 82
    .local v2, "sprite1":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 83
    .local v3, "sprite2":Lorg/catrobat/catroid/content/Sprite;
    invoke-direct {p0, v2, v3}, Lorg/catrobat/catroid/physics/PhysicsCollisionListener;->registerContact(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V

    .line 85
    .end local v2    # "sprite1":Lorg/catrobat/catroid/content/Sprite;
    .end local v3    # "sprite2":Lorg/catrobat/catroid/content/Sprite;
    :cond_2
    :goto_0
    return-void
.end method

.method public endContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V
    .locals 4
    .param p1, "contact"    # Lcom/badlogic/gdx/physics/box2d/Contact;

    .line 89
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureA()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    .line 90
    .local v0, "a":Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureB()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    .line 92
    .local v1, "b":Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/catrobat/catroid/content/Sprite;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/catrobat/catroid/content/Sprite;

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    .line 94
    .local v2, "sprite1":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 95
    .local v3, "sprite2":Lorg/catrobat/catroid/content/Sprite;
    invoke-direct {p0, v2, v3}, Lorg/catrobat/catroid/physics/PhysicsCollisionListener;->unregisterContact(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V

    .line 97
    .end local v2    # "sprite1":Lorg/catrobat/catroid/content/Sprite;
    .end local v3    # "sprite2":Lorg/catrobat/catroid/content/Sprite;
    :cond_0
    return-void
.end method

.method public postSolve(Lcom/badlogic/gdx/physics/box2d/Contact;Lcom/badlogic/gdx/physics/box2d/ContactImpulse;)V
    .locals 0
    .param p1, "contact"    # Lcom/badlogic/gdx/physics/box2d/Contact;
    .param p2, "impulse"    # Lcom/badlogic/gdx/physics/box2d/ContactImpulse;

    .line 105
    return-void
.end method

.method public preSolve(Lcom/badlogic/gdx/physics/box2d/Contact;Lcom/badlogic/gdx/physics/box2d/Manifold;)V
    .locals 0
    .param p1, "contact"    # Lcom/badlogic/gdx/physics/box2d/Contact;
    .param p2, "oldManifold"    # Lcom/badlogic/gdx/physics/box2d/Manifold;

    .line 101
    return-void
.end method
