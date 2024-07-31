.class public Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;
.super Ljava/lang/Object;
.source "BeanProperty.java"


# static fields
.field private static final EMPTY_ARGS:[Ljava/lang/Object;


# instance fields
.field protected getter:Ljava/lang/reflect/Method;

.field private memberClass:Ljava/lang/Class;

.field private propertyName:Ljava/lang/String;

.field private setter:Ljava/lang/reflect/Method;

.field private type:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->EMPTY_ARGS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "memberClass"    # Ljava/lang/Class;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "propertyType"    # Ljava/lang/Class;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->memberClass:Ljava/lang/Class;

    .line 49
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->propertyName:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->type:Ljava/lang/Class;

    .line 51
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "member"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->getter:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->EMPTY_ARGS:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 95
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->propertyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->memberClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, " not readable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBeanClass()Ljava/lang/Class;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->memberClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isReadable()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->getter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWritable()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->setter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "member"    # Ljava/lang/Object;
    .param p2, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->setter:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 112
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->propertyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->memberClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, " not writable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGetterMethod(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 126
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->getter:Ljava/lang/reflect/Method;

    .line 128
    return-void
.end method

.method public setSetterMethod(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 134
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->setter:Ljava/lang/reflect/Method;

    .line 135
    return-void
.end method
