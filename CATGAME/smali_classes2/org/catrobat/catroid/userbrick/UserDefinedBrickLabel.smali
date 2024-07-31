.class public Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;
.super Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
.source "UserDefinedBrickLabel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "userDefinedBrickLabel"
.end annotation


# instance fields
.field private label:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "label"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;->label:Ljava/lang/String;

    .line 42
    sget-object v0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;->LABEL:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    iput-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;->type:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;)V
    .locals 1
    .param p1, "userDefinedBrickLabel"    # Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;

    .line 45
    invoke-direct {p0}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;-><init>()V

    .line 46
    iget-object v0, p1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;->label:Ljava/lang/String;

    iput-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;->label:Ljava/lang/String;

    .line 47
    sget-object v0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;->LABEL:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    iput-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;->type:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 56
    instance-of v0, p1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;

    if-eqz v0, :cond_0

    .line 57
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;

    .line 58
    .local v0, "other":Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;
    iget-object v1, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;->label:Ljava/lang/String;

    iget-object v2, v0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 60
    .end local v0    # "other":Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;->label:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
