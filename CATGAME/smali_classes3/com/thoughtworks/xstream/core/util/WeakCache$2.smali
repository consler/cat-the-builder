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

    .line 94
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$2;->this$0:Lcom/thoughtworks/xstream/core/util/WeakCache;

    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$2;->val$i:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 97
    iget-object p1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$2;->val$i:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    const/4 p1, 0x0

    return-object p1
.end method
