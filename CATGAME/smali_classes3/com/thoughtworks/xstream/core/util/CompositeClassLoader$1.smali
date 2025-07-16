.class Lcom/thoughtworks/xstream/core/util/CompositeClassLoader$1;
.super Ljava/util/ArrayList;
.source "CompositeClassLoader.java"


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;I)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader$1;->this$0:Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0

    .line 116
    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2

    .line 109
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader$1;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method
