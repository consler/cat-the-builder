.class Lorg/apache/commons/collections/DoubleOrderedMap$6;
.super Ljava/util/AbstractSet;
.source "DoubleOrderedMap.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/DoubleOrderedMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V
    .locals 0

    .line 1588
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$6;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    return-void
.end method

.method static synthetic access$2100(Lorg/apache/commons/collections/DoubleOrderedMap$6;)Lorg/apache/commons/collections/DoubleOrderedMap;
    .locals 0

    .line 1588
    iget-object p0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$6;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1640
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$6;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1602
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1606
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1607
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1608
    iget-object v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap$6;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-static {v2, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$100(Lorg/apache/commons/collections/DoubleOrderedMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .line 1611
    invoke-static {p1, v2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 1592
    new-instance v0, Lorg/apache/commons/collections/DoubleOrderedMap$6$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$6$1;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap$6;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .line 1617
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1621
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1622
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1623
    iget-object v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap$6;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-static {v2, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$100(Lorg/apache/commons/collections/DoubleOrderedMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .line 1626
    invoke-static {p1, v2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1627
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$6;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-static {v0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$300(Lorg/apache/commons/collections/DoubleOrderedMap;Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    return v2

    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .line 1636
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$6;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->size()I

    move-result v0

    return v0
.end method
