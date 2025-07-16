.class public abstract Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "AbstractAttributeAliasingMapper.java"


# instance fields
.field protected final aliasToName:Ljava/util/Map;

.field protected transient nameToAlias:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->aliasToName:Ljava/util/Map;

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->nameToAlias:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addAliasFor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->aliasToName:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->nameToAlias:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method readResolve()Ljava/lang/Object;
    .locals 4

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->nameToAlias:Ljava/util/Map;

    .line 39
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->aliasToName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->nameToAlias:Ljava/util/Map;

    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->aliasToName:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method
