.class Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap$WrappedSet;
.super Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;
.source "AbstractSetValuedMap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<",
        "TK;TV;>.WrappedCollection;",
        "Ljava/util/Set<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap$WrappedSet;, "Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap<TK;TV;>.WrappedSet;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap$WrappedSet;->this$0:Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap;

    .line 113
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Ljava/lang/Object;)V

    .line 114
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 118
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap$WrappedSet;, "Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap<TK;TV;>.WrappedSet;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap$WrappedSet;->getMapping()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 119
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 122
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    if-nez v1, :cond_1

    .line 123
    const/4 v1, 0x0

    return v1

    .line 125
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    .line 126
    .local v1, "otherSet":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-static {v0, v1}, Lorg/apache/commons/collections4/SetUtils;->isEqualSet(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 131
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap$WrappedSet;, "Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap<TK;TV;>.WrappedSet;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap$WrappedSet;->getMapping()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 132
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/SetUtils;->hashCodeForSet(Ljava/util/Collection;)I

    move-result v1

    return v1
.end method
