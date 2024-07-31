.class public Lorg/catrobat/catroid/physics/PhysicalCollision;
.super Ljava/lang/Object;
.source "PhysicalCollision.java"


# instance fields
.field private contactCounter:I

.field private objects:Lorg/catrobat/catroid/physics/CollidingSprites;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/physics/CollidingSprites;)V
    .locals 1
    .param p1, "objects"    # Lorg/catrobat/catroid/physics/CollidingSprites;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/physics/PhysicalCollision;->contactCounter:I

    .line 39
    iput-object p1, p0, Lorg/catrobat/catroid/physics/PhysicalCollision;->objects:Lorg/catrobat/catroid/physics/CollidingSprites;

    .line 40
    return-void
.end method

.method public static fireBounceOffEvent(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 3
    .param p0, "bouncingSprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p1, "staticSprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 73
    new-instance v0, Lorg/catrobat/catroid/content/eventids/BounceOffEventId;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/content/eventids/BounceOffEventId;-><init>(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V

    .line 74
    .local v0, "identifier":Lorg/catrobat/catroid/content/eventids/BounceOffEventId;
    new-instance v1, Lorg/catrobat/catroid/content/EventWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/catrobat/catroid/content/EventWrapper;-><init>(Lorg/catrobat/catroid/content/eventids/EventId;Z)V

    .line 75
    .local v1, "event":Lorg/catrobat/catroid/content/EventWrapper;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/content/Project;->fireToAllSprites(Lorg/catrobat/catroid/content/EventWrapper;)V

    .line 76
    return-void
.end method

.method private sendBounceOffEvent(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 1
    .param p1, "spriteBouncingOff"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "otherSprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 62
    iget-boolean v0, p1, Lorg/catrobat/catroid/content/Sprite;->isClone:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p1, Lorg/catrobat/catroid/content/Sprite;->myOriginal:Lorg/catrobat/catroid/content/Sprite;

    invoke-static {v0, p2}, Lorg/catrobat/catroid/physics/PhysicalCollision;->fireBounceOffEvent(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V

    .line 65
    :cond_0
    iget-boolean v0, p2, Lorg/catrobat/catroid/content/Sprite;->isClone:Z

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p2, Lorg/catrobat/catroid/content/Sprite;->myOriginal:Lorg/catrobat/catroid/content/Sprite;

    invoke-static {p1, v0}, Lorg/catrobat/catroid/physics/PhysicalCollision;->fireBounceOffEvent(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V

    .line 68
    :cond_1
    invoke-static {p1, p2}, Lorg/catrobat/catroid/physics/PhysicalCollision;->fireBounceOffEvent(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V

    .line 69
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/catrobat/catroid/physics/PhysicalCollision;->fireBounceOffEvent(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V

    .line 70
    return-void
.end method


# virtual methods
.method decreaseContactCounter()V
    .locals 1

    .line 47
    iget v0, p0, Lorg/catrobat/catroid/physics/PhysicalCollision;->contactCounter:I

    if-lez v0, :cond_0

    .line 48
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/physics/PhysicalCollision;->contactCounter:I

    .line 50
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 89
    if-ne p0, p1, :cond_0

    .line 90
    const/4 v0, 0x1

    return v0

    .line 92
    :cond_0
    instance-of v0, p1, Lorg/catrobat/catroid/physics/PhysicalCollision;

    if-nez v0, :cond_1

    .line 93
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/physics/PhysicalCollision;

    .line 96
    .local v0, "collision":Lorg/catrobat/catroid/physics/PhysicalCollision;
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicalCollision;->objects:Lorg/catrobat/catroid/physics/CollidingSprites;

    iget-object v2, v0, Lorg/catrobat/catroid/physics/PhysicalCollision;->objects:Lorg/catrobat/catroid/physics/CollidingSprites;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getContactCounter()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/catrobat/catroid/physics/PhysicalCollision;->contactCounter:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicalCollision;->objects:Lorg/catrobat/catroid/physics/CollidingSprites;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method increaseContactCounter()V
    .locals 1

    .line 43
    iget v0, p0, Lorg/catrobat/catroid/physics/PhysicalCollision;->contactCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/physics/PhysicalCollision;->contactCounter:I

    .line 44
    return-void
.end method

.method sendBounceOffEvents()V
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicalCollision;->objects:Lorg/catrobat/catroid/physics/CollidingSprites;

    iget-object v0, v0, Lorg/catrobat/catroid/physics/CollidingSprites;->sprite1:Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicalCollision;->objects:Lorg/catrobat/catroid/physics/CollidingSprites;

    iget-object v1, v1, Lorg/catrobat/catroid/physics/CollidingSprites;->sprite2:Lorg/catrobat/catroid/content/Sprite;

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/physics/PhysicalCollision;->sendBounceOffEvent(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V

    .line 58
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicalCollision;->objects:Lorg/catrobat/catroid/physics/CollidingSprites;

    iget-object v0, v0, Lorg/catrobat/catroid/physics/CollidingSprites;->sprite2:Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicalCollision;->objects:Lorg/catrobat/catroid/physics/CollidingSprites;

    iget-object v1, v1, Lorg/catrobat/catroid/physics/CollidingSprites;->sprite1:Lorg/catrobat/catroid/content/Sprite;

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/physics/PhysicalCollision;->sendBounceOffEvent(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 79
    const-string v0, "PhysicalCollision:\n     sprite1: %s\n     sprite2: %s\n     contactCounter: %s\n"

    .line 84
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicalCollision;->objects:Lorg/catrobat/catroid/physics/CollidingSprites;

    iget-object v2, v2, Lorg/catrobat/catroid/physics/CollidingSprites;->sprite1:Lorg/catrobat/catroid/content/Sprite;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicalCollision;->objects:Lorg/catrobat/catroid/physics/CollidingSprites;

    iget-object v2, v2, Lorg/catrobat/catroid/physics/CollidingSprites;->sprite2:Lorg/catrobat/catroid/content/Sprite;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lorg/catrobat/catroid/physics/PhysicalCollision;->contactCounter:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
