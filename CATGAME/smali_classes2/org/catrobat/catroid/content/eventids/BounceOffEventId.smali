.class public Lorg/catrobat/catroid/content/eventids/BounceOffEventId;
.super Lorg/catrobat/catroid/content/eventids/EventId;
.source "BounceOffEventId.java"


# instance fields
.field public final bouncingSprite:Lorg/catrobat/catroid/content/Sprite;

.field public final staticSprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "bouncingSprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "staticSprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 33
    invoke-direct {p0}, Lorg/catrobat/catroid/content/eventids/EventId;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/content/eventids/BounceOffEventId;->bouncingSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 35
    iput-object p2, p0, Lorg/catrobat/catroid/content/eventids/BounceOffEventId;->staticSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 40
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 41
    return v0

    .line 43
    :cond_0
    instance-of v1, p1, Lorg/catrobat/catroid/content/eventids/BounceOffEventId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 44
    return v2

    .line 46
    :cond_1
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/eventids/EventId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 47
    return v2

    .line 49
    :cond_2
    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/content/eventids/BounceOffEventId;

    .line 50
    .local v1, "that":Lorg/catrobat/catroid/content/eventids/BounceOffEventId;
    iget-object v3, p0, Lorg/catrobat/catroid/content/eventids/BounceOffEventId;->bouncingSprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v4, v1, Lorg/catrobat/catroid/content/eventids/BounceOffEventId;->bouncingSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/catrobat/catroid/content/eventids/BounceOffEventId;->staticSprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v4, v1, Lorg/catrobat/catroid/content/eventids/BounceOffEventId;->staticSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 51
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    .line 50
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Lorg/catrobat/catroid/content/eventids/EventId;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/catrobat/catroid/content/eventids/BounceOffEventId;->bouncingSprite:Lorg/catrobat/catroid/content/Sprite;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/catrobat/catroid/content/eventids/BounceOffEventId;->staticSprite:Lorg/catrobat/catroid/content/Sprite;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
