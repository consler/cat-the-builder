.class public Lorg/apache/commons/beanutils/ConvertUtils;
.super Ljava/lang/Object;
.source "ConvertUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 282
    .local p1, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 251
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 268
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 234
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deregister()V
    .locals 1

    .line 294
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->deregister()V

    .line 295
    return-void
.end method

.method public static deregister(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 308
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->deregister(Ljava/lang/Class;)V

    .line 309
    return-void
.end method

.method public static getDefaultBoolean()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getDefaultBoolean()Z

    move-result v0

    return v0
.end method

.method public static getDefaultByte()B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getDefaultByte()B

    move-result v0

    return v0
.end method

.method public static getDefaultCharacter()C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getDefaultCharacter()C

    move-result v0

    return v0
.end method

.method public static getDefaultDouble()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getDefaultDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultFloat()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getDefaultFloat()F

    move-result v0

    return v0
.end method

.method public static getDefaultInteger()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getDefaultInteger()I

    move-result v0

    return v0
.end method

.method public static getDefaultLong()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getDefaultLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultShort()S
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 206
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getDefaultShort()S

    move-result v0

    return v0
.end method

.method public static lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/beanutils/Converter;"
        }
    .end annotation

    .line 324
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    return-object v0
.end method

.method public static lookup(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/beanutils/Converter;"
        }
    .end annotation

    .line 337
    .local p0, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    return-object v0
.end method

.method public static primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 370
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 375
    const-class v0, Ljava/lang/Integer;

    return-object v0

    .line 376
    :cond_1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 377
    const-class v0, Ljava/lang/Double;

    return-object v0

    .line 378
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 379
    const-class v0, Ljava/lang/Long;

    return-object v0

    .line 380
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 381
    const-class v0, Ljava/lang/Boolean;

    return-object v0

    .line 382
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 383
    const-class v0, Ljava/lang/Float;

    return-object v0

    .line 384
    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 385
    const-class v0, Ljava/lang/Short;

    return-object v0

    .line 386
    :cond_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 387
    const-class v0, Ljava/lang/Byte;

    return-object v0

    .line 388
    :cond_7
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    .line 389
    const-class v0, Ljava/lang/Character;

    return-object v0

    .line 391
    :cond_8
    return-object p0

    .line 371
    :cond_9
    :goto_0
    return-object p0
.end method

.method public static register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V
    .locals 1
    .param p0, "converter"    # Lorg/apache/commons/beanutils/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/beanutils/Converter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 352
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    .line 353
    return-void
.end method

.method public static setDefaultBoolean(Z)V
    .locals 1
    .param p0, "newDefaultBoolean"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->setDefaultBoolean(Z)V

    .line 57
    return-void
.end method

.method public static setDefaultByte(B)V
    .locals 1
    .param p0, "newDefaultByte"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->setDefaultByte(B)V

    .line 80
    return-void
.end method

.method public static setDefaultCharacter(C)V
    .locals 1
    .param p0, "newDefaultCharacter"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->setDefaultCharacter(C)V

    .line 103
    return-void
.end method

.method public static setDefaultDouble(D)V
    .locals 1
    .param p0, "newDefaultDouble"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->setDefaultDouble(D)V

    .line 126
    return-void
.end method

.method public static setDefaultFloat(F)V
    .locals 1
    .param p0, "newDefaultFloat"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->setDefaultFloat(F)V

    .line 149
    return-void
.end method

.method public static setDefaultInteger(I)V
    .locals 1
    .param p0, "newDefaultInteger"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->setDefaultInteger(I)V

    .line 172
    return-void
.end method

.method public static setDefaultLong(J)V
    .locals 1
    .param p0, "newDefaultLong"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->setDefaultLong(J)V

    .line 195
    return-void
.end method

.method public static setDefaultShort(S)V
    .locals 1
    .param p0, "newDefaultShort"    # S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->setDefaultShort(S)V

    .line 218
    return-void
.end method
