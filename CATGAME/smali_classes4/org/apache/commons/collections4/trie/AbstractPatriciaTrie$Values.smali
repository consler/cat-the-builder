.class Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;
.super Ljava/util/AbstractCollection;
.source "AbstractPatriciaTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values$ValueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;)V
    .locals 0

    .line 1487
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.Values;"
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
    .param p2, "x1"    # Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;

    .line 1487
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1506
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->clear()V

    .line 1507
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1501
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1491
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.Values;"
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values$ValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values$ValueIterator;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1511
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.Values;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1512
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1513
    .local v1, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v1, p1}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1514
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1515
    const/4 v2, 0x1

    return v2

    .line 1517
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    goto :goto_0

    .line 1518
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1496
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size()I

    move-result v0

    return v0
.end method
