.class public abstract Lorg/apache/commons/collections4/map/AbstractLinkedMap;
.super Lorg/apache/commons/collections4/map/AbstractHashedMap;
.source "AbstractLinkedMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/OrderedMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;,
        Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;,
        Lorg/apache/commons/collections4/map/AbstractLinkedMap$ValuesIterator;,
        Lorg/apache/commons/collections4/map/AbstractLinkedMap$KeySetIterator;,
        Lorg/apache/commons/collections4/map/AbstractLinkedMap$EntrySetIterator;,
        Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkMapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/OrderedMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field transient header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(IF)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(IF)V

    return-void
.end method

.method protected constructor <init>(IFI)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(IFI)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected addEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 274
    check-cast p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 275
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 276
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 277
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object p1, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 278
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object p1, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 279
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aput-object p1, v0, p2

    return-void
.end method

.method public clear()V
    .locals 1

    .line 171
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->clear()V

    .line 172
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 149
    iget-object p1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    :cond_0
    iget-object p1, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq p1, v1, :cond_3

    .line 150
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 155
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    :cond_2
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq v1, v2, :cond_3

    .line 156
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic createEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->createEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object p1

    return-object p1
.end method

.method protected createEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;ITK;TV;)",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 295
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {p0, p3}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 415
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyOrderedIterator;->emptyOrderedIterator()Lorg/apache/commons/collections4/OrderedIterator;

    move-result-object v0

    return-object v0

    .line 417
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$EntrySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$EntrySetIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractLinkedMap;)V

    return-object v0
.end method

.method protected createKeySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 450
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 451
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyOrderedIterator;->emptyOrderedIterator()Lorg/apache/commons/collections4/OrderedIterator;

    move-result-object v0

    return-object v0

    .line 453
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$KeySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$KeySetIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractLinkedMap;)V

    return-object v0
.end method

.method protected createValuesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 487
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 488
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyOrderedIterator;->emptyOrderedIterator()Lorg/apache/commons/collections4/OrderedIterator;

    move-result-object v0

    return-object v0

    .line 490
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$ValuesIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$ValuesIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractLinkedMap;)V

    return-object v0
.end method

.method protected entryAfter(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 342
    iget-object p1, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    return-object p1
.end method

.method protected entryBefore(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 329
    iget-object p1, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    return-object p1
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 183
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->size:I

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object p1

    return-object p1
.end method

.method protected getEntry(I)Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "Index "

    if-ltz p1, :cond_3

    .line 243
    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->size:I

    if-ge p1, v1, :cond_2

    .line 247
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->size:I

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 251
    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 256
    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->size:I

    :goto_1
    if-le v1, p1, :cond_1

    .line 257
    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-object v0

    .line 244
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is invalid for size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->size:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is less than zero"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 216
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    return-object p1
.end method

.method protected init()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 134
    invoke-virtual {p0, v0, v1, v0, v0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->createEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 135
    iput-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    return-void
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 196
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->size:I

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 351
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->size:I

    if-nez v0, :cond_0

    .line 352
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyOrderedMapIterator;->emptyOrderedMapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0

    .line 354
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkMapIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractLinkedMap;)V

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 210
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 211
    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 227
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 228
    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method protected removeEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;I",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 310
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 311
    iget-object v1, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v2, v1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 312
    iget-object v1, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v2, v1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    const/4 v1, 0x0

    .line 313
    iput-object v1, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 314
    iput-object v1, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 315
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    return-void
.end method
