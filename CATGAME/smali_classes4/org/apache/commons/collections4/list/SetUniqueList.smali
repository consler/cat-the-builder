.class public Lorg/apache/commons/collections4/list/SetUniqueList;
.super Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;
.source "SetUniqueList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;,
        Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x63e0d12ac47e0a26L


# instance fields
.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    .line 101
    if-eqz p2, :cond_0

    .line 104
    iput-object p2, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    .line 105
    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Set must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setUniqueList(Ljava/util/List;)Lorg/apache/commons/collections4/list/SetUniqueList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/list/SetUniqueList<",
            "TE;>;"
        }
    .end annotation

    .line 76
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    if-eqz p0, :cond_1

    .line 79
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Lorg/apache/commons/collections4/list/SetUniqueList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/list/SetUniqueList;-><init>(Ljava/util/List;Ljava/util/Set;)V

    return-object v0

    .line 82
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 84
    new-instance v1, Lorg/apache/commons/collections4/list/SetUniqueList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/collections4/list/SetUniqueList;-><init>(Ljava/util/List;Ljava/util/Set;)V

    .line 85
    .local v1, "sl":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/list/SetUniqueList;->addAll(Ljava/util/Collection;)Z

    .line 86
    return-object v1

    .line 77
    .end local v0    # "temp":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .end local v1    # "sl":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->add(ILjava/lang/Object;)V

    .line 158
    :cond_0
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/SetUniqueList;->size()I

    move-result v0

    .line 134
    .local v0, "sizeBefore":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/SetUniqueList;->size()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/collections4/list/SetUniqueList;->add(ILjava/lang/Object;)V

    .line 137
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/SetUniqueList;->size()I

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 195
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    .local p2, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 197
    .local v2, "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 201
    :cond_1
    invoke-super {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->addAll(ILjava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 175
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/SetUniqueList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections4/list/SetUniqueList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public asSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 294
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->clear()V

    .line 295
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 296
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 300
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 305
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected createSetBasedOnList(Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 347
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .local v0, "subSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    goto :goto_1

    .line 351
    .end local v0    # "subSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .restart local v0    # "subSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    goto :goto_1

    .line 352
    .end local v0    # "subSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 356
    .local v0, "ie":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 359
    .local v0, "subSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :goto_1
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 310
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;

    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;-><init>(Ljava/util/Iterator;Ljava/util/Set;)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;

    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;-><init>(Ljava/util/ListIterator;Ljava/util/Set;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 320
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;-><init>(Ljava/util/ListIterator;Ljava/util/Set;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 244
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 245
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 246
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 235
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 236
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 237
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->remove(Ljava/lang/Object;)Z

    .line 239
    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 261
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 262
    .local v0, "result":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 263
    .local v2, "name":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/list/SetUniqueList;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 264
    .end local v2    # "name":Ljava/lang/Object;
    goto :goto_0

    .line 265
    :cond_0
    return v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 254
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 255
    .local v0, "result":Z
    iget-object v1, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 256
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 279
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 280
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 281
    const/4 v1, 0x0

    return v1

    .line 283
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 284
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->clear()V

    goto :goto_0

    .line 287
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-super {p0, v1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->retainAll(Ljava/util/Collection;)Z

    .line 289
    :goto_0
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 218
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/list/SetUniqueList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 219
    .local v0, "pos":I
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 221
    .local v1, "removed":Ljava/lang/Object;, "TE;"
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eq v0, p1, :cond_0

    .line 224
    invoke-super {p0, v0}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->remove(I)Ljava/lang/Object;

    .line 227
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 228
    iget-object v2, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    return-object v1
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 331
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList;, "Lorg/apache/commons/collections4/list/SetUniqueList<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 332
    .local v0, "superSubList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/list/SetUniqueList;->createSetBasedOnList(Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    .line 333
    .local v1, "subSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v2, Lorg/apache/commons/collections4/list/SetUniqueList;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/collections4/list/SetUniqueList;-><init>(Ljava/util/List;Ljava/util/Set;)V

    invoke-static {v2}, Lorg/apache/commons/collections4/ListUtils;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
