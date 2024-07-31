.class public Lorg/apache/commons/collections4/map/HashedMap;
.super Lorg/apache/commons/collections4/map/AbstractHashedMap;
.source "HashedMap.java"

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
.field private static final serialVersionUID:J = -0x18d0f5b9f1b08c10L


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 55
    .local p0, "this":Lorg/apache/commons/collections4/map/HashedMap;, "Lorg/apache/commons/collections4/map/HashedMap<TK;TV;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(IFI)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .line 65
    .local p0, "this":Lorg/apache/commons/collections4/map/HashedMap;, "Lorg/apache/commons/collections4/map/HashedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(I)V

    .line 66
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 78
    .local p0, "this":Lorg/apache/commons/collections4/map/HashedMap;, "Lorg/apache/commons/collections4/map/HashedMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(IF)V

    .line 79
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

    .line 88
    .local p0, "this":Lorg/apache/commons/collections4/map/HashedMap;, "Lorg/apache/commons/collections4/map/HashedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(Ljava/util/Map;)V

    .line 89
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

    .line 121
    .local p0, "this":Lorg/apache/commons/collections4/map/HashedMap;, "Lorg/apache/commons/collections4/map/HashedMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/HashedMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 123
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

    .line 109
    .local p0, "this":Lorg/apache/commons/collections4/map/HashedMap;, "Lorg/apache/commons/collections4/map/HashedMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 110
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/HashedMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 111
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

    .line 45
    .local p0, "this":Lorg/apache/commons/collections4/map/HashedMap;, "Lorg/apache/commons/collections4/map/HashedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/HashedMap;->clone()Lorg/apache/commons/collections4/map/HashedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1

    .line 45
    .local p0, "this":Lorg/apache/commons/collections4/map/HashedMap;, "Lorg/apache/commons/collections4/map/HashedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/HashedMap;->clone()Lorg/apache/commons/collections4/map/HashedMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/collections4/map/HashedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/HashedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/apache/commons/collections4/map/HashedMap;, "Lorg/apache/commons/collections4/map/HashedMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/HashedMap;

    return-object v0
.end method
