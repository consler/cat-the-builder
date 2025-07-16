.class final Lorg/apache/commons/collections4/SetUtils$6;
.super Lorg/apache/commons/collections4/SetUtils$SetView;
.source "SetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/SetUtils;->union(Ljava/util/Set;Ljava/util/Set;)Lorg/apache/commons/collections4/SetUtils$SetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/SetUtils$SetView<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$a:Ljava/util/Set;

.field final synthetic val$b:Ljava/util/Set;

.field final synthetic val$bMinusA:Lorg/apache/commons/collections4/SetUtils$SetView;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/Set;Lorg/apache/commons/collections4/SetUtils$SetView;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lorg/apache/commons/collections4/SetUtils$6;->val$a:Ljava/util/Set;

    iput-object p2, p0, Lorg/apache/commons/collections4/SetUtils$6;->val$b:Ljava/util/Set;

    iput-object p3, p0, Lorg/apache/commons/collections4/SetUtils$6;->val$bMinusA:Lorg/apache/commons/collections4/SetUtils$SetView;

    invoke-direct {p0}, Lorg/apache/commons/collections4/SetUtils$SetView;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 591
    iget-object v0, p0, Lorg/apache/commons/collections4/SetUtils$6;->val$a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/SetUtils$6;->val$b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public createIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lorg/apache/commons/collections4/SetUtils$6;->val$a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/SetUtils$6;->val$bMinusA:Lorg/apache/commons/collections4/SetUtils$SetView;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/SetUtils$SetView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/IteratorUtils;->chainedIterator(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 601
    iget-object v0, p0, Lorg/apache/commons/collections4/SetUtils$6;->val$a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/SetUtils$6;->val$b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 2

    .line 606
    iget-object v0, p0, Lorg/apache/commons/collections4/SetUtils$6;->val$a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections4/SetUtils$6;->val$bMinusA:Lorg/apache/commons/collections4/SetUtils$SetView;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/SetUtils$SetView;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
