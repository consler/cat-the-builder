.class public Lorg/catrobat/catroid/content/eventids/WhenConditionEventId;
.super Lorg/catrobat/catroid/content/eventids/EventId;
.source "WhenConditionEventId.java"


# instance fields
.field final formula:Lorg/catrobat/catroid/formulaeditor/Formula;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 31
    invoke-direct {p0}, Lorg/catrobat/catroid/content/eventids/EventId;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/catrobat/catroid/content/eventids/WhenConditionEventId;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 37
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 38
    return v0

    .line 40
    :cond_0
    instance-of v1, p1, Lorg/catrobat/catroid/content/eventids/WhenConditionEventId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 41
    return v2

    .line 43
    :cond_1
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/eventids/EventId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 44
    return v2

    .line 47
    :cond_2
    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/content/eventids/WhenConditionEventId;

    .line 49
    .local v1, "that":Lorg/catrobat/catroid/content/eventids/WhenConditionEventId;
    iget-object v3, p0, Lorg/catrobat/catroid/content/eventids/WhenConditionEventId;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v3, :cond_3

    iget-object v0, v1, Lorg/catrobat/catroid/content/eventids/WhenConditionEventId;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v3, v1, Lorg/catrobat/catroid/content/eventids/WhenConditionEventId;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 54
    invoke-super {p0}, Lorg/catrobat/catroid/content/eventids/EventId;->hashCode()I

    move-result v0

    .line 55
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/content/eventids/WhenConditionEventId;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 56
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
