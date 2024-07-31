.class public Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;
.super Ljava/lang/Object;
.source "JavaBeanConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$DuplicatePropertyException;,
        Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$DuplicateFieldException;
    }
.end annotation


# static fields
.field static synthetic class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;


# instance fields
.field protected final beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

.field private classAttributeIdentifier:Ljava/lang/String;

.field protected final mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 52
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "beanProvider"    # Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;Ljava/lang/Class;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;Ljava/lang/Class;)V
    .locals 0
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "beanProvider"    # Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;
    .param p3, "type"    # Ljava/lang/Class;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 65
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    .line 66
    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->type:Ljava/lang/Class;

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "type"    # Ljava/lang/Class;

    .line 56
    new-instance v0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;Ljava/lang/Class;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "classAttributeIdentifier"    # Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;)V

    .line 74
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->classAttributeIdentifier:Ljava/lang/String;

    .line 75
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 115
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private determineType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->classAttributeIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v1, "class"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "classAttributeName":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "classAttribute":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_2

    .line 169
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v2, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    return-object v2

    .line 171
    :cond_2
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    invoke-interface {v3, p2, p3}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;->getPropertyType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method

.method private instantiateNewInstance(Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 158
    invoke-interface {p1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->currentObject()Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->getRequiredType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 162
    :cond_0
    return-object v0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 82
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->type:Ljava/lang/Class;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;->canInstantiate(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 9
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 86
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v1, "class"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "classAttributeName":Ljava/lang/String;
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    new-instance v8, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v0

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;-><init>(Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    invoke-interface {v1, p1, v8}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;->visitSerializableProperties(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider$Visitor;)V

    .line 120
    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 8
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 123
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->instantiateNewInstance(Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    .local v0, "result":Ljava/lang/Object;
    new-instance v1, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$2;

    invoke-direct {v1, p0}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$2;-><init>(Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;)V

    .line 133
    .local v1, "seenProperties":Ljava/util/Set;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 134
    .local v2, "resultType":Ljava/lang/Class;
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 137
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/thoughtworks/xstream/mapper/Mapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "propertyName":Ljava/lang/String;
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v4, v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 140
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    invoke-interface {v4, v3, v2}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;->propertyDefinedInClass(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v4

    .line 142
    .local v4, "propertyExistsInClass":Z
    if-eqz v4, :cond_0

    .line 143
    invoke-direct {p0, p1, v0, v3}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->determineType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 144
    .local v5, "type":Ljava/lang/Class;
    invoke-interface {p2, v0, v5}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 145
    .local v6, "value":Ljava/lang/Object;
    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    invoke-interface {v7, v0, v3, v6}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;->writeProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    new-instance v7, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-direct {v7, v2, v3}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .end local v5    # "type":Ljava/lang/Class;
    .end local v6    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 147
    :cond_0
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v5, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->isIgnoredElement(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    goto :goto_2

    .line 148
    :cond_1
    new-instance v5, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 151
    .end local v4    # "propertyExistsInClass":Z
    :cond_2
    :goto_2
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 152
    .end local v3    # "propertyName":Ljava/lang/String;
    goto :goto_0

    .line 154
    :cond_3
    return-object v0
.end method
