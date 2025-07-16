.class public Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "DefaultImplementationsMapper.java"


# static fields
.field static synthetic class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

.field static synthetic class$java$lang$Boolean:Ljava/lang/Class;

.field static synthetic class$java$lang$Byte:Ljava/lang/Class;

.field static synthetic class$java$lang$Character:Ljava/lang/Class;

.field static synthetic class$java$lang$Double:Ljava/lang/Class;

.field static synthetic class$java$lang$Float:Ljava/lang/Class;

.field static synthetic class$java$lang$Integer:Ljava/lang/Class;

.field static synthetic class$java$lang$Long:Ljava/lang/Class;

.field static synthetic class$java$lang$Short:Ljava/lang/Class;


# instance fields
.field private transient implToType:Ljava/util/Map;

.field private final typeToImpl:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 30
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->typeToImpl:Ljava/util/Map;

    .line 31
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->implToType:Ljava/util/Map;

    .line 35
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->addDefaults()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 40
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

.method private readResolve()Ljava/lang/Object;
    .locals 4

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->implToType:Ljava/util/Map;

    .line 77
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->typeToImpl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->implToType:Ljava/util/Map;

    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->typeToImpl:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance p2, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Default implementation is not a concrete class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 58
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->typeToImpl:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->implToType:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected addDefaults()V
    .locals 2

    .line 40
    sget-object v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.mapper.Mapper$Null"

    invoke-static {v0}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 42
    sget-object v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$java$lang$Boolean:Ljava/lang/Class;

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 43
    sget-object v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.lang.Character"

    invoke-static {v0}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$java$lang$Character:Ljava/lang/Class;

    :cond_2
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 44
    sget-object v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$java$lang$Integer:Ljava/lang/Class;

    :cond_3
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 45
    sget-object v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "java.lang.Float"

    invoke-static {v0}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$java$lang$Float:Ljava/lang/Class;

    :cond_4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 46
    sget-object v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.lang.Double"

    invoke-static {v0}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$java$lang$Double:Ljava/lang/Class;

    :cond_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 47
    sget-object v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "java.lang.Short"

    invoke-static {v0}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$java$lang$Short:Ljava/lang/Class;

    :cond_6
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 48
    sget-object v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$java$lang$Byte:Ljava/lang/Class;

    :cond_7
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 49
    sget-object v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string v0, "java.lang.Long"

    invoke-static {v0}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->class$java$lang$Long:Ljava/lang/Class;

    :cond_8
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->typeToImpl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->typeToImpl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public serializedClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->implToType:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 64
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0, v0}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
