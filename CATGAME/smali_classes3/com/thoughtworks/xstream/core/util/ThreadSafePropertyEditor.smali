.class public Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;
.super Ljava/lang/Object;
.source "ThreadSafePropertyEditor.java"


# static fields
.field static synthetic class$java$beans$PropertyEditor:Ljava/lang/Class;


# instance fields
.field private final editorType:Ljava/lang/Class;

.field private final pool:Lcom/thoughtworks/xstream/core/util/Pool;


# direct methods
.method public constructor <init>(Ljava/lang/Class;II)V
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "initialPoolSize"    # I
    .param p3, "maxPoolSize"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->class$java$beans$PropertyEditor:Ljava/lang/Class;

    const-string v1, "java.beans.PropertyEditor"

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->class$java$beans$PropertyEditor:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " is not a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->class$java$beans$PropertyEditor:Ljava/lang/Class;

    if-nez v3, :cond_1

    .line 44
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->class$java$beans$PropertyEditor:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    nop

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_2
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->editorType:Ljava/lang/Class;

    .line 47
    new-instance v0, Lcom/thoughtworks/xstream/core/util/Pool;

    new-instance v1, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor$1;

    invoke-direct {v1, p0}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor$1;-><init>(Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;)V

    invoke-direct {v0, p2, p3, v1}, Lcom/thoughtworks/xstream/core/util/Pool;-><init>(IILcom/thoughtworks/xstream/core/util/Pool$Factory;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;

    .line 35
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->editorType:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 41
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private fetchFromPool()Ljava/beans/PropertyEditor;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/Pool;->fetchFromPool()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyEditor;

    .line 86
    .local v0, "editor":Ljava/beans/PropertyEditor;
    return-object v0
.end method


# virtual methods
.method public getAsText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 65
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->fetchFromPool()Ljava/beans/PropertyEditor;

    move-result-object v0

    .line 67
    .local v0, "editor":Ljava/beans/PropertyEditor;
    :try_start_0
    invoke-interface {v0, p1}, Ljava/beans/PropertyEditor;->setValue(Ljava/lang/Object;)V

    .line 68
    invoke-interface {v0}, Ljava/beans/PropertyEditor;->getAsText()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v2, v0}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    .line 68
    return-object v1

    .line 70
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v2, v0}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    .line 71
    throw v1
.end method

.method public setAsText(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->fetchFromPool()Ljava/beans/PropertyEditor;

    move-result-object v0

    .line 77
    .local v0, "editor":Ljava/beans/PropertyEditor;
    :try_start_0
    invoke-interface {v0, p1}, Ljava/beans/PropertyEditor;->setAsText(Ljava/lang/String;)V

    .line 78
    invoke-interface {v0}, Ljava/beans/PropertyEditor;->getValue()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v2, v0}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    .line 78
    return-object v1

    .line 80
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v2, v0}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    .line 81
    throw v1
.end method
