.class public Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "ClassAliasingMapper.java"


# instance fields
.field private final classToName:Ljava/util/Map;

.field private transient nameToType:Ljava/util/Map;

.field private final typeToName:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 33
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->typeToName:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->classToName:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->nameToType:Ljava/util/Map;

    .line 34
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->nameToType:Ljava/util/Map;

    .line 98
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->classToName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 100
    .local v1, "type":Ljava/lang/Object;
    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->nameToType:Ljava/util/Map;

    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->classToName:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .end local v1    # "type":Ljava/lang/Object;
    goto :goto_0

    .line 102
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->typeToName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 104
    .local v1, "type":Ljava/lang/Class;
    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->nameToType:Ljava/util/Map;

    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->typeToName:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v1    # "type":Ljava/lang/Class;
    goto :goto_1

    .line 106
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_1
    return-object p0
.end method


# virtual methods
.method public addClassAlias(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .line 37
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->nameToType:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->classToName:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public addClassAttributeAlias(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->addClassAlias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 46
    return-void
.end method

.method public addTypeAlias(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .line 49
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->nameToType:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->typeToName:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public aliasIsAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->nameToType:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public itemTypeAsAttribute(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 86
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->classToName:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public realClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "elementName"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->nameToType:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "mappedName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 72
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/util/Primitives;->primitiveType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 73
    .local v1, "type":Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 74
    return-object v1

    .line 76
    :cond_0
    move-object p1, v0

    .line 79
    .end local v1    # "type":Ljava/lang/Class;
    :cond_1
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public serializedClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;

    .line 54
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->classToName:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    .local v0, "alias":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 56
    return-object v0

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->typeToName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 60
    .local v2, "compatibleType":Ljava/lang/Class;
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->typeToName:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 63
    .end local v2    # "compatibleType":Ljava/lang/Class;
    :cond_1
    goto :goto_0

    .line 64
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_2
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
