.class public Lorg/catrobat/catroid/content/eventids/GamepadEventId;
.super Lorg/catrobat/catroid/content/eventids/EventId;
.source "GamepadEventId.java"


# instance fields
.field final buttonPressed:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonPressed"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lorg/catrobat/catroid/content/eventids/EventId;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/catrobat/catroid/content/eventids/GamepadEventId;->buttonPressed:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 37
    if-ne p0, p1, :cond_0

    .line 38
    const/4 v0, 0x1

    return v0

    .line 40
    :cond_0
    instance-of v0, p1, Lorg/catrobat/catroid/content/eventids/GamepadEventId;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 41
    return v1

    .line 43
    :cond_1
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/eventids/EventId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 44
    return v1

    .line 46
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/content/eventids/GamepadEventId;

    .line 47
    .local v0, "that":Lorg/catrobat/catroid/content/eventids/GamepadEventId;
    iget-object v1, p0, Lorg/catrobat/catroid/content/eventids/GamepadEventId;->buttonPressed:Ljava/lang/String;

    iget-object v2, v0, Lorg/catrobat/catroid/content/eventids/GamepadEventId;->buttonPressed:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Lorg/catrobat/catroid/content/eventids/EventId;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/catrobat/catroid/content/eventids/GamepadEventId;->buttonPressed:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
