.class public Lorg/apache/commons/collections/list/SetUniqueList;
.super Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;
.source "SetUniqueList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;,
        Lorg/apache/commons/collections/list/SetUniqueList$SetListIterator;
    }
.end annotation


# static fields
.field static synthetic class$java$util$HashSet:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x63e0d12ac47e0a26L


# instance fields
.field protected final set:Ljava/util/Set;


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/util/Set;)V
    .locals 2
    .param p1, "list"    # Ljava/util/List;
    .param p2, "set"    # Ljava/util/Set;

    .line 99
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    .line 100
    if-eqz p2, :cond_0

    .line 103
    iput-object p2, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    .line 104
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Set must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 298
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decorate(Ljava/util/List;)Lorg/apache/commons/collections/list/SetUniqueList;
    .locals 3
    .param p0, "list"    # Ljava/util/List;

    .line 74
    if-eqz p0, :cond_1

    .line 77
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lorg/apache/commons/collections/list/SetUniqueList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/list/SetUniqueList;-><init>(Ljava/util/List;Ljava/util/Set;)V

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    .local v0, "temp":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 82
    new-instance v1, Lorg/apache/commons/collections/list/SetUniqueList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/collections/list/SetUniqueList;-><init>(Ljava/util/List;Ljava/util/Set;)V

    .line 83
    .local v1, "sl":Lorg/apache/commons/collections/list/SetUniqueList;
    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/list/SetUniqueList;->addAll(Ljava/util/Collection;)Z

    .line 84
    return-object v1

    .line 75
    .end local v0    # "temp":Ljava/util/List;
    .end local v1    # "sl":Lorg/apache/commons/collections/list/SetUniqueList;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->add(ILjava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_0
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SetUniqueList;->size()I

    move-result v0

    .line 133
    .local v0, "sizeBefore":I
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SetUniqueList;->size()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/collections/list/SetUniqueList;->add(ILjava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SetUniqueList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "coll"    # Ljava/util/Collection;

    .line 187
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SetUniqueList;->size()I

    move-result v0

    .line 190
    .local v0, "sizeBefore":I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SetUniqueList;->size()I

    move-result v2

    .line 192
    .local v2, "sizeBeforeAddNext":I
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/collections/list/SetUniqueList;->add(ILjava/lang/Object;)V

    .line 194
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SetUniqueList;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 195
    add-int/lit8 p1, p1, 0x1

    .line 197
    .end local v2    # "sizeBeforeAddNext":I
    :cond_0
    goto :goto_0

    .line 200
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SetUniqueList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "coll"    # Ljava/util/Collection;

    .line 167
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SetUniqueList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/SetUniqueList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public asSet()Ljava/util/Set;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 257
    invoke-super {p0}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->clear()V

    .line 258
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 259
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "coll"    # Ljava/util/Collection;

    .line 266
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected createSetBasedOnList(Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;
    .locals 3
    .param p1, "set"    # Ljava/util/Set;
    .param p2, "list"    # Ljava/util/List;

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "subSet":Ljava/util/Set;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/collections/list/SetUniqueList;->class$java$util$HashSet:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "java.util.HashSet"

    invoke-static {v2}, Lorg/apache/commons/collections/list/SetUniqueList;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/collections/list/SetUniqueList;->class$java$util$HashSet:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    goto :goto_1

    .line 302
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "iae":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v0, v2

    goto :goto_1

    .line 303
    .end local v1    # "iae":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 304
    .local v1, "ie":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v0, v2

    .line 307
    .end local v1    # "ie":Ljava/lang/InstantiationException;
    :goto_0
    nop

    .line 309
    :goto_1
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 310
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .line 270
    new-instance v0, Lorg/apache/commons/collections/list/SetUniqueList$SetListIterator;

    invoke-super {p0}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/list/SetUniqueList$SetListIterator;-><init>(Ljava/util/Iterator;Ljava/util/Set;)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 3

    .line 274
    new-instance v0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;

    invoke-super {p0}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;-><init>(Ljava/util/ListIterator;Ljava/util/Set;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .param p1, "index"    # I

    .line 278
    new-instance v0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;

    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;-><init>(Ljava/util/ListIterator;Ljava/util/Set;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 239
    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 241
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 233
    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 234
    .local v0, "result":Z
    iget-object v1, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 235
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1, "coll"    # Ljava/util/Collection;

    .line 245
    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 246
    .local v0, "result":Z
    iget-object v1, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 247
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1, "coll"    # Ljava/util/Collection;

    .line 251
    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 252
    .local v0, "result":Z
    iget-object v1, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 253
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 217
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/SetUniqueList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 218
    .local v0, "pos":I
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 220
    .local v1, "removed":Ljava/lang/Object;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eq v0, p1, :cond_0

    .line 223
    invoke-super {p0, v0}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->remove(I)Ljava/lang/Object;

    .line 226
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 227
    iget-object v2, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    return-object v1
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 282
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 283
    .local v0, "superSubList":Ljava/util/List;
    iget-object v1, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections/list/SetUniqueList;->createSetBasedOnList(Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    .line 284
    .local v1, "subSet":Ljava/util/Set;
    new-instance v2, Lorg/apache/commons/collections/list/SetUniqueList;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/collections/list/SetUniqueList;-><init>(Ljava/util/List;Ljava/util/Set;)V

    return-object v2
.end method
