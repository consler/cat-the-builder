.class public Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;
.super Ljava/lang/ClassLoader;
.source "CompositeClassLoader.java"


# static fields
.field static synthetic class$java$lang$ClassLoader:Ljava/lang/Class;

.field static synthetic class$java$lang$Object:Ljava/lang/Class;


# instance fields
.field private final classLoaders:Ljava/util/List;

.field private final queue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 56
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    :try_start_0
    sget-object v0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->class$java$lang$ClassLoader:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.ClassLoader"

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->class$java$lang$ClassLoader:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->class$java$lang$ClassLoader:Ljava/lang/Class;

    :goto_0
    const-string v1, "registerAsParallelCapable"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 60
    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 63
    :cond_1
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    nop

    .end local v0    # "m":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 68
    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->classLoaders:Ljava/util/List;

    .line 74
    sget-object v0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->class$java$lang$Object:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->addInternal(Ljava/lang/ClassLoader;)V

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->addInternal(Ljava/lang/ClassLoader;)V

    .line 76
    return-void
.end method

.method private addInternal(Ljava/lang/ClassLoader;)V
    .locals 5
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "refClassLoader":Ljava/lang/ref/WeakReference;
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->classLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 93
    .local v2, "ref":Ljava/lang/ref/WeakReference;
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ClassLoader;

    .line 94
    .local v3, "cl":Ljava/lang/ClassLoader;
    if-nez v3, :cond_0

    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 96
    :cond_0
    if-ne v3, p1, :cond_1

    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 98
    move-object v0, v2

    .line 100
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    :cond_1
    :goto_1
    goto :goto_0

    .line 101
    .end local v1    # "iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->classLoaders:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move-object v3, v0

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, p1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    :goto_2
    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 102
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 59
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

.method private cleanup()V
    .locals 2

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v1, v0

    .local v1, "ref":Ljava/lang/ref/WeakReference;
    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->classLoaders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->cleanup()V

    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->addInternal(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local p0    # "this":Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;
    :cond_0
    monitor-exit p0

    return-void

    .line 82
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader$1;

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->classLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader$1;-><init>(Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;I)V

    .line 124
    .local v0, "copy":Ljava/util/List;
    monitor-enter p0

    .line 125
    :try_start_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->cleanup()V

    .line 126
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->classLoaders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 130
    .local v1, "contextClassLoader":Ljava/lang/ClassLoader;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ClassLoader;

    .line 132
    .local v3, "classLoader":Ljava/lang/ClassLoader;
    if-ne v3, v1, :cond_0

    .line 133
    const/4 v1, 0x0

    .line 136
    :cond_0
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    .line 137
    :catch_0
    move-exception v4

    .line 140
    .end local v3    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 145
    .end local v2    # "iterator":Ljava/util/Iterator;
    :cond_1
    if-eqz v1, :cond_2

    .line 146
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    return-object v2

    .line 148
    :cond_2
    new-instance v2, Ljava/lang/ClassNotFoundException;

    invoke-direct {v2, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    .end local v1    # "contextClassLoader":Ljava/lang/ClassLoader;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
