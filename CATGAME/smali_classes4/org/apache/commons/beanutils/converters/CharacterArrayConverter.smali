.class public final Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;
.super Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;
.source "CharacterArrayConverter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MODEL:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->MODEL:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->defaultValue:Ljava/lang/Object;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->useDefault:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 62
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->defaultValue:Ljava/lang/Object;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->useDefault:Z

    .line 67
    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "value"    # Ljava/lang/Object;

    .line 97
    if-nez p2, :cond_1

    .line 98
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->useDefault:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object v0

    .line 101
    :cond_0
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    const-string v1, "No value specified"

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    sget-object v0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->MODEL:[C

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 107
    return-object p2

    .line 111
    :cond_2
    sget-object v0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->strings:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    .line 113
    :try_start_0
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 114
    .local v0, "values":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [C

    .line 115
    .local v1, "results":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 116
    aget-object v4, v0, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    .end local v3    # "i":I
    :cond_3
    return-object v1

    .line 119
    .end local v0    # "values":[Ljava/lang/String;
    .end local v1    # "results":[C
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->useDefault:Z

    if-eqz v1, :cond_4

    .line 121
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object v1

    .line 123
    :cond_4
    new-instance v1, Lorg/apache/commons/beanutils/ConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->parseElements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 132
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [C

    .line 133
    .restart local v1    # "results":[C
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_6

    .line 134
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 136
    .end local v3    # "i":I
    :cond_6
    return-object v1

    .line 137
    .end local v0    # "list":Ljava/util/List;
    .end local v1    # "results":[C
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->useDefault:Z

    if-eqz v1, :cond_7

    .line 139
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object v1

    .line 141
    :cond_7
    new-instance v1, Lorg/apache/commons/beanutils/ConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
