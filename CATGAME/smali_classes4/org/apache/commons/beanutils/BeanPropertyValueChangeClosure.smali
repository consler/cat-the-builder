.class public Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;
.super Ljava/lang/Object;
.source "BeanPropertyValueChangeClosure.java"

# interfaces
.implements Lorg/apache/commons/collections/Closure;


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

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # Ljava/lang/Object;
    .param p3, "ignoreNull"    # Z

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->log:Lorg/apache/commons/logging/Log;

    .line 140
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 141
    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->propertyName:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->propertyValue:Ljava/lang/Object;

    .line 143
    iput-boolean p3, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->ignoreNull:Z

    .line 147
    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "propertyName cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 166
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->propertyName:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->propertyValue:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/beanutils/PropertyUtils;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    goto :goto_1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "Property not found"

    .line 195
    .local v1, "errorMsg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Property not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 196
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v2, v0}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 197
    iget-object v4, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 199
    :cond_0
    throw v2

    .line 186
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "Exception occurred in property\'s getter"

    .line 188
    .restart local v1    # "errorMsg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Exception occurred in property\'s getter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 189
    .restart local v2    # "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v2, v0}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 190
    iget-object v4, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 192
    :cond_1
    throw v2

    .line 179
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "Unable to access the property provided."

    .line 181
    .restart local v1    # "errorMsg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to access the property provided."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    .restart local v2    # "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v2, v0}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 183
    iget-object v4, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 185
    :cond_2
    throw v2

    .line 167
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Unable to execute Closure. Null value encountered in property path..."

    .line 170
    .restart local v1    # "errorMsg":Ljava/lang/String;
    iget-boolean v2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->ignoreNull:Z

    if-eqz v2, :cond_3

    .line 171
    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING: Unable to execute Closure. Null value encountered in property path..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "errorMsg":Ljava/lang/String;
    :goto_1
    return-void

    .line 173
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "errorMsg":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to execute Closure. Null value encountered in property path..."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    .restart local v2    # "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v2, v0}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 175
    iget-object v4, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 177
    :cond_4
    throw v2
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyValue()Ljava/lang/Object;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->propertyValue:Ljava/lang/Object;

    return-object v0
.end method

.method public isIgnoreNull()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->ignoreNull:Z

    return v0
.end method
