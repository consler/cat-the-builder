.class Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$EntrySet;
.super Ljava/util/AbstractSet;
.source "AbstractPatriciaTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$EntrySet$EntryIterator;
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
.field final synthetic this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;)V
    .locals 0

    .line 1390
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$EntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V
    .locals 0

    .line 1390
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$EntrySet;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1427
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$EntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1399
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1403
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$EntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    move-object v2, p1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1404
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1394
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$EntrySet$EntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$EntrySet$EntryIterator;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$EntrySet;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1409
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1412
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1415
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 1416
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$EntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public size()I
    .locals 1

    .line 1422
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$EntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size()I

    move-result v0

    return v0
.end method
