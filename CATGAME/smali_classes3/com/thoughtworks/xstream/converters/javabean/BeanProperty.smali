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

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    sput-object v0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->EMPTY_ARGS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->memberClass:Ljava/lang/Class;

    .line 49
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->propertyName:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 101
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->propertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->memberClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " not readable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 118
    new-instance p2, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Property "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->propertyName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, " of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->memberClass:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, " not writable"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGetterMethod(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->getter:Ljava/lang/reflect/Method;

    return-void
.end method

.method public setSetterMethod(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;->setter:Ljava/lang/reflect/Method;

    return-void
.end method
