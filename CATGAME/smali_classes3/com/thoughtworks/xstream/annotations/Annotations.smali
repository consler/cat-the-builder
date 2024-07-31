.class public Lcom/thoughtworks/xstream/annotations/Annotations;
.super Ljava/lang/Object;
.source "Annotations.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static varargs declared-synchronized configureAliases(Lcom/thoughtworks/xstream/XStream;[Ljava/lang/Class;)V
    .locals 1
    .param p0, "xstream"    # Lcom/thoughtworks/xstream/XStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/thoughtworks/xstream/XStream;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .local p1, "topLevelClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v0, Lcom/thoughtworks/xstream/annotations/Annotations;

    monitor-enter v0

    .line 48
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/XStream;->processAnnotations([Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v0

    return-void

    .line 47
    .end local p0    # "xstream":Lcom/thoughtworks/xstream/XStream;
    .end local p1    # "topLevelClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
