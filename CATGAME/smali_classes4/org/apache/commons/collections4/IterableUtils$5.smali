.class final Lorg/apache/commons/collections4/IterableUtils$5;
.super Lorg/apache/commons/collections4/FluentIterable;
.source "IterableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/IterableUtils;->filteredIterable(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/FluentIterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;

.field final synthetic val$predicate:Lorg/apache/commons/collections4/Predicate;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lorg/apache/commons/collections4/IterableUtils$5;->val$iterable:Ljava/lang/Iterable;

    iput-object p2, p0, Lorg/apache/commons/collections4/IterableUtils$5;->val$predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-direct {p0}, Lorg/apache/commons/collections4/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lorg/apache/commons/collections4/IterableUtils$5;->val$iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/apache/commons/collections4/IterableUtils;->access$000(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/IterableUtils$5;->val$predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/IteratorUtils;->filteredIterator(Ljava/util/Iterator;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
