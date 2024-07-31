.class public Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;
.super Ljava/lang/Object;
.source "EntrySetMapIterator.java"

# interfaces
.implements Lorg/apache/commons/collections4/MapIterator;
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/MapIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private canRemove:Z

.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private last:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;, "Lorg/apache/commons/collections4/iterators/EntrySetMapIterator<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->canRemove:Z

    .line 55
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->map:Ljava/util/Map;

    .line 56
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    .line 57
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;, "Lorg/apache/commons/collections4/iterators/EntrySetMapIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;, "Lorg/apache/commons/collections4/iterators/EntrySetMapIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 67
    .local p0, "this":Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;, "Lorg/apache/commons/collections4/iterators/EntrySetMapIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;, "Lorg/apache/commons/collections4/iterators/EntrySetMapIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->canRemove:Z

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 96
    .local p0, "this":Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;, "Lorg/apache/commons/collections4/iterators/EntrySetMapIterator<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->canRemove:Z

    .line 102
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 159
    .local p0, "this":Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;, "Lorg/apache/commons/collections4/iterators/EntrySetMapIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->canRemove:Z

    .line 162
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;, "Lorg/apache/commons/collections4/iterators/EntrySetMapIterator<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator setValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 171
    .local p0, "this":Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;, "Lorg/apache/commons/collections4/iterators/EntrySetMapIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MapIterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    const-string v0, "MapIterator[]"

    return-object v0
.end method
