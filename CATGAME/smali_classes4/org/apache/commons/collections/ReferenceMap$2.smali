.class Lorg/apache/commons/collections/ReferenceMap$2;
.super Ljava/util/AbstractSet;
.source "ReferenceMap.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/ReferenceMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/ReferenceMap;)V
    .locals 0

    .line 666
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$2;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 686
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$2;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 676
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$2;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/ReferenceMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .line 672
    new-instance v0, Lorg/apache/commons/collections/ReferenceMap$KeyIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$2;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/ReferenceMap$KeyIterator;-><init>(Lorg/apache/commons/collections/ReferenceMap;Lorg/apache/commons/collections/ReferenceMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 681
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$2;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/ReferenceMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    .line 668
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$2;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 690
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ReferenceMap$2;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$2;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 695
    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 698
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
