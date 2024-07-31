.class public Lorg/apache/commons/beanutils/BeanToPropertyValueTransformer;
.super Ljava/lang/Object;
.source "BeanToPropertyValueTransformer.java"

# interfaces
.implements Lorg/apache/commons/collections/Transformer;


# instance fields
.field private ignoreNull:Z

.field private final log:Lorg/apache/commons/logging/Log;

.field private propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/BeanToPropertyValueTransformer;-><init>(Ljava/lang/String;Z)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "ignoreNull"    # Z

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanToPropertyValueTransformer;->log:Lorg/apache/commons/logging/Log;

    .line 123
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 124
    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanToPropertyValueTransformer;->propertyName:Ljava/lang/String;

    .line 125
    iput-boolean p2, p0, Lorg/apache/commons/beanutils/BeanToPropertyValueTransformer;->ignoreNull:Z

    .line 130
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "propertyName cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanToPropertyValueTransformer;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public isIgnoreNull()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/BeanToPropertyValueTransformer;->ignoreNull:Z

    return v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .line 150
    const/4 v0, 0x0

    .line 153
    .local v0, "propertyValue":Ljava/lang/Object;
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanToPropertyValueTransformer;->propertyName:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/apache/commons/beanutils/PropertyUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 188
    :goto_0
    goto :goto_1

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No property found for name ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/beanutils/BeanToPropertyValueTransformer;->propertyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "errorMsg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 184
    .local v3, "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v3, v1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 185
    iget-object v4, p0, Lorg/apache/commons/beanutils/BeanToPropertyValueTransformer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4, v2, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 187
    :cond_0
    throw v3

    .line 173
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .end local v2    # "errorMsg":Ljava/lang/String;
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "Exception occurred in property\'s getter"

    .line 175
    .restart local v2    # "errorMsg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Exception occurred in property\'s getter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 176
    .restart local v3    # "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v3, v1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 177
    iget-object v5, p0, Lorg/apache/commons/beanutils/BeanToPropertyValueTransformer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 179
    :cond_1
    throw v3

    .line 166
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "errorMsg":Ljava/lang/String;
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "Unable to access the property provided."

    .line 168
    .restart local v2    # "errorMsg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to access the property provided."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 169
    .restart local v3    # "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v3, v1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 170
    iget-object v5, p0, Lorg/apache/commons/beanutils/BeanToPropertyValueTransformer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 172
    :cond_2
    throw v3

    .line 154
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "errorMsg":Ljava/lang/String;
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "Problem during transformation. Null value encountered in property path..."

    .line 157
    .restart local v2    # "errorMsg":Ljava/lang/String;
    iget-boolean v3, p0, Lorg/apache/commons/beanutils/BeanToPropertyValueTransformer;->ignoreNull:Z

    if-eqz v3, :cond_3

    .line 158
    iget-object v3, p0, Lorg/apache/commons/beanutils/BeanToPropertyValueTransformer;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING: Problem during transformation. Null value encountered in property path..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 190
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "errorMsg":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 160
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "errorMsg":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem during transformation. Null value encountered in property path..."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 161
    .restart local v3    # "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v3, v1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 162
    iget-object v5, p0, Lorg/apache/commons/beanutils/BeanToPropertyValueTransformer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 164
    :cond_4
    throw v3
.end method
