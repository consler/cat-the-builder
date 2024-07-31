.class public Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;
.super Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap;
.source "HashSetValuedHashMap.java"

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
        "Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_MAP_CAPACITY:I = 0x10

.field private static final DEFAULT_INITIAL_SET_CAPACITY:I = 0x3

.field private static final serialVersionUID:J = 0x1337b4eL


# instance fields
.field private final initialSetCapacity:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 70
    .local p0, "this":Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;, "Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap<TK;TV;>;"
    const/16 v0, 0x10

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;-><init>(II)V

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSetCapacity"    # I

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;, "Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;-><init>(II)V

    .line 81
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "initialMapCapacity"    # I
    .param p2, "initialSetCapacity"    # I

    .line 91
    .local p0, "this":Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;, "Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap;-><init>(Ljava/util/Map;)V

    .line 92
    iput p2, p0, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;->initialSetCapacity:I

    .line 93
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

    .line 111
    .local p0, "this":Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;, "Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;-><init>(II)V

    .line 112
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap;->putAll(Ljava/util/Map;)Z

    .line 113
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

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;, "Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap<TK;TV;>;"
    .local p1, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<+TK;+TV;>;"
    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiValuedMap;->size()I

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;-><init>(II)V

    .line 102
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap;->putAll(Lorg/apache/commons/collections4/MultiValuedMap;)Z

    .line 103
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

    .line 128
    .local p0, "this":Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;, "Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;->setMap(Ljava/util/Map;)V

    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 131
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

    .line 123
    .local p0, "this":Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;, "Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 125
    return-void
.end method


# virtual methods
.method protected bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .line 44
    .local p0, "this":Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;, "Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;->createCollection()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method protected createCollection()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "TV;>;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;, "Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashSet;

    iget v1, p0, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;->initialSetCapacity:I

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic createCollection()Ljava/util/Set;
    .locals 1

    .line 44
    .local p0, "this":Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;, "Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;->createCollection()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method
