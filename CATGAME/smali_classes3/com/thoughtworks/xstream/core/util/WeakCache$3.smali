.class Lcom/thoughtworks/xstream/core/util/WeakCache$3;
.super Ljava/lang/Object;
.source "WeakCache.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/core/util/WeakCache;

.field private final synthetic val$collection:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/core/util/WeakCache;Ljava/util/Collection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/thoughtworks/xstream/core/util/WeakCache;

    .line 108
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$3;->this$0:Lcom/thoughtworks/xstream/core/util/WeakCache;

    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$3;->val$collection:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$3;->val$collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method
