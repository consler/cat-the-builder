.class public final Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;
.super Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;
.source "BooleanArrayConverter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_CONVERTER:Lorg/apache/commons/beanutils/converters/BooleanConverter;

.field public static final MODEL:Ljava/lang/Class;


# instance fields
.field protected final booleanConverter:Lorg/apache/commons/beanutils/converters/BooleanConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    const/4 v0, 0x0

    new-array v0, v0, [Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->MODEL:Ljava/lang/Class;

    .line 119
    new-instance v0, Lorg/apache/commons/beanutils/converters/BooleanConverter;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>()V

    sput-object v0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->DEFAULT_CONVERTER:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>()V

    .line 59
    sget-object v0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->DEFAULT_CONVERTER:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->booleanConverter:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 75
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>(Ljava/lang/Object;)V

    .line 76
    sget-object v0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->DEFAULT_CONVERTER:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->booleanConverter:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/converters/BooleanConverter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "converter"    # Lorg/apache/commons/beanutils/converters/BooleanConverter;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 100
    invoke-direct {p0, p2}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>(Ljava/lang/Object;)V

    .line 101
    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->booleanConverter:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    .line 103
    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "value"    # Ljava/lang/Object;

    .line 186
    if-nez p2, :cond_1

    .line 187
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->useDefault:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object v0

    .line 190
    :cond_0
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    const-string v1, "No value specified"

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    sget-object v0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->MODEL:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 196
    return-object p2

    .line 203
    :cond_2
    sget-object v0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->strings:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 205
    :try_start_0
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 206
    .local v0, "values":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Z

    .line 207
    .local v1, "results":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 208
    aget-object v3, v0, v2

    .line 209
    .local v3, "stringValue":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->booleanConverter:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    const-class v5, Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v3}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 210
    .local v4, "result":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    aput-boolean v5, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v3    # "stringValue":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .end local v2    # "i":I
    :cond_3
    return-object v1

    .line 213
    .end local v0    # "values":[Ljava/lang/String;
    .end local v1    # "results":[Z
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->useDefault:Z

    if-eqz v1, :cond_4

    .line 215
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object v1

    .line 217
    :cond_4
    new-instance v1, Lorg/apache/commons/beanutils/ConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->parseElements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 228
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Z

    .line 229
    .restart local v1    # "results":[Z
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_6

    .line 230
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 231
    .restart local v3    # "stringValue":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->booleanConverter:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    const-class v5, Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v3}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 232
    .restart local v4    # "result":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    aput-boolean v5, v1, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    .end local v3    # "stringValue":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 234
    .end local v2    # "i":I
    :cond_6
    return-object v1

    .line 235
    .end local v0    # "list":Ljava/util/List;
    .end local v1    # "results":[Z
    :catch_1
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->useDefault:Z

    if-eqz v1, :cond_7

    .line 237
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object v1

    .line 239
    :cond_7
    new-instance v1, Lorg/apache/commons/beanutils/ConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
