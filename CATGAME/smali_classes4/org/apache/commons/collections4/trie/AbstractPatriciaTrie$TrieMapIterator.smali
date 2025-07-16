.class Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;
.super Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;
.source "AbstractPatriciaTrie.java"

# interfaces
.implements Lorg/apache/commons/collections4/OrderedMapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrieMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
        "TK;TV;>.TrieIterator<TK;>;",
        "Lorg/apache/commons/collections4/OrderedMapIterator<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field protected previous:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;)V
    .locals 0

    .line 1608
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V
    .locals 0

    .line 1608
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1619
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->current:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->current:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1620
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1627
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->current:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->current:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1628
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 1643
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->previous:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1614
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->nextEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected nextEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1653
    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->nextEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    .line 1654
    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->previous:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1648
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->previousEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected previousEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1659
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->expectedModCount:I

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    if-ne v0, v1, :cond_1

    .line 1663
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->previous:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eqz v0, :cond_0

    .line 1668
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->previousEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->previous:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 1669
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->current:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->next:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 1670
    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->current:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 1671
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->current:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object v0

    .line 1665
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1660
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1635
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->current:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eqz v0, :cond_0

    .line 1638
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;->current:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1636
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
