.class public Lorg/catrobat/catroid/common/NfcTagData;
.super Ljava/lang/Object;
.source "NfcTagData.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;
.implements Lorg/catrobat/catroid/common/Nameable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Lorg/catrobat/catroid/common/NfcTagData;",
        ">;",
        "Lorg/catrobat/catroid/common/Nameable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private name:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lorg/catrobat/catroid/common/NfcTagData;->clone()Lorg/catrobat/catroid/common/NfcTagData;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/common/NfcTagData;
    .locals 2

    .line 38
    new-instance v0, Lorg/catrobat/catroid/common/NfcTagData;

    invoke-direct {v0}, Lorg/catrobat/catroid/common/NfcTagData;-><init>()V

    .line 40
    .local v0, "cloneNfcTagData":Lorg/catrobat/catroid/common/NfcTagData;
    iget-object v1, p0, Lorg/catrobat/catroid/common/NfcTagData;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/catrobat/catroid/common/NfcTagData;->name:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lorg/catrobat/catroid/common/NfcTagData;->uid:Ljava/lang/String;

    iput-object v1, v0, Lorg/catrobat/catroid/common/NfcTagData;->uid:Ljava/lang/String;

    .line 43
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lorg/catrobat/catroid/common/NfcTagData;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/common/NfcTagData;->compareTo(Lorg/catrobat/catroid/common/NfcTagData;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/catrobat/catroid/common/NfcTagData;)I
    .locals 2
    .param p1, "nfcTagData"    # Lorg/catrobat/catroid/common/NfcTagData;

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/common/NfcTagData;->uid:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/common/NfcTagData;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 77
    instance-of v0, p1, Lorg/catrobat/catroid/common/NfcTagData;

    if-eqz v0, :cond_0

    .line 78
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/common/NfcTagData;

    .line 79
    .local v0, "nfcTagData":Lorg/catrobat/catroid/common/NfcTagData;
    iget-object v1, p0, Lorg/catrobat/catroid/common/NfcTagData;->uid:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/NfcTagData;->getNfcTagUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 81
    .end local v0    # "nfcTagData":Lorg/catrobat/catroid/common/NfcTagData;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/catrobat/catroid/common/NfcTagData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNfcTagUid()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/catrobat/catroid/common/NfcTagData;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/catrobat/catroid/common/NfcTagData;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/catrobat/catroid/common/NfcTagData;->uid:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lorg/catrobat/catroid/common/NfcTagData;->name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setNfcTagUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lorg/catrobat/catroid/common/NfcTagData;->uid:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/catrobat/catroid/common/NfcTagData;->name:Ljava/lang/String;

    return-object v0
.end method
