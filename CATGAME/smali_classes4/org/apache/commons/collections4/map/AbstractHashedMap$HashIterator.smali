.class public abstract Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;
.super Ljava/lang/Object;
.source "AbstractHashedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private expectedModCount:I

.field private hashIndex:I

.field private last:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1157
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator<TK;TV;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/map/AbstractHashedMap;, "Lorg/apache/commons/collections4/map/AbstractHashedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1158
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    .line 1159
    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 1160
    .local v0, "data":[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    array-length v1, v0

    .line 1161
    .local v1, "i":I
    const/4 v2, 0x0

    .line 1162
    .local v2, "next":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    :goto_0
    if-lez v1, :cond_0

    if-nez v2, :cond_0

    .line 1163
    add-int/lit8 v1, v1, -0x1

    aget-object v2, v0, v1

    goto :goto_0

    .line 1165
    :cond_0
    iput-object v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 1166
    iput v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->hashIndex:I

    .line 1167
    iget v3, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iput v3, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->expectedModCount:I

    .line 1168
    return-void
.end method


# virtual methods
.method protected currentEntry()Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1195
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1171
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected nextEntry()Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1175
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_2

    .line 1178
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 1179
    .local v0, "newCurrent":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 1182
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 1183
    .local v1, "data":[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    iget v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->hashIndex:I

    .line 1184
    .local v2, "i":I
    iget-object v3, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 1185
    .local v3, "n":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    :goto_0
    if-nez v3, :cond_0

    if-lez v2, :cond_0

    .line 1186
    add-int/lit8 v2, v2, -0x1

    aget-object v3, v1, v2

    goto :goto_0

    .line 1188
    :cond_0
    iput-object v3, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 1189
    iput v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->hashIndex:I

    .line 1190
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 1191
    return-object v0

    .line 1180
    .end local v1    # "data":[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    .end local v2    # "i":I
    .end local v3    # "n":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No next() entry in the iteration"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1176
    .end local v0    # "newCurrent":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 1199
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    if-eqz v0, :cond_1

    .line 1202
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 1205
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 1207
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->expectedModCount:I

    .line 1208
    return-void

    .line 1203
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1200
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1212
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    if-eqz v0, :cond_0

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Iterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1215
    :cond_0
    const-string v0, "Iterator[]"

    return-object v0
.end method
