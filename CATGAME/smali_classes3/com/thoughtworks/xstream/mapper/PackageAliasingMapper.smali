.class public Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "PackageAliasingMapper.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final REVERSE:Ljava/util/Comparator;


# instance fields
.field protected transient nameToPackage:Ljava/util/Map;

.field private packageToName:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper$1;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper$1;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;->REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 2
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 42
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;->REVERSE:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;->packageToName:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;->nameToPackage:Ljava/util/Map;

    .line 43
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;->REVERSE:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;->packageToName:Ljava/util/Map;

    .line 98
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;->nameToPackage:Ljava/util/Map;

    .line 100
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;->packageToName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 102
    .local v1, "type":Ljava/lang/Object;
    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;->nameToPackage:Ljava/util/Map;

    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;->packageToName:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .end local v1    # "type":Ljava/lang/Object;
    goto :goto_0

    .line 104
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;->packageToName:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 93
    return-void
.end method


# virtual methods
.method public addPackageAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2e

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_1

    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;->nameToPackage:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;->packageToName:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public realClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p1, "elementName"    # Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 74
    .local v0, "length":I
    const/4 v1, -0x1

    .line 76
    .local v1, "dot":I
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 77
    if-gez v1, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "name":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;->nameToPackage:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 80
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 81
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-gez v1, :cond_2

    move-object v5, p1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v1, 0x1

    .line 82
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    goto :goto_2

    .line 85
    :cond_3
    add-int/lit8 v0, v1, -0x1

    .line 86
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    if-gez v1, :cond_0

    .line 88
    :goto_2
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method

.method public serializedClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 7
    .param p1, "type"    # Ljava/lang/Class;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 59
    .local v1, "length":I
    const/4 v2, -0x1

    .line 61
    .local v2, "dot":I
    :goto_0
    const/16 v3, 0x2e

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 62
    if-gez v2, :cond_0

    const-string v3, ""

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "pkg":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;->packageToName:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 64
    .local v4, "alias":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 65
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-gez v2, :cond_1

    move-object v6, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 67
    :cond_2
    add-int/lit8 v1, v2, -0x1

    .line 68
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "alias":Ljava/lang/String;
    if-gez v2, :cond_3

    .line 69
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 68
    :cond_3
    goto :goto_0
.end method
