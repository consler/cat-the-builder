.class public Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;
.super Ljava/lang/Object;
.source "DynamicProxyConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# static fields
.field private static final DUMMY:Ljava/lang/reflect/InvocationHandler;

.field private static final HANDLER:Ljava/lang/reflect/Field;

.field static synthetic class$com$thoughtworks$xstream$converters$extended$DynamicProxyConverter:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$DynamicProxyMapper$DynamicProxy:Ljava/lang/Class;

.field static synthetic class$java$lang$reflect$InvocationHandler:Ljava/lang/Class;

.field static synthetic class$java$lang$reflect$Proxy:Ljava/lang/Class;


# instance fields
.field private classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

.field private mapper:Lcom/thoughtworks/xstream/mapper/Mapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$java$lang$reflect$Proxy:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.reflect.Proxy"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$java$lang$reflect$Proxy:Ljava/lang/Class;

    :cond_0
    sget-object v1, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$java$lang$reflect$InvocationHandler:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.lang.reflect.InvocationHandler"

    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$java$lang$reflect$InvocationHandler:Ljava/lang/Class;

    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/thoughtworks/xstream/core/util/Fields;->locate(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->HANDLER:Ljava/lang/reflect/Field;

    .line 43
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter$1;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter$1;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->DUMMY:Ljava/lang/reflect/InvocationHandler;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 53
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$com$thoughtworks$xstream$converters$extended$DynamicProxyConverter:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.converters.extended.DynamicProxyConverter"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$com$thoughtworks$xstream$converters$extended$DynamicProxyConverter:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/ClassLoader;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V
    .locals 0
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "classLoaderReference"    # Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    .line 64
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 71
    new-instance v0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, p2}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    .line 72
    return-void
.end method

.method private addInterfacesToXml(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 4
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 92
    .local v0, "interfaces":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 93
    aget-object v2, v0, v1

    .line 94
    .local v2, "currentInterface":Ljava/lang/Class;
    const-string v3, "interface"

    invoke-interface {p2, v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v3, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    .line 96
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 92
    .end local v2    # "currentInterface":Ljava/lang/Class;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 42
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


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 75
    if-eqz p1, :cond_2

    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$com$thoughtworks$xstream$mapper$DynamicProxyMapper$DynamicProxy:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.mapper.DynamicProxyMapper$DynamicProxy"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$com$thoughtworks$xstream$mapper$DynamicProxyMapper$DynamicProxy:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 4
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 79
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 80
    .local v0, "invocationHandler":Ljava/lang/reflect/InvocationHandler;
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->addInterfacesToXml(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 81
    const-string v1, "handler"

    invoke-interface {p2, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v2, "class"

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "attributeName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 84
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-interface {p3, v0}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 87
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 88
    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 7
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "interfaces":Ljava/util/List;
    const/4 v1, 0x0

    .line 103
    .local v1, "handler":Ljava/lang/reflect/InvocationHandler;
    const/4 v2, 0x0

    .line 104
    .local v2, "handlerType":Ljava/lang/Class;
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 106
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "elementName":Ljava/lang/String;
    const-string v4, "interface"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    :cond_0
    const-string v4, "handler"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v5, "class"

    invoke-interface {v4, v5}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "attributeName":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 112
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {p1, v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 113
    goto :goto_2

    .line 116
    .end local v4    # "attributeName":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 117
    .end local v3    # "elementName":Ljava/lang/String;
    goto :goto_0

    .line 118
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Class;

    .line 122
    .local v3, "interfacesAsArray":[Ljava/lang/Class;
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 123
    const/4 v4, 0x0

    .line 124
    .local v4, "proxy":Ljava/lang/Object;
    sget-object v5, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->HANDLER:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_3

    .line 125
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v5}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v5

    sget-object v6, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->DUMMY:Ljava/lang/reflect/InvocationHandler;

    invoke-static {v5, v3, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    .line 127
    :cond_3
    invoke-interface {p2, v4, v2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Ljava/lang/reflect/InvocationHandler;

    .line 128
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 129
    sget-object v5, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->HANDLER:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_4

    .line 130
    invoke-static {v5, v4, v1}, Lcom/thoughtworks/xstream/core/util/Fields;->write(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 132
    :cond_4
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v5}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v5, v3, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    .line 134
    :goto_3
    return-object v4

    .line 119
    .end local v3    # "interfacesAsArray":[Ljava/lang/Class;
    .end local v4    # "proxy":Ljava/lang/Object;
    :cond_5
    new-instance v3, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v4, "No InvocationHandler specified for dynamic proxy"

    invoke-direct {v3, v4}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
