.class public final Lorg/apache/commons/beanutils/converters/StringArrayConverter;
.super Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;
.source "StringArrayConverter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INT_MODEL:[I

.field private static final MODEL:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->MODEL:[Ljava/lang/String;

    .line 84
    new-array v0, v0, [I

    sput-object v0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->INT_MODEL:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->defaultValue:Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->useDefault:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 65
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->defaultValue:Ljava/lang/Object;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->useDefault:Z

    .line 70
    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "value"    # Ljava/lang/Object;

    .line 127
    if-nez p2, :cond_1

    .line 128
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->useDefault:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object v0

    .line 131
    :cond_0
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    const-string v1, "No value specified"

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    sget-object v0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->MODEL:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 137
    return-object p2

    .line 141
    :cond_2
    sget-object v0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->INT_MODEL:[I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 143
    move-object v0, p2

    check-cast v0, [I

    check-cast v0, [I

    .line 144
    .local v0, "values":[I
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 145
    .local v1, "results":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 147
    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "i":I
    :cond_3
    return-object v1

    .line 156
    .end local v0    # "values":[I
    .end local v1    # "results":[Ljava/lang/String;
    :cond_4
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->parseElements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 157
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 158
    .restart local v1    # "results":[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 159
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    .end local v2    # "i":I
    :cond_5
    return-object v1

    .line 162
    .end local v0    # "list":Ljava/util/List;
    .end local v1    # "results":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->useDefault:Z

    if-eqz v1, :cond_6

    .line 164
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object v1

    .line 166
    :cond_6
    new-instance v1, Lorg/apache/commons/beanutils/ConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
