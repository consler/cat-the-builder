.class public Lorg/apache/commons/collections4/functors/TransformerClosure;
.super Ljava/lang/Object;
.source "TransformerClosure.java"

# interfaces
.implements Lorg/apache/commons/collections4/Closure;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Closure<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4818523c51a8a3a9L


# instance fields
.field private final iTransformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;*>;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/apache/commons/collections4/functors/TransformerClosure;, "Lorg/apache/commons/collections4/functors/TransformerClosure<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/TransformerClosure;->iTransformer:Lorg/apache/commons/collections4/Transformer;

    .line 63
    return-void
.end method

.method public static transformerClosure(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;*>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 48
    .local p0, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;*>;"
    if-nez p0, :cond_0

    .line 49
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/functors/TransformerClosure;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/TransformerClosure;-><init>(Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/apache/commons/collections4/functors/TransformerClosure;, "Lorg/apache/commons/collections4/functors/TransformerClosure<TE;>;"
    .local p1, "input":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/TransformerClosure;->iTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public getTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;*>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/apache/commons/collections4/functors/TransformerClosure;, "Lorg/apache/commons/collections4/functors/TransformerClosure<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/TransformerClosure;->iTransformer:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method
