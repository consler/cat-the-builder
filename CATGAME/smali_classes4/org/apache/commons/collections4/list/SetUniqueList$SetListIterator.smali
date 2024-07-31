.class Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;
.source "SetUniqueList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/SetUniqueList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private last:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TE;>;",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 372
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;, "Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator<TE;>;"
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;->last:Ljava/lang/Object;

    .line 373
    iput-object p2, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;->set:Ljava/util/Set;

    .line 374
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 378
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;, "Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;->last:Ljava/lang/Object;

    .line 379
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 384
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;, "Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->remove()V

    .line 385
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;->set:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;->last:Ljava/lang/Object;

    .line 387
    return-void
.end method
