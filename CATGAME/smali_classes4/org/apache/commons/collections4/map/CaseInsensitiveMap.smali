.class public Lorg/apache/commons/collections4/map/CaseInsensitiveMap;
.super Lorg/apache/commons/collections4/map/AbstractHashedMap;
.source "CaseInsensitiveMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x622e3a12dee99200L


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 83
    .local p0, "this":Lorg/apache/commons/collections4/map/CaseInsensitiveMap;, "Lorg/apache/commons/collections4/map/CaseInsensitiveMap<TK;TV;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(IFI)V

    .line 84
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .line 93
    .local p0, "this":Lorg/apache/commons/collections4/map/CaseInsensitiveMap;, "Lorg/apache/commons/collections4/map/CaseInsensitiveMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(I)V

    .line 94
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 106
    .local p0, "this":Lorg/apache/commons/collections4/map/CaseInsensitiveMap;, "Lorg/apache/commons/collections4/map/CaseInsensitiveMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(IF)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 120
    .local p0, "this":Lorg/apache/commons/collections4/map/CaseInsensitiveMap;, "Lorg/apache/commons/collections4/map/CaseInsensitiveMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(Ljava/util/Map;)V

    .line 121
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

    .line 175
    .local p0, "this":Lorg/apache/commons/collections4/map/CaseInsensitiveMap;, "Lorg/apache/commons/collections4/map/CaseInsensitiveMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 176
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/CaseInsensitiveMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 177
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

    .line 163
    .local p0, "this":Lorg/apache/commons/collections4/map/CaseInsensitiveMap;, "Lorg/apache/commons/collections4/map/CaseInsensitiveMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 164
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/CaseInsensitiveMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 165
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

    .line 74
    .local p0, "this":Lorg/apache/commons/collections4/map/CaseInsensitiveMap;, "Lorg/apache/commons/collections4/map/CaseInsensitiveMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/CaseInsensitiveMap;->clone()Lorg/apache/commons/collections4/map/CaseInsensitiveMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1

    .line 74
    .local p0, "this":Lorg/apache/commons/collections4/map/CaseInsensitiveMap;, "Lorg/apache/commons/collections4/map/CaseInsensitiveMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/CaseInsensitiveMap;->clone()Lorg/apache/commons/collections4/map/CaseInsensitiveMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/collections4/map/CaseInsensitiveMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/CaseInsensitiveMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 153
    .local p0, "this":Lorg/apache/commons/collections4/map/CaseInsensitiveMap;, "Lorg/apache/commons/collections4/map/CaseInsensitiveMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/CaseInsensitiveMap;

    return-object v0
.end method

.method protected convertKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 135
    .local p0, "this":Lorg/apache/commons/collections4/map/CaseInsensitiveMap;, "Lorg/apache/commons/collections4/map/CaseInsensitiveMap<TK;TV;>;"
    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 137
    .local v0, "chars":[C
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 138
    aget-char v2, v0, v1

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v0, v1

    .line 137
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 140
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 142
    .end local v0    # "chars":[C
    :cond_1
    sget-object v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->NULL:Ljava/lang/Object;

    return-object v0
.end method
