.class public Lorg/apache/commons/collections4/functors/ForClosure;
.super Ljava/lang/Object;
.source "ForClosure.java"

# interfaces
.implements Lorg/apache/commons/collections4/Closure;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Closure<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final iClosure:Lorg/apache/commons/collections4/Closure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final iCount:I


# direct methods
.method public constructor <init>(ILorg/apache/commons/collections4/Closure;)V
    .locals 0
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/commons/collections4/functors/ForClosure;, "Lorg/apache/commons/collections4/functors/ForClosure<TE;>;"
    .local p2, "closure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lorg/apache/commons/collections4/functors/ForClosure;->iCount:I

    .line 71
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/ForClosure;->iClosure:Lorg/apache/commons/collections4/Closure;

    .line 72
    return-void
.end method

.method public static forClosure(ILorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .param p0, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 52
    .local p1, "closure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    if-lez p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 56
    return-object p1

    .line 58
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/functors/ForClosure;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/functors/ForClosure;-><init>(ILorg/apache/commons/collections4/Closure;)V

    return-object v0

    .line 53
    :cond_2
    :goto_0
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/apache/commons/collections4/functors/ForClosure;, "Lorg/apache/commons/collections4/functors/ForClosure<TE;>;"
    .local p1, "input":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/collections4/functors/ForClosure;->iCount:I

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/ForClosure;->iClosure:Lorg/apache/commons/collections4/Closure;

    invoke-interface {v1, p1}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getClosure()Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/commons/collections4/functors/ForClosure;, "Lorg/apache/commons/collections4/functors/ForClosure<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ForClosure;->iClosure:Lorg/apache/commons/collections4/Closure;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 103
    .local p0, "this":Lorg/apache/commons/collections4/functors/ForClosure;, "Lorg/apache/commons/collections4/functors/ForClosure<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/functors/ForClosure;->iCount:I

    return v0
.end method
