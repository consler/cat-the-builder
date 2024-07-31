.class public Lorg/catrobat/catroid/content/eventids/EventId;
.super Ljava/lang/Object;
.source "EventId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/eventids/EventId$EventType;
    }
.end annotation


# static fields
.field public static final ANY_NFC:I = 0x5

.field public static final OTHER:I = 0x0

.field public static final START:I = 0x3

.field public static final START_AS_CLONE:I = 0x4

.field public static final TAP:I = 0x1

.field public static final TAP_BACKGROUND:I = 0x2


# instance fields
.field private final type:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/content/eventids/EventId;->type:I

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lorg/catrobat/catroid/content/eventids/EventId;->type:I

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 56
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 57
    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lorg/catrobat/catroid/content/eventids/EventId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 60
    return v2

    .line 63
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/content/eventids/EventId;

    .line 65
    .local v1, "eventId":Lorg/catrobat/catroid/content/eventids/EventId;
    iget v3, p0, Lorg/catrobat/catroid/content/eventids/EventId;->type:I

    iget v4, v1, Lorg/catrobat/catroid/content/eventids/EventId;->type:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/catrobat/catroid/content/eventids/EventId;->type:I

    return v0
.end method
