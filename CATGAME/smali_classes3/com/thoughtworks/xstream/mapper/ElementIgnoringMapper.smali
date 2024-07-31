.class public Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "ElementIgnoringMapper.java"


# static fields
.field static synthetic class$java$lang$Object:Ljava/lang/Class;


# instance fields
.field protected final fieldsToOmit:Ljava/util/Set;

.field protected final unknownElementsToIgnore:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 32
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->fieldsToOmit:Ljava/util/Set;

    .line 29
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->unknownElementsToIgnore:Ljava/util/Set;

    .line 33
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 46
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

.method private key(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-direct {v0, p1, p2}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addElementsToIgnore(Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 36
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->unknownElementsToIgnore:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public isIgnoredElement(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->unknownElementsToIgnore:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->unknownElementsToIgnore:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 56
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const/4 v2, 0x1

    return v2

    .line 59
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    :cond_0
    goto :goto_0

    .line 61
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_1
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isIgnoredElement(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public omitField(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->fieldsToOmit:Ljava/util/Set;

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->key(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 2
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->fieldsToOmit:Ljava/util/Set;

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->key(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    return v1

    .line 46
    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->class$java$lang$Object:Ljava/lang/Class;

    :cond_1
    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->isIgnoredElement(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    return v1

    .line 49
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
