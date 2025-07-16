.class Lorg/apache/commons/collections/DoubleOrderedMap$5$1;
.super Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;
.source "DoubleOrderedMap.java"


# instance fields
.field private final synthetic this$1:Lorg/apache/commons/collections/DoubleOrderedMap$5;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/DoubleOrderedMap$5;I)V
    .locals 1

    .line 1521
    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap$5;->access$2000(Lorg/apache/commons/collections/DoubleOrderedMap$5;)Lorg/apache/commons/collections/DoubleOrderedMap;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;I)V

    iput-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5$1;->this$1:Lorg/apache/commons/collections/DoubleOrderedMap$5;

    return-void
.end method


# virtual methods
.method protected doGetNext()Ljava/lang/Object;
    .locals 2

    .line 1524
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5$1;->lastReturnedNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
