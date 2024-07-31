.class public Lorg/apache/commons/collections/map/TransformedMap;
.super Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;
.source "TransformedMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x61773fe05df15a70L


# instance fields
.field protected final keyTransformer:Lorg/apache/commons/collections/Transformer;

.field protected final valueTransformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V
    .locals 0
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "keyTransformer"    # Lorg/apache/commons/collections/Transformer;
    .param p3, "valueTransformer"    # Lorg/apache/commons/collections/Transformer;

    .line 114
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;-><init>(Ljava/util/Map;)V

    .line 115
    iput-object p2, p0, Lorg/apache/commons/collections/map/TransformedMap;->keyTransformer:Lorg/apache/commons/collections/Transformer;

    .line 116
    iput-object p3, p0, Lorg/apache/commons/collections/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    .line 117
    return-void
.end method

.method public static decorate(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "keyTransformer"    # Lorg/apache/commons/collections/Transformer;
    .param p2, "valueTransformer"    # Lorg/apache/commons/collections/Transformer;

    .line 74
    new-instance v0, Lorg/apache/commons/collections/map/TransformedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/map/TransformedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method

.method public static decorateTransform(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;
    .locals 3
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "keyTransformer"    # Lorg/apache/commons/collections/Transformer;
    .param p2, "valueTransformer"    # Lorg/apache/commons/collections/Transformer;

    .line 92
    new-instance v0, Lorg/apache/commons/collections/map/TransformedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/map/TransformedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V

    .line 93
    .local v0, "decorated":Lorg/apache/commons/collections/map/TransformedMap;
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 94
    invoke-virtual {v0, p0}, Lorg/apache/commons/collections/map/TransformedMap;->transformMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 95
    .local v1, "transformed":Ljava/util/Map;
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/TransformedMap;->clear()V

    .line 96
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/TransformedMap;->getMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 98
    .end local v1    # "transformed":Ljava/util/Map;
    :cond_0
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 142
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/map/TransformedMap;->map:Ljava/util/Map;

    .line 143
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 129
    iget-object v0, p0, Lorg/apache/commons/collections/map/TransformedMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 130
    return-void
.end method


# virtual methods
.method protected checkSetValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lorg/apache/commons/collections/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected isSetValueChecking()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/commons/collections/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 219
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/TransformedMap;->transformKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 220
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/map/TransformedMap;->transformValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 221
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/TransformedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .param p1, "mapToCopy"    # Ljava/util/Map;

    .line 225
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/TransformedMap;->transformMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 226
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/TransformedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 227
    return-void
.end method

.method protected transformKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lorg/apache/commons/collections/map/TransformedMap;->keyTransformer:Lorg/apache/commons/collections/Transformer;

    if-nez v0, :cond_0

    .line 156
    return-object p1

    .line 158
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected transformMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .param p1, "map"    # Ljava/util/Map;

    .line 185
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    return-object p1

    .line 188
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/LinkedMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/map/LinkedMap;-><init>(I)V

    .line 189
    .local v0, "result":Ljava/util/Map;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 191
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/map/TransformedMap;->transformKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/collections/map/TransformedMap;->transformValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 193
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method protected transformValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lorg/apache/commons/collections/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    if-nez v0, :cond_0

    .line 171
    return-object p1

    .line 173
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
