.class public Lorg/apache/commons/collections4/map/DefaultedMap;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source "DefaultedMap.java"

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
        "Lorg/apache/commons/collections4/map/AbstractMapDecorator<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x11ea71c4da63L


# instance fields
.field private final value:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Lorg/apache/commons/collections4/map/DefaultedMap;, "Lorg/apache/commons/collections4/map/DefaultedMap<TK;TV;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->constantTransformer(Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/map/DefaultedMap;-><init>(Lorg/apache/commons/collections4/Transformer;)V

    .line 153
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TV;>;)V"
        }
    .end annotation

    .line 172
    .local p0, "this":Lorg/apache/commons/collections4/map/DefaultedMap;, "Lorg/apache/commons/collections4/map/DefaultedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "defaultValueTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TK;+TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 173
    if-eqz p2, :cond_0

    .line 176
    iput-object p2, p0, Lorg/apache/commons/collections4/map/DefaultedMap;->value:Lorg/apache/commons/collections4/Transformer;

    .line 177
    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Transformer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/Transformer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TV;>;)V"
        }
    .end annotation

    .line 161
    .local p0, "this":Lorg/apache/commons/collections4/map/DefaultedMap;, "Lorg/apache/commons/collections4/map/DefaultedMap<TK;TV;>;"
    .local p1, "defaultValueTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TK;+TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/map/DefaultedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)V

    .line 162
    return-void
.end method

.method public static defaultedMap(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Map;
    .locals 2
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
            "-TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 135
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TK;+TV;>;"
    if-eqz p1, :cond_0

    .line 138
    new-instance v0, Lorg/apache/commons/collections4/map/DefaultedMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/map/DefaultedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transformer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static defaultedMap(Ljava/util/Map;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/DefaultedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TV;)",
            "Lorg/apache/commons/collections4/map/DefaultedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 94
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/apache/commons/collections4/map/DefaultedMap;

    invoke-static {p1}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->constantTransformer(Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/DefaultedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method

.method public static defaultedMap(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/map/DefaultedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "+TV;>;)",
            "Lorg/apache/commons/collections4/map/DefaultedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 112
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/collections4/Factory;, "Lorg/apache/commons/collections4/Factory<+TV;>;"
    if-eqz p1, :cond_0

    .line 115
    new-instance v0, Lorg/apache/commons/collections4/map/DefaultedMap;

    invoke-static {p1}, Lorg/apache/commons/collections4/functors/FactoryTransformer;->factoryTransformer(Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/DefaultedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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

    .line 200
    .local p0, "this":Lorg/apache/commons/collections4/map/DefaultedMap;, "Lorg/apache/commons/collections4/map/DefaultedMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 201
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/DefaultedMap;->map:Ljava/util/Map;

    .line 202
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

    .line 187
    .local p0, "this":Lorg/apache/commons/collections4/map/DefaultedMap;, "Lorg/apache/commons/collections4/map/DefaultedMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 188
    iget-object v0, p0, Lorg/apache/commons/collections4/map/DefaultedMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 189
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 209
    .local p0, "this":Lorg/apache/commons/collections4/map/DefaultedMap;, "Lorg/apache/commons/collections4/map/DefaultedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/DefaultedMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/DefaultedMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/DefaultedMap;->value:Lorg/apache/commons/collections4/Transformer;

    .line 211
    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 209
    :cond_1
    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0
.end method
