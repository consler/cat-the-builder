.class Lorg/apache/commons/collections4/map/MultiValueMap$1;
.super Lorg/apache/commons/collections4/iterators/LazyIteratorChain;
.source "MultiValueMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/map/MultiValueMap;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/iterators/LazyIteratorChain<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/map/MultiValueMap;

.field final synthetic val$keyIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/MultiValueMap;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/collections4/map/MultiValueMap;

    .line 434
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiValueMap$1;, "Lorg/apache/commons/collections4/map/MultiValueMap$1;"
    iput-object p1, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1;->this$0:Lorg/apache/commons/collections4/map/MultiValueMap;

    iput-object p2, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1;->val$keyIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;-><init>()V

    return-void
.end method


# virtual methods
.method protected nextIterator(I)Ljava/util/Iterator;
    .locals 5
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 437
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiValueMap$1;, "Lorg/apache/commons/collections4/map/MultiValueMap$1;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1;->val$keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    const/4 v0, 0x0

    return-object v0

    .line 440
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1;->val$keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 441
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v1, Lorg/apache/commons/collections4/map/MultiValueMap$1$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/collections4/map/MultiValueMap$1$1;-><init>(Lorg/apache/commons/collections4/map/MultiValueMap$1;Ljava/lang/Object;)V

    .line 460
    .local v1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TV;Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v2, Lorg/apache/commons/collections4/iterators/TransformIterator;

    new-instance v3, Lorg/apache/commons/collections4/map/MultiValueMap$ValuesIterator;

    iget-object v4, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1;->this$0:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/collections4/map/MultiValueMap$ValuesIterator;-><init>(Lorg/apache/commons/collections4/map/MultiValueMap;Ljava/lang/Object;)V

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/collections4/iterators/TransformIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;)V

    return-object v2
.end method
