.class public Lorg/catrobat/catroid/content/eventids/RaspiEventId;
.super Lorg/catrobat/catroid/content/eventids/EventId;
.source "RaspiEventId.java"


# instance fields
.field private final eventValue:Ljava/lang/String;

.field private final pin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "eventValue"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lorg/catrobat/catroid/content/eventids/EventId;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/catrobat/catroid/content/eventids/RaspiEventId;->pin:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lorg/catrobat/catroid/content/eventids/RaspiEventId;->eventValue:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 38
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 39
    return v0

    .line 41
    :cond_0
    instance-of v1, p1, Lorg/catrobat/catroid/content/eventids/RaspiEventId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 42
    return v2

    .line 44
    :cond_1
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/eventids/EventId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    return v2

    .line 47
    :cond_2
    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/content/eventids/RaspiEventId;

    .line 48
    .local v1, "that":Lorg/catrobat/catroid/content/eventids/RaspiEventId;
    iget-object v3, p0, Lorg/catrobat/catroid/content/eventids/RaspiEventId;->pin:Ljava/lang/String;

    iget-object v4, v1, Lorg/catrobat/catroid/content/eventids/RaspiEventId;->pin:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/catrobat/catroid/content/eventids/RaspiEventId;->eventValue:Ljava/lang/String;

    iget-object v4, v1, Lorg/catrobat/catroid/content/eventids/RaspiEventId;->eventValue:Ljava/lang/String;

    .line 49
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    .line 48
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/content/eventids/RaspiEventId;->pin:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 55
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/catrobat/catroid/content/eventids/RaspiEventId;->eventValue:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    .line 56
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method
