.class Lcom/thoughtworks/xstream/core/util/CompositeClassLoader$1;
.super Ljava/util/ArrayList;
.source "CompositeClassLoader.java"


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;
    .param p2, "x0"    # I

    .line 105
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader$1;->this$0:Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "ref"    # Ljava/lang/Object;

    .line 116
    move-object v0, p1

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "classLoader":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 118
    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 120
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1, "c"    # Ljava/util/Collection;

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "result":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader$1;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    .line 112
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_0
    return v0
.end method
