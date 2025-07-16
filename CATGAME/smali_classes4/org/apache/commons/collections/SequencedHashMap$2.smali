.class Lorg/apache/commons/collections/SequencedHashMap$2;
.super Ljava/util/AbstractCollection;
.source "SequencedHashMap.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/SequencedHashMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/SequencedHashMap;)V
    .locals 0

    .line 591
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 621
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 630
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 627
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .line 594
    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;-><init>(Lorg/apache/commons/collections/SequencedHashMap;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 601
    iget-object p1, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {p1}, Lorg/apache/commons/collections/SequencedHashMap;->access$100(Lorg/apache/commons/collections/SequencedHashMap;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object p1

    :cond_0
    iget-object p1, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v1}, Lorg/apache/commons/collections/SequencedHashMap;->access$100(Lorg/apache/commons/collections/SequencedHashMap;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v1

    if-eq p1, v1, :cond_3

    .line 602
    invoke-virtual {p1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 603
    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {p1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/commons/collections/SequencedHashMap;->access$000(Lorg/apache/commons/collections/SequencedHashMap;Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    return v0

    .line 608
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v1}, Lorg/apache/commons/collections/SequencedHashMap;->access$100(Lorg/apache/commons/collections/SequencedHashMap;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v1

    :cond_2
    iget-object v1, v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v2}, Lorg/apache/commons/collections/SequencedHashMap;->access$100(Lorg/apache/commons/collections/SequencedHashMap;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 609
    invoke-virtual {v1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 610
    iget-object p1, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/commons/collections/SequencedHashMap;->access$000(Lorg/apache/commons/collections/SequencedHashMap;Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    .line 624
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap;->size()I

    move-result v0

    return v0
.end method
