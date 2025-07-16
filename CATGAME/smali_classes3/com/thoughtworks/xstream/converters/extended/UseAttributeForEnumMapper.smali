.class Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;
.super Lcom/thoughtworks/xstream/mapper/AttributeMapper;
.source "UseAttributeForEnumMapper.java"


# static fields
.field static synthetic class$com$thoughtworks$xstream$mapper$DefaultMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

.field static synthetic class$java$lang$Object:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0, v0}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 29
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

.method static createEnumMapper(Lcom/thoughtworks/xstream/mapper/Mapper;)Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 4

    :try_start_0
    const-string v0, "com.thoughtworks.xstream.mapper.EnumMapper"

    .line 55
    sget-object v1, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "com.thoughtworks.xstream.mapper.Mapper"

    .line 57
    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    .line 55
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 58
    new-instance v2, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;

    sget-object v3, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->class$com$thoughtworks$xstream$mapper$DefaultMapper:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "com.thoughtworks.xstream.mapper.DefaultMapper"

    .line 61
    invoke-static {v3}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->class$com$thoughtworks$xstream$mapper$DefaultMapper:Ljava/lang/Class;

    :cond_1
    invoke-interface {p0, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    .line 58
    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/thoughtworks/xstream/mapper/Mapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isEnum(Ljava/lang/Class;)Z
    .locals 2

    :goto_0
    if-eqz p0, :cond_2

    .line 29
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->class$java$lang$Object:Ljava/lang/Class;

    :cond_0
    if-eq p0, v0, :cond_2

    .line 30
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Enum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldLookForSingleValueConverter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0

    .line 40
    invoke-static {p2}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->isEnum(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
