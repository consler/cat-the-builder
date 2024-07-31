.class Lorg/apache/commons/collections4/IterableUtils$7$1;
.super Lorg/apache/commons/collections4/iterators/LazyIteratorChain;
.source "IterableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/IterableUtils$7;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/iterators/LazyIteratorChain<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/IterableUtils$7;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/IterableUtils$7;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/collections4/IterableUtils$7;

    .line 326
    iput-object p1, p0, Lorg/apache/commons/collections4/IterableUtils$7$1;->this$0:Lorg/apache/commons/collections4/IterableUtils$7;

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;-><init>()V

    return-void
.end method


# virtual methods
.method protected nextIterator(I)Ljava/util/Iterator;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lorg/apache/commons/collections4/IterableUtils$7$1;->this$0:Lorg/apache/commons/collections4/IterableUtils$7;

    iget-object v0, v0, Lorg/apache/commons/collections4/IterableUtils$7;->val$iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/apache/commons/collections4/IterableUtils;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x0

    return-object v0

    .line 332
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/IterableUtils$7$1;->this$0:Lorg/apache/commons/collections4/IterableUtils$7;

    iget-object v0, v0, Lorg/apache/commons/collections4/IterableUtils$7;->val$iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
