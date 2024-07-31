.class public Lorg/catrobat/catroid/physics/CollidingSprites;
.super Ljava/lang/Object;
.source "CollidingSprites.java"


# instance fields
.field public final sprite1:Lorg/catrobat/catroid/content/Sprite;

.field public final sprite2:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite1"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sprite2"    # Lorg/catrobat/catroid/content/Sprite;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/physics/CollidingSprites;->sprite1:Lorg/catrobat/catroid/content/Sprite;

    .line 36
    iput-object p2, p0, Lorg/catrobat/catroid/physics/CollidingSprites;->sprite2:Lorg/catrobat/catroid/content/Sprite;

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 41
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 42
    return v0

    .line 44
    :cond_0
    instance-of v1, p1, Lorg/catrobat/catroid/physics/CollidingSprites;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 45
    return v2

    .line 47
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/physics/CollidingSprites;

    .line 48
    .local v1, "that":Lorg/catrobat/catroid/physics/CollidingSprites;
    iget-object v3, p0, Lorg/catrobat/catroid/physics/CollidingSprites;->sprite1:Lorg/catrobat/catroid/content/Sprite;

    iget-object v4, v1, Lorg/catrobat/catroid/physics/CollidingSprites;->sprite1:Lorg/catrobat/catroid/content/Sprite;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/catrobat/catroid/physics/CollidingSprites;->sprite2:Lorg/catrobat/catroid/content/Sprite;

    iget-object v4, v1, Lorg/catrobat/catroid/physics/CollidingSprites;->sprite2:Lorg/catrobat/catroid/content/Sprite;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lorg/catrobat/catroid/physics/CollidingSprites;->sprite2:Lorg/catrobat/catroid/content/Sprite;

    iget-object v4, v1, Lorg/catrobat/catroid/physics/CollidingSprites;->sprite1:Lorg/catrobat/catroid/content/Sprite;

    .line 49
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/catrobat/catroid/physics/CollidingSprites;->sprite1:Lorg/catrobat/catroid/content/Sprite;

    iget-object v4, v1, Lorg/catrobat/catroid/physics/CollidingSprites;->sprite2:Lorg/catrobat/catroid/content/Sprite;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    move v0, v2

    .line 48
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 54
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/catrobat/catroid/physics/CollidingSprites;->sprite1:Lorg/catrobat/catroid/content/Sprite;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/catrobat/catroid/physics/CollidingSprites;->sprite2:Lorg/catrobat/catroid/content/Sprite;

    aput-object v2, v0, v3

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
