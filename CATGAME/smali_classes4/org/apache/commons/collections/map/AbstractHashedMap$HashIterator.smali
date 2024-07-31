.class public abstract Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;
.super Ljava/lang/Object;
.source "AbstractHashedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "HashIterator"
.end annotation


# instance fields
.field protected expectedModCount:I

.field protected hashIndex:I

.field protected last:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

.field protected next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

.field protected final parent:Lorg/apache/commons/collections/map/AbstractHashedMap;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V
    .locals 4
    .param p1, "parent"    # Lorg/apache/commons/collections/map/AbstractHashedMap;

    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1095
    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    .line 1096
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 1097
    .local v0, "data":[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    array-length v1, v0

    .line 1098
    .local v1, "i":I
    const/4 v2, 0x0

    .line 1099
    .local v2, "next":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-lez v1, :cond_0

    if-nez v2, :cond_0

    .line 1100
    add-int/lit8 v1, v1, -0x1

    aget-object v2, v0, v1

    goto :goto_0

    .line 1102
    :cond_0
    iput-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 1103
    iput v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->hashIndex:I

    .line 1104
    iget v3, p1, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    iput v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->expectedModCount:I

    .line 1105
    return-void
.end method


# virtual methods
.method protected currentEntry()Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .locals 1

    .line 1132
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1108
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected nextEntry()Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .locals 4

    .line 1112
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_2

    .line 1115
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 1116
    .local v0, "newCurrent":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    if-eqz v0, :cond_1

    .line 1119
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 1120
    .local v1, "data":[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    iget v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->hashIndex:I

    .line 1121
    .local v2, "i":I
    iget-object v3, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 1122
    .local v3, "n":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v3, :cond_0

    if-lez v2, :cond_0

    .line 1123
    add-int/lit8 v2, v2, -0x1

    aget-object v3, v1, v2

    goto :goto_0

    .line 1125
    :cond_0
    iput-object v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 1126
    iput v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->hashIndex:I

    .line 1127
    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 1128
    return-object v0

    .line 1117
    .end local v1    # "data":[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .end local v2    # "i":I
    .end local v3    # "n":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No next() entry in the iteration"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1113
    .end local v0    # "newCurrent":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 1136
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    if-eqz v0, :cond_1

    .line 1139
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 1142
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 1144
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->expectedModCount:I

    .line 1145
    return-void

    .line 1140
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1137
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1148
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    if-eqz v0, :cond_0

    .line 1149
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Iterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1151
    :cond_0
    const-string v0, "Iterator[]"

    return-object v0
.end method
