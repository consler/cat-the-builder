.class Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;
.super Ljava/lang/Object;
.source "AbstractMultiSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multiset/AbstractMultiSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private canRemove:Z

.field private current:Lorg/apache/commons/collections4/MultiSet$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final entryIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private itemCount:I

.field private final parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/multiset/AbstractMultiSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    .line 143
    invoke-virtual {p1}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->entryIterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->current:Lorg/apache/commons/collections4/MultiSet$Entry;

    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->canRemove:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 151
    iget v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->itemCount:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 157
    iget v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->itemCount:I

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/MultiSet$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->current:Lorg/apache/commons/collections4/MultiSet$Entry;

    .line 159
    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet$Entry;->getCount()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->itemCount:I

    :cond_0
    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->canRemove:Z

    .line 162
    iget v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->itemCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->itemCount:I

    .line 163
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->current:Lorg/apache/commons/collections4/MultiSet$Entry;

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 169
    iget-boolean v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->canRemove:Z

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->current:Lorg/apache/commons/collections4/MultiSet$Entry;

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet$Entry;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    iget-object v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->current:Lorg/apache/commons/collections4/MultiSet$Entry;

    invoke-interface {v1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_0
    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;->canRemove:Z

    return-void

    .line 170
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
