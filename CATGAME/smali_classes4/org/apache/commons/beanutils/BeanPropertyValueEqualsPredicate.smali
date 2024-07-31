.class public Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;
.super Ljava/lang/Object;
.source "BeanPropertyValueEqualsPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;


# instance fields
.field private ignoreNull:Z

.field private final log:Lorg/apache/commons/logging/Log;

.field private propertyName:Ljava/lang/String;

.field private propertyValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # Ljava/lang/Object;

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # Ljava/lang/Object;
    .param p3, "ignoreNull"    # Z

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->log:Lorg/apache/commons/logging/Log;

    .line 168
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->propertyName:Ljava/lang/String;

    .line 170
    iput-object p2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->propertyValue:Ljava/lang/Object;

    .line 171
    iput-boolean p3, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->ignoreNull:Z

    .line 175
    return-void

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "propertyName cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .line 197
    const/4 v0, 0x0

    .line 200
    .local v0, "evaluation":Z
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->propertyValue:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->propertyName:Ljava/lang/String;

    .line 201
    invoke-static {p1, v2}, Lorg/apache/commons/beanutils/PropertyUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 200
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->evaluateValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "Property not found."

    .line 230
    .local v2, "errorMsg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Property not found."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 231
    .local v3, "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v3, v1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 232
    iget-object v5, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 234
    :cond_0
    throw v3

    .line 221
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .end local v2    # "errorMsg":Ljava/lang/String;
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "Exception occurred in property\'s getter"

    .line 223
    .restart local v2    # "errorMsg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Exception occurred in property\'s getter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 224
    .restart local v3    # "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v3, v1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 225
    iget-object v5, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 227
    :cond_1
    throw v3

    .line 214
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "errorMsg":Ljava/lang/String;
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "Unable to access the property provided."

    .line 216
    .restart local v2    # "errorMsg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to access the property provided."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 217
    .restart local v3    # "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v3, v1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 218
    iget-object v5, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 220
    :cond_2
    throw v3

    .line 202
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "errorMsg":Ljava/lang/String;
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "Problem during evaluation. Null value encountered in property path..."

    .line 205
    .restart local v2    # "errorMsg":Ljava/lang/String;
    iget-boolean v3, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->ignoreNull:Z

    if-eqz v3, :cond_3

    .line 206
    iget-object v3, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING: Problem during evaluation. Null value encountered in property path..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 235
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "errorMsg":Ljava/lang/String;
    :goto_0
    nop

    .line 237
    return v0

    .line 208
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "errorMsg":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem during evaluation. Null value encountered in property path..."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v3    # "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v3, v1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 210
    iget-object v5, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 212
    :cond_4
    throw v3
.end method

.method protected evaluateValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 249
    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyValue()Ljava/lang/Object;
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->propertyValue:Ljava/lang/Object;

    return-object v0
.end method

.method public isIgnoreNull()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->ignoreNull:Z

    return v0
.end method
