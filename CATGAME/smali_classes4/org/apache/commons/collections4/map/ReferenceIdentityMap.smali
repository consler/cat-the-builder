.class public Lorg/apache/commons/collections4/map/ReferenceIdentityMap;
.super Lorg/apache/commons/collections4/map/AbstractReferenceMap;
.source "ReferenceIdentityMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractReferenceMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x11926938050d2f1cL


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/map/ReferenceIdentityMap;, "Lorg/apache/commons/collections4/map/ReferenceIdentityMap<TK;TV;>;"
    sget-object v1, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    sget-object v2, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->SOFT:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;)V
    .locals 6
    .param p1, "keyType"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .param p2, "valueType"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    .line 107
    .local p0, "this":Lorg/apache/commons/collections4/map/ReferenceIdentityMap;, "Lorg/apache/commons/collections4/map/ReferenceIdentityMap<TK;TV;>;"
    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IF)V
    .locals 6
    .param p1, "keyType"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .param p2, "valueType"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .param p3, "capacity"    # I
    .param p4, "loadFactor"    # F

    .line 147
    .local p0, "this":Lorg/apache/commons/collections4/map/ReferenceIdentityMap;, "Lorg/apache/commons/collections4/map/ReferenceIdentityMap<TK;TV;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V
    .locals 0
    .param p1, "keyType"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .param p2, "valueType"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .param p3, "capacity"    # I
    .param p4, "loadFactor"    # F
    .param p5, "purgeValues"    # Z

    .line 169
    .local p0, "this":Lorg/apache/commons/collections4/map/ReferenceIdentityMap;, "Lorg/apache/commons/collections4/map/ReferenceIdentityMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V

    .line 170
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Z)V
    .locals 6
    .param p1, "keyType"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .param p2, "valueType"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .param p3, "purgeValues"    # Z

    .line 127
    .local p0, "this":Lorg/apache/commons/collections4/map/ReferenceIdentityMap;, "Lorg/apache/commons/collections4/map/ReferenceIdentityMap<TK;TV;>;"
    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V

    .line 128
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 251
    .local p0, "this":Lorg/apache/commons/collections4/map/ReferenceIdentityMap;, "Lorg/apache/commons/collections4/map/ReferenceIdentityMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 252
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/ReferenceIdentityMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 253
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    .local p0, "this":Lorg/apache/commons/collections4/map/ReferenceIdentityMap;, "Lorg/apache/commons/collections4/map/ReferenceIdentityMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 240
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/ReferenceIdentityMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 241
    return-void
.end method


# virtual methods
.method protected hash(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 183
    .local p0, "this":Lorg/apache/commons/collections4/map/ReferenceIdentityMap;, "Lorg/apache/commons/collections4/map/ReferenceIdentityMap<TK;TV;>;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected hashEntry(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 197
    .local p0, "this":Lorg/apache/commons/collections4/map/ReferenceIdentityMap;, "Lorg/apache/commons/collections4/map/ReferenceIdentityMap<TK;TV;>;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 198
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 197
    return v0
.end method

.method protected isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .line 213
    .local p0, "this":Lorg/apache/commons/collections4/map/ReferenceIdentityMap;, "Lorg/apache/commons/collections4/map/ReferenceIdentityMap<TK;TV;>;"
    sget-object v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/ReferenceIdentityMap;->isKeyType(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    move-object p2, v0

    .line 214
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method protected isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .line 228
    .local p0, "this":Lorg/apache/commons/collections4/map/ReferenceIdentityMap;, "Lorg/apache/commons/collections4/map/ReferenceIdentityMap<TK;TV;>;"
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
