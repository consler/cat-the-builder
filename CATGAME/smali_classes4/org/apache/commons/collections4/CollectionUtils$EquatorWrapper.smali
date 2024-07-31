.class Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/CollectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EquatorWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final equator:Lorg/apache/commons/collections4/Equator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Equator<",
            "-TO;>;"
        }
    .end annotation
.end field

.field private final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Equator;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Equator<",
            "-TO;>;TO;)V"
        }
    .end annotation

    .line 631
    .local p0, "this":Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;, "Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<TO;>;"
    .local p1, "equator":Lorg/apache/commons/collections4/Equator;, "Lorg/apache/commons/collections4/Equator<-TO;>;"
    .local p2, "object":Ljava/lang/Object;, "TO;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    iput-object p1, p0, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;->equator:Lorg/apache/commons/collections4/Equator;

    .line 633
    iput-object p2, p0, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;->object:Ljava/lang/Object;

    .line 634
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 642
    .local p0, "this":Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;, "Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<TO;>;"
    instance-of v0, p1, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;

    if-nez v0, :cond_0

    .line 643
    const/4 v0, 0x0

    return v0

    .line 646
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;

    .line 647
    .local v0, "otherObj":Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;, "Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<TO;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;->equator:Lorg/apache/commons/collections4/Equator;

    iget-object v2, p0, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/collections4/Equator;->equate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 637
    .local p0, "this":Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;, "Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<TO;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 652
    .local p0, "this":Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;, "Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<TO;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;->equator:Lorg/apache/commons/collections4/Equator;

    iget-object v1, p0, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;->object:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/commons/collections4/Equator;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
