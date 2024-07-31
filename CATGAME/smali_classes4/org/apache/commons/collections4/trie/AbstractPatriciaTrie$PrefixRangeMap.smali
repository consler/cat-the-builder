.class Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;
.super Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;
.source "AbstractPatriciaTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefixRangeMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
        "TK;TV;>.RangeMap;"
    }
.end annotation


# instance fields
.field private transient expectedModCount:I

.field private fromKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final lengthInBits:I

.field private final offsetInBits:I

.field private final prefix:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private size:I

.field final synthetic this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

.field private toKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;II)V
    .locals 1
    .param p3, "offsetInBits"    # I
    .param p4, "lengthInBits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)V"
        }
    .end annotation

    .line 2110
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.PrefixRangeMap;"
    .local p2, "prefix":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V

    .line 2099
    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->fromKey:Ljava/lang/Object;

    .line 2101
    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->toKey:Ljava/lang/Object;

    .line 2103
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->expectedModCount:I

    .line 2105
    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->size:I

    .line 2111
    iput-object p2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->prefix:Ljava/lang/Object;

    .line 2112
    iput p3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->offsetInBits:I

    .line 2113
    iput p4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->lengthInBits:I

    .line 2114
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;IILorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;

    .line 2091
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.PrefixRangeMap;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;

    .line 2091
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->fixup()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;

    .line 2091
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->prefix:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;

    .line 2091
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->offsetInBits:I

    return v0
.end method

.method static synthetic access$1400(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;

    .line 2091
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->lengthInBits:I

    return v0
.end method

.method private fixup()I
    .locals 6

    .line 2124
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.PrefixRangeMap;"
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->size:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->expectedModCount:I

    if-eq v0, v1, :cond_9

    .line 2125
    :cond_0
    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2126
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->size:I

    .line 2128
    const/4 v1, 0x0

    .line 2129
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 2130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/util/Map$Entry;

    .line 2131
    iput v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->size:I

    .line 2134
    :cond_1
    const/4 v2, 0x0

    if-nez v1, :cond_2

    move-object v4, v2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->fromKey:Ljava/lang/Object;

    .line 2135
    if-eqz v4, :cond_4

    .line 2136
    iget-object v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    move-object v5, v1

    check-cast v5, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v4, v5}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->previousEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v4

    .line 2137
    .local v4, "prior":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    if-nez v4, :cond_3

    move-object v5, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->fromKey:Ljava/lang/Object;

    .line 2140
    .end local v4    # "prior":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :cond_4
    iget-object v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->fromKey:Ljava/lang/Object;

    iput-object v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->toKey:Ljava/lang/Object;

    .line 2142
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2143
    iget v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->size:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->size:I

    .line 2144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_2

    .line 2147
    :cond_5
    if-nez v1, :cond_6

    move-object v3, v2

    goto :goto_3

    :cond_6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    :goto_3
    iput-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->toKey:Ljava/lang/Object;

    .line 2149
    if-eqz v3, :cond_8

    .line 2150
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    move-object v4, v1

    check-cast v4, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v3, v4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    .line 2151
    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    :goto_4
    iput-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->toKey:Ljava/lang/Object;

    .line 2154
    :cond_8
    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget v2, v2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    iput v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->expectedModCount:I

    .line 2157
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_9
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->size:I

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 2263
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.PrefixRangeMap;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2264
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2265
    .local v1, "currentKeys":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2266
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2267
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2270
    :cond_1
    return-void
.end method

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

    .line 2232
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.PrefixRangeMap;"
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;)V

    return-object v0
.end method

.method protected createRangeMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedMap;
    .locals 7
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2258
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.PrefixRangeMap;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v6, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v6
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2162
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.PrefixRangeMap;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->fixup()I

    .line 2164
    const/4 v0, 0x0

    .line 2165
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->fromKey:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 2166
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    goto :goto_0

    .line 2168
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v2, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->higherEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    .line 2171
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2172
    .local v1, "first":Ljava/lang/Object;, "TK;"
    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getKeyAnalyzer()Lorg/apache/commons/collections4/trie/KeyAnalyzer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->prefix:Ljava/lang/Object;

    iget v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->offsetInBits:I

    iget v5, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->lengthInBits:I

    invoke-virtual {v2, v3, v4, v5, v1}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isPrefix(Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2176
    return-object v1

    .line 2173
    :cond_2
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public getFromKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2237
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.PrefixRangeMap;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->fromKey:Ljava/lang/Object;

    return-object v0
.end method

.method public getToKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2242
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.PrefixRangeMap;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->toKey:Ljava/lang/Object;

    return-object v0
.end method

.method protected inFromRange(Ljava/lang/Object;Z)Z
    .locals 4
    .param p2, "forceInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    .line 2219
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.PrefixRangeMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getKeyAnalyzer()Lorg/apache/commons/collections4/trie/KeyAnalyzer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->prefix:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->offsetInBits:I

    iget v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->lengthInBits:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isPrefix(Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected inRange(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 2203
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.PrefixRangeMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getKeyAnalyzer()Lorg/apache/commons/collections4/trie/KeyAnalyzer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->prefix:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->offsetInBits:I

    iget v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->lengthInBits:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isPrefix(Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected inRange2(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 2211
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.PrefixRangeMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected inToRange(Ljava/lang/Object;Z)Z
    .locals 4
    .param p2, "forceInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    .line 2227
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.PrefixRangeMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getKeyAnalyzer()Lorg/apache/commons/collections4/trie/KeyAnalyzer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->prefix:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->offsetInBits:I

    iget v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->lengthInBits:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isPrefix(Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFromInclusive()Z
    .locals 1

    .line 2247
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.PrefixRangeMap;"
    const/4 v0, 0x0

    return v0
.end method

.method public isToInclusive()Z
    .locals 1

    .line 2252
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.PrefixRangeMap;"
    const/4 v0, 0x0

    return v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2181
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.PrefixRangeMap;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->fixup()I

    .line 2183
    const/4 v0, 0x0

    .line 2184
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->toKey:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 2185
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lastEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    goto :goto_0

    .line 2187
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v2, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lowerEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    .line 2190
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2191
    .local v1, "last":Ljava/lang/Object;, "TK;"
    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getKeyAnalyzer()Lorg/apache/commons/collections4/trie/KeyAnalyzer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->prefix:Ljava/lang/Object;

    iget v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->offsetInBits:I

    iget v5, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->lengthInBits:I

    invoke-virtual {v2, v3, v4, v5, v1}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isPrefix(Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2195
    return-object v1

    .line 2192
    :cond_2
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method
