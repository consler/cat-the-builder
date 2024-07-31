.class public Lorg/apache/commons/beanutils/BeanPredicate;
.super Ljava/lang/Object;
.source "BeanPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private predicate:Lorg/apache/commons/collections/Predicate;

.field private propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/collections/Predicate;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->log:Lorg/apache/commons/logging/Log;

    .line 51
    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanPredicate;->propertyName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/apache/commons/beanutils/BeanPredicate;->predicate:Lorg/apache/commons/collections/Predicate;

    .line 53
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    .line 68
    .local v0, "evaluation":Z
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanPredicate;->propertyName:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/apache/commons/beanutils/PropertyUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    .local v1, "propValue":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanPredicate;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v2, v1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 86
    .end local v1    # "propValue":Ljava/lang/Object;
    nop

    .line 88
    return v0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "Property not found."

    .line 84
    .local v2, "errorMsg":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/commons/beanutils/BeanPredicate;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Property not found."

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 85
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .end local v2    # "errorMsg":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "Exception occurred in property\'s getter"

    .line 80
    .restart local v2    # "errorMsg":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/commons/beanutils/BeanPredicate;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Exception occurred in property\'s getter"

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 81
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "errorMsg":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "Unable to access the property provided."

    .line 76
    .restart local v2    # "errorMsg":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/commons/beanutils/BeanPredicate;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Unable to access the property provided."

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 77
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 70
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "errorMsg":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "Problem during evaluation."

    .line 72
    .restart local v2    # "errorMsg":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/commons/beanutils/BeanPredicate;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "ERROR: Problem during evaluation."

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 73
    throw v1
.end method

.method public getPredicate()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->predicate:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public setPredicate(Lorg/apache/commons/collections/Predicate;)V
    .locals 0
    .param p1, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 124
    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanPredicate;->predicate:Lorg/apache/commons/collections/Predicate;

    .line 125
    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanPredicate;->propertyName:Ljava/lang/String;

    .line 107
    return-void
.end method
