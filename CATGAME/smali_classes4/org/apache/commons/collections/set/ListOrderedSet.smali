.class public Lorg/apache/commons/collections/set/ListOrderedSet;
.super Lorg/apache/commons/collections/set/AbstractSerializableSetDecorator;
.source "ListOrderedSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x32c610905e312adL


# instance fields
.field protected final setOrder:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    .line 128
    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;)V
    .locals 1
    .param p1, "set"    # Ljava/util/Set;

    .line 137
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    .line 139
    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;Ljava/util/List;)V
    .locals 2
    .param p1, "set"    # Ljava/util/Set;
    .param p2, "list"    # Ljava/util/List;

    .line 151
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    .line 152
    if-eqz p2, :cond_0

    .line 155
    iput-object p2, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    .line 156
    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decorate(Ljava/util/List;)Lorg/apache/commons/collections/set/ListOrderedSet;
    .locals 2
    .param p0, "list"    # Ljava/util/List;

    .line 109
    if-eqz p0, :cond_0

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 113
    .local v0, "set":Ljava/util/Set;
    invoke-interface {p0, v0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 115
    new-instance v1, Lorg/apache/commons/collections/set/ListOrderedSet;

    invoke-direct {v1, v0, p0}, Lorg/apache/commons/collections/set/ListOrderedSet;-><init>(Ljava/util/Set;Ljava/util/List;)V

    return-object v1

    .line 110
    .end local v0    # "set":Ljava/util/Set;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decorate(Ljava/util/Set;)Lorg/apache/commons/collections/set/ListOrderedSet;
    .locals 1
    .param p0, "set"    # Ljava/util/Set;

    .line 94
    new-instance v0, Lorg/apache/commons/collections/set/ListOrderedSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/set/ListOrderedSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static decorate(Ljava/util/Set;Ljava/util/List;)Lorg/apache/commons/collections/set/ListOrderedSet;
    .locals 2
    .param p0, "set"    # Ljava/util/Set;
    .param p1, "list"    # Ljava/util/List;

    .line 73
    if-eqz p0, :cond_2

    .line 76
    if-eqz p1, :cond_1

    .line 79
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 82
    new-instance v0, Lorg/apache/commons/collections/set/ListOrderedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/set/ListOrderedSet;-><init>(Ljava/util/Set;Ljava/util/List;)V

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Set and List must be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Set must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 249
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/set/ListOrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 253
    :cond_0
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 185
    .local v0, "result":Z
    iget-object v1, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "coll"    # Ljava/util/Collection;

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "changed":Z
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 259
    .local v2, "object":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/set/ListOrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 260
    iget-object v3, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v3, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v3, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 262
    add-int/lit8 p1, p1, 0x1

    .line 263
    const/4 v0, 0x1

    .line 265
    .end local v2    # "object":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 266
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "coll"    # Ljava/util/Collection;

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "result":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 194
    .local v2, "object":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/set/ListOrderedSet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 195
    .end local v2    # "object":Ljava/lang/Object;
    goto :goto_0

    .line 196
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    return v0
.end method

.method public asList()Ljava/util/List;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 171
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 172
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 241
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4

    .line 175
    new-instance v0, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;-><init>(Ljava/util/Iterator;Ljava/util/Collection;Lorg/apache/commons/collections/set/ListOrderedSet$1;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 270
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 271
    .local v0, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/set/ListOrderedSet;->remove(Ljava/lang/Object;)Z

    .line 272
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 201
    .local v0, "result":Z
    iget-object v1, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 202
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "coll"    # Ljava/util/Collection;

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "result":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 209
    .local v2, "object":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/set/ListOrderedSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 210
    .end local v2    # "object":Ljava/lang/Object;
    goto :goto_0

    .line 211
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "coll"    # Ljava/util/Collection;

    .line 215
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 216
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 217
    const/4 v1, 0x0

    return v1

    .line 218
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 219
    iget-object v1, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 221
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 223
    .local v2, "object":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 226
    .end local v2    # "object":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 228
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_3
    :goto_1
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # [Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
