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
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    .line 23
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 29
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

.method static createEnumMapper(Lcom/thoughtworks/xstream/mapper/Mapper;)Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 5
    .param p0, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 55
    :try_start_0
    const-string v0, "com.thoughtworks.xstream.mapper.EnumMapper"

    sget-object v1, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "com.thoughtworks.xstream.mapper.Mapper"

    .line 57
    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 55
    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 58
    .local v0, "enumMapperClass":Ljava/lang/Class;
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;

    sget-object v4, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->class$com$thoughtworks$xstream$mapper$DefaultMapper:Ljava/lang/Class;

    if-nez v4, :cond_1

    const-string v4, "com.thoughtworks.xstream.mapper.DefaultMapper"

    .line 61
    invoke-static {v4}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->class$com$thoughtworks$xstream$mapper$DefaultMapper:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->class$com$thoughtworks$xstream$mapper$DefaultMapper:Ljava/lang/Class;

    :goto_1
    invoke-interface {p0, v4}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    aput-object v3, v1, v2

    .line 58
    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 62
    .end local v0    # "enumMapperClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isEnum(Ljava/lang/Class;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/Class;

    .line 29
    :goto_0
    if-eqz p0, :cond_2

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

    .line 31
    const/4 v0, 0x1

    return v0

    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 35
    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/Class;

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "definedIn"    # Ljava/lang/Class;

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldLookForSingleValueConverter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "definedIn"    # Ljava/lang/Class;

    .line 40
    invoke-static {p2}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->isEnum(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
