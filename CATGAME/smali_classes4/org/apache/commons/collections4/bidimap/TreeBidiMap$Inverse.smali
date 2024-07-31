.class Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;
.super Ljava/lang/Object;
.source "TreeBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/OrderedBidiMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Inverse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/OrderedBidiMap<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field private inverseEntrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation
.end field

.field private inverseKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field

.field private inverseValuesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 2115
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 2210
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->clear()V

    .line 2211
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 2146
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 2151
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 2231
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseEntrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2232
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseEntrySet:Ljava/util/Set;

    .line 2234
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseEntrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2252
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$3100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v0

    return v0
.end method

.method public firstKey()Ljava/lang/Comparable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 2156
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2700(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2159
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0

    .line 2157
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic firstKey()Ljava/lang/Object;
    .locals 1

    .line 2115
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->firstKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 2136
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2115
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->get(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 2141
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->get(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2115
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->getKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 2257
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$3200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;
    .locals 1

    .line 2115
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2247
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 2131
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 2215
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseKeySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2216
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ValueView;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ValueView;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseKeySet:Ljava/util/Set;

    .line 2218
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseKeySet:Ljava/util/Set;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Comparable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 2164
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2700(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2167
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0

    .line 2165
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic lastKey()Ljava/lang/Object;
    .locals 1

    .line 2115
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->lastKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 2115
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TV;TK;>;"
        }
    .end annotation

    .line 2239
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2240
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyOrderedMapIterator;->emptyOrderedMapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0

    .line 2242
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapIterator;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-object v0
.end method

.method public nextKey(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 2172
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    .local p1, "key":Ljava/lang/Comparable;, "TV;"
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2800(Ljava/lang/Object;)V

    .line 2173
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2900(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 2174
    .local v0, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public bridge synthetic nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2115
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->nextKey(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public previousKey(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 2179
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    .local p1, "key":Ljava/lang/Comparable;, "TV;"
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2800(Ljava/lang/Object;)V

    .line 2180
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2900(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2500(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 2181
    .local v0, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public bridge synthetic previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2115
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->previousKey(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;)TK;"
        }
    .end annotation

    .line 2186
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    .local p1, "key":Ljava/lang/Comparable;, "TV;"
    .local p2, "value":Ljava/lang/Comparable;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->get(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    .line 2187
    .local v0, "result":Ljava/lang/Comparable;, "TK;"
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v1, p2, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$3000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 2188
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2115
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->put(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TV;+TK;>;)V"
        }
    .end annotation

    .line 2193
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TV;+TK;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2194
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TV;+TK;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->put(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 2195
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TV;+TK;>;"
    goto :goto_0

    .line 2196
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 2200
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->removeValue(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2115
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->remove(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 2205
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->remove(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2115
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->removeValue(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 2126
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2262
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$3300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 2115
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 2223
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseValuesSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2224
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$KeyView;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$KeyView;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseValuesSet:Ljava/util/Set;

    .line 2226
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseValuesSet:Ljava/util/Set;

    return-object v0
.end method
