.class Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;
.super Ljava/util/AbstractSet;
.source "AbstractPatriciaTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RangeEntrySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet$EntryIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
            "TK;TV;>.RangeMap;"
        }
    .end annotation
.end field

.field private transient expectedModCount:I

.field private transient size:I

.field final synthetic this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
            "TK;TV;>.RangeMap;)V"
        }
    .end annotation

    .line 1973
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.RangeEntrySet;"
    .local p2, "delegate":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.RangeMap;"
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1966
    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->size:I

    .line 1974
    if-eqz p2, :cond_0

    .line 1978
    iput-object p2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;

    .line 1979
    return-void

    .line 1975
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "delegate"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 2023
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.RangeEntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2024
    return v1

    .line 2027
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 2028
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2029
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;

    invoke-virtual {v3, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->inRange(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2030
    return v1

    .line 2033
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v3, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v3

    .line 2034
    .local v3, "node":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 2017
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.RangeEntrySet;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1983
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.RangeEntrySet;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->getFromKey()Ljava/lang/Object;

    move-result-object v0

    .line 1984
    .local v0, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->getToKey()Ljava/lang/Object;

    move-result-object v1

    .line 1986
    .local v1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 1987
    .local v2, "first":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 1988
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v2

    goto :goto_0

    .line 1990
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v3, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->ceilingEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v2

    .line 1993
    :goto_0
    const/4 v3, 0x0

    .line 1994
    .local v3, "last":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    if-eqz v1, :cond_1

    .line 1995
    iget-object v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v4, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->ceilingEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v3

    .line 1998
    :cond_1
    new-instance v4, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet$EntryIterator;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v3, v5}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet$EntryIterator;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V

    return-object v4
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 2040
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.RangeEntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2041
    return v1

    .line 2044
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 2045
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2046
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;

    invoke-virtual {v3, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->inRange(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2047
    return v1

    .line 2050
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v3, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v3

    .line 2051
    .local v3, "node":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2052
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v1, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Ljava/lang/Object;

    .line 2053
    const/4 v1, 0x1

    return v1

    .line 2055
    :cond_2
    return v1
.end method

.method public size()I
    .locals 2

    .line 2003
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.RangeEntrySet;"
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->size:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->expectedModCount:I

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    if-eq v0, v1, :cond_2

    .line 2004
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->size:I

    .line 2006
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2007
    iget v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->size:I

    .line 2006
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 2010
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->expectedModCount:I

    .line 2012
    :cond_2
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->size:I

    return v0
.end method
