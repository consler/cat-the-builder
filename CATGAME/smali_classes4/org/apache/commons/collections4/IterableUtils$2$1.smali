.class Lorg/apache/commons/collections4/IterableUtils$2$1;
.super Lorg/apache/commons/collections4/iterators/LazyIteratorChain;
.source "IterableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/IterableUtils$2;->iterator()Ljava/util/Iterator;
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
.field final synthetic this$0:Lorg/apache/commons/collections4/IterableUtils$2;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/IterableUtils$2;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lorg/apache/commons/collections4/IterableUtils$2$1;->this$0:Lorg/apache/commons/collections4/IterableUtils$2;

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;-><init>()V

    return-void
.end method


# virtual methods
.method protected nextIterator(I)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/apache/commons/collections4/IterableUtils$2$1;->this$0:Lorg/apache/commons/collections4/IterableUtils$2;

    iget-object v0, v0, Lorg/apache/commons/collections4/IterableUtils$2;->val$iterables:[Ljava/lang/Iterable;

    array-length v0, v0

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/IterableUtils$2$1;->this$0:Lorg/apache/commons/collections4/IterableUtils$2;

    iget-object v0, v0, Lorg/apache/commons/collections4/IterableUtils$2;->val$iterables:[Ljava/lang/Iterable;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
