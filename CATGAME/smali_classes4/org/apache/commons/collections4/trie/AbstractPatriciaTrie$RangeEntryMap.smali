.class Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;
.super Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;
.source "AbstractPatriciaTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RangeEntryMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
        "TK;TV;>.RangeMap;"
    }
.end annotation


# instance fields
.field private final fromInclusive:Z

.field private final fromKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

.field private final toInclusive:Z

.field private final toKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 1864
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;ZLjava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)V"
        }
    .end annotation

    .line 1871
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V

    if-nez p2, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 1874
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "must have a from or to!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    if-eqz p4, :cond_3

    .line 1877
    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getKeyAnalyzer()Lorg/apache/commons/collections4/trie/KeyAnalyzer;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_2

    goto :goto_1

    .line 1878
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fromKey > toKey"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1881
    :cond_3
    :goto_1
    iput-object p2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->fromKey:Ljava/lang/Object;

    .line 1882
    iput-boolean p3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->fromInclusive:Z

    .line 1883
    iput-object p4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->toKey:Ljava/lang/Object;

    .line 1884
    iput-boolean p5, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->toInclusive:Z

    return-void
.end method


# virtual methods
.method protected createEntrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1929
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;)V

    return-object v0
.end method

.method protected createRangeMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1955
    new-instance v6, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v6
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1890
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->fromKey:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1891
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    goto :goto_0

    .line 1893
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->fromInclusive:Z

    if-eqz v1, :cond_1

    .line 1894
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->ceilingEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    goto :goto_0

    .line 1896
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->higherEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1900
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 1901
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->toKey:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->inToRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return-object v1

    .line 1902
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getFromKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1934
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->fromKey:Ljava/lang/Object;

    return-object v0
.end method

.method public getToKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1939
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->toKey:Ljava/lang/Object;

    return-object v0
.end method

.method public isFromInclusive()Z
    .locals 1

    .line 1944
    iget-boolean v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->fromInclusive:Z

    return v0
.end method

.method public isToInclusive()Z
    .locals 1

    .line 1949
    iget-boolean v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->toInclusive:Z

    return v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1910
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->toKey:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1911
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lastEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    goto :goto_0

    .line 1913
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->toInclusive:Z

    if-eqz v1, :cond_1

    .line 1914
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->floorEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    goto :goto_0

    .line 1916
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lowerEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1920
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 1921
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->fromKey:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;->inFromRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return-object v1

    .line 1922
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
