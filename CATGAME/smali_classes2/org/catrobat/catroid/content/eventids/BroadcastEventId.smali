.class public Lorg/catrobat/catroid/content/eventids/BroadcastEventId;
.super Lorg/catrobat/catroid/content/eventids/EventId;
.source "BroadcastEventId.java"


# instance fields
.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Lorg/catrobat/catroid/content/eventids/EventId;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/catrobat/catroid/content/eventids/BroadcastEventId;->message:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 34
    if-ne p0, p1, :cond_0

    .line 35
    const/4 v0, 0x1

    return v0

    .line 37
    :cond_0
    instance-of v0, p1, Lorg/catrobat/catroid/content/eventids/BroadcastEventId;

    if-nez v0, :cond_1

    .line 38
    const/4 v0, 0x0

    return v0

    .line 41
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/content/eventids/BroadcastEventId;

    .line 43
    .local v0, "that":Lorg/catrobat/catroid/content/eventids/BroadcastEventId;
    iget-object v1, p0, Lorg/catrobat/catroid/content/eventids/BroadcastEventId;->message:Ljava/lang/String;

    iget-object v2, v0, Lorg/catrobat/catroid/content/eventids/BroadcastEventId;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/content/eventids/BroadcastEventId;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
