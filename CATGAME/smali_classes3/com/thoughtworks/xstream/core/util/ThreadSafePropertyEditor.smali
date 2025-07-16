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
    .locals 2

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
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, " is not a "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object p3, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->class$java$beans$PropertyEditor:Ljava/lang/Class;

    if-nez p3, :cond_1

    .line 44
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    sput-object p3, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->class$java$beans$PropertyEditor:Ljava/lang/Class;

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 46
    :cond_2
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->editorType:Ljava/lang/Class;

    .line 47
    new-instance p1, Lcom/thoughtworks/xstream/core/util/Pool;

    new-instance v0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor$1;

    invoke-direct {v0, p0}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor$1;-><init>(Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;)V

    invoke-direct {p1, p2, p3, v0}, Lcom/thoughtworks/xstream/core/util/Pool;-><init>(IILcom/thoughtworks/xstream/core/util/Pool$Factory;)V

    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    return-void
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;)Ljava/lang/Class;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->editorType:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 41
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private fetchFromPool()Ljava/beans/PropertyEditor;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/Pool;->fetchFromPool()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyEditor;

    return-object v0
.end method


# virtual methods
.method public getAsText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->fetchFromPool()Ljava/beans/PropertyEditor;

    move-result-object v0

    .line 67
    :try_start_0
    invoke-interface {v0, p1}, Ljava/beans/PropertyEditor;->setValue(Ljava/lang/Object;)V

    .line 68
    invoke-interface {v0}, Ljava/beans/PropertyEditor;->getAsText()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    .line 71
    throw p1
.end method

.method public setAsText(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->fetchFromPool()Ljava/beans/PropertyEditor;

    move-result-object v0

    .line 77
    :try_start_0
    invoke-interface {v0, p1}, Ljava/beans/PropertyEditor;->setAsText(Ljava/lang/String;)V

    .line 78
    invoke-interface {v0}, Ljava/beans/PropertyEditor;->getValue()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    .line 81
    throw p1
.end method
