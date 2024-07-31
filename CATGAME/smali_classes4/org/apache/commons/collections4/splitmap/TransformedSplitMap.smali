.class public Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;
.super Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;
.source "TransformedSplitMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/Put;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/Put<",
        "TJ;TU;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x52ce997d9f345e62L


# instance fields
.field private final keyTransformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TJ;+TK;>;"
        }
    .end annotation
.end field

.field private final valueTransformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TU;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TJ;+TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TU;+TV;>;)V"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;, "Lorg/apache/commons/collections4/splitmap/TransformedSplitMap<TJ;TK;TU;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "keyTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TJ;+TK;>;"
    .local p3, "valueTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TU;+TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;-><init>(Ljava/util/Map;)V

    .line 116
    if-eqz p2, :cond_1

    .line 119
    iput-object p2, p0, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    .line 120
    if-eqz p3, :cond_0

    .line 123
    iput-object p3, p0, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

    .line 124
    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ValueTransformer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "KeyTransformer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 148
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;, "Lorg/apache/commons/collections4/splitmap/TransformedSplitMap<TJ;TK;TU;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 149
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->map:Ljava/util/Map;

    .line 150
    return-void
.end method

.method public static transformingMap(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TJ;+TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TU;+TV;>;)",
            "Lorg/apache/commons/collections4/splitmap/TransformedSplitMap<",
            "TJ;TK;TU;TV;>;"
        }
    .end annotation

    .line 98
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "keyTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TJ;+TK;>;"
    .local p2, "valueTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TU;+TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;, "Lorg/apache/commons/collections4/splitmap/TransformedSplitMap<TJ;TK;TU;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 135
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 136
    return-void
.end method


# virtual methods
.method protected checkSetValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)TV;"
        }
    .end annotation

    .line 205
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;, "Lorg/apache/commons/collections4/splitmap/TransformedSplitMap<TJ;TK;TU;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 221
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;, "Lorg/apache/commons/collections4/splitmap/TransformedSplitMap<TJ;TK;TU;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 222
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;TU;)TV;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;, "Lorg/apache/commons/collections4/splitmap/TransformedSplitMap<TJ;TK;TU;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TJ;"
    .local p2, "value":Ljava/lang/Object;, "TU;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->transformKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->transformValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TJ;+TU;>;)V"
        }
    .end annotation

    .line 216
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;, "Lorg/apache/commons/collections4/splitmap/TransformedSplitMap<TJ;TK;TU;TV;>;"
    .local p1, "mapToCopy":Ljava/util/Map;, "Ljava/util/Map<+TJ;+TU;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->transformMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 217
    return-void
.end method

.method protected transformKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)TK;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;, "Lorg/apache/commons/collections4/splitmap/TransformedSplitMap<TJ;TK;TU;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TJ;"
    iget-object v0, p0, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected transformMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TJ;+TU;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 187
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;, "Lorg/apache/commons/collections4/splitmap/TransformedSplitMap<TJ;TK;TU;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TJ;+TU;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    return-object p1

    .line 190
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/map/LinkedMap;-><init>(I)V

    .line 192
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 193
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TJ;+TU;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->transformKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->transformValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TJ;+TU;>;"
    goto :goto_0

    .line 195
    :cond_1
    return-object v0
.end method

.method protected transformValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)TV;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;, "Lorg/apache/commons/collections4/splitmap/TransformedSplitMap<TJ;TK;TU;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
