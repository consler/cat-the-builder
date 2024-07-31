.class public final Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;
.super Ljava/lang/Object;
.source "StringOption.java"

# interfaces
.implements Lorg/catrobat/catroid/common/Nameable;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;->name:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 50
    instance-of v0, p1, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;->name:Ljava/lang/String;

    .line 46
    return-void
.end method
