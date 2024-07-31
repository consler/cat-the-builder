.class public final Lorg/apache/commons/lang3/tuple/ImmutableTriple;
.super Lorg/apache/commons/lang3/tuple/Triple;
.source "ImmutableTriple.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/tuple/Triple<",
        "T",
        "L;",
        "TM;TR;>;"
    }
.end annotation


# static fields
.field private static final NULL:Lorg/apache/commons/lang3/tuple/ImmutableTriple;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public final middle:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field public final right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-static {v0, v0, v0}, Lorg/apache/commons/lang3/tuple/ImmutableTriple;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/ImmutableTriple;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;->NULL:Lorg/apache/commons/lang3/tuple/ImmutableTriple;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TM;TR;)V"
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/apache/commons/lang3/tuple/ImmutableTriple;, "Lorg/apache/commons/lang3/tuple/ImmutableTriple<TL;TM;TR;>;"
    .local p1, "left":Ljava/lang/Object;, "TL;"
    .local p2, "middle":Ljava/lang/Object;, "TM;"
    .local p3, "right":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Triple;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;->left:Ljava/lang/Object;

    .line 96
    iput-object p2, p0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;->middle:Ljava/lang/Object;

    .line 97
    iput-object p3, p0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;->right:Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public static nullTriple()Lorg/apache/commons/lang3/tuple/ImmutableTriple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "M:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/lang3/tuple/ImmutableTriple<",
            "T",
            "L;",
            "TM;TR;>;"
        }
    .end annotation

    .line 58
    sget-object v0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;->NULL:Lorg/apache/commons/lang3/tuple/ImmutableTriple;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/ImmutableTriple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "M:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TM;TR;)",
            "Lorg/apache/commons/lang3/tuple/ImmutableTriple<",
            "T",
            "L;",
            "TM;TR;>;"
        }
    .end annotation

    .line 83
    .local p0, "left":Ljava/lang/Object;, "TL;"
    .local p1, "middle":Ljava/lang/Object;, "TM;"
    .local p2, "right":Ljava/lang/Object;, "TR;"
    new-instance v0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/tuple/ImmutableTriple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getLeft()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/apache/commons/lang3/tuple/ImmutableTriple;, "Lorg/apache/commons/lang3/tuple/ImmutableTriple<TL;TM;TR;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public getMiddle()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/apache/commons/lang3/tuple/ImmutableTriple;, "Lorg/apache/commons/lang3/tuple/ImmutableTriple<TL;TM;TR;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;->middle:Ljava/lang/Object;

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lorg/apache/commons/lang3/tuple/ImmutableTriple;, "Lorg/apache/commons/lang3/tuple/ImmutableTriple<TL;TM;TR;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;->right:Ljava/lang/Object;

    return-object v0
.end method
