.class public final Lorg/apache/commons/collections4/functors/TruePredicate;
.super Ljava/lang/Object;
.source "TruePredicate.java"

# interfaces
.implements Lorg/apache/commons/collections4/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Predicate<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections4/Predicate;

.field private static final serialVersionUID:J = 0x2ed594d9c151262cL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/apache/commons/collections4/functors/TruePredicate;

    invoke-direct {v0}, Lorg/apache/commons/collections4/functors/TruePredicate;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/functors/TruePredicate;->INSTANCE:Lorg/apache/commons/collections4/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    .local p0, "this":Lorg/apache/commons/collections4/functors/TruePredicate;, "Lorg/apache/commons/collections4/functors/TruePredicate<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 67
    .local p0, "this":Lorg/apache/commons/collections4/functors/TruePredicate;, "Lorg/apache/commons/collections4/functors/TruePredicate<TT;>;"
    sget-object v0, Lorg/apache/commons/collections4/functors/TruePredicate;->INSTANCE:Lorg/apache/commons/collections4/Predicate;

    return-object v0
.end method

.method public static truePredicate()Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lorg/apache/commons/collections4/functors/TruePredicate;->INSTANCE:Lorg/apache/commons/collections4/Predicate;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/apache/commons/collections4/functors/TruePredicate;, "Lorg/apache/commons/collections4/functors/TruePredicate<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    return v0
.end method
