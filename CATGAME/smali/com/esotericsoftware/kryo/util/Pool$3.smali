.class Lcom/esotericsoftware/kryo/util/Pool$3;
.super Ljava/util/ArrayDeque;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esotericsoftware/kryo/util/Pool;-><init>(ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayDeque<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/esotericsoftware/kryo/util/Pool;

.field final synthetic val$maximumCapacity:I


# direct methods
.method constructor <init>(Lcom/esotericsoftware/kryo/util/Pool;I)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/Pool$3;->this$0:Lcom/esotericsoftware/kryo/util/Pool;

    iput p2, p0, Lcom/esotericsoftware/kryo/util/Pool$3;->val$maximumCapacity:I

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/Pool$3;->size()I

    move-result v0

    iget v1, p0, Lcom/esotericsoftware/kryo/util/Pool$3;->val$maximumCapacity:I

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 66
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
