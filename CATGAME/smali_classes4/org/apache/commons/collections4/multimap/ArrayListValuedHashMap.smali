.class public Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;
.super Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;
.source "ArrayListValuedHashMap.java"

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
        "Lorg/apache/commons/collections4/multimap/AbstractListValuedMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_LIST_CAPACITY:I = 0x3

.field private static final DEFAULT_INITIAL_MAP_CAPACITY:I = 0x10

.field private static final serialVersionUID:J = 0x1337b4eL


# instance fields
.field private final initialListCapacity:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    .local p0, "this":Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;, "Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap<TK;TV;>;"
    const/16 v0, 0x10

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>(II)V

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialListCapacity"    # I

    .line 81
    .local p0, "this":Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;, "Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>(II)V

    .line 82
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "initialMapCapacity"    # I
    .param p2, "initialListCapacity"    # I

    .line 92
    .local p0, "this":Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;, "Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;-><init>(Ljava/util/Map;)V

    .line 93
    iput p2, p0, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;->initialListCapacity:I

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;, "Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>(II)V

    .line 113
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->putAll(Ljava/util/Map;)Z

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/MultiValuedMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;, "Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap<TK;TV;>;"
    .local p1, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<+TK;+TV;>;"
    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiValuedMap;->size()I

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>(II)V

    .line 103
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->putAll(Lorg/apache/commons/collections4/MultiValuedMap;)Z

    .line 104
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;, "Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;->setMap(Ljava/util/Map;)V

    .line 142
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 143
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    .local p0, "this":Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;, "Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 136
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 137
    return-void
.end method


# virtual methods
.method protected createCollection()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TV;>;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;, "Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;->initialListCapacity:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .line 45
    .local p0, "this":Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;, "Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;->createCollection()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createCollection()Ljava/util/List;
    .locals 1

    .line 45
    .local p0, "this":Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;, "Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;->createCollection()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public trimToSize()V
    .locals 3

    .line 127
    .local p0, "this":Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;, "Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 128
    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    .line 129
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 130
    .end local v1    # "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method
