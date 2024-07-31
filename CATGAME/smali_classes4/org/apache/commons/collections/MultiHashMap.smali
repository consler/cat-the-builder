.class public Lorg/apache/commons/collections/MultiHashMap;
.super Ljava/util/HashMap;
.source "MultiHashMap.java"

# interfaces
.implements Lorg/apache/commons/collections/MultiMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/MultiHashMap$ValueIterator;,
        Lorg/apache/commons/collections/MultiHashMap$Values;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1af8ed01208a04d5L


# instance fields
.field private transient values:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/MultiHashMap;->values:Ljava/util/Collection;

    .line 82
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 90
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/MultiHashMap;->values:Ljava/util/Collection;

    .line 91
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/MultiHashMap;->values:Ljava/util/Collection;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .param p1, "mapToCopy"    # Ljava/util/Map;

    .line 120
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/MultiHashMap;->values:Ljava/util/Collection;

    .line 121
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->putAll(Ljava/util/Map;)V

    .line 122
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 132
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 135
    const-string v0, "1.2"

    .line 137
    .local v0, "version":Ljava/lang/String;
    :try_start_0
    const-string v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    .line 142
    :goto_0
    const-string v1, "1.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/MultiHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 146
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-super {p0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_1

    .line 149
    .end local v1    # "iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 358
    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 359
    .local v0, "pairs":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 360
    .local v1, "pairsIterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 362
    .local v2, "keyValuePair":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 363
    .local v3, "coll":Ljava/util/Collection;
    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 364
    .end local v2    # "keyValuePair":Ljava/util/Map$Entry;
    .end local v3    # "coll":Ljava/util/Collection;
    goto :goto_0

    .line 365
    :cond_0
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    .line 366
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .line 465
    invoke-super {p0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/MultiHashMap;

    .line 468
    .local v0, "cloned":Lorg/apache/commons/collections/MultiHashMap;
    invoke-virtual {v0}, Lorg/apache/commons/collections/MultiHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 470
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 471
    .local v3, "coll":Ljava/util/Collection;
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/MultiHashMap;->createCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    .line 472
    .local v4, "newColl":Ljava/util/Collection;
    invoke-interface {v2, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "coll":Ljava/util/Collection;
    .end local v4    # "newColl":Ljava/util/Collection;
    goto :goto_0

    .line 474
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 290
    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 292
    .local v0, "pairs":Ljava/util/Set;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 293
    return v1

    .line 295
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 296
    .local v2, "pairsIterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 298
    .local v3, "keyValuePair":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 299
    .local v4, "coll":Ljava/util/Collection;
    invoke-interface {v4, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 300
    const/4 v1, 0x1

    return v1

    .line 302
    .end local v3    # "keyValuePair":Ljava/util/Map$Entry;
    .end local v4    # "coll":Ljava/util/Collection;
    :cond_1
    goto :goto_0

    .line 303
    :cond_2
    return v1
.end method

.method public containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 314
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 315
    .local v0, "coll":Ljava/util/Collection;
    if-nez v0, :cond_0

    .line 316
    const/4 v1, 0x0

    return v1

    .line 318
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected createCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p1, "coll"    # Ljava/util/Collection;

    .line 486
    if-nez p1, :cond_0

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 489
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 177
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public iterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 203
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 204
    .local v0, "coll":Ljava/util/Collection;
    if-nez v0, :cond_0

    .line 205
    sget-object v1, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    return-object v1

    .line 207
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 223
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 224
    .local v0, "coll":Ljava/util/Collection;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/MultiHashMap;->createCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 226
    invoke-super {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 229
    .local v2, "results":Z
    if-eqz v2, :cond_1

    move-object v1, p2

    :cond_1
    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .param p1, "map"    # Ljava/util/Map;

    .line 242
    instance-of v0, p1, Lorg/apache/commons/collections/MultiMap;

    if-eqz v0, :cond_1

    .line 243
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 245
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 246
    .local v2, "coll":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/apache/commons/collections/MultiHashMap;->putAll(Ljava/lang/Object;Ljava/util/Collection;)Z

    .line 247
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "coll":Ljava/util/Collection;
    goto :goto_0

    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    goto :goto_2

    .line 249
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

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 251
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/MultiHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_1

    .line 254
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_2
    :goto_2
    return-void
.end method

.method public putAll(Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "values"    # Ljava/util/Collection;

    .line 265
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 269
    .local v1, "coll":Ljava/util/Collection;
    if-nez v1, :cond_2

    .line 270
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/MultiHashMap;->createCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 271
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 272
    return v0

    .line 274
    :cond_1
    invoke-super {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const/4 v0, 0x1

    return v0

    .line 277
    :cond_2
    invoke-interface {v1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 266
    .end local v1    # "coll":Ljava/util/Collection;
    :cond_3
    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "item"    # Ljava/lang/Object;

    .line 335
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 336
    .local v0, "valuesForKey":Ljava/util/Collection;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 337
    return-object v1

    .line 339
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 340
    .local v2, "removed":Z
    if-nez v2, :cond_1

    .line 341
    return-object v1

    .line 345
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_2
    return-object p2
.end method

.method public size(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 188
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 189
    .local v0, "coll":Ljava/util/Collection;
    if-nez v0, :cond_0

    .line 190
    const/4 v1, 0x0

    return v1

    .line 192
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    return v1
.end method

.method superValuesIterator()Ljava/util/Iterator;
    .locals 1

    .line 386
    invoke-super {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public totalSize()I
    .locals 5

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "total":I
    invoke-super {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 161
    .local v1, "values":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 163
    .local v3, "coll":Ljava/util/Collection;
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 164
    .end local v3    # "coll":Ljava/util/Collection;
    goto :goto_0

    .line 165
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_0
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    .line 376
    iget-object v0, p0, Lorg/apache/commons/collections/MultiHashMap;->values:Ljava/util/Collection;

    .line 377
    .local v0, "vs":Ljava/util/Collection;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/commons/collections/MultiHashMap$Values;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/collections/MultiHashMap$Values;-><init>(Lorg/apache/commons/collections/MultiHashMap;Lorg/apache/commons/collections/MultiHashMap$1;)V

    iput-object v1, p0, Lorg/apache/commons/collections/MultiHashMap;->values:Ljava/util/Collection;

    :goto_0
    return-object v1
.end method
