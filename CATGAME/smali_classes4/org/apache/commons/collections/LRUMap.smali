.class public Lorg/apache/commons/collections/LRUMap;
.super Lorg/apache/commons/collections/SequencedHashMap;
.source "LRUMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = 0x1e7ed9cc8d43a4bbL


# instance fields
.field private maximumSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x64

    .line 64
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/LRUMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;-><init>(I)V

    .line 76
    iput p1, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 92
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/LRUMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/LRUMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    invoke-super {p0, p1, v0}, Lorg/apache/commons/collections/SequencedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getMaximumSize()I
    .locals 1

    .line 191
    iget v0, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    return v0
.end method

.method protected processRemovedLRU(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 113
    invoke-virtual {p0}, Lorg/apache/commons/collections/LRUMap;->size()I

    move-result v0

    .line 116
    iget v1, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    if-lt v0, v1, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/LRUMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lorg/apache/commons/collections/LRUMap;->removeLRU()V

    .line 126
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/SequencedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 161
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    .line 162
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 165
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 166
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 167
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected removeLRU()V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lorg/apache/commons/collections/LRUMap;->getFirstKey()Ljava/lang/Object;

    move-result-object v0

    .line 139
    invoke-super {p0, v0}, Lorg/apache/commons/collections/SequencedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 141
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/LRUMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/LRUMap;->processRemovedLRU(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaximumSize(I)V
    .locals 1

    .line 197
    iput p1, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    .line 198
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/LRUMap;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 199
    invoke-virtual {p0}, Lorg/apache/commons/collections/LRUMap;->removeLRU()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget v0, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 173
    invoke-virtual {p0}, Lorg/apache/commons/collections/LRUMap;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 174
    invoke-virtual {p0}, Lorg/apache/commons/collections/LRUMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 176
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 179
    invoke-super {p0, v1}, Lorg/apache/commons/collections/SequencedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 180
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
