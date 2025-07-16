.class Lcom/thoughtworks/xstream/core/util/WeakCache$4$1;
.super Ljava/lang/Object;
.source "WeakCache.java"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field private final synthetic this$1:Lcom/thoughtworks/xstream/core/util/WeakCache$4;

.field private final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/core/util/WeakCache$4;Ljava/util/Map$Entry;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$4$1;->this$1:Lcom/thoughtworks/xstream/core/util/WeakCache$4;

    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$4$1;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$4$1;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$4$1;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$4$1;->val$entry:Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$4$1;->this$1:Lcom/thoughtworks/xstream/core/util/WeakCache$4;

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/util/WeakCache$4;->access$000(Lcom/thoughtworks/xstream/core/util/WeakCache$4;)Lcom/thoughtworks/xstream/core/util/WeakCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/core/util/WeakCache;->createReference(Ljava/lang/Object;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/Reference;

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
