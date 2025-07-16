.class Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;
.super Ljava/lang/Object;
.source "MultiValueMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/MultiValueMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValuesIterator"
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;

.field private final key:Ljava/lang/Object;

.field private final synthetic this$0:Lorg/apache/commons/collections/map/MultiValueMap;

.field private final values:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/map/MultiValueMap;Ljava/lang/Object;)V
    .locals 0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;->this$0:Lorg/apache/commons/collections/map/MultiValueMap;

    .line 401
    iput-object p2, p0, Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;->key:Ljava/lang/Object;

    .line 402
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;->values:Ljava/util/Collection;

    .line 403
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 414
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 418
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 407
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 408
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;->values:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;->this$0:Lorg/apache/commons/collections/map/MultiValueMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/MultiValueMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
