.class public Lorg/apache/commons/collections/map/MultiValueMap;
.super Lorg/apache/commons/collections/map/AbstractMapDecorator;
.source "MultiValueMap.java"

# interfaces
.implements Lorg/apache/commons/collections/MultiMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;,
        Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;,
        Lorg/apache/commons/collections/map/MultiValueMap$Values;
    }
.end annotation


# static fields
.field static synthetic class$java$util$ArrayList:Ljava/lang/Class;


# instance fields
.field private final collectionFactory:Lorg/apache/commons/collections/Factory;

.field private transient values:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;

    sget-object v2, Lorg/apache/commons/collections/map/MultiValueMap;->class$java$util$ArrayList:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "java.util.ArrayList"

    invoke-static {v2}, Lorg/apache/commons/collections/map/MultiValueMap;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/collections/map/MultiValueMap;->class$java$util$ArrayList:Ljava/lang/Class;

    :cond_0
    invoke-direct {v1, v2}, Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/map/MultiValueMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)V

    .line 110
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)V
    .locals 2
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "collectionFactory"    # Lorg/apache/commons/collections/Factory;

    .line 120
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 121
    if-eqz p2, :cond_0

    .line 124
    iput-object p2, p0, Lorg/apache/commons/collections/map/MultiValueMap;->collectionFactory:Lorg/apache/commons/collections/Factory;

    .line 125
    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 78
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

.method public static decorate(Ljava/util/Map;)Lorg/apache/commons/collections/map/MultiValueMap;
    .locals 3
    .param p0, "map"    # Ljava/util/Map;

    .line 78
    new-instance v0, Lorg/apache/commons/collections/map/MultiValueMap;

    new-instance v1, Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;

    sget-object v2, Lorg/apache/commons/collections/map/MultiValueMap;->class$java$util$ArrayList:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "java.util.ArrayList"

    invoke-static {v2}, Lorg/apache/commons/collections/map/MultiValueMap;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/collections/map/MultiValueMap;->class$java$util$ArrayList:Ljava/lang/Class;

    :cond_0
    invoke-direct {v1, v2}, Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/map/MultiValueMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)V

    return-object v0
.end method

.method public static decorate(Ljava/util/Map;Ljava/lang/Class;)Lorg/apache/commons/collections/map/MultiValueMap;
    .locals 2
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "collectionClass"    # Ljava/lang/Class;

    .line 89
    new-instance v0, Lorg/apache/commons/collections/map/MultiValueMap;

    new-instance v1, Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;

    invoke-direct {v1, p1}, Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/map/MultiValueMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)V

    return-object v0
.end method

.method public static decorate(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)Lorg/apache/commons/collections/map/MultiValueMap;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "collectionFactory"    # Lorg/apache/commons/collections/Factory;

    .line 100
    new-instance v0, Lorg/apache/commons/collections/map/MultiValueMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiValueMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 141
    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 180
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiValueMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 181
    .local v0, "pairs":Ljava/util/Set;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 182
    return v1

    .line 184
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 185
    .local v2, "pairsIterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 187
    .local v3, "keyValuePair":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 188
    .local v4, "coll":Ljava/util/Collection;
    invoke-interface {v4, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 189
    const/4 v1, 0x1

    return v1

    .line 191
    .end local v3    # "keyValuePair":Ljava/util/Map$Entry;
    .end local v4    # "coll":Ljava/util/Collection;
    :cond_1
    goto :goto_0

    .line 192
    :cond_2
    return v1
.end method

.method public containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 267
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 268
    .local v0, "coll":Ljava/util/Collection;
    if-nez v0, :cond_0

    .line 269
    const/4 v1, 0x0

    return v1

    .line 271
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected createCollection(I)Ljava/util/Collection;
    .locals 1
    .param p1, "size"    # I

    .line 367
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiValueMap;->collectionFactory:Lorg/apache/commons/collections/Factory;

    invoke-interface {v0}, Lorg/apache/commons/collections/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public getCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 282
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiValueMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public iterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 334
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    return-object v0

    .line 337
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;-><init>(Lorg/apache/commons/collections/map/MultiValueMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "result":Z
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 208
    .local v1, "coll":Ljava/util/Collection;
    if-nez v1, :cond_0

    .line 209
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/map/MultiValueMap;->createCollection(I)Ljava/util/Collection;

    move-result-object v1

    .line 210
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 211
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 213
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiValueMap;->getMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const/4 v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 219
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    move-object v2, p2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .param p1, "map"    # Ljava/util/Map;

    .line 234
    instance-of v0, p1, Lorg/apache/commons/collections/MultiMap;

    if-eqz v0, :cond_1

    .line 235
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 237
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 238
    .local v2, "coll":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/apache/commons/collections/map/MultiValueMap;->putAll(Ljava/lang/Object;Ljava/util/Collection;)Z

    .line 239
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "coll":Ljava/util/Collection;
    goto :goto_0

    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    goto :goto_2

    .line 241
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 243
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/map/MultiValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_1

    .line 246
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_2
    :goto_2
    return-void
.end method

.method public putAll(Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "values"    # Ljava/util/Collection;

    .line 308
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 311
    :cond_0
    const/4 v0, 0x0

    .line 312
    .local v0, "result":Z
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 313
    .local v1, "coll":Ljava/util/Collection;
    if-nez v1, :cond_1

    .line 314
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/map/MultiValueMap;->createCollection(I)Ljava/util/Collection;

    move-result-object v1

    .line 315
    invoke-interface {v1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 316
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 318
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiValueMap;->getMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const/4 v0, 0x1

    goto :goto_0

    .line 322
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 324
    :cond_2
    :goto_0
    return v0

    .line 309
    .end local v0    # "result":Z
    .end local v1    # "coll":Ljava/util/Collection;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 157
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 158
    .local v0, "valuesForKey":Ljava/util/Collection;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 159
    return-object v1

    .line 161
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 162
    .local v2, "removed":Z
    if-nez v2, :cond_1

    .line 163
    return-object v1

    .line 165
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_2
    return-object p2
.end method

.method public size(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 292
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 293
    .local v0, "coll":Ljava/util/Collection;
    if-nez v0, :cond_0

    .line 294
    const/4 v1, 0x0

    return v1

    .line 296
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    return v1
.end method

.method public totalSize()I
    .locals 5

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "total":I
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiValueMap;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 349
    .local v1, "values":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 351
    .local v3, "coll":Ljava/util/Collection;
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 352
    .end local v3    # "coll":Ljava/util/Collection;
    goto :goto_0

    .line 353
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_0
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    .line 256
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiValueMap;->values:Ljava/util/Collection;

    .line 257
    .local v0, "vs":Ljava/util/Collection;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/commons/collections/map/MultiValueMap$Values;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/collections/map/MultiValueMap$Values;-><init>(Lorg/apache/commons/collections/map/MultiValueMap;Lorg/apache/commons/collections/map/MultiValueMap$1;)V

    iput-object v1, p0, Lorg/apache/commons/collections/map/MultiValueMap;->values:Ljava/util/Collection;

    :goto_0
    return-object v1
.end method
