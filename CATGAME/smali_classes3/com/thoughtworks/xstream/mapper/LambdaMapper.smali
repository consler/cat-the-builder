.class public Lcom/thoughtworks/xstream/mapper/LambdaMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "LambdaMapper.java"


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method


# virtual methods
.method public serializedClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 10

    .line 38
    invoke-static {p1}, Lcom/thoughtworks/xstream/core/util/Types;->isLambdaType(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 39
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 41
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    move v2, v3

    :goto_0
    if-nez v1, :cond_4

    .line 42
    array-length v4, v0

    if-ge v2, v4, :cond_4

    .line 43
    aget-object v4, v0, v2

    .line 44
    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 45
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->isDefault()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v1, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    :cond_2
    aget-object v0, v0, v3

    move-object v1, v0

    goto :goto_3

    .line 55
    :cond_3
    const-class v1, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    :cond_4
    :goto_3
    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    move-object p1, v1

    .line 58
    :goto_4
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
