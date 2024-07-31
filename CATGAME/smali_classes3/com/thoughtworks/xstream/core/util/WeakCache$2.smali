.class Lcom/thoughtworks/xstream/core/util/WeakCache$2;
.super Ljava/lang/Object;
.source "WeakCache.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/core/util/WeakCache;

.field private final synthetic val$i:[I


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/core/util/WeakCache;[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/thoughtworks/xstream/core/util/WeakCache;

    .line 94
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$2;->this$0:Lcom/thoughtworks/xstream/core/util/WeakCache;

    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$2;->val$i:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$2;->val$i:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method
