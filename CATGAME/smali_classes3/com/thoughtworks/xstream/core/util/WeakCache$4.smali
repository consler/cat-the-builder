.class Lcom/thoughtworks/xstream/core/util/WeakCache$4;
.super Ljava/lang/Object;
.source "WeakCache.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/core/util/WeakCache;

.field private final synthetic val$set:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/core/util/WeakCache;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$0"    # Lcom/thoughtworks/xstream/core/util/WeakCache;

    .line 123
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$4;->this$0:Lcom/thoughtworks/xstream/core/util/WeakCache;

    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$4;->val$set:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/core/util/WeakCache$4;)Lcom/thoughtworks/xstream/core/util/WeakCache;
    .locals 1
    .param p0, "x0"    # Lcom/thoughtworks/xstream/core/util/WeakCache$4;

    .line 123
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$4;->this$0:Lcom/thoughtworks/xstream/core/util/WeakCache;

    return-object v0
.end method


# virtual methods
.method public visit(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;

    .line 126
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 127
    .local v0, "entry":Ljava/util/Map$Entry;
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$4;->val$set:Ljava/util/Set;

    new-instance v2, Lcom/thoughtworks/xstream/core/util/WeakCache$4$1;

    invoke-direct {v2, p0, v0}, Lcom/thoughtworks/xstream/core/util/WeakCache$4$1;-><init>(Lcom/thoughtworks/xstream/core/util/WeakCache$4;Ljava/util/Map$Entry;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    const/4 v1, 0x0

    return-object v1
.end method
