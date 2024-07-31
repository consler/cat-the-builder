.class public Lorg/apache/commons/collections/iterators/EntrySetMapIterator;
.super Ljava/lang/Object;
.source "EntrySetMapIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/MapIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# instance fields
.field private canRemove:Z

.field private iterator:Ljava/util/Iterator;

.field private last:Ljava/util/Map$Entry;

.field private final map:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1, "map"    # Ljava/util/Map;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->canRemove:Z

    .line 56
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->map:Ljava/util/Map;

    .line 57
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    .line 58
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 125
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->canRemove:Z

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 94
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->canRemove:Z

    .line 100
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->canRemove:Z

    .line 156
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator setValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "MapIterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    const-string v0, "MapIterator[]"

    return-object v0
.end method
