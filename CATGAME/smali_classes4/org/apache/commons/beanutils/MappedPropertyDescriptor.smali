.class public Lorg/apache/commons/beanutils/MappedPropertyDescriptor;
.super Ljava/beans/PropertyDescriptor;
.source "MappedPropertyDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;
    }
.end annotation


# static fields
.field private static final STRING_CLASS_PARAMETER:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mappedPropertyTypeRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mappedReadMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

.field private mappedWriteMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->STRING_CLASS_PARAMETER:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 8
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .line 89
    .local p2, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "set"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Ljava/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 91
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->setName(Ljava/lang/String;)V

    .line 97
    invoke-static {p1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->capitalizePropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "base":Ljava/lang/String;
    const/4 v2, 0x0

    .line 101
    .local v2, "mappedReadMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 104
    .local v3, "mappedWriteMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->STRING_CLASS_PARAMETER:[Ljava/lang/Class;

    invoke-static {p2, v5, v6}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 109
    goto :goto_0

    .line 106
    :catch_0
    move-exception v5

    .line 107
    .local v5, "e":Ljava/beans/IntrospectionException;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->STRING_CLASS_PARAMETER:[Ljava/lang/Class;

    invoke-static {p2, v6, v7}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v2, v6

    .line 110
    .end local v5    # "e":Ljava/beans/IntrospectionException;
    :goto_0
    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    .line 111
    .local v5, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6, v5}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_1
    .catch Ljava/beans/IntrospectionException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v6

    .line 116
    .end local v5    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_1

    .line 112
    :catch_1
    move-exception v5

    .line 119
    :goto_1
    if-nez v2, :cond_0

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v4}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 123
    :cond_0
    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    goto :goto_2

    .line 124
    :cond_1
    new-instance v0, Ljava/beans/IntrospectionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Property \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' not found on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    :goto_2
    new-instance v0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {v0, v2}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedReadMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    .line 129
    new-instance v0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {v0, v3}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedWriteMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    .line 131
    invoke-direct {p0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->findMappedPropertyType()V

    .line 132
    return-void

    .line 92
    .end local v1    # "base":Ljava/lang/String;
    .end local v2    # "mappedReadMethod":Ljava/lang/reflect/Method;
    .end local v3    # "mappedWriteMethod":Ljava/lang/reflect/Method;
    :cond_3
    new-instance v0, Ljava/beans/IntrospectionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad property name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p3, "mappedGetterName"    # Ljava/lang/String;
    .param p4, "mappedSetterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .line 156
    .local p2, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ljava/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 158
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->setName(Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "mappedReadMethod":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 167
    .local v1, "mappedWriteMethod":Ljava/lang/reflect/Method;
    sget-object v2, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->STRING_CLASS_PARAMETER:[Ljava/lang/Class;

    .line 168
    invoke-static {p2, p3, v2}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 170
    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 171
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 172
    .local v2, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    nop

    .line 173
    invoke-static {p2, p4, v2}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 174
    .end local v2    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_0

    .line 175
    :cond_0
    nop

    .line 176
    invoke-static {p2, p4, v2}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 178
    :goto_0
    new-instance v2, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {v2, v0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v2, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedReadMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    .line 179
    new-instance v2, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v2, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedWriteMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    .line 181
    invoke-direct {p0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->findMappedPropertyType()V

    .line 182
    return-void

    .line 159
    .end local v0    # "mappedReadMethod":Ljava/lang/reflect/Method;
    .end local v1    # "mappedWriteMethod":Ljava/lang/reflect/Method;
    :cond_1
    new-instance v0, Ljava/beans/IntrospectionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad property name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "mappedGetter"    # Ljava/lang/reflect/Method;
    .param p3, "mappedSetter"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .line 202
    invoke-direct {p0, p1, p2, p3}, Ljava/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 204
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->setName(Ljava/lang/String;)V

    .line 210
    new-instance v0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {v0, p2}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedReadMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    .line 211
    new-instance v0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {v0, p3}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedWriteMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    .line 212
    invoke-direct {p0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->findMappedPropertyType()V

    .line 213
    return-void

    .line 205
    :cond_0
    new-instance v0, Ljava/beans/IntrospectionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad property name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100()[Ljava/lang/Class;
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->STRING_CLASS_PARAMETER:[Ljava/lang/Class;

    return-object v0
.end method

.method private static capitalizePropertyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 327
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 328
    return-object p0

    .line 331
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 332
    .local v0, "chars":[C
    const/4 v1, 0x0

    aget-char v2, v0, v1

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    aput-char v2, v0, v1

    .line 333
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private findMappedPropertyType()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .line 285
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 286
    .local v0, "mappedReadMethod":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 287
    .local v1, "mappedWriteMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 288
    .local v2, "mappedPropertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 289
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-ne v4, v3, :cond_1

    .line 293
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    .line 294
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    new-instance v3, Ljava/beans/IntrospectionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mapped read method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " returns void"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 290
    :cond_1
    new-instance v3, Ljava/beans/IntrospectionException;

    const-string v4, "bad mapped read method arg count"

    invoke-direct {v3, v4}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 301
    :cond_2
    :goto_0
    if-eqz v1, :cond_6

    .line 302
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 303
    .local v4, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 307
    if-eqz v2, :cond_4

    aget-object v5, v4, v3

    if-ne v2, v5, :cond_3

    goto :goto_1

    .line 309
    :cond_3
    new-instance v3, Ljava/beans/IntrospectionException;

    const-string v5, "type mismatch between mapped read and write methods"

    invoke-direct {v3, v5}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 312
    :cond_4
    :goto_1
    aget-object v3, v4, v3

    move-object v2, v3

    goto :goto_2

    .line 304
    :cond_5
    new-instance v3, Ljava/beans/IntrospectionException;

    const-string v5, "bad mapped write method arg count"

    invoke-direct {v3, v5}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 314
    .end local v4    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_6
    :goto_2
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedPropertyTypeRef:Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v0    # "mappedReadMethod":Ljava/lang/reflect/Method;
    .end local v1    # "mappedWriteMethod":Ljava/lang/reflect/Method;
    .end local v2    # "mappedPropertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 318
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "ex":Ljava/beans/IntrospectionException;
    throw v0
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .line 381
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 382
    const/4 v0, 0x0

    return-object v0

    .line 385
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->internalGetMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 386
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1

    .line 387
    return-object v0

    .line 391
    :cond_1
    new-instance v1, Ljava/beans/IntrospectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No method \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " parameter(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .line 400
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 401
    const/4 v0, 0x0

    return-object v0

    .line 404
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/beanutils/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 405
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1

    .line 406
    return-object v0

    .line 409
    :cond_1
    if-nez p2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    array-length v1, p2

    .line 412
    .local v1, "parameterCount":I
    :goto_0
    new-instance v2, Ljava/beans/IntrospectionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No method \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " parameter(s) of matching types."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static internalGetMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;
    .locals 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 343
    .local p0, "initial":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 344
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 345
    .local v2, "methods":[Ljava/lang/reflect/Method;
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 346
    .local v4, "method":Ljava/lang/reflect/Method;
    if-nez v4, :cond_0

    .line 347
    goto :goto_2

    .line 350
    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    .line 351
    .local v5, "mods":I
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 352
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 353
    goto :goto_2

    .line 355
    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 356
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-ne v6, p2, :cond_2

    .line 357
    return-object v4

    .line 345
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "mods":I
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 343
    .end local v2    # "methods":[Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 365
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 366
    .local v0, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .line 367
    .local v3, "interface1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3, p1, p2}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->internalGetMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 368
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_5

    .line 369
    return-object v4

    .line 366
    .end local v3    # "interface1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 373
    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getMappedPropertyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedPropertyTypeRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public getMappedReadMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedReadMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-static {v0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->access$000(Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getMappedWriteMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedWriteMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-static {v0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->access$000(Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public setMappedReadMethod(Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "mappedGetter"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .line 250
    new-instance v0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedReadMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    .line 251
    invoke-direct {p0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->findMappedPropertyType()V

    .line 252
    return-void
.end method

.method public setMappedWriteMethod(Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "mappedSetter"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .line 273
    new-instance v0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedWriteMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    .line 274
    invoke-direct {p0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->findMappedPropertyType()V

    .line 275
    return-void
.end method
