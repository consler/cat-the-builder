.class Lcom/google/common/graph/DirectedGraphConnections$3$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/DirectedGraphConnections$3;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/graph/DirectedGraphConnections$3;

.field final synthetic val$entries:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/graph/DirectedGraphConnections$3;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/graph/DirectedGraphConnections$3;

    .line 323
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$3$1;, "Lcom/google/common/graph/DirectedGraphConnections$3$1;"
    iput-object p1, p0, Lcom/google/common/graph/DirectedGraphConnections$3$1;->this$1:Lcom/google/common/graph/DirectedGraphConnections$3;

    iput-object p2, p0, Lcom/google/common/graph/DirectedGraphConnections$3$1;->val$entries:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$3$1;, "Lcom/google/common/graph/DirectedGraphConnections$3$1;"
    :goto_0
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$3$1;->val$entries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$3$1;->val$entries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 328
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TN;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/graph/DirectedGraphConnections;->access$400(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 331
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TN;Ljava/lang/Object;>;"
    :cond_0
    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/graph/DirectedGraphConnections$3$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
