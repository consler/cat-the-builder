.class public Lorg/apache/commons/collections4/sequence/ReplacementsFinder;
.super Ljava/lang/Object;
.source "ReplacementsFinder.java"

# interfaces
.implements Lorg/apache/commons/collections4/sequence/CommandVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/sequence/CommandVisitor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final handler:Lorg/apache/commons/collections4/sequence/ReplacementsHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/sequence/ReplacementsHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pendingDeletions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pendingInsertions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private skipped:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/sequence/ReplacementsHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/sequence/ReplacementsHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/apache/commons/collections4/sequence/ReplacementsFinder;, "Lorg/apache/commons/collections4/sequence/ReplacementsFinder<TT;>;"
    .local p1, "handler":Lorg/apache/commons/collections4/sequence/ReplacementsHandler;, "Lorg/apache/commons/collections4/sequence/ReplacementsHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->pendingInsertions:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->pendingDeletions:Ljava/util/List;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->skipped:I

    .line 70
    iput-object p1, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->handler:Lorg/apache/commons/collections4/sequence/ReplacementsHandler;

    .line 71
    return-void
.end method


# virtual methods
.method public visitDeleteCommand(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/apache/commons/collections4/sequence/ReplacementsFinder;, "Lorg/apache/commons/collections4/sequence/ReplacementsFinder<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->pendingDeletions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public visitInsertCommand(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/sequence/ReplacementsFinder;, "Lorg/apache/commons/collections4/sequence/ReplacementsFinder<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->pendingInsertions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public visitKeepCommand(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/commons/collections4/sequence/ReplacementsFinder;, "Lorg/apache/commons/collections4/sequence/ReplacementsFinder<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->pendingDeletions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->pendingInsertions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget v0, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->skipped:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->skipped:I

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->handler:Lorg/apache/commons/collections4/sequence/ReplacementsHandler;

    iget v2, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->skipped:I

    iget-object v3, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->pendingDeletions:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->pendingInsertions:Ljava/util/List;

    invoke-interface {v0, v2, v3, v4}, Lorg/apache/commons/collections4/sequence/ReplacementsHandler;->handleReplacement(ILjava/util/List;Ljava/util/List;)V

    .line 97
    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->pendingDeletions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->pendingInsertions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    iput v1, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->skipped:I

    .line 101
    :goto_0
    return-void
.end method
