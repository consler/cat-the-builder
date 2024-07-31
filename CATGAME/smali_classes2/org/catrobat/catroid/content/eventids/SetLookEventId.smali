.class public Lorg/catrobat/catroid/content/eventids/SetLookEventId;
.super Lorg/catrobat/catroid/content/eventids/EventId;
.source "SetLookEventId.java"


# instance fields
.field public final lookData:Lorg/catrobat/catroid/common/LookData;

.field public final sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/common/LookData;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "lookData"    # Lorg/catrobat/catroid/common/LookData;

    .line 33
    invoke-direct {p0}, Lorg/catrobat/catroid/content/eventids/EventId;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/content/eventids/SetLookEventId;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 35
    iput-object p2, p0, Lorg/catrobat/catroid/content/eventids/SetLookEventId;->lookData:Lorg/catrobat/catroid/common/LookData;

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
    instance-of v1, p1, Lorg/catrobat/catroid/content/eventids/SetLookEventId;

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

    .line 50
    :cond_2
    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/content/eventids/SetLookEventId;

    .line 52
    .local v1, "that":Lorg/catrobat/catroid/content/eventids/SetLookEventId;
    iget-object v3, p0, Lorg/catrobat/catroid/content/eventids/SetLookEventId;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v4, v1, Lorg/catrobat/catroid/content/eventids/SetLookEventId;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Sprite;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/catrobat/catroid/content/eventids/SetLookEventId;->lookData:Lorg/catrobat/catroid/common/LookData;

    iget-object v4, v1, Lorg/catrobat/catroid/content/eventids/SetLookEventId;->lookData:Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/common/LookData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 57
    invoke-super {p0}, Lorg/catrobat/catroid/content/eventids/EventId;->hashCode()I

    move-result v0

    .line 58
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/content/eventids/SetLookEventId;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 59
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/content/eventids/SetLookEventId;->lookData:Lorg/catrobat/catroid/common/LookData;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/LookData;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    .line 60
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
