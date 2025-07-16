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

    .line 123
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$4;->this$0:Lcom/thoughtworks/xstream/core/util/WeakCache;

    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$4;->val$set:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/core/util/WeakCache$4;)Lcom/thoughtworks/xstream/core/util/WeakCache;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$4;->this$0:Lcom/thoughtworks/xstream/core/util/WeakCache;

    return-object p0
.end method


# virtual methods
.method public visit(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 126
    check-cast p1, Ljava/util/Map$Entry;

    .line 127
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$4;->val$set:Ljava/util/Set;

    new-instance v1, Lcom/thoughtworks/xstream/core/util/WeakCache$4$1;

    invoke-direct {v1, p0, p1}, Lcom/thoughtworks/xstream/core/util/WeakCache$4$1;-><init>(Lcom/thoughtworks/xstream/core/util/WeakCache$4;Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1
.end method
