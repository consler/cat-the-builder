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

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    .line 64
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 71
    new-instance v0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, p2}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    return-void
.end method

.method private addInterfacesToXml(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 3

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    .line 92
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 93
    aget-object v1, p1, v0

    const-string v2, "interface"

    .line 94
    invoke-interface {p2, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v2, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    .line 96
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 42
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 75
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

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 3

    .line 79
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->addInterfacesToXml(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    const-string p1, "handler"

    .line 81
    invoke-interface {p2, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v1, "class"

    invoke-interface {p1, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-interface {p3, v0}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 87
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 5

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 105
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 106
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "interface"

    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v3, "handler"

    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v3, "class"

    invoke-interface {v1, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {p1, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    .line 116
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Class;

    .line 122
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->HANDLER:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    .line 125
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v2

    sget-object v4, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->DUMMY:Ljava/lang/reflect/InvocationHandler;

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 127
    :cond_3
    invoke-interface {p2, v2, v1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/InvocationHandler;

    .line 128
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    if-eqz v0, :cond_4

    .line 130
    invoke-static {v0, v2, p2}, Lcom/thoughtworks/xstream/core/util/Fields;->write(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 132
    :cond_4
    iget-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p1, v3, p2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    :goto_3
    return-object v2

    .line 119
    :cond_5
    new-instance p1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string p2, "No InvocationHandler specified for dynamic proxy"

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
