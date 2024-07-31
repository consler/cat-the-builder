.class public Lorg/apache/commons/collections4/map/LinkedMap;
.super Lorg/apache/commons/collections4/map/AbstractLinkedMap;
.source "LinkedMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractLinkedMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7df8d0862476476aL


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 79
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap;, "Lorg/apache/commons/collections4/map/LinkedMap<TK;TV;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;-><init>(IFI)V

    .line 80
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap;, "Lorg/apache/commons/collections4/map/LinkedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;-><init>(I)V

    .line 90
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 102
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap;, "Lorg/apache/commons/collections4/map/LinkedMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;-><init>(IF)V

    .line 103
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

    .line 112
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap;, "Lorg/apache/commons/collections4/map/LinkedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;-><init>(Ljava/util/Map;)V

    .line 113
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

    .line 145
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap;, "Lorg/apache/commons/collections4/map/LinkedMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 146
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 147
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

    .line 133
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap;, "Lorg/apache/commons/collections4/map/LinkedMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 134
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 135
    return-void
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    .line 217
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap;, "Lorg/apache/commons/collections4/map/LinkedMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;-><init>(Lorg/apache/commons/collections4/map/LinkedMap;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap;, "Lorg/apache/commons/collections4/map/LinkedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LinkedMap;->clone()Lorg/apache/commons/collections4/map/LinkedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1

    .line 70
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap;, "Lorg/apache/commons/collections4/map/LinkedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LinkedMap;->clone()Lorg/apache/commons/collections4/map/LinkedMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/collections4/map/LinkedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/LinkedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap;, "Lorg/apache/commons/collections4/map/LinkedMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/LinkedMap;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap;, "Lorg/apache/commons/collections4/map/LinkedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->getEntry(I)Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap;, "Lorg/apache/commons/collections4/map/LinkedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->getEntry(I)Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 179
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap;, "Lorg/apache/commons/collections4/map/LinkedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/commons/collections4/map/LinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .local v1, "entry":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/LinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq v1, v2, :cond_1

    .line 182
    iget-object v2, v1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/map/LinkedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    return v0

    .line 181
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v1    # "entry":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<TK;TV;>;"
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap;, "Lorg/apache/commons/collections4/map/LinkedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/LinkedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
