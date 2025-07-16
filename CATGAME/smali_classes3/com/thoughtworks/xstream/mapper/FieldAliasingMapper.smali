.class public Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "FieldAliasingMapper.java"


# static fields
.field static synthetic class$com$thoughtworks$xstream$mapper$ElementIgnoringMapper:Ljava/lang/Class;

.field static synthetic class$java$lang$Object:Ljava/lang/Class;


# instance fields
.field protected final aliasToFieldMap:Ljava/util/Map;

.field private final elementIgnoringMapper:Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;

.field protected final fieldToAliasMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 27
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->fieldToAliasMap:Ljava/util/Map;

    .line 28
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->aliasToFieldMap:Ljava/util/Map;

    .line 33
    sget-object p1, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->class$com$thoughtworks$xstream$mapper$ElementIgnoringMapper:Ljava/lang/Class;

    if-nez p1, :cond_0

    const-string p1, "com.thoughtworks.xstream.mapper.ElementIgnoringMapper"

    .line 34
    invoke-static {p1}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->class$com$thoughtworks$xstream$mapper$ElementIgnoringMapper:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object p1

    check-cast p1, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;

    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->elementIgnoringMapper:Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 34
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

.method private getMember(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 85
    sget-object v1, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.Object"

    invoke-static {v1}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->class$java$lang$Object:Ljava/lang/Class;

    :cond_0
    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_1

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->key(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private key(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 61
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-direct {v0, p1, p2}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addFieldAlias(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->fieldToAliasMap:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->key(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->aliasToFieldMap:Ljava/util/Map;

    invoke-direct {p0, p2, p1}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->key(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addFieldsToIgnore(Ljava/util/regex/Pattern;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->elementIgnoringMapper:Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->addElementsToIgnore(Ljava/util/regex/Pattern;)V

    :cond_0
    return-void
.end method

.method public omitField(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->elementIgnoringMapper:Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->aliasToFieldMap:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->getMember(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->fieldToAliasMap:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->getMember(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method
