.class public Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;
.super Lorg/catrobat/catroid/content/eventids/EventId;
.source "UserDefinedBrickEventId.java"


# instance fields
.field public userBrickParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final userDefinedBrickID:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;)V
    .locals 1
    .param p1, "userDefinedBrickID"    # Ljava/util/UUID;

    .line 39
    invoke-direct {p0}, Lorg/catrobat/catroid/content/eventids/EventId;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;->userDefinedBrickID:Ljava/util/UUID;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;->userBrickParameters:Ljava/util/List;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/List;)V
    .locals 0
    .param p1, "userDefinedBrickID"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p2, "userBrickParameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/catrobat/catroid/content/eventids/EventId;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;->userDefinedBrickID:Ljava/util/UUID;

    .line 36
    iput-object p2, p0, Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;->userBrickParameters:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 46
    if-ne p0, p1, :cond_0

    .line 47
    const/4 v0, 0x1

    return v0

    .line 49
    :cond_0
    instance-of v0, p1, Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;

    if-nez v0, :cond_1

    .line 50
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;

    .line 55
    .local v0, "that":Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;
    iget-object v1, p0, Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;->userDefinedBrickID:Ljava/util/UUID;

    iget-object v2, v0, Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;->userDefinedBrickID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;->userDefinedBrickID:Ljava/util/UUID;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
