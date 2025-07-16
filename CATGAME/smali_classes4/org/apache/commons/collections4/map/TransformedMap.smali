.class public Lorg/apache/commons/collections4/map/TransformedMap;
.super Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;
.source "TransformedMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x61773fe05df15a70L


# instance fields
.field protected final keyTransformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TK;>;"
        }
    .end annotation
.end field

.field protected final valueTransformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TV;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TV;+TV;>;)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;-><init>(Ljava/util/Map;)V

    .line 130
    iput-object p2, p0, Lorg/apache/commons/collections4/map/TransformedMap;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    .line 131
    iput-object p3, p0, Lorg/apache/commons/collections4/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 158
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/commons/collections4/map/TransformedMap;->map:Ljava/util/Map;

    return-void
.end method

.method public static transformedMap(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/map/TransformedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TV;+TV;>;)",
            "Lorg/apache/commons/collections4/map/TransformedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 106
    new-instance v0, Lorg/apache/commons/collections4/map/TransformedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/map/TransformedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    .line 107
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 108
    invoke-virtual {v0, p0}, Lorg/apache/commons/collections4/map/TransformedMap;->transformMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 109
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/TransformedMap;->clear()V

    .line 110
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/TransformedMap;->decorated()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method public static transformingMap(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/map/TransformedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TV;+TV;>;)",
            "Lorg/apache/commons/collections4/map/TransformedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 83
    new-instance v0, Lorg/apache/commons/collections4/map/TransformedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/map/TransformedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 144
    iget-object v0, p0, Lorg/apache/commons/collections4/map/TransformedMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected checkSetValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/apache/commons/collections4/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 52
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected isSetValueChecking()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/apache/commons/collections4/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 239
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/TransformedMap;->transformKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 240
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/map/TransformedMap;->transformValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 241
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/TransformedMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 246
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/TransformedMap;->transformMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 247
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/TransformedMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method protected transformKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/apache/commons/collections4/map/TransformedMap;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    if-nez v0, :cond_0

    return-object p1

    .line 174
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected transformMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 202
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 205
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/map/LinkedMap;-><init>(I)V

    .line 207
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/map/TransformedMap;->transformKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/map/TransformedMap;->transformValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected transformValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/apache/commons/collections4/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

    if-nez v0, :cond_0

    return-object p1

    .line 189
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
