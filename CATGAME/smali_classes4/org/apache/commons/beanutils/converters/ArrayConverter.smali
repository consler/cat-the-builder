.class public Lorg/apache/commons/beanutils/converters/ArrayConverter;
.super Lorg/apache/commons/beanutils/converters/AbstractConverter;
.source "ArrayConverter.java"


# instance fields
.field private allowedChars:[C

.field private defaultSize:I

.field private final defaultType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private delimiter:C

.field private final elementConverter:Lorg/apache/commons/beanutils/Converter;

.field private onlyFirstToString:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V
    .locals 2
    .param p2, "elementConverter"    # Lorg/apache/commons/beanutils/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/beanutils/Converter;",
            ")V"
        }
    .end annotation

    .line 150
    .local p1, "defaultType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>()V

    .line 133
    const/16 v0, 0x2c

    iput-char v0, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->delimiter:C

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->allowedChars:[C

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->onlyFirstToString:Z

    .line 151
    if-eqz p1, :cond_2

    .line 154
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    if-eqz p2, :cond_0

    .line 160
    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->defaultType:Ljava/lang/Class;

    .line 161
    iput-object p2, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->elementConverter:Lorg/apache/commons/beanutils/Converter;

    .line 162
    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Component Converter is missing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default type must be an array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default type is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 2
        0x2es
        0x2ds
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;I)V
    .locals 2
    .param p2, "elementConverter"    # Lorg/apache/commons/beanutils/Converter;
    .param p3, "defaultSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/beanutils/Converter;",
            "I)V"
        }
    .end annotation

    .line 177
    .local p1, "defaultType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/beanutils/converters/ArrayConverter;-><init>(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 178
    iput p3, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->defaultSize:I

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "defaultValue":Ljava/lang/Object;
    if-ltz p3, :cond_0

    .line 181
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 183
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->setDefaultValue(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method private parseElements(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 437
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing elements, delimiter=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->delimiter:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "], value=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 442
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 443
    const-string v0, "{"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 450
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/StreamTokenizer;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 451
    .local v0, "st":Ljava/io/StreamTokenizer;
    iget-char v1, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->delimiter:C

    iget-char v2, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->delimiter:C

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 452
    const/16 v1, 0x39

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Ljava/io/StreamTokenizer;->ordinaryChars(II)V

    .line 453
    invoke-virtual {v0, v2, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 454
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->allowedChars:[C

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, v1, v3

    .line 455
    .local v4, "allowedChar":C
    invoke-virtual {v0, v4, v4}, Ljava/io/StreamTokenizer;->ordinaryChars(II)V

    .line 456
    invoke-virtual {v0, v4, v4}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 454
    .end local v4    # "allowedChar":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 460
    :cond_2
    const/4 v1, 0x0

    .line 462
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    .line 463
    .local v2, "ttype":I
    const/4 v3, -0x3

    if-eq v2, v3, :cond_7

    if-lez v2, :cond_3

    goto :goto_2

    .line 470
    :cond_3
    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    .line 471
    nop

    .line 478
    .end local v2    # "ttype":I
    if-nez v1, :cond_4

    .line 479
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    .line 481
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 482
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " elements parsed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 486
    :cond_5
    return-object v1

    .line 473
    .restart local v2    # "ttype":I
    :cond_6
    new-instance v3, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encountered token of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " parsing elements to \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "value":Ljava/lang/String;
    throw v3

    .line 464
    .restart local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "value":Ljava/lang/String;
    :cond_7
    :goto_2
    iget-object v3, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 465
    if-nez v1, :cond_8

    .line 466
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 468
    :cond_8
    iget-object v3, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v2    # "ttype":I
    :cond_9
    goto :goto_1

    .line 488
    .end local v0    # "st":Ljava/io/StreamTokenizer;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error converting from String to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected convertArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 332
    return-object p1
.end method

.method protected convertToCollection(Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "*>;"
        }
    .end annotation

    .line 357
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 358
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    return-object v0

    .line 360
    :cond_0
    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_2

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_2

    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->parseElements(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 363
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 364
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    return-object v0
.end method

.method protected convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "size":I
    const/4 v1, 0x0

    .line 240
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 241
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->convertToCollection(Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    .line 245
    .local v3, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v0

    .line 246
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 249
    .end local v3    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    if-nez v0, :cond_1

    .line 250
    const-class v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->getDefault(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 253
    :cond_1
    iget-boolean v3, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->onlyFirstToString:Z

    if-eqz v3, :cond_2

    .line 254
    const/4 v0, 0x1

    .line 258
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v3, "buffer":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_6

    .line 260
    if-lez v4, :cond_3

    .line 261
    iget-char v5, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->delimiter:C

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    :cond_3
    if-nez v1, :cond_4

    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 264
    .local v5, "element":Ljava/lang/Object;
    :goto_2
    iget-object v6, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->elementConverter:Lorg/apache/commons/beanutils/Converter;

    const-class v7, Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 265
    if-eqz v5, :cond_5

    .line 266
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .end local v5    # "element":Ljava/lang/Object;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 270
    .end local v4    # "i":I
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected convertToType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 286
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "size":I
    const/4 v1, 0x0

    .line 295
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->convertToCollection(Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 299
    .local v2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 300
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 304
    .end local v2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 305
    .local v2, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 308
    .local v3, "newArray":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 309
    if-nez v1, :cond_1

    invoke-static {p2, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 312
    .local v5, "element":Ljava/lang/Object;
    :goto_2
    iget-object v6, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->elementConverter:Lorg/apache/commons/beanutils/Converter;

    invoke-interface {v6, v2, v5}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 313
    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 308
    .end local v5    # "element":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 320
    .end local v4    # "i":I
    :cond_2
    move-object v4, v3

    .line 321
    .local v4, "result":Ljava/lang/Object;, "TT;"
    return-object v4

    .line 287
    .end local v0    # "size":I
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "newArray":Ljava/lang/Object;
    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    :cond_3
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot handle conversion to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' (not an array)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getDefault(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 379
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 380
    return-object v1

    .line 383
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/beanutils/converters/AbstractConverter;->getDefault(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 384
    .local v0, "defaultValue":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 385
    return-object v1

    .line 388
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    return-object v0

    .line 391
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->defaultSize:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected getDefaultType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->defaultType:Ljava/lang/Class;

    return-object v0
.end method

.method public setAllowedChars([C)V
    .locals 0
    .param p1, "allowedChars"    # [C

    .line 202
    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->allowedChars:[C

    .line 203
    return-void
.end method

.method public setDelimiter(C)V
    .locals 0
    .param p1, "delimiter"    # C

    .line 192
    iput-char p1, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->delimiter:C

    .line 193
    return-void
.end method

.method public setOnlyFirstToString(Z)V
    .locals 0
    .param p1, "onlyFirstToString"    # Z

    .line 215
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->onlyFirstToString:Z

    .line 216
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v1, "[UseDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->isUseDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 407
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->elementConverter:Lorg/apache/commons/beanutils/Converter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
