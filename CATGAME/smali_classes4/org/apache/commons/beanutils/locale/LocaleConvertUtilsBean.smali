.class public Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;
.super Ljava/lang/Object;
.source "LocaleConvertUtilsBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean$DelegateFastHashMap;
    }
.end annotation


# instance fields
.field private applyLocalized:Z

.field private defaultLocale:Ljava/util/Locale;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final mapConverters:Lorg/apache/commons/collections/FastHashMap;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    .line 105
    const-class v1, Lorg/apache/commons/beanutils/locale/LocaleConvertUtils;

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    .line 111
    new-instance v1, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean$DelegateFastHashMap;

    invoke-static {}, Lorg/apache/commons/beanutils/BeanUtils;->createCache()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean$DelegateFastHashMap;-><init>(Ljava/util/Map;Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean$1;)V

    iput-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    .line 120
    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->deregister()V

    .line 122
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    .line 123
    return-void
.end method

.method public static getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;
    .locals 1

    .line 93
    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleBeanUtilsInstance()Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 232
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p3, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 250
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convert(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/util/Locale;
    .param p4, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 269
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Convert string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " locale and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pattern"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 275
    :cond_0
    move-object v0, p2

    .line 276
    .local v0, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->lookup(Ljava/lang/Class;Ljava/util/Locale;)Lorg/apache/commons/beanutils/locale/LocaleConverter;

    move-result-object v1

    .line 278
    .local v1, "converter":Lorg/apache/commons/beanutils/locale/LocaleConverter;
    if-nez v1, :cond_1

    .line 279
    const-class v2, Ljava/lang/String;

    invoke-virtual {p0, v2, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->lookup(Ljava/lang/Class;Ljava/util/Locale;)Lorg/apache/commons/beanutils/locale/LocaleConverter;

    move-result-object v1

    .line 280
    const-class v0, Ljava/lang/String;

    .line 282
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    iget-object v2, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Using converter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 286
    :cond_2
    invoke-interface {v1, v0, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConverter;->convert(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 319
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convert([Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "values"    # [Ljava/lang/String;
    .param p3, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 303
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convert([Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "values"    # [Ljava/lang/String;
    .param p3, "locale"    # Ljava/util/Locale;
    .param p4, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 337
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p2

    .line 338
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 341
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Convert String["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] to class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[] using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " locale and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 347
    :cond_1
    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 348
    .local v1, "array":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 349
    aget-object v3, p1, v2

    invoke-virtual {p0, v3, v0, p3, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convert(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "pattern"    # Ljava/lang/String;

    .line 214
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->lookup(Ljava/lang/Class;Ljava/util/Locale;)Lorg/apache/commons/beanutils/locale/LocaleConverter;

    move-result-object v0

    .line 216
    .local v0, "converter":Lorg/apache/commons/beanutils/locale/LocaleConverter;
    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1, p1, p3}, Lorg/apache/commons/beanutils/locale/LocaleConverter;->convert(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method protected create(Ljava/util/Locale;)Lorg/apache/commons/collections/FastHashMap;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 466
    new-instance v0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean$DelegateFastHashMap;

    invoke-static {}, Lorg/apache/commons/beanutils/BeanUtils;->createCache()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean$DelegateFastHashMap;-><init>(Ljava/util/Map;Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean$1;)V

    .line 467
    .local v0, "converter":Lorg/apache/commons/collections/FastHashMap;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    .line 469
    const-class v1, Ljava/math/BigDecimal;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/BigDecimalLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/BigDecimalLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-class v1, Ljava/math/BigInteger;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/BigIntegerLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/BigIntegerLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-class v1, Ljava/lang/Byte;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/ByteLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/ByteLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/ByteLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/ByteLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-class v1, Ljava/lang/Double;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/DoubleLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/DoubleLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/DoubleLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/DoubleLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-class v1, Ljava/lang/Float;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/FloatLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/FloatLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/FloatLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/FloatLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-class v1, Ljava/lang/Integer;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/IntegerLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/IntegerLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/IntegerLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/IntegerLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-class v1, Ljava/lang/Long;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/LongLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/LongLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/LongLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/LongLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-class v1, Ljava/lang/Short;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/ShortLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/ShortLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/ShortLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/ShortLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-class v1, Ljava/lang/String;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-class v1, Ljava/sql/Date;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/SqlDateLocaleConverter;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/SqlDateLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-class v1, Ljava/sql/Time;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/SqlTimeLocaleConverter;

    const-string v3, "HH:mm:ss"

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/SqlTimeLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-class v1, Ljava/sql/Timestamp;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/SqlTimestampLocaleConverter;

    const-string v3, "yyyy-MM-dd HH:mm:ss.S"

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/SqlTimestampLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    .line 502
    return-object v0
.end method

.method public deregister()V
    .locals 3

    .line 374
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->lookup(Ljava/util/Locale;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v0

    .line 376
    .local v0, "defaultConverter":Lorg/apache/commons/collections/FastHashMap;
    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    .line 378
    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections/FastHashMap;->clear()V

    .line 379
    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    iget-object v2, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    .line 382
    return-void
.end method

.method public deregister(Ljava/lang/Class;Ljava/util/Locale;)V
    .locals 1
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    .line 404
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->lookup(Ljava/util/Locale;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/FastHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    return-void
.end method

.method public deregister(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 392
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/FastHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    return-void
.end method

.method public getApplyLocalized()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    return v0
.end method

.method public getDefaultLocale()Ljava/util/Locale;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public lookup(Ljava/lang/Class;Ljava/util/Locale;)Lorg/apache/commons/beanutils/locale/LocaleConverter;
    .locals 4
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Locale;",
            ")",
            "Lorg/apache/commons/beanutils/locale/LocaleConverter;"
        }
    .end annotation

    .line 418
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->lookup(Ljava/util/Locale;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/FastHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/beanutils/locale/LocaleConverter;

    .line 420
    .local v0, "converter":Lorg/apache/commons/beanutils/locale/LocaleConverter;
    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocaleConverter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 424
    :cond_0
    return-object v0
.end method

.method protected lookup(Ljava/util/Locale;)Lorg/apache/commons/collections/FastHashMap;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 440
    if-nez p1, :cond_0

    .line 441
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/FastHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/FastHashMap;

    .local v0, "localeConverters":Lorg/apache/commons/collections/FastHashMap;
    goto :goto_0

    .line 444
    .end local v0    # "localeConverters":Lorg/apache/commons/collections/FastHashMap;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/FastHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/FastHashMap;

    .line 446
    .restart local v0    # "localeConverters":Lorg/apache/commons/collections/FastHashMap;
    if-nez v0, :cond_1

    .line 447
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->create(Ljava/util/Locale;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    invoke-virtual {v1, p1, v0}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_1
    :goto_0
    return-object v0
.end method

.method public register(Lorg/apache/commons/beanutils/locale/LocaleConverter;Ljava/lang/Class;Ljava/util/Locale;)V
    .locals 1
    .param p1, "converter"    # Lorg/apache/commons/beanutils/locale/LocaleConverter;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/beanutils/locale/LocaleConverter;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    .line 366
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->lookup(Ljava/util/Locale;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    return-void
.end method

.method public setApplyLocalized(Z)V
    .locals 0
    .param p1, "newApplyLocalized"    # Z

    .line 167
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    .line 168
    return-void
.end method

.method public setDefaultLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 142
    if-nez p1, :cond_0

    .line 143
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    goto :goto_0

    .line 146
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    .line 148
    :goto_0
    return-void
.end method
